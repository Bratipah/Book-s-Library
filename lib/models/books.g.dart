// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Books> _$booksSerializer = new _$BooksSerializer();

class _$BooksSerializer implements StructuredSerializer<Books> {
  @override
  final Iterable<Type> types = const [Books, _$Books];
  @override
  final String wireName = 'Books';

  @override
  Iterable<Object?> serialize(Serializers serializers, Books object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'image',
      serializers.serialize(object.image,
          specifiedType: const FullType(String)),
      'author',
      serializers.serialize(object.author,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'price',
      serializers.serialize(object.price, specifiedType: const FullType(int)),
      'rating',
      serializers.serialize(object.rating, specifiedType: const FullType(int)),
      'isFinished',
      serializers.serialize(object.isFinished,
          specifiedType: const FullType(bool)),
      'isPopular',
      serializers.serialize(object.isPopular,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Books deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BooksBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'author':
          result.author = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'isFinished':
          result.isFinished = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'isPopular':
          result.isPopular = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Books extends Books {
  @override
  final int id;
  @override
  final String title;
  @override
  final String image;
  @override
  final String author;
  @override
  final String description;
  @override
  final int price;
  @override
  final int rating;
  @override
  final bool isFinished;
  @override
  final bool isPopular;

  factory _$Books([void Function(BooksBuilder)? updates]) =>
      (new BooksBuilder()..update(updates))._build();

  _$Books._(
      {required this.id,
      required this.title,
      required this.image,
      required this.author,
      required this.description,
      required this.price,
      required this.rating,
      required this.isFinished,
      required this.isPopular})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Books', 'id');
    BuiltValueNullFieldError.checkNotNull(title, r'Books', 'title');
    BuiltValueNullFieldError.checkNotNull(image, r'Books', 'image');
    BuiltValueNullFieldError.checkNotNull(author, r'Books', 'author');
    BuiltValueNullFieldError.checkNotNull(description, r'Books', 'description');
    BuiltValueNullFieldError.checkNotNull(price, r'Books', 'price');
    BuiltValueNullFieldError.checkNotNull(rating, r'Books', 'rating');
    BuiltValueNullFieldError.checkNotNull(isFinished, r'Books', 'isFinished');
    BuiltValueNullFieldError.checkNotNull(isPopular, r'Books', 'isPopular');
  }

  @override
  Books rebuild(void Function(BooksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BooksBuilder toBuilder() => new BooksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Books &&
        id == other.id &&
        title == other.title &&
        image == other.image &&
        author == other.author &&
        description == other.description &&
        price == other.price &&
        rating == other.rating &&
        isFinished == other.isFinished &&
        isPopular == other.isPopular;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, author.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, isFinished.hashCode);
    _$hash = $jc(_$hash, isPopular.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Books')
          ..add('id', id)
          ..add('title', title)
          ..add('image', image)
          ..add('author', author)
          ..add('description', description)
          ..add('price', price)
          ..add('rating', rating)
          ..add('isFinished', isFinished)
          ..add('isPopular', isPopular))
        .toString();
  }
}

class BooksBuilder implements Builder<Books, BooksBuilder> {
  _$Books? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _author;
  String? get author => _$this._author;
  set author(String? author) => _$this._author = author;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  int? _rating;
  int? get rating => _$this._rating;
  set rating(int? rating) => _$this._rating = rating;

  bool? _isFinished;
  bool? get isFinished => _$this._isFinished;
  set isFinished(bool? isFinished) => _$this._isFinished = isFinished;

  bool? _isPopular;
  bool? get isPopular => _$this._isPopular;
  set isPopular(bool? isPopular) => _$this._isPopular = isPopular;

  BooksBuilder();

  BooksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _image = $v.image;
      _author = $v.author;
      _description = $v.description;
      _price = $v.price;
      _rating = $v.rating;
      _isFinished = $v.isFinished;
      _isPopular = $v.isPopular;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Books other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Books;
  }

  @override
  void update(void Function(BooksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Books build() => _build();

  _$Books _build() {
    final _$result = _$v ??
        new _$Books._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Books', 'id'),
            title:
                BuiltValueNullFieldError.checkNotNull(title, r'Books', 'title'),
            image:
                BuiltValueNullFieldError.checkNotNull(image, r'Books', 'image'),
            author: BuiltValueNullFieldError.checkNotNull(
                author, r'Books', 'author'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'Books', 'description'),
            price:
                BuiltValueNullFieldError.checkNotNull(price, r'Books', 'price'),
            rating: BuiltValueNullFieldError.checkNotNull(
                rating, r'Books', 'rating'),
            isFinished: BuiltValueNullFieldError.checkNotNull(
                isFinished, r'Books', 'isFinished'),
            isPopular: BuiltValueNullFieldError.checkNotNull(
                isPopular, r'Books', 'isPopular'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
