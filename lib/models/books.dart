import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value_generator/built_value_generator.dart';
import 'package:built_collection/built_collection.dart';

part 'books.g.dart';

abstract class Books implements Built<Books, BooksBuilder> {
  @BuiltValueField(wireName: 'kind')
  String get kind;
  @BuiltValueField(wireName: 'items')
  BuiltList<Volume> get items;
  @BuiltValueField(wireName: 'total_items')
  int get totalItems;

  Books._();
  factory Books([void Function(BooksBuilder) updates]) = _$Books;

  static Serializer<Books> get serializer => _$booksSerializer;
}

abstract class Volume implements Built<Volume, VolumeBuilder> {
  @BuiltValueField(wireName: 'kind')
  String get kind;
  @BuiltValueField(wireName: 'id')
  String get id;
  @BuiltValueField(wireName: 'etag')
  String get etag;
  @BuiltValueField(wireName: 'self_link')
  String get selfLink;
  @BuiltValueField(wireName: 'volume_info')
  VolumeInfo get volumeInfo;

  Volume._();
  factory Volume([void Function(VolumeBuilder) updates]) = _$Volume;

  static Serializer<Volume> get serializer => _$volumeSerializer;
}

abstract class VolumeInfo implements Built<VolumeInfo, VolumeInfoBuilder> {
  @BuiltValueField(wireName: 'title')
  String get title;
  @BuiltValueField(wireName: 'authors')
  BuiltList<String> get authors;

  VolumeInfo._();
  factory VolumeInfo([void Function(VolumeInfoBuilder) updates]) = _$VolumeInfo;

  static Serializer<VolumeInfo> get serializer => _$volumeInfoSerializer;
}