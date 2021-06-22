import 'package:hive/hive.dart';

part 'system.g.dart';

@HiveType(typeId: 1)
class StoreSystemData extends HiveObject {
  @HiveField(0)
  String apiToken;

  reset() {
    apiToken = null;
    this.save();
  }
}
