// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ImageModel _$ImageModelFromJson(Map<String, dynamic> json) => _ImageModel(
  imageName: json['imageName'] as String,
  directoryName: json['directoryName'] as String,
  downloadUrl: json['downloadUrl'] as String,
);

Map<String, dynamic> _$ImageModelToJson(_ImageModel instance) =>
    <String, dynamic>{
      'imageName': instance.imageName,
      'directoryName': instance.directoryName,
      'downloadUrl': instance.downloadUrl,
    };
