// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../models/application_models.dart';
import '../ui/assess/assess_view.dart';
import '../ui/assess/course_detail_view.dart';
import '../ui/assess/new_course_view.dart';
import '../ui/assess/user_detail_view.dart';
import '../ui/breach/breach_view.dart';
import '../ui/breach/devastation/destruction_detail_view.dart';
import '../ui/breach/devastation/new_destruction_view.dart';
import '../ui/breach/explosive_unit/explosive_unit_detail_view.dart';
import '../ui/breach/explosive_unit/new_explosive_unit_view.dart';
import '../ui/breach/obstacle/new_obstacle_view.dart';
import '../ui/breach/obstacle/obstacle_detail_view.dart';
import '../ui/conventer/shooting_view.dart';
import '../ui/database/ammo/ammo_view.dart';
import '../ui/database/build_material/build_material_view.dart';
import '../ui/database/database_view.dart';
import '../ui/database/expected_behaviour/expected_behaviour_view.dart';
import '../ui/database/expected_effect/expected_effect_view.dart';
import '../ui/database/explosive_material/explosive_material_view.dart';
import '../ui/database/gun/gun_view.dart';
import '../ui/database/initial_system/initiation_system_view.dart';
import '../ui/database/mount_type/mount_type_view.dart';
import '../ui/database/tool/tool_view.dart';
import '../ui/home/home_view.dart';
import '../ui/login/login_view.dart';
import '../ui/planner/calculate_range_view.dart';
import '../ui/planner/new_exercise_view.dart';
import '../ui/planner/planner_view.dart';
import '../ui/shooting/shooting_view.dart';
import '../ui/startup/startup_view.dart';
import '../ui/tools/calculator_view.dart';

class Routes {
  static const String startUpView = '/start-up-view';
  static const String databaseView = '/database-view';
  static const String homeView = '/home-view';
  static const String loginView = '/';
  static const String explosiveMaterialView = '/explosive-material-view';
  static const String buildMaterialView = '/build-material-view';
  static const String ammoView = '/ammo-view';
  static const String gunView = '/gun-view';
  static const String toolView = '/tool-view';
  static const String initiationSystemView = '/initiation-system-view';
  static const String breachView = '/breach-view';
  static const String newObstacleView = '/new-obstacle-view';
  static const String obstacleDetailView = '/obstacle-detail-view';
  static const String newExplosiveUnitView = '/new-explosive-unit-view';
  static const String explosiveUnitDetailView = '/explosive-unit-detail-view';
  static const String calculatorView = '/calculator-view';
  static const String newDestructionView = '/new-destruction-view';
  static const String destructionDetailView = '/destruction-detail-view';
  static const String plannerView = '/planner-view';
  static const String newExerciseView = '/new-exercise-view';
  static const String assessView = '/assess-view';
  static const String shootingView = '/shooting-view';
  static const String calculateRangeView = '/calculate-range-view';
  static const String conventerView = '/conventer-view';
  static const String mountTypeView = '/mount-type-view';
  static const String expectedBehaviourView = '/expected-behaviour-view';
  static const String expectedEffectView = '/expected-effect-view';
  static const String newCourseView = '/new-course-view';
  static const String courseDetailView = '/course-detail-view';
  static const String userDetailView = '/user-detail-view';
  static const all = <String>{
    startUpView,
    databaseView,
    homeView,
    loginView,
    explosiveMaterialView,
    buildMaterialView,
    ammoView,
    gunView,
    toolView,
    initiationSystemView,
    breachView,
    newObstacleView,
    obstacleDetailView,
    newExplosiveUnitView,
    explosiveUnitDetailView,
    calculatorView,
    newDestructionView,
    destructionDetailView,
    plannerView,
    newExerciseView,
    assessView,
    shootingView,
    calculateRangeView,
    conventerView,
    mountTypeView,
    expectedBehaviourView,
    expectedEffectView,
    newCourseView,
    courseDetailView,
    userDetailView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startUpView, page: StartUpView),
    RouteDef(Routes.databaseView, page: DatabaseView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.loginView, page: LoginView),
    RouteDef(Routes.explosiveMaterialView, page: ExplosiveMaterialView),
    RouteDef(Routes.buildMaterialView, page: BuildMaterialView),
    RouteDef(Routes.ammoView, page: AmmoView),
    RouteDef(Routes.gunView, page: GunView),
    RouteDef(Routes.toolView, page: ToolView),
    RouteDef(Routes.initiationSystemView, page: InitiationSystemView),
    RouteDef(Routes.breachView, page: BreachView),
    RouteDef(Routes.newObstacleView, page: NewObstacleView),
    RouteDef(Routes.obstacleDetailView, page: ObstacleDetailView),
    RouteDef(Routes.newExplosiveUnitView, page: NewExplosiveUnitView),
    RouteDef(Routes.explosiveUnitDetailView, page: ExplosiveUnitDetailView),
    RouteDef(Routes.calculatorView, page: CalculatorView),
    RouteDef(Routes.newDestructionView, page: NewDestructionView),
    RouteDef(Routes.destructionDetailView, page: DestructionDetailView),
    RouteDef(Routes.plannerView, page: PlannerView),
    RouteDef(Routes.newExerciseView, page: NewExerciseView),
    RouteDef(Routes.assessView, page: AssessView),
    RouteDef(Routes.shootingView, page: ShootingView),
    RouteDef(Routes.calculateRangeView, page: CalculateRangeView),
    RouteDef(Routes.conventerView, page: ConventerView),
    RouteDef(Routes.mountTypeView, page: MountTypeView),
    RouteDef(Routes.expectedBehaviourView, page: ExpectedBehaviourView),
    RouteDef(Routes.expectedEffectView, page: ExpectedEffectView),
    RouteDef(Routes.newCourseView, page: NewCourseView),
    RouteDef(Routes.courseDetailView, page: CourseDetailView),
    RouteDef(Routes.userDetailView, page: UserDetailView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    StartUpView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const StartUpView(),
        settings: data,
      );
    },
    DatabaseView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const DatabaseView(),
        settings: data,
      );
    },
    HomeView: (data) {
      var args = data.getArgs<HomeViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeView(
          key: args.key,
          id: args.id,
        ),
        settings: data,
      );
    },
    LoginView: (data) {
      var args = data.getArgs<LoginViewArguments>(
        orElse: () => LoginViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginView(key: args.key),
        settings: data,
      );
    },
    ExplosiveMaterialView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ExplosiveMaterialView(),
        settings: data,
      );
    },
    BuildMaterialView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const BuildMaterialView(),
        settings: data,
      );
    },
    AmmoView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const AmmoView(),
        settings: data,
      );
    },
    GunView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const GunView(),
        settings: data,
      );
    },
    ToolView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ToolView(),
        settings: data,
      );
    },
    InitiationSystemView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const InitiationSystemView(),
        settings: data,
      );
    },
    BreachView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const BreachView(),
        settings: data,
      );
    },
    NewObstacleView: (data) {
      var args = data.getArgs<NewObstacleViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => NewObstacleView(
          key: args.key,
          obstacle: args.obstacle,
          isUpdate: args.isUpdate,
          isRapid: args.isRapid,
        ),
        settings: data,
      );
    },
    ObstacleDetailView: (data) {
      var args = data.getArgs<ObstacleDetailViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => ObstacleDetailView(
          key: args.key,
          obstacle: args.obstacle,
        ),
        settings: data,
      );
    },
    NewExplosiveUnitView: (data) {
      var args = data.getArgs<NewExplosiveUnitViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => NewExplosiveUnitView(
          key: args.key,
          explosiveUnit: args.explosiveUnit,
          isUpdate: args.isUpdate,
          isRapid: args.isRapid,
        ),
        settings: data,
      );
    },
    ExplosiveUnitDetailView: (data) {
      var args = data.getArgs<ExplosiveUnitDetailViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => ExplosiveUnitDetailView(
          key: args.key,
          explosiveUnit: args.explosiveUnit,
        ),
        settings: data,
      );
    },
    CalculatorView: (data) {
      var args = data.getArgs<CalculatorViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => CalculatorView(
          key: args.key,
          isRapid: args.isRapid,
        ),
        settings: data,
      );
    },
    NewDestructionView: (data) {
      var args = data.getArgs<NewDestructionViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => NewDestructionView(
          key: args.key,
          destruction: args.destruction,
          isUpdate: args.isUpdate,
        ),
        settings: data,
      );
    },
    DestructionDetailView: (data) {
      var args = data.getArgs<DestructionDetailViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => DestructionDetailView(
          key: args.key,
          destruction: args.destruction,
        ),
        settings: data,
      );
    },
    PlannerView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const PlannerView(),
        settings: data,
      );
    },
    NewExerciseView: (data) {
      var args = data.getArgs<NewExerciseViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => NewExerciseView(
          key: args.key,
          exercise: args.exercise,
          isUpdate: args.isUpdate,
        ),
        settings: data,
      );
    },
    AssessView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const AssessView(),
        settings: data,
      );
    },
    ShootingView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ShootingView(),
        settings: data,
      );
    },
    CalculateRangeView: (data) {
      var args = data.getArgs<CalculateRangeViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => CalculateRangeView(
          key: args.key,
          exercise: args.exercise,
          isUpdate: args.isUpdate,
        ),
        settings: data,
      );
    },
    ConventerView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ConventerView(),
        settings: data,
      );
    },
    MountTypeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const MountTypeView(),
        settings: data,
      );
    },
    ExpectedBehaviourView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ExpectedBehaviourView(),
        settings: data,
      );
    },
    ExpectedEffectView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ExpectedEffectView(),
        settings: data,
      );
    },
    NewCourseView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const NewCourseView(),
        settings: data,
      );
    },
    CourseDetailView: (data) {
      var args = data.getArgs<CourseDetailViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => CourseDetailView(
          key: args.key,
          course: args.course,
        ),
        settings: data,
      );
    },
    UserDetailView: (data) {
      var args = data.getArgs<UserDetailViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => UserDetailView(
          key: args.key,
          user: args.user,
          course: args.course,
        ),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// HomeView arguments holder class
class HomeViewArguments {
  final Key? key;
  final int id;
  HomeViewArguments({this.key, required this.id});
}

/// LoginView arguments holder class
class LoginViewArguments {
  final Key? key;
  LoginViewArguments({this.key});
}

/// NewObstacleView arguments holder class
class NewObstacleViewArguments {
  final Key? key;
  final Obstacle? obstacle;
  final bool isUpdate;
  final bool isRapid;
  NewObstacleViewArguments(
      {this.key, this.obstacle, required this.isUpdate, required this.isRapid});
}

/// ObstacleDetailView arguments holder class
class ObstacleDetailViewArguments {
  final Key? key;
  final Obstacle obstacle;
  ObstacleDetailViewArguments({this.key, required this.obstacle});
}

/// NewExplosiveUnitView arguments holder class
class NewExplosiveUnitViewArguments {
  final Key? key;
  final ExplosiveUnit? explosiveUnit;
  final bool isUpdate;
  final bool isRapid;
  NewExplosiveUnitViewArguments(
      {this.key,
      this.explosiveUnit,
      required this.isUpdate,
      required this.isRapid});
}

/// ExplosiveUnitDetailView arguments holder class
class ExplosiveUnitDetailViewArguments {
  final Key? key;
  final ExplosiveUnit explosiveUnit;
  ExplosiveUnitDetailViewArguments({this.key, required this.explosiveUnit});
}

/// CalculatorView arguments holder class
class CalculatorViewArguments {
  final Key? key;
  final bool isRapid;
  CalculatorViewArguments({this.key, required this.isRapid});
}

/// NewDestructionView arguments holder class
class NewDestructionViewArguments {
  final Key? key;
  final Destruction? destruction;
  final bool isUpdate;
  NewDestructionViewArguments(
      {this.key, this.destruction, required this.isUpdate});
}

/// DestructionDetailView arguments holder class
class DestructionDetailViewArguments {
  final Key? key;
  final Destruction destruction;
  DestructionDetailViewArguments({this.key, required this.destruction});
}

/// NewExerciseView arguments holder class
class NewExerciseViewArguments {
  final Key? key;
  final Exercise? exercise;
  final bool isUpdate;
  NewExerciseViewArguments({this.key, this.exercise, required this.isUpdate});
}

/// CalculateRangeView arguments holder class
class CalculateRangeViewArguments {
  final Key? key;
  final Exercise? exercise;
  final bool isUpdate;
  CalculateRangeViewArguments(
      {this.key, this.exercise, required this.isUpdate});
}

/// CourseDetailView arguments holder class
class CourseDetailViewArguments {
  final Key? key;
  final Course course;
  CourseDetailViewArguments({this.key, required this.course});
}

/// UserDetailView arguments holder class
class UserDetailViewArguments {
  final Key? key;
  final User user;
  final Course course;
  UserDetailViewArguments({this.key, required this.user, required this.course});
}
