import 'package:bis/app/app.locator.dart';
import 'package:bis/services/storage_service.dart';

abstract class DatabaseService {
  final storageService = locator<StorageService>();

  void synchroniseWithExternalDatabase();

  List<String> getListWithNames();

  Future<void> initialise();

}