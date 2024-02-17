import 'package:flutter/material.dart';
import 'package:file_selector/file_selector.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreenViewModel extends ChangeNotifier {
  HomeScreenViewModel();

  pickImageFromGallery() async {
    final ImagePicker imagePicker = ImagePicker();
    final XFile? file = await imagePicker.pickImage(source: ImageSource.gallery);

    if (file != null) {
      print(file.name);
    }
  }

  pickImageFromExplorer() async {
    const XTypeGroup typeGroup = XTypeGroup(
      label: "images",
      extensions: ["jpg", "png", "heif", "heic"],
      uniformTypeIdentifiers: ["public.jpeg", "public.png", "public.heif", "public.heic"],
    );

    final XFile? file = await openFile(acceptedTypeGroups: [typeGroup]);
    print(file?.name);
  }
}