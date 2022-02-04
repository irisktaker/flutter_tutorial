import 'dart:io';

import 'package:complete_dev_guide/section0_how_to/back_button.dart';
import 'package:flutter/material.dart';

// External library: flutter pub add image_picker
import 'package:image_picker/image_picker.dart';

class Ex_ImagePicker extends StatefulWidget {
  Ex_ImagePicker({Key? key}) : super(key: key);

  @override
  State<Ex_ImagePicker> createState() => _Ex_ImagePickerState();
}

class _Ex_ImagePickerState extends State<Ex_ImagePicker> {
  // create an object from the ImagePicker class
  final ImagePicker _picker = ImagePicker();
  // create an object for video

  File? pickedImage;
  File? capturedImage;

  void fetchImage() async {
    // Pick an image
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    // to make sure you don't return a null
    if (image == null) return;

    setState(() {
      pickedImage = File(image.path);
    });
  }

  // Capture a photo
  void captureAPhoto() async {
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);

    if (photo == null) return;

    setState(() {
      capturedImage = File(photo.path);
    });
  }

  // More Options

  // Capture a photo
  // final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
  // Pick a video
  // final XFile? image = await _picker.pickVideo(source: ImageSource.gallery);
  // Capture a video
  // final XFile? video = await _picker.pickVideo(source: ImageSource.camera);
  // Pick multiple images
  // final List<XFile>? images = await _picker.pickMultiImage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backButton(context, text: 'Image Picker'),

      ///
      /// note: must add permissions for ios
      /// read: https://pub.dev/packages/image_picker
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Text("Pick Image"),
              onPressed: fetchImage,
            ),
            pickedImage == null
                ? Container()
                : Image.file(pickedImage!, width: 50, height: 50),
            SizedBox(height: 12),
            TextButton(
              onPressed: captureAPhoto,
              child: Text("Capture a photo"),
            ),
            capturedImage == null
                ? Container()
                : Image.file(capturedImage!, width: 50, height: 50),
          ],
        ),
      ),
    );
  }
}
