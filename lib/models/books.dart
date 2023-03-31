import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'dart:convert';

part 'books.g.dart';

abstract class Books implements Built<Books, BooksBuilder> {
  @BuiltValueField(wireName: 'kind')
  String? get kind;
  @BuiltValueField(wireName: 'items')
  BuiltList<Volume>? get items;
  @BuiltValueField(wireName: 'total_items')
  int? get totalItems;

  Books._();
  factory Books([void Function(BooksBuilder) updates]) = _$Books;

  static Serializer<Books> get serializer => _$booksSerializer;
}

abstract class Volume implements Built<Volume, VolumeBuilder> {

  @BuiltValueField(wireName: 'kind')
  String? get kind;
  @BuiltValueField(wireName: 'id')
  String? get id;
  @BuiltValueField(wireName: 'etag')
  String? get etag;
  @BuiltValueField(wireName: 'self_link')
  String? get selfLink;
  @BuiltValueField(wireName: 'volumeInfo')
  VolumeInfo get volumeInfo;


  Volume._();
  factory Volume([void Function(VolumeBuilder) updates]) = _$Volume;

  static Serializer<Volume> get serializer => _$volumeSerializer;
}

abstract class VolumeInfo implements Built<VolumeInfo, VolumeInfoBuilder> {
  @BuiltValueField(wireName: 'subtitle')
  String? get subtitle;
  @BuiltValueField(wireName: 'title')
  String? get title;
  // @BuiltValueField(wireName: 'pageCount')
  // int get pageCount;
  @BuiltValueField(wireName: 'authors')
  BuiltList<String> get authors;
  @BuiltValueField(wireName: 'publisher')
  String? get publisher;
  @BuiltValueField(wireName: 'averageRating')
  int? get averageRating;
  @BuiltValueField(wireName: 'pdf')
  Pdf get pdf;
  @BuiltValueField(wireName: 'imageLinks')
  ImageLinks? get imageLinks;
  @BuiltValueField(wireName: 'readingModes')
  ReadingModes? get readingModes;
  @BuiltValueField(wireName: 'pageCount')
  int? get pageCount;

  // BuiltList<IndustryIdentifiers> get industryIdentifiers;

  VolumeInfo._();
  factory VolumeInfo([void Function(VolumeInfoBuilder) updates]) = _$VolumeInfo;

  static Serializer<VolumeInfo> get serializer => _$volumeInfoSerializer;
}

abstract class Pdf implements Built<Pdf, PdfBuilder> {
  @BuiltValueField(wireName: 'acsTokenLink')
  String? get acsTokenLink;
  @BuiltValueField(wireName: 'isAvailable')
  bool? get isAvailable;

  Pdf._();
  factory Pdf([void Function(PdfBuilder) updates]) = _$Pdf;

  static Serializer<Pdf> get serializer => _$pdfSerializer;
}

abstract class ImageLinks implements Built<ImageLinks, ImageLinksBuilder> {
  @BuiltValueField(wireName: 'smallThumbnail')
  String? get smallThumbnail;
  @BuiltValueField(wireName: 'thumbnail')
  String? get thumbnail;

  ImageLinks._();
  factory ImageLinks([void Function(ImageLinksBuilder) updates]) = _$ImageLinks;

  static Serializer<ImageLinks> get serializer => _$imageLinksSerializer;
}

abstract class ReadingModes implements Built<ReadingModes, ReadingModesBuilder> {
  @BuiltValueField(wireName: 'text')
  bool? get text;

  ReadingModes._();
  factory ReadingModes([void Function(ReadingModesBuilder) updates]) = _$ReadingModes;

  static Serializer<ReadingModes> get serializer => _$readingModesSerializer;
}