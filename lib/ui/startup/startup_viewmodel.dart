
import 'package:bis/app/app.logger.dart';
import 'package:bis/app/app.locator.dart';
import 'package:bis/app/app.router.dart';
import 'package:bis/services/course/course_service.dart';
import 'package:bis/services/database/ammo_service.dart';
import 'package:bis/services/database/build_material_service.dart';
import 'package:bis/services/database/destruction_service.dart';
import 'package:bis/services/database/exercise_service.dart';
import 'package:bis/services/database/expected_behaviour_service.dart';
import 'package:bis/services/database/expected_effect_service.dart';
import 'package:bis/services/database/explosive_material_service.dart';
import 'package:bis/services/database/explosive_unit_service.dart';
import 'package:bis/services/database/guns_service.dart';
import 'package:bis/services/database/initiation_system_service.dart';
import 'package:bis/services/database/mount_type_service.dart';
import 'package:bis/services/database/obstacle_service.dart';
import 'package:bis/services/database/tools_service.dart';
import 'package:bis/services/storage_service.dart';
import 'package:bis/services/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:bis/generated/l10n.dart';

import '../../services/pdf/pdf_service.dart';

class StartUpViewModel extends BaseViewModel {
  final log = getLogger('StartUpViewModel');
  final _navigationService= locator<NavigationService>();
  final _storageService= locator<StorageService>();
  final _concreteMaterialService= locator<BuildMaterialService>();
  final _obstacleService= locator<ObstacleService>();
  final _explosiveMaterialService= locator<ExplosiveMaterialService>();
  final _explosiveUnitService= locator<ExplosiveUnitService>();
  final _gunsService= locator<GunsService>();
  final _toolsService= locator<ToolsService>();
  final _ammoService= locator<AmmoService>();
  final _destructionService= locator<DestructionService>();
  final _initiationSystemService= locator<InitiationSystemService>();
  final _exerciseService= locator<ExerciseService>();
  final _userService= locator<UserService>();
  final _mountTypeService= locator<MountTypeService>();
  final _expectedBehaviourService= locator<ExpectedBehaviourService>();
  final _expectedEffectService= locator<ExpectedEffectService>();
  final _courseService= locator<CourseService>();
  final _pdfService = locator<PdfService>();

  Future<void> runStartupLogic() async {
    await _storageService.initialise();
    await _concreteMaterialService.initialise();
    await _obstacleService.initialise();
    await _explosiveUnitService.initialise();
    await _explosiveMaterialService.initialise();
    await _gunsService.initialise();
    await _toolsService.initialise();
    await _destructionService.initialise();
    await _initiationSystemService.initialise();
    await _initiationSystemService.initialise();
    await _ammoService.initialise();
    await _userService.initialise();
    await _exerciseService.initialise();
    await _mountTypeService.initialise();
    await _expectedBehaviourService.initialise();
    await _expectedEffectService.initialise();
    await _courseService.initialise();
    await _pdfService.initialise();
    _navigationService.clearStackAndShow(Routes.loginView);
  }
}
