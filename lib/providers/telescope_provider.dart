import 'dart:io';

import 'package:a2zecom/db/db_helper.dart';
import 'package:a2zecom/models/brand.dart';
import 'package:a2zecom/models/image_model.dart';
import 'package:a2zecom/models/telescope.dart';
import 'package:a2zecom/utils/constants.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';

class TelescopeProvider with ChangeNotifier{
List<Brand> brandList = [];
List<Telescope> telescopeList = [];

Future<void> addBrand(String name) {
  final brand = Brand(name: name);
  return DbHelper.addBrand(brand);
}
Future<void> updateTelescopeField(String id, String field, dynamic value) {
  return DbHelper.updateTelescopeField(id,{field: value});
}

getAllBrands() {
  DbHelper.getAllBrands().listen((snapshot) {
    brandList = List.generate(snapshot.docs.length, (index) => Brand.fromJson(snapshot.docs[index].data()));
    notifyListeners();
  });
}
getAllTelescopes() {
  DbHelper.getAllTelescopes().listen((snapshot) {
    telescopeList = List.generate(snapshot.docs.length, (index) => Telescope.fromJson(snapshot.docs[index].data()));
    notifyListeners();
  });
}
Telescope findTelescopeById(String id) =>
telescopeList.firstWhere((element) => element.id == id);

Future<void> addTelescope(Telescope telescope) {
  return DbHelper.addTelescope(telescope);
}

Future<ImageModel> uploadImage(String imageLocalPath) async {
  final String imageName = 'image_${DateTime.now().millisecondsSinceEpoch}';
  final photoRef = FirebaseStorage.instance.ref().child('$telescopeImageDirectory$imageName');
  final uploadTask = photoRef.putFile(File(imageLocalPath));
  final snapshot = await uploadTask.whenComplete(() => null);
  final url = await snapshot.ref.getDownloadURL();
  return ImageModel(imageName: imageName, directoryName: telescopeImageDirectory, downloadUrl: url);
}

Future<void> deleteImage(String id, ImageModel image) async {
  final photoRef = FirebaseStorage.instance.ref().child('${image.directoryName}${image.imageName}');
  return photoRef.delete();
}
}