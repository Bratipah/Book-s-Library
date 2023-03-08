import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:test_ui/models/serializers.dart';

part 'books.g.dart';

abstract class Books implements Built<Books, BooksBuilder> {
  Books._();

  factory Books([updates(BooksBuilder b)]) = _$Books;

  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'title')
  String get title;
  @BuiltValueField(wireName: 'image')
  String get image;
  @BuiltValueField(wireName: 'author')
  String get author;
  @BuiltValueField(wireName: 'description')
  String get description;
  @BuiltValueField(wireName: 'price')
  int get price;
  @BuiltValueField(wireName: 'rating')
  int get rating;
  @BuiltValueField(wireName: 'isFinished')
  bool get isFinished;
  @BuiltValueField(wireName: 'isPopular')
  bool get isPopular;
  String toJson() {
    return json.encode(serializers.serializeWith(Books.serializer, this));
  }

  static Books fromJson(String jsonString) {
    return serializers.deserializeWith(
        Books.serializer, json.decode(jsonString));
  }

  static Serializer<Books> get serializer => _$booksSerializer;
}
