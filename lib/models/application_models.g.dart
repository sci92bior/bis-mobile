// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    userName: json['userName'] as String,
    displayName: json['displayName'] as String?,
    isInstructor: json['isInstructor'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'userName': instance.userName,
      'displayName': instance.displayName,
      'isInstructor': instance.isInstructor,
    };

_$_Address _$_$_AddressFromJson(Map<String, dynamic> json) {
  return _$_Address(
    id: json['id'] as String?,
    placeId: json['placeId'] as String,
    lattitude: (json['lattitude'] as num).toDouble(),
    longitute: (json['longitute'] as num).toDouble(),
    street: json['street'] as String?,
    city: json['city'] as String?,
    state: json['state'] as String?,
    postalCode: json['postalCode'] as String?,
  );
}

Map<String, dynamic> _$_$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'id': instance.id,
      'placeId': instance.placeId,
      'lattitude': instance.lattitude,
      'longitute': instance.longitute,
      'street': instance.street,
      'city': instance.city,
      'state': instance.state,
      'postalCode': instance.postalCode,
    };

_$_ExplosiveMaterial _$_$_ExplosiveMaterialFromJson(Map<String, dynamic> json) {
  return _$_ExplosiveMaterial(
    name: json['name'] as String,
    rFactor: (json['rFactor'] as num).toDouble(),
    grain: (json['grain'] as num).toDouble(),
    unitType: json['unitType'] as String?,
  );
}

Map<String, dynamic> _$_$_ExplosiveMaterialToJson(
        _$_ExplosiveMaterial instance) =>
    <String, dynamic>{
      'name': instance.name,
      'rFactor': instance.rFactor,
      'grain': instance.grain,
      'unitType': instance.unitType,
    };

_$_ConcreteMaterial _$_$_ConcreteMaterialFromJson(Map<String, dynamic> json) {
  return _$_ConcreteMaterial(
    name: json['name'] as String,
    aFactor: (json['aFactor'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_ConcreteMaterialToJson(
        _$_ConcreteMaterial instance) =>
    <String, dynamic>{
      'name': instance.name,
      'aFactor': instance.aFactor,
    };

_$_Tool _$_$_ToolFromJson(Map<String, dynamic> json) {
  return _$_Tool(
    name: json['name'] as String,
    path: json['path'] as String?,
  );
}

Map<String, dynamic> _$_$_ToolToJson(_$_Tool instance) => <String, dynamic>{
      'name': instance.name,
      'path': instance.path,
    };

_$_Ammo _$_$_AmmoFromJson(Map<String, dynamic> json) {
  return _$_Ammo(
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$_$_AmmoToJson(_$_Ammo instance) => <String, dynamic>{
      'name': instance.name,
    };

_$_Gun _$_$_GunFromJson(Map<String, dynamic> json) {
  return _$_Gun(
    name: json['name'] as String,
    path: json['path'] as String?,
  );
}

Map<String, dynamic> _$_$_GunToJson(_$_Gun instance) => <String, dynamic>{
      'name': instance.name,
      'path': instance.path,
    };

_$_MountType _$_$_MountTypeFromJson(Map<String, dynamic> json) {
  return _$_MountType(
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$_$_MountTypeToJson(_$_MountType instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$_InitiationSystem _$_$_InitiationSystemFromJson(Map<String, dynamic> json) {
  return _$_InitiationSystem(
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$_$_InitiationSystemToJson(
        _$_InitiationSystem instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$_ExpectedBehaviour _$_$_ExpectedBehaviourFromJson(Map<String, dynamic> json) {
  return _$_ExpectedBehaviour(
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$_$_ExpectedBehaviourToJson(
        _$_ExpectedBehaviour instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$_ExpectedEffectr _$_$_ExpectedEffectrFromJson(Map<String, dynamic> json) {
  return _$_ExpectedEffectr(
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$_$_ExpectedEffectrToJson(_$_ExpectedEffectr instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$_Obstacle _$_$_ObstacleFromJson(Map<String, dynamic> json) {
  return _$_Obstacle(
    name: json['name'] as String,
    description: json['description'] as String,
    obstacleType: _$enumDecode(_$ObstacleTypeEnumMap, json['obstacleType']),
    created: DateTime.parse(json['created'] as String),
    thickness: (json['thickness'] as num?)?.toDouble(),
    modified: json['modified'] == null
        ? null
        : DateTime.parse(json['modified'] as String),
    photos:
        (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList(),
    buildMaterials: (json['buildMaterials'] as List<dynamic>?)
        ?.map((e) => BuildMaterialCount.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_ObstacleToJson(_$_Obstacle instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'obstacleType': _$ObstacleTypeEnumMap[instance.obstacleType],
      'created': instance.created.toIso8601String(),
      'thickness': instance.thickness,
      'modified': instance.modified?.toIso8601String(),
      'photos': instance.photos,
      'buildMaterials': instance.buildMaterials,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$ObstacleTypeEnumMap = {
  ObstacleType.WALL: 'WALL',
  ObstacleType.DOOR: 'DOOR',
  ObstacleType.WINDOW: 'WINDOW',
  ObstacleType.CEILING: 'CEILING',
};

_$_Destruction _$_$_DestructionFromJson(Map<String, dynamic> json) {
  return _$_Destruction(
    id: json['id'] as int,
    name: json['name'] as String,
    workType: _$enumDecodeNullable(_$WorkTypeEnumMap, json['workType']),
    expectedBehaviour: json['expectedBehaviour'] == null
        ? null
        : ExpectedBehaviour.fromJson(
            json['expectedBehaviour'] as Map<String, dynamic>),
    expectedEffect: json['expectedEffect'] == null
        ? null
        : ExpectedEffect.fromJson(
            json['expectedEffect'] as Map<String, dynamic>),
    performer: json['performer'] as String?,
    description: json['description'] as String?,
    recomendation: json['recomendation'] as String?,
    place: json['place'] as String?,
    date: DateTime.parse(json['date'] as String),
    obstacle: json['obstacle'] == null
        ? null
        : Obstacle.fromJson(json['obstacle'] as Map<String, dynamic>),
    explosiveUnit: json['explosiveUnit'] == null
        ? null
        : ExplosiveUnit.fromJson(json['explosiveUnit'] as Map<String, dynamic>),
    initiationSystem: json['initiationSystem'] == null
        ? null
        : InitiationSystem.fromJson(
            json['initiationSystem'] as Map<String, dynamic>),
    secondExplosiveUnit: json['secondExplosiveUnit'] == null
        ? null
        : ExplosiveUnit.fromJson(
            json['secondExplosiveUnit'] as Map<String, dynamic>),
    secondInitiationSystem: json['secondInitiationSystem'] == null
        ? null
        : InitiationSystem.fromJson(
            json['secondInitiationSystem'] as Map<String, dynamic>),
    process: (json['process'] as List<dynamic>?)
        ?.map((e) => ProcessItem.fromJson(e as Map<String, dynamic>))
        .toList(),
    mountType: json['mountType'] == null
        ? null
        : MountType.fromJson(json['mountType'] as Map<String, dynamic>),
    twoStage: json['twoStage'] as bool,
    isGood: json['isGood'] as bool,
    seal: (json['seal'] as num).toDouble(),
    tool: json['tool'] == null
        ? null
        : Tool.fromJson(json['tool'] as Map<String, dynamic>),
    gun: json['gun'] == null
        ? null
        : Gun.fromJson(json['gun'] as Map<String, dynamic>),
    secondTool: json['secondTool'] == null
        ? null
        : Tool.fromJson(json['secondTool'] as Map<String, dynamic>),
    secondGun: json['secondGun'] == null
        ? null
        : Gun.fromJson(json['secondGun'] as Map<String, dynamic>),
    created: DateTime.parse(json['created'] as String),
    modified: json['modified'] == null
        ? null
        : DateTime.parse(json['modified'] as String),
    photosAfter: (json['photosAfter'] as List<dynamic>?)
        ?.map((e) => PhotoWithDescription.fromJson(e as Map<String, dynamic>))
        .toList(),
    photosBefore: (json['photosBefore'] as List<dynamic>?)
        ?.map((e) => PhotoWithDescription.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_DestructionToJson(_$_Destruction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'workType': _$WorkTypeEnumMap[instance.workType],
      'expectedBehaviour': instance.expectedBehaviour,
      'expectedEffect': instance.expectedEffect,
      'performer': instance.performer,
      'description': instance.description,
      'recomendation': instance.recomendation,
      'place': instance.place,
      'date': instance.date.toIso8601String(),
      'obstacle': instance.obstacle,
      'explosiveUnit': instance.explosiveUnit,
      'initiationSystem': instance.initiationSystem,
      'secondExplosiveUnit': instance.secondExplosiveUnit,
      'secondInitiationSystem': instance.secondInitiationSystem,
      'process': instance.process,
      'mountType': instance.mountType,
      'twoStage': instance.twoStage,
      'isGood': instance.isGood,
      'seal': instance.seal,
      'tool': instance.tool,
      'gun': instance.gun,
      'secondTool': instance.secondTool,
      'secondGun': instance.secondGun,
      'created': instance.created.toIso8601String(),
      'modified': instance.modified?.toIso8601String(),
      'photosAfter': instance.photosAfter,
      'photosBefore': instance.photosBefore,
    };

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$WorkTypeEnumMap = {
  WorkType.EXERCISE: 'EXERCISE',
  WorkType.REAL_WORK: 'REAL_WORK',
};

_$_ExplosiveUnit _$_$_ExplosiveUnitFromJson(Map<String, dynamic> json) {
  return _$_ExplosiveUnit(
    name: json['name'] as String,
    description: json['description'] as String,
    explosiveUnitType:
        _$enumDecode(_$ExplosiveUnitTypeEnumMap, json['explosiveUnitType']),
    created: DateTime.parse(json['created'] as String),
    madeTime: json['madeTime'] as int?,
    newTnt: (json['newTnt'] as num?)?.toDouble(),
    newActual: (json['newActual'] as num?)?.toDouble(),
    msd: (json['msd'] as num?)?.toDouble(),
    modified: json['modified'] == null
        ? null
        : DateTime.parse(json['modified'] as String),
    photos:
        (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList(),
    explosiveMaterialCount: (json['explosiveMaterialCount'] as List<dynamic>?)
        ?.map((e) => ExplosiveMaterialCount.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_ExplosiveUnitToJson(_$_ExplosiveUnit instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'explosiveUnitType':
          _$ExplosiveUnitTypeEnumMap[instance.explosiveUnitType],
      'created': instance.created.toIso8601String(),
      'madeTime': instance.madeTime,
      'newTnt': instance.newTnt,
      'newActual': instance.newActual,
      'msd': instance.msd,
      'modified': instance.modified?.toIso8601String(),
      'photos': instance.photos,
      'explosiveMaterialCount': instance.explosiveMaterialCount,
    };

const _$ExplosiveUnitTypeEnumMap = {
  ExplosiveUnitType.STANDARD: 'STANDARD',
  ExplosiveUnitType.EXOTIC: 'EXOTIC',
};

_$_Course _$_$_CourseFromJson(Map<String, dynamic> json) {
  return _$_Course(
    name: json['name'] as String,
    courseLeader: User.fromJson(json['courseLeader'] as Map<String, dynamic>),
    startDate: DateTime.parse(json['startDate'] as String),
    endDate: DateTime.parse(json['endDate'] as String),
    participants: (json['participants'] as List<dynamic>)
        .map((e) => User.fromJson(e as Map<String, dynamic>))
        .toList(),
    courseMarks: (json['courseMarks'] as List<dynamic>?)
            ?.map((e) => CourseMark.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    topics: (json['topics'] as List<dynamic>)
        .map((e) => Topic.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_CourseToJson(_$_Course instance) => <String, dynamic>{
      'name': instance.name,
      'courseLeader': instance.courseLeader,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'participants': instance.participants,
      'courseMarks': instance.courseMarks,
      'topics': instance.topics,
    };

_$_Topic _$_$_TopicFromJson(Map<String, dynamic> json) {
  return _$_Topic(
    name: json['name'] as String,
    courseName: json['courseName'] as String,
    endDate: json['endDate'] == null
        ? null
        : DateTime.parse(json['endDate'] as String),
    done: json['done'] as bool,
  );
}

Map<String, dynamic> _$_$_TopicToJson(_$_Topic instance) => <String, dynamic>{
      'name': instance.name,
      'courseName': instance.courseName,
      'endDate': instance.endDate?.toIso8601String(),
      'done': instance.done,
    };

_$_ProcessItem _$_$_ProcessItemFromJson(Map<String, dynamic> json) {
  return _$_ProcessItem(
    title: json['title'] as String,
    description: json['description'] as String,
    time: (json['time'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_ProcessItemToJson(_$_ProcessItem instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'time': instance.time,
    };

_$_Token _$_$_TokenFromJson(Map<String, dynamic> json) {
  return _$_Token(
    accessToken: json['accessToken'] as String,
    refreshToken: json['refreshToken'] as String,
    expiresIn: (json['expiresIn'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_TokenToJson(_$_Token instance) => <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'expiresIn': instance.expiresIn,
    };

_$_DatabaseCategory _$_$_DatabaseCategoryFromJson(Map<String, dynamic> json) {
  return _$_DatabaseCategory(
    id: json['id'] as int,
    name: json['name'] as String,
    image: json['image'] as String,
  );
}

Map<String, dynamic> _$_$_DatabaseCategoryToJson(
        _$_DatabaseCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };

_$_ApiResponse _$_$_ApiResponseFromJson(Map<String, dynamic> json) {
  return _$_ApiResponse(
    content: json['content'] as List<dynamic>,
  );
}

Map<String, dynamic> _$_$_ApiResponseToJson(_$_ApiResponse instance) =>
    <String, dynamic>{
      'content': instance.content,
    };

_$_AuthDto _$_$_AuthDtoFromJson(Map<String, dynamic> json) {
  return _$_AuthDto(
    token: Token.fromJson(json['token'] as Map<String, dynamic>),
    firstName: json['firstName'] as String,
    lastName: json['lastName'] as String,
    dutyTitle: json['dutyTitle'] as String?,
    email: json['email'] as String,
    roles: (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$_AuthDtoToJson(_$_AuthDto instance) =>
    <String, dynamic>{
      'token': instance.token,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'dutyTitle': instance.dutyTitle,
      'email': instance.email,
      'roles': instance.roles,
    };

_$_CourseMark _$_$_CourseMarkFromJson(Map<String, dynamic> json) {
  return _$_CourseMark(
    description: json['description'] as String,
    topicName: json['topicName'] as String,
    student: User.fromJson(json['student'] as Map<String, dynamic>),
    timestamp: DateTime.parse(json['timestamp'] as String),
    mark: json['mark'] as bool,
  );
}

Map<String, dynamic> _$_$_CourseMarkToJson(_$_CourseMark instance) =>
    <String, dynamic>{
      'description': instance.description,
      'topicName': instance.topicName,
      'student': instance.student,
      'timestamp': instance.timestamp.toIso8601String(),
      'mark': instance.mark,
    };

_$_DatabaseItem _$_$_DatabaseItemFromJson(Map<String, dynamic> json) {
  return _$_DatabaseItem(
    itemName: json['itemName'] as String,
    itemType: _$enumDecode(_$DatabaseItemTypeEnumMap, json['itemType']),
    quantity: (json['quantity'] as num?)?.toDouble(),
    suffix: json['suffix'] as String?,
  );
}

Map<String, dynamic> _$_$_DatabaseItemToJson(_$_DatabaseItem instance) =>
    <String, dynamic>{
      'itemName': instance.itemName,
      'itemType': _$DatabaseItemTypeEnumMap[instance.itemType],
      'quantity': instance.quantity,
      'suffix': instance.suffix,
    };

const _$DatabaseItemTypeEnumMap = {
  DatabaseItemType.EXPLOSIVE_UNIT: 'EXPLOSIVE_UNIT',
  DatabaseItemType.AMMO: 'AMMO',
  DatabaseItemType.EXPLOSIVE_MATERIAL: 'EXPLOSIVE_MATERIAL',
  DatabaseItemType.INITIATION_SYSTEM: 'INITIATION_SYSTEM',
};

_$_PhotoWithDescription _$_$_PhotoWithDescriptionFromJson(
    Map<String, dynamic> json) {
  return _$_PhotoWithDescription(
    path: json['path'] as String,
    description: json['description'] as String?,
  );
}

Map<String, dynamic> _$_$_PhotoWithDescriptionToJson(
        _$_PhotoWithDescription instance) =>
    <String, dynamic>{
      'path': instance.path,
      'description': instance.description,
    };

_$_Exercise _$_$_ExerciseFromJson(Map<String, dynamic> json) {
  return _$_Exercise(
    name: json['name'] as String,
    place: json['place'] as String,
    start: DateTime.parse(json['start'] as String),
    stop: DateTime.parse(json['stop'] as String),
    color: json['color'] as int,
    databaseItems: (json['databaseItems'] as List<dynamic>?)
        ?.map((e) => DatabaseItem.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_ExerciseToJson(_$_Exercise instance) =>
    <String, dynamic>{
      'name': instance.name,
      'place': instance.place,
      'start': instance.start.toIso8601String(),
      'stop': instance.stop.toIso8601String(),
      'color': instance.color,
      'databaseItems': instance.databaseItems,
    };

_$_BuildMaterialCount _$_$_BuildMaterialCountFromJson(
    Map<String, dynamic> json) {
  return _$_BuildMaterialCount(
    buildMaterial: json['buildMaterial'] == null
        ? null
        : BuildMaterial.fromJson(json['buildMaterial'] as Map<String, dynamic>),
    quantity: (json['quantity'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_BuildMaterialCountToJson(
        _$_BuildMaterialCount instance) =>
    <String, dynamic>{
      'buildMaterial': instance.buildMaterial,
      'quantity': instance.quantity,
    };

_$_ExplosiveMaterialCount _$_$_ExplosiveMaterialCountFromJson(
    Map<String, dynamic> json) {
  return _$_ExplosiveMaterialCount(
    explosiveMaterial: json['explosiveMaterial'] == null
        ? null
        : ExplosiveMaterial.fromJson(
            json['explosiveMaterial'] as Map<String, dynamic>),
    quantity: (json['quantity'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_ExplosiveMaterialCountToJson(
        _$_ExplosiveMaterialCount instance) =>
    <String, dynamic>{
      'explosiveMaterial': instance.explosiveMaterial,
      'quantity': instance.quantity,
    };

_$_AmmoCount _$_$_AmmoCountFromJson(Map<String, dynamic> json) {
  return _$_AmmoCount(
    ammo: json['ammo'] == null
        ? null
        : Ammo.fromJson(json['ammo'] as Map<String, dynamic>),
    quantity: (json['quantity'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_AmmoCountToJson(_$_AmmoCount instance) =>
    <String, dynamic>{
      'ammo': instance.ammo,
      'quantity': instance.quantity,
    };

_$_ExplosiveUnitCount _$_$_ExplosiveUnitCountFromJson(
    Map<String, dynamic> json) {
  return _$_ExplosiveUnitCount(
    explosiveUnit: json['explosiveUnit'] == null
        ? null
        : ExplosiveUnit.fromJson(json['explosiveUnit'] as Map<String, dynamic>),
    quantity: (json['quantity'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_ExplosiveUnitCountToJson(
        _$_ExplosiveUnitCount instance) =>
    <String, dynamic>{
      'explosiveUnit': instance.explosiveUnit,
      'quantity': instance.quantity,
    };

_$_InitiationSystemCount _$_$_InitiationSystemCountFromJson(
    Map<String, dynamic> json) {
  return _$_InitiationSystemCount(
    initiationSystem: json['initiationSystem'] == null
        ? null
        : InitiationSystem.fromJson(
            json['initiationSystem'] as Map<String, dynamic>),
    quantity: (json['quantity'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_InitiationSystemCountToJson(
        _$_InitiationSystemCount instance) =>
    <String, dynamic>{
      'initiationSystem': instance.initiationSystem,
      'quantity': instance.quantity,
    };
