import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:test_ui/models/books.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  Books,  //model class
])
final Serializers serializers =
(_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();