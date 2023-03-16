// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Books> _$booksSerializer = new _$BooksSerializer();
Serializer<Volume> _$volumeSerializer = new _$VolumeSerializer();
Serializer<VolumeInfo> _$volumeInfoSerializer = new _$VolumeInfoSerializer();
Serializer<Pdf> _$pdfSerializer = new _$PdfSerializer();
Serializer<ImageLinks> _$imageLinksSerializer = new _$ImageLinksSerializer();
Serializer<ReadingModes> _$readingModesSerializer =
    new _$ReadingModesSerializer();

class _$BooksSerializer implements StructuredSerializer<Books> {
  @override
  final Iterable<Type> types = const [Books, _$Books];
  @override
  final String wireName = 'Books';

  @override
  Iterable<Object?> serialize(Serializers serializers, Books object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'kind',
      serializers.serialize(object.kind, specifiedType: const FullType(String)),
      'items',
      serializers.serialize(object.items,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Volume)])),
    ];
    Object? value;
    value = object.totalItems;
    if (value != null) {
      result
        ..add('total_items')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
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
        case 'kind':
          result.kind = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Volume)]))!
              as BuiltList<Object?>);
          break;
        case 'total_items':
          result.totalItems = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$VolumeSerializer implements StructuredSerializer<Volume> {
  @override
  final Iterable<Type> types = const [Volume, _$Volume];
  @override
  final String wireName = 'Volume';

  @override
  Iterable<Object?> serialize(Serializers serializers, Volume object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'kind',
      serializers.serialize(object.kind, specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'etag',
      serializers.serialize(object.etag, specifiedType: const FullType(String)),
      'volumeInfo',
      serializers.serialize(object.volumeInfo,
          specifiedType: const FullType(VolumeInfo)),
    ];
    Object? value;
    value = object.selfLink;
    if (value != null) {
      result
        ..add('self_link')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Volume deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VolumeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'kind':
          result.kind = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'etag':
          result.etag = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'self_link':
          result.selfLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'volumeInfo':
          result.volumeInfo.replace(serializers.deserialize(value,
              specifiedType: const FullType(VolumeInfo))! as VolumeInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$VolumeInfoSerializer implements StructuredSerializer<VolumeInfo> {
  @override
  final Iterable<Type> types = const [VolumeInfo, _$VolumeInfo];
  @override
  final String wireName = 'VolumeInfo';

  @override
  Iterable<Object?> serialize(Serializers serializers, VolumeInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'authors',
      serializers.serialize(object.authors,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'pdf',
      serializers.serialize(object.pdf, specifiedType: const FullType(Pdf)),
      'imageLinks',
      serializers.serialize(object.imageLinks,
          specifiedType: const FullType(ImageLinks)),
      'readingModes',
      serializers.serialize(object.readingModes,
          specifiedType: const FullType(ReadingModes)),
    ];
    Object? value;
    value = object.subtitle;
    if (value != null) {
      result
        ..add('subtitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.publisher;
    if (value != null) {
      result
        ..add('publisher')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.averageRating;
    if (value != null) {
      result
        ..add('averageRating')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  VolumeInfo deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VolumeInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'subtitle':
          result.subtitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'authors':
          result.authors.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'publisher':
          result.publisher = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'averageRating':
          result.averageRating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'pdf':
          result.pdf.replace(serializers.deserialize(value,
              specifiedType: const FullType(Pdf))! as Pdf);
          break;
        case 'imageLinks':
          result.imageLinks.replace(serializers.deserialize(value,
              specifiedType: const FullType(ImageLinks))! as ImageLinks);
          break;
        case 'readingModes':
          result.readingModes.replace(serializers.deserialize(value,
              specifiedType: const FullType(ReadingModes))! as ReadingModes);
          break;
      }
    }

    return result.build();
  }
}

class _$PdfSerializer implements StructuredSerializer<Pdf> {
  @override
  final Iterable<Type> types = const [Pdf, _$Pdf];
  @override
  final String wireName = 'Pdf';

  @override
  Iterable<Object?> serialize(Serializers serializers, Pdf object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.acsTokenLink;
    if (value != null) {
      result
        ..add('acsTokenLink')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isAvailable;
    if (value != null) {
      result
        ..add('isAvailable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  Pdf deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PdfBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'acsTokenLink':
          result.acsTokenLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isAvailable':
          result.isAvailable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$ImageLinksSerializer implements StructuredSerializer<ImageLinks> {
  @override
  final Iterable<Type> types = const [ImageLinks, _$ImageLinks];
  @override
  final String wireName = 'ImageLinks';

  @override
  Iterable<Object?> serialize(Serializers serializers, ImageLinks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'thumbnail',
      serializers.serialize(object.thumbnail,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.smallThumbnail;
    if (value != null) {
      result
        ..add('smallThumbnail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ImageLinks deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImageLinksBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'smallThumbnail':
          result.smallThumbnail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'thumbnail':
          result.thumbnail = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ReadingModesSerializer implements StructuredSerializer<ReadingModes> {
  @override
  final Iterable<Type> types = const [ReadingModes, _$ReadingModes];
  @override
  final String wireName = 'ReadingModes';

  @override
  Iterable<Object?> serialize(Serializers serializers, ReadingModes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  ReadingModes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReadingModesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Books extends Books {
  @override
  final String kind;
  @override
  final BuiltList<Volume> items;
  @override
  final int? totalItems;

  factory _$Books([void Function(BooksBuilder)? updates]) =>
      (new BooksBuilder()..update(updates))._build();

  _$Books._({required this.kind, required this.items, this.totalItems})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(kind, r'Books', 'kind');
    BuiltValueNullFieldError.checkNotNull(items, r'Books', 'items');
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
        kind == other.kind &&
        items == other.items &&
        totalItems == other.totalItems;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, totalItems.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Books')
          ..add('kind', kind)
          ..add('items', items)
          ..add('totalItems', totalItems))
        .toString();
  }
}

class BooksBuilder implements Builder<Books, BooksBuilder> {
  _$Books? _$v;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  ListBuilder<Volume>? _items;
  ListBuilder<Volume> get items => _$this._items ??= new ListBuilder<Volume>();
  set items(ListBuilder<Volume>? items) => _$this._items = items;

  int? _totalItems;
  int? get totalItems => _$this._totalItems;
  set totalItems(int? totalItems) => _$this._totalItems = totalItems;

  BooksBuilder();

  BooksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kind = $v.kind;
      _items = $v.items.toBuilder();
      _totalItems = $v.totalItems;
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
    _$Books _$result;
    try {
      _$result = _$v ??
          new _$Books._(
              kind:
                  BuiltValueNullFieldError.checkNotNull(kind, r'Books', 'kind'),
              items: items.build(),
              totalItems: totalItems);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Books', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Volume extends Volume {
  @override
  final String kind;
  @override
  final String id;
  @override
  final String etag;
  @override
  final String? selfLink;
  @override
  final VolumeInfo volumeInfo;

  factory _$Volume([void Function(VolumeBuilder)? updates]) =>
      (new VolumeBuilder()..update(updates))._build();

  _$Volume._(
      {required this.kind,
      required this.id,
      required this.etag,
      this.selfLink,
      required this.volumeInfo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(kind, r'Volume', 'kind');
    BuiltValueNullFieldError.checkNotNull(id, r'Volume', 'id');
    BuiltValueNullFieldError.checkNotNull(etag, r'Volume', 'etag');
    BuiltValueNullFieldError.checkNotNull(volumeInfo, r'Volume', 'volumeInfo');
  }

  @override
  Volume rebuild(void Function(VolumeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VolumeBuilder toBuilder() => new VolumeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Volume &&
        kind == other.kind &&
        id == other.id &&
        etag == other.etag &&
        selfLink == other.selfLink &&
        volumeInfo == other.volumeInfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, etag.hashCode);
    _$hash = $jc(_$hash, selfLink.hashCode);
    _$hash = $jc(_$hash, volumeInfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Volume')
          ..add('kind', kind)
          ..add('id', id)
          ..add('etag', etag)
          ..add('selfLink', selfLink)
          ..add('volumeInfo', volumeInfo))
        .toString();
  }
}

class VolumeBuilder implements Builder<Volume, VolumeBuilder> {
  _$Volume? _$v;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _etag;
  String? get etag => _$this._etag;
  set etag(String? etag) => _$this._etag = etag;

  String? _selfLink;
  String? get selfLink => _$this._selfLink;
  set selfLink(String? selfLink) => _$this._selfLink = selfLink;

  VolumeInfoBuilder? _volumeInfo;
  VolumeInfoBuilder get volumeInfo =>
      _$this._volumeInfo ??= new VolumeInfoBuilder();
  set volumeInfo(VolumeInfoBuilder? volumeInfo) =>
      _$this._volumeInfo = volumeInfo;

  VolumeBuilder();

  VolumeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kind = $v.kind;
      _id = $v.id;
      _etag = $v.etag;
      _selfLink = $v.selfLink;
      _volumeInfo = $v.volumeInfo.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Volume other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Volume;
  }

  @override
  void update(void Function(VolumeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Volume build() => _build();

  _$Volume _build() {
    _$Volume _$result;
    try {
      _$result = _$v ??
          new _$Volume._(
              kind: BuiltValueNullFieldError.checkNotNull(
                  kind, r'Volume', 'kind'),
              id: BuiltValueNullFieldError.checkNotNull(id, r'Volume', 'id'),
              etag: BuiltValueNullFieldError.checkNotNull(
                  etag, r'Volume', 'etag'),
              selfLink: selfLink,
              volumeInfo: volumeInfo.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'volumeInfo';
        volumeInfo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Volume', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$VolumeInfo extends VolumeInfo {
  @override
  final String? subtitle;
  @override
  final String title;
  @override
  final BuiltList<String> authors;
  @override
  final String? publisher;
  @override
  final int? averageRating;
  @override
  final Pdf pdf;
  @override
  final ImageLinks imageLinks;
  @override
  final ReadingModes readingModes;

  factory _$VolumeInfo([void Function(VolumeInfoBuilder)? updates]) =>
      (new VolumeInfoBuilder()..update(updates))._build();

  _$VolumeInfo._(
      {this.subtitle,
      required this.title,
      required this.authors,
      this.publisher,
      this.averageRating,
      required this.pdf,
      required this.imageLinks,
      required this.readingModes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'VolumeInfo', 'title');
    BuiltValueNullFieldError.checkNotNull(authors, r'VolumeInfo', 'authors');
    BuiltValueNullFieldError.checkNotNull(pdf, r'VolumeInfo', 'pdf');
    BuiltValueNullFieldError.checkNotNull(
        imageLinks, r'VolumeInfo', 'imageLinks');
    BuiltValueNullFieldError.checkNotNull(
        readingModes, r'VolumeInfo', 'readingModes');
  }

  @override
  VolumeInfo rebuild(void Function(VolumeInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VolumeInfoBuilder toBuilder() => new VolumeInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VolumeInfo &&
        subtitle == other.subtitle &&
        title == other.title &&
        authors == other.authors &&
        publisher == other.publisher &&
        averageRating == other.averageRating &&
        pdf == other.pdf &&
        imageLinks == other.imageLinks &&
        readingModes == other.readingModes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, subtitle.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, authors.hashCode);
    _$hash = $jc(_$hash, publisher.hashCode);
    _$hash = $jc(_$hash, averageRating.hashCode);
    _$hash = $jc(_$hash, pdf.hashCode);
    _$hash = $jc(_$hash, imageLinks.hashCode);
    _$hash = $jc(_$hash, readingModes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VolumeInfo')
          ..add('subtitle', subtitle)
          ..add('title', title)
          ..add('authors', authors)
          ..add('publisher', publisher)
          ..add('averageRating', averageRating)
          ..add('pdf', pdf)
          ..add('imageLinks', imageLinks)
          ..add('readingModes', readingModes))
        .toString();
  }
}

class VolumeInfoBuilder implements Builder<VolumeInfo, VolumeInfoBuilder> {
  _$VolumeInfo? _$v;

  String? _subtitle;
  String? get subtitle => _$this._subtitle;
  set subtitle(String? subtitle) => _$this._subtitle = subtitle;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ListBuilder<String>? _authors;
  ListBuilder<String> get authors =>
      _$this._authors ??= new ListBuilder<String>();
  set authors(ListBuilder<String>? authors) => _$this._authors = authors;

  String? _publisher;
  String? get publisher => _$this._publisher;
  set publisher(String? publisher) => _$this._publisher = publisher;

  int? _averageRating;
  int? get averageRating => _$this._averageRating;
  set averageRating(int? averageRating) =>
      _$this._averageRating = averageRating;

  PdfBuilder? _pdf;
  PdfBuilder get pdf => _$this._pdf ??= new PdfBuilder();
  set pdf(PdfBuilder? pdf) => _$this._pdf = pdf;

  ImageLinksBuilder? _imageLinks;
  ImageLinksBuilder get imageLinks =>
      _$this._imageLinks ??= new ImageLinksBuilder();
  set imageLinks(ImageLinksBuilder? imageLinks) =>
      _$this._imageLinks = imageLinks;

  ReadingModesBuilder? _readingModes;
  ReadingModesBuilder get readingModes =>
      _$this._readingModes ??= new ReadingModesBuilder();
  set readingModes(ReadingModesBuilder? readingModes) =>
      _$this._readingModes = readingModes;

  VolumeInfoBuilder();

  VolumeInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subtitle = $v.subtitle;
      _title = $v.title;
      _authors = $v.authors.toBuilder();
      _publisher = $v.publisher;
      _averageRating = $v.averageRating;
      _pdf = $v.pdf.toBuilder();
      _imageLinks = $v.imageLinks.toBuilder();
      _readingModes = $v.readingModes.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VolumeInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VolumeInfo;
  }

  @override
  void update(void Function(VolumeInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VolumeInfo build() => _build();

  _$VolumeInfo _build() {
    _$VolumeInfo _$result;
    try {
      _$result = _$v ??
          new _$VolumeInfo._(
              subtitle: subtitle,
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'VolumeInfo', 'title'),
              authors: authors.build(),
              publisher: publisher,
              averageRating: averageRating,
              pdf: pdf.build(),
              imageLinks: imageLinks.build(),
              readingModes: readingModes.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'authors';
        authors.build();

        _$failedField = 'pdf';
        pdf.build();
        _$failedField = 'imageLinks';
        imageLinks.build();
        _$failedField = 'readingModes';
        readingModes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VolumeInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Pdf extends Pdf {
  @override
  final String? acsTokenLink;
  @override
  final bool? isAvailable;

  factory _$Pdf([void Function(PdfBuilder)? updates]) =>
      (new PdfBuilder()..update(updates))._build();

  _$Pdf._({this.acsTokenLink, this.isAvailable}) : super._();

  @override
  Pdf rebuild(void Function(PdfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PdfBuilder toBuilder() => new PdfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Pdf &&
        acsTokenLink == other.acsTokenLink &&
        isAvailable == other.isAvailable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, acsTokenLink.hashCode);
    _$hash = $jc(_$hash, isAvailable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Pdf')
          ..add('acsTokenLink', acsTokenLink)
          ..add('isAvailable', isAvailable))
        .toString();
  }
}

class PdfBuilder implements Builder<Pdf, PdfBuilder> {
  _$Pdf? _$v;

  String? _acsTokenLink;
  String? get acsTokenLink => _$this._acsTokenLink;
  set acsTokenLink(String? acsTokenLink) => _$this._acsTokenLink = acsTokenLink;

  bool? _isAvailable;
  bool? get isAvailable => _$this._isAvailable;
  set isAvailable(bool? isAvailable) => _$this._isAvailable = isAvailable;

  PdfBuilder();

  PdfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _acsTokenLink = $v.acsTokenLink;
      _isAvailable = $v.isAvailable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Pdf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Pdf;
  }

  @override
  void update(void Function(PdfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Pdf build() => _build();

  _$Pdf _build() {
    final _$result = _$v ??
        new _$Pdf._(acsTokenLink: acsTokenLink, isAvailable: isAvailable);
    replace(_$result);
    return _$result;
  }
}

class _$ImageLinks extends ImageLinks {
  @override
  final String? smallThumbnail;
  @override
  final String thumbnail;

  factory _$ImageLinks([void Function(ImageLinksBuilder)? updates]) =>
      (new ImageLinksBuilder()..update(updates))._build();

  _$ImageLinks._({this.smallThumbnail, required this.thumbnail}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        thumbnail, r'ImageLinks', 'thumbnail');
  }

  @override
  ImageLinks rebuild(void Function(ImageLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageLinksBuilder toBuilder() => new ImageLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageLinks &&
        smallThumbnail == other.smallThumbnail &&
        thumbnail == other.thumbnail;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, smallThumbnail.hashCode);
    _$hash = $jc(_$hash, thumbnail.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImageLinks')
          ..add('smallThumbnail', smallThumbnail)
          ..add('thumbnail', thumbnail))
        .toString();
  }
}

class ImageLinksBuilder implements Builder<ImageLinks, ImageLinksBuilder> {
  _$ImageLinks? _$v;

  String? _smallThumbnail;
  String? get smallThumbnail => _$this._smallThumbnail;
  set smallThumbnail(String? smallThumbnail) =>
      _$this._smallThumbnail = smallThumbnail;

  String? _thumbnail;
  String? get thumbnail => _$this._thumbnail;
  set thumbnail(String? thumbnail) => _$this._thumbnail = thumbnail;

  ImageLinksBuilder();

  ImageLinksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _smallThumbnail = $v.smallThumbnail;
      _thumbnail = $v.thumbnail;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImageLinks other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImageLinks;
  }

  @override
  void update(void Function(ImageLinksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImageLinks build() => _build();

  _$ImageLinks _build() {
    final _$result = _$v ??
        new _$ImageLinks._(
            smallThumbnail: smallThumbnail,
            thumbnail: BuiltValueNullFieldError.checkNotNull(
                thumbnail, r'ImageLinks', 'thumbnail'));
    replace(_$result);
    return _$result;
  }
}

class _$ReadingModes extends ReadingModes {
  @override
  final bool text;

  factory _$ReadingModes([void Function(ReadingModesBuilder)? updates]) =>
      (new ReadingModesBuilder()..update(updates))._build();

  _$ReadingModes._({required this.text}) : super._() {
    BuiltValueNullFieldError.checkNotNull(text, r'ReadingModes', 'text');
  }

  @override
  ReadingModes rebuild(void Function(ReadingModesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReadingModesBuilder toBuilder() => new ReadingModesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReadingModes && text == other.text;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReadingModes')..add('text', text))
        .toString();
  }
}

class ReadingModesBuilder
    implements Builder<ReadingModes, ReadingModesBuilder> {
  _$ReadingModes? _$v;

  bool? _text;
  bool? get text => _$this._text;
  set text(bool? text) => _$this._text = text;

  ReadingModesBuilder();

  ReadingModesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _text = $v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReadingModes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReadingModes;
  }

  @override
  void update(void Function(ReadingModesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReadingModes build() => _build();

  _$ReadingModes _build() {
    final _$result = _$v ??
        new _$ReadingModes._(
            text: BuiltValueNullFieldError.checkNotNull(
                text, r'ReadingModes', 'text'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
