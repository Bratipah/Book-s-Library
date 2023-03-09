// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Books> _$booksSerializer = new _$BooksSerializer();
Serializer<Volume> _$volumeSerializer = new _$VolumeSerializer();
Serializer<VolumeInfo> _$volumeInfoSerializer = new _$VolumeInfoSerializer();

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
      'total_items',
      serializers.serialize(object.totalItems,
          specifiedType: const FullType(int)),
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
              specifiedType: const FullType(int))! as int;
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
      'self_link',
      serializers.serialize(object.selfLink,
          specifiedType: const FullType(String)),
      'volume_info',
      serializers.serialize(object.volumeInfo,
          specifiedType: const FullType(VolumeInfo)),
    ];

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
              specifiedType: const FullType(String))! as String;
          break;
        case 'volume_info':
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
    ];

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
  final int totalItems;

  factory _$Books([void Function(BooksBuilder)? updates]) =>
      (new BooksBuilder()..update(updates))._build();

  _$Books._({required this.kind, required this.items, required this.totalItems})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(kind, r'Books', 'kind');
    BuiltValueNullFieldError.checkNotNull(items, r'Books', 'items');
    BuiltValueNullFieldError.checkNotNull(totalItems, r'Books', 'totalItems');
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
              totalItems: BuiltValueNullFieldError.checkNotNull(
                  totalItems, r'Books', 'totalItems'));
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
  final String selfLink;
  @override
  final VolumeInfo volumeInfo;

  factory _$Volume([void Function(VolumeBuilder)? updates]) =>
      (new VolumeBuilder()..update(updates))._build();

  _$Volume._(
      {required this.kind,
      required this.id,
      required this.etag,
      required this.selfLink,
      required this.volumeInfo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(kind, r'Volume', 'kind');
    BuiltValueNullFieldError.checkNotNull(id, r'Volume', 'id');
    BuiltValueNullFieldError.checkNotNull(etag, r'Volume', 'etag');
    BuiltValueNullFieldError.checkNotNull(selfLink, r'Volume', 'selfLink');
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
              selfLink: BuiltValueNullFieldError.checkNotNull(
                  selfLink, r'Volume', 'selfLink'),
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
  final String title;
  @override
  final BuiltList<String> authors;

  factory _$VolumeInfo([void Function(VolumeInfoBuilder)? updates]) =>
      (new VolumeInfoBuilder()..update(updates))._build();

  _$VolumeInfo._({required this.title, required this.authors}) : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'VolumeInfo', 'title');
    BuiltValueNullFieldError.checkNotNull(authors, r'VolumeInfo', 'authors');
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
        title == other.title &&
        authors == other.authors;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, authors.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VolumeInfo')
          ..add('title', title)
          ..add('authors', authors))
        .toString();
  }
}

class VolumeInfoBuilder implements Builder<VolumeInfo, VolumeInfoBuilder> {
  _$VolumeInfo? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ListBuilder<String>? _authors;
  ListBuilder<String> get authors =>
      _$this._authors ??= new ListBuilder<String>();
  set authors(ListBuilder<String>? authors) => _$this._authors = authors;

  VolumeInfoBuilder();

  VolumeInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _authors = $v.authors.toBuilder();
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
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'VolumeInfo', 'title'),
              authors: authors.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'authors';
        authors.build();
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
