// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../generated/l10n.dart';
import '../services/course/course_service.dart';
import '../services/database/ammo_service.dart';
import '../services/database/build_material_service.dart';
import '../services/database/destruction_service.dart';
import '../services/database/exercise_service.dart';
import '../services/database/expected_behaviour_service.dart';
import '../services/database/expected_effect_service.dart';
import '../services/database/explosive_material_service.dart';
import '../services/database/explosive_unit_service.dart';
import '../services/database/guns_service.dart';
import '../services/database/initiation_system_service.dart';
import '../services/database/mount_type_service.dart';
import '../services/database/obstacle_service.dart';
import '../services/database/tools_service.dart';
import '../services/media_service.dart';
import '../services/pdf/pdf_service.dart';
import '../services/storage_service.dart';
import '../services/user_service.dart';

final locator = StackedLocator.instance;

void setupLocator({String? environment, EnvironmentFilter? environmentFilter}) {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  locator.registerSingleton(NavigationService());
  locator.registerSingleton(StorageService());
  locator.registerSingleton(I10n());
  locator.registerSingleton(BuildMaterialService());
  locator.registerSingleton(MediaService());
  locator.registerSingleton(ObstacleService());
  locator.registerSingleton(SnackbarService());
  locator.registerSingleton(ExplosiveUnitService());
  locator.registerSingleton(ExplosiveMaterialService());
  locator.registerSingleton(DestructionService());
  locator.registerSingleton(GunsService());
  locator.registerSingleton(InitiationSystemService());
  locator.registerSingleton(ToolsService());
  locator.registerSingleton(UserService());
  locator.registerSingleton(DialogService());
  locator.registerSingleton(AmmoService());
  locator.registerSingleton(ExerciseService());
  locator.registerSingleton(MountTypeService());
  locator.registerSingleton(ExpectedBehaviourService());
  locator.registerSingleton(ExpectedEffectService());
  locator.registerSingleton(CourseService());
  locator.registerSingleton(PdfService());
}
