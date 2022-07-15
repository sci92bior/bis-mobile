
import 'package:bis/generated/l10n.dart';
import 'package:bis/services/course/course_service.dart';
import 'package:bis/services/database/ammo_service.dart';
import 'package:bis/services/database/build_material_service.dart';
import 'package:bis/services/database/categories_service.dart';
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
import 'package:bis/services/media_service.dart';
import 'package:bis/services/pdf/pdf_service.dart';
import 'package:bis/services/storage_service.dart';
import 'package:bis/services/user_service.dart';
import 'package:bis/ui/assess/assess_view.dart';
import 'package:bis/ui/assess/course_detail_view.dart';
import 'package:bis/ui/assess/new_course_view.dart';
import 'package:bis/ui/assess/user_detail_view.dart';
import 'package:bis/ui/breach/devastation/destruction_detail_view.dart';
import 'package:bis/ui/breach/devastation/new_destruction_view.dart';
import 'package:bis/ui/breach/explosive_unit/explosive_unit_detail_view.dart';
import 'package:bis/ui/breach/explosive_unit/new_explosive_unit_view.dart';
import 'package:bis/ui/breach/obstacle/new_obstacle_view.dart';
import 'package:bis/ui/breach/obstacle/obstacle_detail_view.dart';
import 'package:bis/ui/conventer/shooting_view.dart';
import 'package:bis/ui/database/ammo/ammo_view.dart';
import 'package:bis/ui/database/build_material/build_material_view.dart';
import 'package:bis/ui/database/database_view.dart';
import 'package:bis/ui/database/expected_behaviour/expected_behaviour_view.dart';
import 'package:bis/ui/database/expected_effect/expected_effect_view.dart';
import 'package:bis/ui/database/explosive_material/explosive_material_view.dart';
import 'package:bis/ui/database/gun/gun_view.dart';
import 'package:bis/ui/database/initial_system/initiation_system_view.dart';
import 'package:bis/ui/database/mount_type/mount_type_view.dart';
import 'package:bis/ui/database/tool/tool_view.dart';
import 'package:bis/ui/home/home_view.dart';
import 'package:bis/ui/login/login_view.dart';
import 'package:bis/ui/breach/breach_view.dart';
import 'package:bis/ui/planner/calculate_range_view.dart';
import 'package:bis/ui/planner/new_exercise_view.dart';
import 'package:bis/ui/planner/planner_view.dart';
import 'package:bis/ui/shooting/shooting_view.dart';
import 'package:bis/ui/startup/startup_view.dart';
import 'package:bis/ui/tools/calculator_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: StartUpView),
    MaterialRoute(page: DatabaseView),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: LoginView , initial: true),
    MaterialRoute(page: ExplosiveMaterialView),
    MaterialRoute(page: BuildMaterialView),
    MaterialRoute(page: AmmoView),
    MaterialRoute(page: GunView),
    MaterialRoute(page: ToolView),
    MaterialRoute(page: InitiationSystemView),
    MaterialRoute(page: BreachView),
    MaterialRoute(page: NewObstacleView),
    MaterialRoute(page: ObstacleDetailView),
    MaterialRoute(page: NewExplosiveUnitView),
    MaterialRoute(page: ExplosiveUnitDetailView),
    MaterialRoute(page: CalculatorView),
    MaterialRoute(page: NewDestructionView),
    MaterialRoute(page: DestructionDetailView),
    MaterialRoute(page: PlannerView),
    MaterialRoute(page: NewExerciseView),
    MaterialRoute(page: AssessView),
    MaterialRoute(page: ShootingView),
    MaterialRoute(page: CalculateRangeView),
    MaterialRoute(page: ConventerView),
    MaterialRoute(page: MountTypeView),
    MaterialRoute(page: ExpectedBehaviourView),
    MaterialRoute(page: ExpectedEffectView),
    MaterialRoute(page: NewCourseView),
    MaterialRoute(page: CourseDetailView),
    MaterialRoute(page: UserDetailView),
  ],
  dependencies: [
    Singleton(classType: NavigationService),
    Singleton(classType: StorageService),
    Singleton(classType: I10n),
    Singleton(classType: BuildMaterialService),
    Singleton(classType: MediaService),
    Singleton(classType: ObstacleService),
    Singleton(classType: SnackbarService),
    Singleton(classType: ExplosiveUnitService),
    Singleton(classType: ExplosiveMaterialService),
    Singleton(classType : DestructionService),
    Singleton(classType : GunsService),
    Singleton(classType : InitiationSystemService),
    Singleton(classType : ToolsService),
    Singleton(classType : UserService),
    Singleton(classType: DialogService),
    Singleton(classType: AmmoService),
    Singleton(classType: ExerciseService),
    Singleton(classType: MountTypeService),
    Singleton(classType: ExpectedBehaviourService),
    Singleton(classType: ExpectedEffectService),
    Singleton(classType: CourseService),
    Singleton(classType: PdfService),
    Singleton(classType: DatabaseCategoriesService)
  ],
  logger: StackedLogger(),
)
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}
