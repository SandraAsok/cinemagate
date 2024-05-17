import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:insta_assets_picker/insta_assets_picker.dart';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  List<AssetEntity> selectedpics = [];

  Future<void> pickAssets() async {
    final result = await InstaAssetPicker.pickAssets(
      context,
      maxAssets: 5,
      onCompleted: (_) {
        Navigator.pop(context);
      },
    );

    //  if (result != null) {
    //   for (var asset in result) {
    //     // Assuming you're using File objects, you might need to adjust this part
    //     File? imageFile = await asset.file;

    //     // Upload the image to Firebase Storage
    //     String imageURL = await uploadImageToFirebaseStorage(imageFile);

    //     // Store the imageURL in Cloud Firestore
    //     await storeImageURLInFirestore(imageURL);
    //   }
    // }

//   Future<String> uploadImageToFirebaseStorage(File imageFile) async {
//   // Generate a unique filename for the image
//   String fileName = DateTime.now().millisecondsSinceEpoch.toString();

//   // Reference to the location in Firebase Storage
//   Reference storageReference =
//       FirebaseStorage.instance.ref().child('images/$fileName');

//   // Upload the file to Firebase Storage
//   UploadTask uploadTask = storageReference.putFile(imageFile);

//   // Wait for the upload to complete and get the download URL
//   TaskSnapshot storageTaskSnapshot = await uploadTask;
//   String downloadURL = await storageTaskSnapshot.ref.getDownloadURL();

//   return downloadURL;
// }

// Future<void> storeImageURLInFirestore(String imageURL) async {
//   // Reference to your Cloud Firestore collection
//   CollectionReference imagesCollection =
//       FirebaseFirestore.instance.collection('images');

//   // Add imageURL to Firestore
//   await imagesCollection.add({'imageURL': imageURL});
// }

    log(selectedpics.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        ElevatedButton(
          onPressed: pickAssets,
          child: Text('Pick Images'),
        ),
        selectedpics != null
            ? Wrap(
                spacing: 10,
                runSpacing: 10,
                children: selectedpics!.map((asset) {
                  return FutureBuilder<Uint8List?>(
                    future: asset.thumbnailData,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done &&
                          snapshot.data != null) {
                        return Image.memory(snapshot.data!,
                            width: 100, height: 100, fit: BoxFit.cover);
                      }
                      return const CircularProgressIndicator();
                    },
                  );
                }).toList(),
              )
            : const Text('No images selected'),
      ],
    ));
  }
}
