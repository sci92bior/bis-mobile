import 'package:freezed_annotation/freezed_annotation.dart';

part 'application_models.freezed.dart';

part 'application_models.g.dart';

abstract class DatabaseEntity {
  late String name;
}

@freezed
class User with _$User {
  User._();

  factory User({
    required String userName,
    String? displayName,
    @Default(false) bool isInstructor,

  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
abstract class Address with _$Address {
  factory Address({
    String? id,
    required String placeId,
    required double lattitude,
    required double longitute,
    String? street,
    String? city,
    String? state,
    String? postalCode,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}

/*
@freezed
abstract class AppNotification with _$AppNotification{
  factory AppNotification({
    required String? id,
    required String subject,
    required String content,
    required String type,
    @Default(false) bool isRead,
  }) = _AppNotification;

  factory AppNotification.fromJson(Map<String, dynamic> json) =>
      _$AppNotificationFromJson(json);
}

@freezed
abstract class DeviceInfo with _$DeviceInfo{
  factory DeviceInfo ({
    String? model,
    String? os,
    String? producer,
    String? deviceId,
    String? firebaseId,
  }) = _DeviceInfo;

  factory DeviceInfo.fromJson(Map<String, dynamic> json) =>
      _$DeviceInfoFromJson(json);

}
*/

@freezed
abstract class ExplosiveMaterial with _$ExplosiveMaterial {
  factory ExplosiveMaterial({
    required String name,
    required double rFactor,
    required double grain,
    String? unitType,
  }) = _ExplosiveMaterial;

  factory ExplosiveMaterial.fromJson(Map<String, dynamic> json) =>
      _$ExplosiveMaterialFromJson(json);
}

@freezed
abstract class BuildMaterial with _$BuildMaterial {
  factory BuildMaterial({required String name, required double aFactor}) =
      _ConcreteMaterial;

  factory BuildMaterial.fromJson(Map<String, dynamic> json) =>
      _$BuildMaterialFromJson(json);
}

@freezed
abstract class Tool with _$Tool {
  factory Tool({required String name,
    String? path}) = _Tool;

  factory Tool.fromJson(Map<String, dynamic> json) => _$ToolFromJson(json);
}

@freezed
abstract class Ammo with _$Ammo {
  factory Ammo({required String name}) = _Ammo;

  factory Ammo.fromJson(Map<String, dynamic> json) => _$AmmoFromJson(json);
}

@freezed
abstract class Gun with _$Gun {
  factory Gun({
    required String name,
    String? path
  }) = _Gun;

  factory Gun.fromJson(Map<String, dynamic> json) => _$GunFromJson(json);
}

@freezed
abstract class MountType with _$MountType {
  factory MountType({required String name}) = _MountType;

  factory MountType.fromJson(Map<String, dynamic> json) =>
      _$MountTypeFromJson(json);
}

@freezed
abstract class InitiationSystem with _$InitiationSystem {
  factory InitiationSystem({required String name}) = _InitiationSystem;

  factory InitiationSystem.fromJson(Map<String, dynamic> json) =>
      _$InitiationSystemFromJson(json);
}

@freezed
abstract class ExpectedBehaviour with _$ExpectedBehaviour{
  factory ExpectedBehaviour({required String name}) = _ExpectedBehaviour;

  factory ExpectedBehaviour.fromJson(Map<String, dynamic> json) =>
      _$ExpectedBehaviourFromJson(json);
}

@freezed
abstract class ExpectedEffect with _$ExpectedEffect{
  factory ExpectedEffect({required String name}) = _ExpectedEffectr;

  factory ExpectedEffect.fromJson(Map<String, dynamic> json) =>
      _$ExpectedEffectFromJson(json);
}

enum ObstacleType {
  WALL,
  DOOR,
  WINDOW,
  CEILING,
}

@freezed
abstract class Obstacle with _$Obstacle {
  factory Obstacle(
      {required String name,
      required String description,
      required ObstacleType obstacleType,
      required DateTime created,
      double? thickness,
      DateTime? modified,
      List<String>? photos,
      List<BuildMaterialCount>? buildMaterials}) = _Obstacle;

  factory Obstacle.fromJson(Map<String, dynamic> json) =>
      _$ObstacleFromJson(json);
}

enum WorkType { EXERCISE, REAL_WORK }

@freezed
abstract class Destruction with _$Destruction {
  factory Destruction({
    required int id,
    required String name,
    WorkType? workType,
    ExpectedBehaviour? expectedBehaviour,
    ExpectedEffect? expectedEffect,
    String? performer,
    String? description,
    String? recomendation,
    String? place,
    required DateTime date,
    Obstacle? obstacle,
    ExplosiveUnit? explosiveUnit,
    InitiationSystem? initiationSystem,
    ExplosiveUnit? secondExplosiveUnit,
    InitiationSystem? secondInitiationSystem,
    List<ProcessItem>? process,
    MountType? mountType,
    required bool twoStage,
    required bool isGood,
    required double seal,
    Tool? tool,
    Gun? gun,
    Tool? secondTool,
    Gun? secondGun,
    required DateTime created,
    DateTime? modified,
    List<PhotoWithDescription>? photosAfter,
    List<PhotoWithDescription>? photosBefore,
  }) = _Destruction;

  factory Destruction.fromJson(Map<String, dynamic> json) =>
      _$DestructionFromJson(json);
}

enum ExplosiveUnitType { STANDARD, EXOTIC }

@freezed
abstract class ExplosiveUnit with _$ExplosiveUnit {
  factory ExplosiveUnit(
      {required String name,
      required String description,
      required ExplosiveUnitType explosiveUnitType,
      required DateTime created,
      int? madeTime,
      double? newTnt,
      double? newActual,
      double? msd,
      DateTime? modified,
      List<String>? photos,
      List<ExplosiveMaterialCount>? explosiveMaterialCount}) = _ExplosiveUnit;

  factory ExplosiveUnit.fromJson(Map<String, dynamic> json) =>
      _$ExplosiveUnitFromJson(json);
}

@freezed
abstract class Course with _$Course {
  factory Course(
      { required String name,
        required User courseLeader,
        required DateTime startDate,
        required DateTime endDate,
        required List<User> participants,
        @Default([])List<CourseMark> courseMarks,
        required List<Topic> topics}) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) =>
      _$CourseFromJson(json);
}

@freezed
abstract class Topic with _$Topic{
  factory Topic(
      { required String name,
        required String courseName,
        DateTime? endDate,
        required bool done}) = _Topic;

  factory Topic.fromJson(Map<String, dynamic> json) =>
      _$TopicFromJson(json);
}

@freezed
abstract class ProcessItem with _$ProcessItem{
  factory ProcessItem(

      { required String title,
        required String description,
        required double time}) = _ProcessItem;

  factory ProcessItem.fromJson(Map<String, dynamic> json) =>
      _$ProcessItemFromJson(json);
}

@freezed
abstract class Token with _$Token{
  factory Token(

      { required String accessToken,
        required String refreshToken,
        required double expiresIn}) = _Token;

  factory Token.fromJson(Map<String, dynamic> json) =>
      _$TokenFromJson(json);
}

@freezed
abstract class AuthDto with _$AuthDto{
  factory AuthDto(

      { required Token token,
        required String firstName,
        required String lastName,
        String? dutyTitle,
        required String email,
        List<String>? roles}) = _AuthDto;

  factory AuthDto.fromJson(Map<String, dynamic> json) =>
      _$AuthDtoFromJson(json);
}

@freezed
abstract class CourseMark with _$CourseMark{
  factory CourseMark(
      { required String description,
        required String topicName,
        required User student,
        required DateTime timestamp,
        required bool mark}) = _CourseMark;

  factory CourseMark.fromJson(Map<String, dynamic> json) =>
      _$CourseMarkFromJson(json);
}

enum DatabaseItemType {
  EXPLOSIVE_UNIT,
  AMMO,
  EXPLOSIVE_MATERIAL,
  INITIATION_SYSTEM
}

@freezed
abstract class DatabaseItem with _$DatabaseItem {
  factory DatabaseItem(
      {required String itemName,
      required DatabaseItemType itemType,
      double? quantity,
      String? suffix}) = _DatabaseItem;

  factory DatabaseItem.fromJson(Map<String, dynamic> json) =>
      _$DatabaseItemFromJson(json);
}

@freezed
abstract class PhotoWithDescription with _$PhotoWithDescription {
  factory PhotoWithDescription({required String path, String? description}) =
      _PhotoWithDescription;

  factory PhotoWithDescription.fromJson(Map<String, dynamic> json) =>
      _$PhotoWithDescriptionFromJson(json);
}

@freezed
abstract class Exercise with _$Exercise {
  factory Exercise({
    required String name,
    required String place,
    required DateTime start,
    required DateTime stop,
    required int color,
    List<DatabaseItem>? databaseItems,
  }) = _Exercise;

  factory Exercise.fromJson(Map<String, dynamic> json) =>
      _$ExerciseFromJson(json);
}

@freezed
abstract class BuildMaterialCount with _$BuildMaterialCount {
  factory BuildMaterialCount({BuildMaterial? buildMaterial, double? quantity}) =
      _BuildMaterialCount;

  factory BuildMaterialCount.fromJson(Map<String, dynamic> json) =>
      _$BuildMaterialCountFromJson(json);
}

@freezed
abstract class ExplosiveMaterialCount with _$ExplosiveMaterialCount {
  factory ExplosiveMaterialCount(
      {ExplosiveMaterial? explosiveMaterial,
      double? quantity}) = _ExplosiveMaterialCount;

  factory ExplosiveMaterialCount.fromJson(Map<String, dynamic> json) =>
      _$ExplosiveMaterialCountFromJson(json);
}

@freezed
abstract class AmmoCount with _$AmmoCount {
  factory AmmoCount({Ammo? ammo, double? quantity}) = _AmmoCount;

  factory AmmoCount.fromJson(Map<String, dynamic> json) =>
      _$AmmoCountFromJson(json);
}

@freezed
abstract class ExplosiveUnitCount with _$ExplosiveUnitCount {
  factory ExplosiveUnitCount({ExplosiveUnit? explosiveUnit, double? quantity}) =
      _ExplosiveUnitCount;

  factory ExplosiveUnitCount.fromJson(Map<String, dynamic> json) =>
      _$ExplosiveUnitCountFromJson(json);
}

@freezed
abstract class InitiationSystemCount with _$InitiationSystemCount {
  factory InitiationSystemCount(
      {InitiationSystem? initiationSystem,
      double? quantity}) = _InitiationSystemCount;

  factory InitiationSystemCount.fromJson(Map<String, dynamic> json) =>
      _$InitiationSystemCountFromJson(json);
}
/*
@freezed
abstract class FaqEntity with _$FaqEntity{
  factory FaqEntity ({
    String? head,
    String? description,
    String? tutorialName,
    List<String>? imagesIos,
    List<String>? imagesAndroid,
    String? type,
  }) = _FaqEntity;

  factory FaqEntity.fromJson(Map<String, dynamic> json) =>
      _$FaqEntityFromJson(json);

}

@freezed
abstract class IssueEntity with _$IssueEntity{
  factory IssueEntity ({
    int? id,
    String? issueType,
    String? alertType,
    String? username,
    String? description,
    DateTime? callDate,
    String? responsiblePerson,
    @Default(false) bool? isClosed,
    @Default(false) bool? isRead,
  }) = _IssueEntity;

  factory IssueEntity.fromJson(Map<String, dynamic> json) =>
      _$IssueEntityFromJson(json);

}

@freezed
abstract class JwtToken with _$JwtToken{
  factory JwtToken ({
    @JsonKey(name: 'access_token') String? accessToken,
    @JsonKey(name: 'refresh_token') String? refreshToken,
  }) = _JwtToken;

  factory JwtToken.fromJson(Map<String, dynamic> json) =>
      _$JwtTokenFromJson(json);
}

@freezed
abstract class NewsEntity with _$NewsEntity{
  factory NewsEntity ({
    int? id,
    String? header,
    String? description,
    String? url,
    String? newsType,
    String? newsLevel,
    DateTime? uploadDate,
    @Default(false) bool isRead,

  }) = _NewsEntity;

  factory NewsEntity.fromJson(Map<String, dynamic> json) =>
      _$NewsEntityFromJson(json);
}
*/

/*
@freezed
abstract class AuthenticationResult with _$AuthenticationResult{

  AuthenticationResult._();

  factory AuthenticationResult ({
    JwtToken? jwtToken,
    String? errorText,
  }) = _AuthenticationResult;

  factory AuthenticationResult.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationResultFromJson(json);

  bool get hasError => errorText?.isNotEmpty ?? false;
}*/
