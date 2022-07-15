// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'application_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required String userName,
      String? displayName,
      bool isInstructor = false}) {
    return _User(
      userName: userName,
      displayName: displayName,
      isInstructor: isInstructor,
    );
  }

  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get userName => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  bool get isInstructor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call({String userName, String? displayName, bool isInstructor});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? userName = freezed,
    Object? displayName = freezed,
    Object? isInstructor = freezed,
  }) {
    return _then(_value.copyWith(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      isInstructor: isInstructor == freezed
          ? _value.isInstructor
          : isInstructor // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call({String userName, String? displayName, bool isInstructor});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? userName = freezed,
    Object? displayName = freezed,
    Object? isInstructor = freezed,
  }) {
    return _then(_User(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      isInstructor: isInstructor == freezed
          ? _value.isInstructor
          : isInstructor // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User extends _User {
  _$_User({required this.userName, this.displayName, this.isInstructor = false})
      : super._();

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final String userName;
  @override
  final String? displayName;
  @JsonKey(defaultValue: false)
  @override
  final bool isInstructor;

  @override
  String toString() {
    return 'User(userName: $userName, displayName: $displayName, isInstructor: $isInstructor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.isInstructor, isInstructor) ||
                const DeepCollectionEquality()
                    .equals(other.isInstructor, isInstructor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(isInstructor);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User extends User {
  factory _User(
      {required String userName,
      String? displayName,
      bool isInstructor}) = _$_User;
  _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get userName => throw _privateConstructorUsedError;
  @override
  String? get displayName => throw _privateConstructorUsedError;
  @override
  bool get isInstructor => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
class _$AddressTearOff {
  const _$AddressTearOff();

  _Address call(
      {String? id,
      required String placeId,
      required double lattitude,
      required double longitute,
      String? street,
      String? city,
      String? state,
      String? postalCode}) {
    return _Address(
      id: id,
      placeId: placeId,
      lattitude: lattitude,
      longitute: longitute,
      street: street,
      city: city,
      state: state,
      postalCode: postalCode,
    );
  }

  Address fromJson(Map<String, Object> json) {
    return Address.fromJson(json);
  }
}

/// @nodoc
const $Address = _$AddressTearOff();

/// @nodoc
mixin _$Address {
  String? get id => throw _privateConstructorUsedError;
  String get placeId => throw _privateConstructorUsedError;
  double get lattitude => throw _privateConstructorUsedError;
  double get longitute => throw _privateConstructorUsedError;
  String? get street => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get postalCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String placeId,
      double lattitude,
      double longitute,
      String? street,
      String? city,
      String? state,
      String? postalCode});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res> implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  final Address _value;
  // ignore: unused_field
  final $Res Function(Address) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? placeId = freezed,
    Object? lattitude = freezed,
    Object? longitute = freezed,
    Object? street = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postalCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      lattitude: lattitude == freezed
          ? _value.lattitude
          : lattitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitute: longitute == freezed
          ? _value.longitute
          : longitute // ignore: cast_nullable_to_non_nullable
              as double,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$AddressCopyWith(_Address value, $Res Function(_Address) then) =
      __$AddressCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String placeId,
      double lattitude,
      double longitute,
      String? street,
      String? city,
      String? state,
      String? postalCode});
}

/// @nodoc
class __$AddressCopyWithImpl<$Res> extends _$AddressCopyWithImpl<$Res>
    implements _$AddressCopyWith<$Res> {
  __$AddressCopyWithImpl(_Address _value, $Res Function(_Address) _then)
      : super(_value, (v) => _then(v as _Address));

  @override
  _Address get _value => super._value as _Address;

  @override
  $Res call({
    Object? id = freezed,
    Object? placeId = freezed,
    Object? lattitude = freezed,
    Object? longitute = freezed,
    Object? street = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postalCode = freezed,
  }) {
    return _then(_Address(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      lattitude: lattitude == freezed
          ? _value.lattitude
          : lattitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitute: longitute == freezed
          ? _value.longitute
          : longitute // ignore: cast_nullable_to_non_nullable
              as double,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Address implements _Address {
  _$_Address(
      {this.id,
      required this.placeId,
      required this.lattitude,
      required this.longitute,
      this.street,
      this.city,
      this.state,
      this.postalCode});

  factory _$_Address.fromJson(Map<String, dynamic> json) =>
      _$_$_AddressFromJson(json);

  @override
  final String? id;
  @override
  final String placeId;
  @override
  final double lattitude;
  @override
  final double longitute;
  @override
  final String? street;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? postalCode;

  @override
  String toString() {
    return 'Address(id: $id, placeId: $placeId, lattitude: $lattitude, longitute: $longitute, street: $street, city: $city, state: $state, postalCode: $postalCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Address &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.placeId, placeId) ||
                const DeepCollectionEquality()
                    .equals(other.placeId, placeId)) &&
            (identical(other.lattitude, lattitude) ||
                const DeepCollectionEquality()
                    .equals(other.lattitude, lattitude)) &&
            (identical(other.longitute, longitute) ||
                const DeepCollectionEquality()
                    .equals(other.longitute, longitute)) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality()
                    .equals(other.postalCode, postalCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(placeId) ^
      const DeepCollectionEquality().hash(lattitude) ^
      const DeepCollectionEquality().hash(longitute) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(postalCode);

  @JsonKey(ignore: true)
  @override
  _$AddressCopyWith<_Address> get copyWith =>
      __$AddressCopyWithImpl<_Address>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AddressToJson(this);
  }
}

abstract class _Address implements Address {
  factory _Address(
      {String? id,
      required String placeId,
      required double lattitude,
      required double longitute,
      String? street,
      String? city,
      String? state,
      String? postalCode}) = _$_Address;

  factory _Address.fromJson(Map<String, dynamic> json) = _$_Address.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get placeId => throw _privateConstructorUsedError;
  @override
  double get lattitude => throw _privateConstructorUsedError;
  @override
  double get longitute => throw _privateConstructorUsedError;
  @override
  String? get street => throw _privateConstructorUsedError;
  @override
  String? get city => throw _privateConstructorUsedError;
  @override
  String? get state => throw _privateConstructorUsedError;
  @override
  String? get postalCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddressCopyWith<_Address> get copyWith =>
      throw _privateConstructorUsedError;
}

ExplosiveMaterial _$ExplosiveMaterialFromJson(Map<String, dynamic> json) {
  return _ExplosiveMaterial.fromJson(json);
}

/// @nodoc
class _$ExplosiveMaterialTearOff {
  const _$ExplosiveMaterialTearOff();

  _ExplosiveMaterial call(
      {required String name,
      required double rFactor,
      required double grain,
      String? unitType}) {
    return _ExplosiveMaterial(
      name: name,
      rFactor: rFactor,
      grain: grain,
      unitType: unitType,
    );
  }

  ExplosiveMaterial fromJson(Map<String, Object> json) {
    return ExplosiveMaterial.fromJson(json);
  }
}

/// @nodoc
const $ExplosiveMaterial = _$ExplosiveMaterialTearOff();

/// @nodoc
mixin _$ExplosiveMaterial {
  String get name => throw _privateConstructorUsedError;
  double get rFactor => throw _privateConstructorUsedError;
  double get grain => throw _privateConstructorUsedError;
  String? get unitType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExplosiveMaterialCopyWith<ExplosiveMaterial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExplosiveMaterialCopyWith<$Res> {
  factory $ExplosiveMaterialCopyWith(
          ExplosiveMaterial value, $Res Function(ExplosiveMaterial) then) =
      _$ExplosiveMaterialCopyWithImpl<$Res>;
  $Res call({String name, double rFactor, double grain, String? unitType});
}

/// @nodoc
class _$ExplosiveMaterialCopyWithImpl<$Res>
    implements $ExplosiveMaterialCopyWith<$Res> {
  _$ExplosiveMaterialCopyWithImpl(this._value, this._then);

  final ExplosiveMaterial _value;
  // ignore: unused_field
  final $Res Function(ExplosiveMaterial) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? rFactor = freezed,
    Object? grain = freezed,
    Object? unitType = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rFactor: rFactor == freezed
          ? _value.rFactor
          : rFactor // ignore: cast_nullable_to_non_nullable
              as double,
      grain: grain == freezed
          ? _value.grain
          : grain // ignore: cast_nullable_to_non_nullable
              as double,
      unitType: unitType == freezed
          ? _value.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ExplosiveMaterialCopyWith<$Res>
    implements $ExplosiveMaterialCopyWith<$Res> {
  factory _$ExplosiveMaterialCopyWith(
          _ExplosiveMaterial value, $Res Function(_ExplosiveMaterial) then) =
      __$ExplosiveMaterialCopyWithImpl<$Res>;
  @override
  $Res call({String name, double rFactor, double grain, String? unitType});
}

/// @nodoc
class __$ExplosiveMaterialCopyWithImpl<$Res>
    extends _$ExplosiveMaterialCopyWithImpl<$Res>
    implements _$ExplosiveMaterialCopyWith<$Res> {
  __$ExplosiveMaterialCopyWithImpl(
      _ExplosiveMaterial _value, $Res Function(_ExplosiveMaterial) _then)
      : super(_value, (v) => _then(v as _ExplosiveMaterial));

  @override
  _ExplosiveMaterial get _value => super._value as _ExplosiveMaterial;

  @override
  $Res call({
    Object? name = freezed,
    Object? rFactor = freezed,
    Object? grain = freezed,
    Object? unitType = freezed,
  }) {
    return _then(_ExplosiveMaterial(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rFactor: rFactor == freezed
          ? _value.rFactor
          : rFactor // ignore: cast_nullable_to_non_nullable
              as double,
      grain: grain == freezed
          ? _value.grain
          : grain // ignore: cast_nullable_to_non_nullable
              as double,
      unitType: unitType == freezed
          ? _value.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExplosiveMaterial implements _ExplosiveMaterial {
  _$_ExplosiveMaterial(
      {required this.name,
      required this.rFactor,
      required this.grain,
      this.unitType});

  factory _$_ExplosiveMaterial.fromJson(Map<String, dynamic> json) =>
      _$_$_ExplosiveMaterialFromJson(json);

  @override
  final String name;
  @override
  final double rFactor;
  @override
  final double grain;
  @override
  final String? unitType;

  @override
  String toString() {
    return 'ExplosiveMaterial(name: $name, rFactor: $rFactor, grain: $grain, unitType: $unitType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExplosiveMaterial &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.rFactor, rFactor) ||
                const DeepCollectionEquality()
                    .equals(other.rFactor, rFactor)) &&
            (identical(other.grain, grain) ||
                const DeepCollectionEquality().equals(other.grain, grain)) &&
            (identical(other.unitType, unitType) ||
                const DeepCollectionEquality()
                    .equals(other.unitType, unitType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(rFactor) ^
      const DeepCollectionEquality().hash(grain) ^
      const DeepCollectionEquality().hash(unitType);

  @JsonKey(ignore: true)
  @override
  _$ExplosiveMaterialCopyWith<_ExplosiveMaterial> get copyWith =>
      __$ExplosiveMaterialCopyWithImpl<_ExplosiveMaterial>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExplosiveMaterialToJson(this);
  }
}

abstract class _ExplosiveMaterial implements ExplosiveMaterial {
  factory _ExplosiveMaterial(
      {required String name,
      required double rFactor,
      required double grain,
      String? unitType}) = _$_ExplosiveMaterial;

  factory _ExplosiveMaterial.fromJson(Map<String, dynamic> json) =
      _$_ExplosiveMaterial.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  double get rFactor => throw _privateConstructorUsedError;
  @override
  double get grain => throw _privateConstructorUsedError;
  @override
  String? get unitType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExplosiveMaterialCopyWith<_ExplosiveMaterial> get copyWith =>
      throw _privateConstructorUsedError;
}

BuildMaterial _$BuildMaterialFromJson(Map<String, dynamic> json) {
  return _ConcreteMaterial.fromJson(json);
}

/// @nodoc
class _$BuildMaterialTearOff {
  const _$BuildMaterialTearOff();

  _ConcreteMaterial call({required String name, required double aFactor}) {
    return _ConcreteMaterial(
      name: name,
      aFactor: aFactor,
    );
  }

  BuildMaterial fromJson(Map<String, Object> json) {
    return BuildMaterial.fromJson(json);
  }
}

/// @nodoc
const $BuildMaterial = _$BuildMaterialTearOff();

/// @nodoc
mixin _$BuildMaterial {
  String get name => throw _privateConstructorUsedError;
  double get aFactor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BuildMaterialCopyWith<BuildMaterial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildMaterialCopyWith<$Res> {
  factory $BuildMaterialCopyWith(
          BuildMaterial value, $Res Function(BuildMaterial) then) =
      _$BuildMaterialCopyWithImpl<$Res>;
  $Res call({String name, double aFactor});
}

/// @nodoc
class _$BuildMaterialCopyWithImpl<$Res>
    implements $BuildMaterialCopyWith<$Res> {
  _$BuildMaterialCopyWithImpl(this._value, this._then);

  final BuildMaterial _value;
  // ignore: unused_field
  final $Res Function(BuildMaterial) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? aFactor = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      aFactor: aFactor == freezed
          ? _value.aFactor
          : aFactor // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$ConcreteMaterialCopyWith<$Res>
    implements $BuildMaterialCopyWith<$Res> {
  factory _$ConcreteMaterialCopyWith(
          _ConcreteMaterial value, $Res Function(_ConcreteMaterial) then) =
      __$ConcreteMaterialCopyWithImpl<$Res>;
  @override
  $Res call({String name, double aFactor});
}

/// @nodoc
class __$ConcreteMaterialCopyWithImpl<$Res>
    extends _$BuildMaterialCopyWithImpl<$Res>
    implements _$ConcreteMaterialCopyWith<$Res> {
  __$ConcreteMaterialCopyWithImpl(
      _ConcreteMaterial _value, $Res Function(_ConcreteMaterial) _then)
      : super(_value, (v) => _then(v as _ConcreteMaterial));

  @override
  _ConcreteMaterial get _value => super._value as _ConcreteMaterial;

  @override
  $Res call({
    Object? name = freezed,
    Object? aFactor = freezed,
  }) {
    return _then(_ConcreteMaterial(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      aFactor: aFactor == freezed
          ? _value.aFactor
          : aFactor // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConcreteMaterial implements _ConcreteMaterial {
  _$_ConcreteMaterial({required this.name, required this.aFactor});

  factory _$_ConcreteMaterial.fromJson(Map<String, dynamic> json) =>
      _$_$_ConcreteMaterialFromJson(json);

  @override
  final String name;
  @override
  final double aFactor;

  @override
  String toString() {
    return 'BuildMaterial(name: $name, aFactor: $aFactor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConcreteMaterial &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.aFactor, aFactor) ||
                const DeepCollectionEquality().equals(other.aFactor, aFactor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(aFactor);

  @JsonKey(ignore: true)
  @override
  _$ConcreteMaterialCopyWith<_ConcreteMaterial> get copyWith =>
      __$ConcreteMaterialCopyWithImpl<_ConcreteMaterial>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ConcreteMaterialToJson(this);
  }
}

abstract class _ConcreteMaterial implements BuildMaterial {
  factory _ConcreteMaterial({required String name, required double aFactor}) =
      _$_ConcreteMaterial;

  factory _ConcreteMaterial.fromJson(Map<String, dynamic> json) =
      _$_ConcreteMaterial.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  double get aFactor => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ConcreteMaterialCopyWith<_ConcreteMaterial> get copyWith =>
      throw _privateConstructorUsedError;
}

Tool _$ToolFromJson(Map<String, dynamic> json) {
  return _Tool.fromJson(json);
}

/// @nodoc
class _$ToolTearOff {
  const _$ToolTearOff();

  _Tool call({required String name, String? path}) {
    return _Tool(
      name: name,
      path: path,
    );
  }

  Tool fromJson(Map<String, Object> json) {
    return Tool.fromJson(json);
  }
}

/// @nodoc
const $Tool = _$ToolTearOff();

/// @nodoc
mixin _$Tool {
  String get name => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToolCopyWith<Tool> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToolCopyWith<$Res> {
  factory $ToolCopyWith(Tool value, $Res Function(Tool) then) =
      _$ToolCopyWithImpl<$Res>;
  $Res call({String name, String? path});
}

/// @nodoc
class _$ToolCopyWithImpl<$Res> implements $ToolCopyWith<$Res> {
  _$ToolCopyWithImpl(this._value, this._then);

  final Tool _value;
  // ignore: unused_field
  final $Res Function(Tool) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ToolCopyWith<$Res> implements $ToolCopyWith<$Res> {
  factory _$ToolCopyWith(_Tool value, $Res Function(_Tool) then) =
      __$ToolCopyWithImpl<$Res>;
  @override
  $Res call({String name, String? path});
}

/// @nodoc
class __$ToolCopyWithImpl<$Res> extends _$ToolCopyWithImpl<$Res>
    implements _$ToolCopyWith<$Res> {
  __$ToolCopyWithImpl(_Tool _value, $Res Function(_Tool) _then)
      : super(_value, (v) => _then(v as _Tool));

  @override
  _Tool get _value => super._value as _Tool;

  @override
  $Res call({
    Object? name = freezed,
    Object? path = freezed,
  }) {
    return _then(_Tool(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tool implements _Tool {
  _$_Tool({required this.name, this.path});

  factory _$_Tool.fromJson(Map<String, dynamic> json) =>
      _$_$_ToolFromJson(json);

  @override
  final String name;
  @override
  final String? path;

  @override
  String toString() {
    return 'Tool(name: $name, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Tool &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(path);

  @JsonKey(ignore: true)
  @override
  _$ToolCopyWith<_Tool> get copyWith =>
      __$ToolCopyWithImpl<_Tool>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ToolToJson(this);
  }
}

abstract class _Tool implements Tool {
  factory _Tool({required String name, String? path}) = _$_Tool;

  factory _Tool.fromJson(Map<String, dynamic> json) = _$_Tool.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String? get path => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ToolCopyWith<_Tool> get copyWith => throw _privateConstructorUsedError;
}

Ammo _$AmmoFromJson(Map<String, dynamic> json) {
  return _Ammo.fromJson(json);
}

/// @nodoc
class _$AmmoTearOff {
  const _$AmmoTearOff();

  _Ammo call({required String name}) {
    return _Ammo(
      name: name,
    );
  }

  Ammo fromJson(Map<String, Object> json) {
    return Ammo.fromJson(json);
  }
}

/// @nodoc
const $Ammo = _$AmmoTearOff();

/// @nodoc
mixin _$Ammo {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AmmoCopyWith<Ammo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmmoCopyWith<$Res> {
  factory $AmmoCopyWith(Ammo value, $Res Function(Ammo) then) =
      _$AmmoCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$AmmoCopyWithImpl<$Res> implements $AmmoCopyWith<$Res> {
  _$AmmoCopyWithImpl(this._value, this._then);

  final Ammo _value;
  // ignore: unused_field
  final $Res Function(Ammo) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AmmoCopyWith<$Res> implements $AmmoCopyWith<$Res> {
  factory _$AmmoCopyWith(_Ammo value, $Res Function(_Ammo) then) =
      __$AmmoCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$AmmoCopyWithImpl<$Res> extends _$AmmoCopyWithImpl<$Res>
    implements _$AmmoCopyWith<$Res> {
  __$AmmoCopyWithImpl(_Ammo _value, $Res Function(_Ammo) _then)
      : super(_value, (v) => _then(v as _Ammo));

  @override
  _Ammo get _value => super._value as _Ammo;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_Ammo(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ammo implements _Ammo {
  _$_Ammo({required this.name});

  factory _$_Ammo.fromJson(Map<String, dynamic> json) =>
      _$_$_AmmoFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'Ammo(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Ammo &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$AmmoCopyWith<_Ammo> get copyWith =>
      __$AmmoCopyWithImpl<_Ammo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AmmoToJson(this);
  }
}

abstract class _Ammo implements Ammo {
  factory _Ammo({required String name}) = _$_Ammo;

  factory _Ammo.fromJson(Map<String, dynamic> json) = _$_Ammo.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AmmoCopyWith<_Ammo> get copyWith => throw _privateConstructorUsedError;
}

Gun _$GunFromJson(Map<String, dynamic> json) {
  return _Gun.fromJson(json);
}

/// @nodoc
class _$GunTearOff {
  const _$GunTearOff();

  _Gun call({required String name, String? path}) {
    return _Gun(
      name: name,
      path: path,
    );
  }

  Gun fromJson(Map<String, Object> json) {
    return Gun.fromJson(json);
  }
}

/// @nodoc
const $Gun = _$GunTearOff();

/// @nodoc
mixin _$Gun {
  String get name => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GunCopyWith<Gun> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GunCopyWith<$Res> {
  factory $GunCopyWith(Gun value, $Res Function(Gun) then) =
      _$GunCopyWithImpl<$Res>;
  $Res call({String name, String? path});
}

/// @nodoc
class _$GunCopyWithImpl<$Res> implements $GunCopyWith<$Res> {
  _$GunCopyWithImpl(this._value, this._then);

  final Gun _value;
  // ignore: unused_field
  final $Res Function(Gun) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GunCopyWith<$Res> implements $GunCopyWith<$Res> {
  factory _$GunCopyWith(_Gun value, $Res Function(_Gun) then) =
      __$GunCopyWithImpl<$Res>;
  @override
  $Res call({String name, String? path});
}

/// @nodoc
class __$GunCopyWithImpl<$Res> extends _$GunCopyWithImpl<$Res>
    implements _$GunCopyWith<$Res> {
  __$GunCopyWithImpl(_Gun _value, $Res Function(_Gun) _then)
      : super(_value, (v) => _then(v as _Gun));

  @override
  _Gun get _value => super._value as _Gun;

  @override
  $Res call({
    Object? name = freezed,
    Object? path = freezed,
  }) {
    return _then(_Gun(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Gun implements _Gun {
  _$_Gun({required this.name, this.path});

  factory _$_Gun.fromJson(Map<String, dynamic> json) => _$_$_GunFromJson(json);

  @override
  final String name;
  @override
  final String? path;

  @override
  String toString() {
    return 'Gun(name: $name, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Gun &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(path);

  @JsonKey(ignore: true)
  @override
  _$GunCopyWith<_Gun> get copyWith =>
      __$GunCopyWithImpl<_Gun>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GunToJson(this);
  }
}

abstract class _Gun implements Gun {
  factory _Gun({required String name, String? path}) = _$_Gun;

  factory _Gun.fromJson(Map<String, dynamic> json) = _$_Gun.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String? get path => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GunCopyWith<_Gun> get copyWith => throw _privateConstructorUsedError;
}

MountType _$MountTypeFromJson(Map<String, dynamic> json) {
  return _MountType.fromJson(json);
}

/// @nodoc
class _$MountTypeTearOff {
  const _$MountTypeTearOff();

  _MountType call({required String name}) {
    return _MountType(
      name: name,
    );
  }

  MountType fromJson(Map<String, Object> json) {
    return MountType.fromJson(json);
  }
}

/// @nodoc
const $MountType = _$MountTypeTearOff();

/// @nodoc
mixin _$MountType {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MountTypeCopyWith<MountType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MountTypeCopyWith<$Res> {
  factory $MountTypeCopyWith(MountType value, $Res Function(MountType) then) =
      _$MountTypeCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$MountTypeCopyWithImpl<$Res> implements $MountTypeCopyWith<$Res> {
  _$MountTypeCopyWithImpl(this._value, this._then);

  final MountType _value;
  // ignore: unused_field
  final $Res Function(MountType) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MountTypeCopyWith<$Res> implements $MountTypeCopyWith<$Res> {
  factory _$MountTypeCopyWith(
          _MountType value, $Res Function(_MountType) then) =
      __$MountTypeCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$MountTypeCopyWithImpl<$Res> extends _$MountTypeCopyWithImpl<$Res>
    implements _$MountTypeCopyWith<$Res> {
  __$MountTypeCopyWithImpl(_MountType _value, $Res Function(_MountType) _then)
      : super(_value, (v) => _then(v as _MountType));

  @override
  _MountType get _value => super._value as _MountType;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_MountType(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MountType implements _MountType {
  _$_MountType({required this.name});

  factory _$_MountType.fromJson(Map<String, dynamic> json) =>
      _$_$_MountTypeFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'MountType(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MountType &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$MountTypeCopyWith<_MountType> get copyWith =>
      __$MountTypeCopyWithImpl<_MountType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MountTypeToJson(this);
  }
}

abstract class _MountType implements MountType {
  factory _MountType({required String name}) = _$_MountType;

  factory _MountType.fromJson(Map<String, dynamic> json) =
      _$_MountType.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MountTypeCopyWith<_MountType> get copyWith =>
      throw _privateConstructorUsedError;
}

InitiationSystem _$InitiationSystemFromJson(Map<String, dynamic> json) {
  return _InitiationSystem.fromJson(json);
}

/// @nodoc
class _$InitiationSystemTearOff {
  const _$InitiationSystemTearOff();

  _InitiationSystem call({required String name}) {
    return _InitiationSystem(
      name: name,
    );
  }

  InitiationSystem fromJson(Map<String, Object> json) {
    return InitiationSystem.fromJson(json);
  }
}

/// @nodoc
const $InitiationSystem = _$InitiationSystemTearOff();

/// @nodoc
mixin _$InitiationSystem {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitiationSystemCopyWith<InitiationSystem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitiationSystemCopyWith<$Res> {
  factory $InitiationSystemCopyWith(
          InitiationSystem value, $Res Function(InitiationSystem) then) =
      _$InitiationSystemCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$InitiationSystemCopyWithImpl<$Res>
    implements $InitiationSystemCopyWith<$Res> {
  _$InitiationSystemCopyWithImpl(this._value, this._then);

  final InitiationSystem _value;
  // ignore: unused_field
  final $Res Function(InitiationSystem) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$InitiationSystemCopyWith<$Res>
    implements $InitiationSystemCopyWith<$Res> {
  factory _$InitiationSystemCopyWith(
          _InitiationSystem value, $Res Function(_InitiationSystem) then) =
      __$InitiationSystemCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$InitiationSystemCopyWithImpl<$Res>
    extends _$InitiationSystemCopyWithImpl<$Res>
    implements _$InitiationSystemCopyWith<$Res> {
  __$InitiationSystemCopyWithImpl(
      _InitiationSystem _value, $Res Function(_InitiationSystem) _then)
      : super(_value, (v) => _then(v as _InitiationSystem));

  @override
  _InitiationSystem get _value => super._value as _InitiationSystem;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_InitiationSystem(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InitiationSystem implements _InitiationSystem {
  _$_InitiationSystem({required this.name});

  factory _$_InitiationSystem.fromJson(Map<String, dynamic> json) =>
      _$_$_InitiationSystemFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'InitiationSystem(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitiationSystem &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$InitiationSystemCopyWith<_InitiationSystem> get copyWith =>
      __$InitiationSystemCopyWithImpl<_InitiationSystem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_InitiationSystemToJson(this);
  }
}

abstract class _InitiationSystem implements InitiationSystem {
  factory _InitiationSystem({required String name}) = _$_InitiationSystem;

  factory _InitiationSystem.fromJson(Map<String, dynamic> json) =
      _$_InitiationSystem.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitiationSystemCopyWith<_InitiationSystem> get copyWith =>
      throw _privateConstructorUsedError;
}

ExpectedBehaviour _$ExpectedBehaviourFromJson(Map<String, dynamic> json) {
  return _ExpectedBehaviour.fromJson(json);
}

/// @nodoc
class _$ExpectedBehaviourTearOff {
  const _$ExpectedBehaviourTearOff();

  _ExpectedBehaviour call({required String name}) {
    return _ExpectedBehaviour(
      name: name,
    );
  }

  ExpectedBehaviour fromJson(Map<String, Object> json) {
    return ExpectedBehaviour.fromJson(json);
  }
}

/// @nodoc
const $ExpectedBehaviour = _$ExpectedBehaviourTearOff();

/// @nodoc
mixin _$ExpectedBehaviour {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpectedBehaviourCopyWith<ExpectedBehaviour> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpectedBehaviourCopyWith<$Res> {
  factory $ExpectedBehaviourCopyWith(
          ExpectedBehaviour value, $Res Function(ExpectedBehaviour) then) =
      _$ExpectedBehaviourCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$ExpectedBehaviourCopyWithImpl<$Res>
    implements $ExpectedBehaviourCopyWith<$Res> {
  _$ExpectedBehaviourCopyWithImpl(this._value, this._then);

  final ExpectedBehaviour _value;
  // ignore: unused_field
  final $Res Function(ExpectedBehaviour) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ExpectedBehaviourCopyWith<$Res>
    implements $ExpectedBehaviourCopyWith<$Res> {
  factory _$ExpectedBehaviourCopyWith(
          _ExpectedBehaviour value, $Res Function(_ExpectedBehaviour) then) =
      __$ExpectedBehaviourCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$ExpectedBehaviourCopyWithImpl<$Res>
    extends _$ExpectedBehaviourCopyWithImpl<$Res>
    implements _$ExpectedBehaviourCopyWith<$Res> {
  __$ExpectedBehaviourCopyWithImpl(
      _ExpectedBehaviour _value, $Res Function(_ExpectedBehaviour) _then)
      : super(_value, (v) => _then(v as _ExpectedBehaviour));

  @override
  _ExpectedBehaviour get _value => super._value as _ExpectedBehaviour;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_ExpectedBehaviour(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExpectedBehaviour implements _ExpectedBehaviour {
  _$_ExpectedBehaviour({required this.name});

  factory _$_ExpectedBehaviour.fromJson(Map<String, dynamic> json) =>
      _$_$_ExpectedBehaviourFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'ExpectedBehaviour(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExpectedBehaviour &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$ExpectedBehaviourCopyWith<_ExpectedBehaviour> get copyWith =>
      __$ExpectedBehaviourCopyWithImpl<_ExpectedBehaviour>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExpectedBehaviourToJson(this);
  }
}

abstract class _ExpectedBehaviour implements ExpectedBehaviour {
  factory _ExpectedBehaviour({required String name}) = _$_ExpectedBehaviour;

  factory _ExpectedBehaviour.fromJson(Map<String, dynamic> json) =
      _$_ExpectedBehaviour.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExpectedBehaviourCopyWith<_ExpectedBehaviour> get copyWith =>
      throw _privateConstructorUsedError;
}

ExpectedEffect _$ExpectedEffectFromJson(Map<String, dynamic> json) {
  return _ExpectedEffectr.fromJson(json);
}

/// @nodoc
class _$ExpectedEffectTearOff {
  const _$ExpectedEffectTearOff();

  _ExpectedEffectr call({required String name}) {
    return _ExpectedEffectr(
      name: name,
    );
  }

  ExpectedEffect fromJson(Map<String, Object> json) {
    return ExpectedEffect.fromJson(json);
  }
}

/// @nodoc
const $ExpectedEffect = _$ExpectedEffectTearOff();

/// @nodoc
mixin _$ExpectedEffect {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpectedEffectCopyWith<ExpectedEffect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpectedEffectCopyWith<$Res> {
  factory $ExpectedEffectCopyWith(
          ExpectedEffect value, $Res Function(ExpectedEffect) then) =
      _$ExpectedEffectCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$ExpectedEffectCopyWithImpl<$Res>
    implements $ExpectedEffectCopyWith<$Res> {
  _$ExpectedEffectCopyWithImpl(this._value, this._then);

  final ExpectedEffect _value;
  // ignore: unused_field
  final $Res Function(ExpectedEffect) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ExpectedEffectrCopyWith<$Res>
    implements $ExpectedEffectCopyWith<$Res> {
  factory _$ExpectedEffectrCopyWith(
          _ExpectedEffectr value, $Res Function(_ExpectedEffectr) then) =
      __$ExpectedEffectrCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$ExpectedEffectrCopyWithImpl<$Res>
    extends _$ExpectedEffectCopyWithImpl<$Res>
    implements _$ExpectedEffectrCopyWith<$Res> {
  __$ExpectedEffectrCopyWithImpl(
      _ExpectedEffectr _value, $Res Function(_ExpectedEffectr) _then)
      : super(_value, (v) => _then(v as _ExpectedEffectr));

  @override
  _ExpectedEffectr get _value => super._value as _ExpectedEffectr;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_ExpectedEffectr(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExpectedEffectr implements _ExpectedEffectr {
  _$_ExpectedEffectr({required this.name});

  factory _$_ExpectedEffectr.fromJson(Map<String, dynamic> json) =>
      _$_$_ExpectedEffectrFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'ExpectedEffect(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExpectedEffectr &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$ExpectedEffectrCopyWith<_ExpectedEffectr> get copyWith =>
      __$ExpectedEffectrCopyWithImpl<_ExpectedEffectr>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExpectedEffectrToJson(this);
  }
}

abstract class _ExpectedEffectr implements ExpectedEffect {
  factory _ExpectedEffectr({required String name}) = _$_ExpectedEffectr;

  factory _ExpectedEffectr.fromJson(Map<String, dynamic> json) =
      _$_ExpectedEffectr.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExpectedEffectrCopyWith<_ExpectedEffectr> get copyWith =>
      throw _privateConstructorUsedError;
}

Obstacle _$ObstacleFromJson(Map<String, dynamic> json) {
  return _Obstacle.fromJson(json);
}

/// @nodoc
class _$ObstacleTearOff {
  const _$ObstacleTearOff();

  _Obstacle call(
      {required String name,
      required String description,
      required ObstacleType obstacleType,
      required DateTime created,
      double? thickness,
      DateTime? modified,
      List<String>? photos,
      List<BuildMaterialCount>? buildMaterials}) {
    return _Obstacle(
      name: name,
      description: description,
      obstacleType: obstacleType,
      created: created,
      thickness: thickness,
      modified: modified,
      photos: photos,
      buildMaterials: buildMaterials,
    );
  }

  Obstacle fromJson(Map<String, Object> json) {
    return Obstacle.fromJson(json);
  }
}

/// @nodoc
const $Obstacle = _$ObstacleTearOff();

/// @nodoc
mixin _$Obstacle {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  ObstacleType get obstacleType => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  double? get thickness => throw _privateConstructorUsedError;
  DateTime? get modified => throw _privateConstructorUsedError;
  List<String>? get photos => throw _privateConstructorUsedError;
  List<BuildMaterialCount>? get buildMaterials =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObstacleCopyWith<Obstacle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObstacleCopyWith<$Res> {
  factory $ObstacleCopyWith(Obstacle value, $Res Function(Obstacle) then) =
      _$ObstacleCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String description,
      ObstacleType obstacleType,
      DateTime created,
      double? thickness,
      DateTime? modified,
      List<String>? photos,
      List<BuildMaterialCount>? buildMaterials});
}

/// @nodoc
class _$ObstacleCopyWithImpl<$Res> implements $ObstacleCopyWith<$Res> {
  _$ObstacleCopyWithImpl(this._value, this._then);

  final Obstacle _value;
  // ignore: unused_field
  final $Res Function(Obstacle) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? obstacleType = freezed,
    Object? created = freezed,
    Object? thickness = freezed,
    Object? modified = freezed,
    Object? photos = freezed,
    Object? buildMaterials = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      obstacleType: obstacleType == freezed
          ? _value.obstacleType
          : obstacleType // ignore: cast_nullable_to_non_nullable
              as ObstacleType,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      thickness: thickness == freezed
          ? _value.thickness
          : thickness // ignore: cast_nullable_to_non_nullable
              as double?,
      modified: modified == freezed
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      buildMaterials: buildMaterials == freezed
          ? _value.buildMaterials
          : buildMaterials // ignore: cast_nullable_to_non_nullable
              as List<BuildMaterialCount>?,
    ));
  }
}

/// @nodoc
abstract class _$ObstacleCopyWith<$Res> implements $ObstacleCopyWith<$Res> {
  factory _$ObstacleCopyWith(_Obstacle value, $Res Function(_Obstacle) then) =
      __$ObstacleCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String description,
      ObstacleType obstacleType,
      DateTime created,
      double? thickness,
      DateTime? modified,
      List<String>? photos,
      List<BuildMaterialCount>? buildMaterials});
}

/// @nodoc
class __$ObstacleCopyWithImpl<$Res> extends _$ObstacleCopyWithImpl<$Res>
    implements _$ObstacleCopyWith<$Res> {
  __$ObstacleCopyWithImpl(_Obstacle _value, $Res Function(_Obstacle) _then)
      : super(_value, (v) => _then(v as _Obstacle));

  @override
  _Obstacle get _value => super._value as _Obstacle;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? obstacleType = freezed,
    Object? created = freezed,
    Object? thickness = freezed,
    Object? modified = freezed,
    Object? photos = freezed,
    Object? buildMaterials = freezed,
  }) {
    return _then(_Obstacle(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      obstacleType: obstacleType == freezed
          ? _value.obstacleType
          : obstacleType // ignore: cast_nullable_to_non_nullable
              as ObstacleType,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      thickness: thickness == freezed
          ? _value.thickness
          : thickness // ignore: cast_nullable_to_non_nullable
              as double?,
      modified: modified == freezed
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      buildMaterials: buildMaterials == freezed
          ? _value.buildMaterials
          : buildMaterials // ignore: cast_nullable_to_non_nullable
              as List<BuildMaterialCount>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Obstacle implements _Obstacle {
  _$_Obstacle(
      {required this.name,
      required this.description,
      required this.obstacleType,
      required this.created,
      this.thickness,
      this.modified,
      this.photos,
      this.buildMaterials});

  factory _$_Obstacle.fromJson(Map<String, dynamic> json) =>
      _$_$_ObstacleFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final ObstacleType obstacleType;
  @override
  final DateTime created;
  @override
  final double? thickness;
  @override
  final DateTime? modified;
  @override
  final List<String>? photos;
  @override
  final List<BuildMaterialCount>? buildMaterials;

  @override
  String toString() {
    return 'Obstacle(name: $name, description: $description, obstacleType: $obstacleType, created: $created, thickness: $thickness, modified: $modified, photos: $photos, buildMaterials: $buildMaterials)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Obstacle &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.obstacleType, obstacleType) ||
                const DeepCollectionEquality()
                    .equals(other.obstacleType, obstacleType)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.thickness, thickness) ||
                const DeepCollectionEquality()
                    .equals(other.thickness, thickness)) &&
            (identical(other.modified, modified) ||
                const DeepCollectionEquality()
                    .equals(other.modified, modified)) &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)) &&
            (identical(other.buildMaterials, buildMaterials) ||
                const DeepCollectionEquality()
                    .equals(other.buildMaterials, buildMaterials)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(obstacleType) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(thickness) ^
      const DeepCollectionEquality().hash(modified) ^
      const DeepCollectionEquality().hash(photos) ^
      const DeepCollectionEquality().hash(buildMaterials);

  @JsonKey(ignore: true)
  @override
  _$ObstacleCopyWith<_Obstacle> get copyWith =>
      __$ObstacleCopyWithImpl<_Obstacle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ObstacleToJson(this);
  }
}

abstract class _Obstacle implements Obstacle {
  factory _Obstacle(
      {required String name,
      required String description,
      required ObstacleType obstacleType,
      required DateTime created,
      double? thickness,
      DateTime? modified,
      List<String>? photos,
      List<BuildMaterialCount>? buildMaterials}) = _$_Obstacle;

  factory _Obstacle.fromJson(Map<String, dynamic> json) = _$_Obstacle.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  ObstacleType get obstacleType => throw _privateConstructorUsedError;
  @override
  DateTime get created => throw _privateConstructorUsedError;
  @override
  double? get thickness => throw _privateConstructorUsedError;
  @override
  DateTime? get modified => throw _privateConstructorUsedError;
  @override
  List<String>? get photos => throw _privateConstructorUsedError;
  @override
  List<BuildMaterialCount>? get buildMaterials =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ObstacleCopyWith<_Obstacle> get copyWith =>
      throw _privateConstructorUsedError;
}

Destruction _$DestructionFromJson(Map<String, dynamic> json) {
  return _Destruction.fromJson(json);
}

/// @nodoc
class _$DestructionTearOff {
  const _$DestructionTearOff();

  _Destruction call(
      {required int id,
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
      List<PhotoWithDescription>? photosBefore}) {
    return _Destruction(
      id: id,
      name: name,
      workType: workType,
      expectedBehaviour: expectedBehaviour,
      expectedEffect: expectedEffect,
      performer: performer,
      description: description,
      recomendation: recomendation,
      place: place,
      date: date,
      obstacle: obstacle,
      explosiveUnit: explosiveUnit,
      initiationSystem: initiationSystem,
      secondExplosiveUnit: secondExplosiveUnit,
      secondInitiationSystem: secondInitiationSystem,
      process: process,
      mountType: mountType,
      twoStage: twoStage,
      isGood: isGood,
      seal: seal,
      tool: tool,
      gun: gun,
      secondTool: secondTool,
      secondGun: secondGun,
      created: created,
      modified: modified,
      photosAfter: photosAfter,
      photosBefore: photosBefore,
    );
  }

  Destruction fromJson(Map<String, Object> json) {
    return Destruction.fromJson(json);
  }
}

/// @nodoc
const $Destruction = _$DestructionTearOff();

/// @nodoc
mixin _$Destruction {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  WorkType? get workType => throw _privateConstructorUsedError;
  ExpectedBehaviour? get expectedBehaviour =>
      throw _privateConstructorUsedError;
  ExpectedEffect? get expectedEffect => throw _privateConstructorUsedError;
  String? get performer => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get recomendation => throw _privateConstructorUsedError;
  String? get place => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  Obstacle? get obstacle => throw _privateConstructorUsedError;
  ExplosiveUnit? get explosiveUnit => throw _privateConstructorUsedError;
  InitiationSystem? get initiationSystem => throw _privateConstructorUsedError;
  ExplosiveUnit? get secondExplosiveUnit => throw _privateConstructorUsedError;
  InitiationSystem? get secondInitiationSystem =>
      throw _privateConstructorUsedError;
  List<ProcessItem>? get process => throw _privateConstructorUsedError;
  MountType? get mountType => throw _privateConstructorUsedError;
  bool get twoStage => throw _privateConstructorUsedError;
  bool get isGood => throw _privateConstructorUsedError;
  double get seal => throw _privateConstructorUsedError;
  Tool? get tool => throw _privateConstructorUsedError;
  Gun? get gun => throw _privateConstructorUsedError;
  Tool? get secondTool => throw _privateConstructorUsedError;
  Gun? get secondGun => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  DateTime? get modified => throw _privateConstructorUsedError;
  List<PhotoWithDescription>? get photosAfter =>
      throw _privateConstructorUsedError;
  List<PhotoWithDescription>? get photosBefore =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DestructionCopyWith<Destruction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DestructionCopyWith<$Res> {
  factory $DestructionCopyWith(
          Destruction value, $Res Function(Destruction) then) =
      _$DestructionCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      WorkType? workType,
      ExpectedBehaviour? expectedBehaviour,
      ExpectedEffect? expectedEffect,
      String? performer,
      String? description,
      String? recomendation,
      String? place,
      DateTime date,
      Obstacle? obstacle,
      ExplosiveUnit? explosiveUnit,
      InitiationSystem? initiationSystem,
      ExplosiveUnit? secondExplosiveUnit,
      InitiationSystem? secondInitiationSystem,
      List<ProcessItem>? process,
      MountType? mountType,
      bool twoStage,
      bool isGood,
      double seal,
      Tool? tool,
      Gun? gun,
      Tool? secondTool,
      Gun? secondGun,
      DateTime created,
      DateTime? modified,
      List<PhotoWithDescription>? photosAfter,
      List<PhotoWithDescription>? photosBefore});

  $ExpectedBehaviourCopyWith<$Res>? get expectedBehaviour;
  $ExpectedEffectCopyWith<$Res>? get expectedEffect;
  $ObstacleCopyWith<$Res>? get obstacle;
  $ExplosiveUnitCopyWith<$Res>? get explosiveUnit;
  $InitiationSystemCopyWith<$Res>? get initiationSystem;
  $ExplosiveUnitCopyWith<$Res>? get secondExplosiveUnit;
  $InitiationSystemCopyWith<$Res>? get secondInitiationSystem;
  $MountTypeCopyWith<$Res>? get mountType;
  $ToolCopyWith<$Res>? get tool;
  $GunCopyWith<$Res>? get gun;
  $ToolCopyWith<$Res>? get secondTool;
  $GunCopyWith<$Res>? get secondGun;
}

/// @nodoc
class _$DestructionCopyWithImpl<$Res> implements $DestructionCopyWith<$Res> {
  _$DestructionCopyWithImpl(this._value, this._then);

  final Destruction _value;
  // ignore: unused_field
  final $Res Function(Destruction) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? workType = freezed,
    Object? expectedBehaviour = freezed,
    Object? expectedEffect = freezed,
    Object? performer = freezed,
    Object? description = freezed,
    Object? recomendation = freezed,
    Object? place = freezed,
    Object? date = freezed,
    Object? obstacle = freezed,
    Object? explosiveUnit = freezed,
    Object? initiationSystem = freezed,
    Object? secondExplosiveUnit = freezed,
    Object? secondInitiationSystem = freezed,
    Object? process = freezed,
    Object? mountType = freezed,
    Object? twoStage = freezed,
    Object? isGood = freezed,
    Object? seal = freezed,
    Object? tool = freezed,
    Object? gun = freezed,
    Object? secondTool = freezed,
    Object? secondGun = freezed,
    Object? created = freezed,
    Object? modified = freezed,
    Object? photosAfter = freezed,
    Object? photosBefore = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      workType: workType == freezed
          ? _value.workType
          : workType // ignore: cast_nullable_to_non_nullable
              as WorkType?,
      expectedBehaviour: expectedBehaviour == freezed
          ? _value.expectedBehaviour
          : expectedBehaviour // ignore: cast_nullable_to_non_nullable
              as ExpectedBehaviour?,
      expectedEffect: expectedEffect == freezed
          ? _value.expectedEffect
          : expectedEffect // ignore: cast_nullable_to_non_nullable
              as ExpectedEffect?,
      performer: performer == freezed
          ? _value.performer
          : performer // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      recomendation: recomendation == freezed
          ? _value.recomendation
          : recomendation // ignore: cast_nullable_to_non_nullable
              as String?,
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      obstacle: obstacle == freezed
          ? _value.obstacle
          : obstacle // ignore: cast_nullable_to_non_nullable
              as Obstacle?,
      explosiveUnit: explosiveUnit == freezed
          ? _value.explosiveUnit
          : explosiveUnit // ignore: cast_nullable_to_non_nullable
              as ExplosiveUnit?,
      initiationSystem: initiationSystem == freezed
          ? _value.initiationSystem
          : initiationSystem // ignore: cast_nullable_to_non_nullable
              as InitiationSystem?,
      secondExplosiveUnit: secondExplosiveUnit == freezed
          ? _value.secondExplosiveUnit
          : secondExplosiveUnit // ignore: cast_nullable_to_non_nullable
              as ExplosiveUnit?,
      secondInitiationSystem: secondInitiationSystem == freezed
          ? _value.secondInitiationSystem
          : secondInitiationSystem // ignore: cast_nullable_to_non_nullable
              as InitiationSystem?,
      process: process == freezed
          ? _value.process
          : process // ignore: cast_nullable_to_non_nullable
              as List<ProcessItem>?,
      mountType: mountType == freezed
          ? _value.mountType
          : mountType // ignore: cast_nullable_to_non_nullable
              as MountType?,
      twoStage: twoStage == freezed
          ? _value.twoStage
          : twoStage // ignore: cast_nullable_to_non_nullable
              as bool,
      isGood: isGood == freezed
          ? _value.isGood
          : isGood // ignore: cast_nullable_to_non_nullable
              as bool,
      seal: seal == freezed
          ? _value.seal
          : seal // ignore: cast_nullable_to_non_nullable
              as double,
      tool: tool == freezed
          ? _value.tool
          : tool // ignore: cast_nullable_to_non_nullable
              as Tool?,
      gun: gun == freezed
          ? _value.gun
          : gun // ignore: cast_nullable_to_non_nullable
              as Gun?,
      secondTool: secondTool == freezed
          ? _value.secondTool
          : secondTool // ignore: cast_nullable_to_non_nullable
              as Tool?,
      secondGun: secondGun == freezed
          ? _value.secondGun
          : secondGun // ignore: cast_nullable_to_non_nullable
              as Gun?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modified: modified == freezed
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      photosAfter: photosAfter == freezed
          ? _value.photosAfter
          : photosAfter // ignore: cast_nullable_to_non_nullable
              as List<PhotoWithDescription>?,
      photosBefore: photosBefore == freezed
          ? _value.photosBefore
          : photosBefore // ignore: cast_nullable_to_non_nullable
              as List<PhotoWithDescription>?,
    ));
  }

  @override
  $ExpectedBehaviourCopyWith<$Res>? get expectedBehaviour {
    if (_value.expectedBehaviour == null) {
      return null;
    }

    return $ExpectedBehaviourCopyWith<$Res>(_value.expectedBehaviour!, (value) {
      return _then(_value.copyWith(expectedBehaviour: value));
    });
  }

  @override
  $ExpectedEffectCopyWith<$Res>? get expectedEffect {
    if (_value.expectedEffect == null) {
      return null;
    }

    return $ExpectedEffectCopyWith<$Res>(_value.expectedEffect!, (value) {
      return _then(_value.copyWith(expectedEffect: value));
    });
  }

  @override
  $ObstacleCopyWith<$Res>? get obstacle {
    if (_value.obstacle == null) {
      return null;
    }

    return $ObstacleCopyWith<$Res>(_value.obstacle!, (value) {
      return _then(_value.copyWith(obstacle: value));
    });
  }

  @override
  $ExplosiveUnitCopyWith<$Res>? get explosiveUnit {
    if (_value.explosiveUnit == null) {
      return null;
    }

    return $ExplosiveUnitCopyWith<$Res>(_value.explosiveUnit!, (value) {
      return _then(_value.copyWith(explosiveUnit: value));
    });
  }

  @override
  $InitiationSystemCopyWith<$Res>? get initiationSystem {
    if (_value.initiationSystem == null) {
      return null;
    }

    return $InitiationSystemCopyWith<$Res>(_value.initiationSystem!, (value) {
      return _then(_value.copyWith(initiationSystem: value));
    });
  }

  @override
  $ExplosiveUnitCopyWith<$Res>? get secondExplosiveUnit {
    if (_value.secondExplosiveUnit == null) {
      return null;
    }

    return $ExplosiveUnitCopyWith<$Res>(_value.secondExplosiveUnit!, (value) {
      return _then(_value.copyWith(secondExplosiveUnit: value));
    });
  }

  @override
  $InitiationSystemCopyWith<$Res>? get secondInitiationSystem {
    if (_value.secondInitiationSystem == null) {
      return null;
    }

    return $InitiationSystemCopyWith<$Res>(_value.secondInitiationSystem!,
        (value) {
      return _then(_value.copyWith(secondInitiationSystem: value));
    });
  }

  @override
  $MountTypeCopyWith<$Res>? get mountType {
    if (_value.mountType == null) {
      return null;
    }

    return $MountTypeCopyWith<$Res>(_value.mountType!, (value) {
      return _then(_value.copyWith(mountType: value));
    });
  }

  @override
  $ToolCopyWith<$Res>? get tool {
    if (_value.tool == null) {
      return null;
    }

    return $ToolCopyWith<$Res>(_value.tool!, (value) {
      return _then(_value.copyWith(tool: value));
    });
  }

  @override
  $GunCopyWith<$Res>? get gun {
    if (_value.gun == null) {
      return null;
    }

    return $GunCopyWith<$Res>(_value.gun!, (value) {
      return _then(_value.copyWith(gun: value));
    });
  }

  @override
  $ToolCopyWith<$Res>? get secondTool {
    if (_value.secondTool == null) {
      return null;
    }

    return $ToolCopyWith<$Res>(_value.secondTool!, (value) {
      return _then(_value.copyWith(secondTool: value));
    });
  }

  @override
  $GunCopyWith<$Res>? get secondGun {
    if (_value.secondGun == null) {
      return null;
    }

    return $GunCopyWith<$Res>(_value.secondGun!, (value) {
      return _then(_value.copyWith(secondGun: value));
    });
  }
}

/// @nodoc
abstract class _$DestructionCopyWith<$Res>
    implements $DestructionCopyWith<$Res> {
  factory _$DestructionCopyWith(
          _Destruction value, $Res Function(_Destruction) then) =
      __$DestructionCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      WorkType? workType,
      ExpectedBehaviour? expectedBehaviour,
      ExpectedEffect? expectedEffect,
      String? performer,
      String? description,
      String? recomendation,
      String? place,
      DateTime date,
      Obstacle? obstacle,
      ExplosiveUnit? explosiveUnit,
      InitiationSystem? initiationSystem,
      ExplosiveUnit? secondExplosiveUnit,
      InitiationSystem? secondInitiationSystem,
      List<ProcessItem>? process,
      MountType? mountType,
      bool twoStage,
      bool isGood,
      double seal,
      Tool? tool,
      Gun? gun,
      Tool? secondTool,
      Gun? secondGun,
      DateTime created,
      DateTime? modified,
      List<PhotoWithDescription>? photosAfter,
      List<PhotoWithDescription>? photosBefore});

  @override
  $ExpectedBehaviourCopyWith<$Res>? get expectedBehaviour;
  @override
  $ExpectedEffectCopyWith<$Res>? get expectedEffect;
  @override
  $ObstacleCopyWith<$Res>? get obstacle;
  @override
  $ExplosiveUnitCopyWith<$Res>? get explosiveUnit;
  @override
  $InitiationSystemCopyWith<$Res>? get initiationSystem;
  @override
  $ExplosiveUnitCopyWith<$Res>? get secondExplosiveUnit;
  @override
  $InitiationSystemCopyWith<$Res>? get secondInitiationSystem;
  @override
  $MountTypeCopyWith<$Res>? get mountType;
  @override
  $ToolCopyWith<$Res>? get tool;
  @override
  $GunCopyWith<$Res>? get gun;
  @override
  $ToolCopyWith<$Res>? get secondTool;
  @override
  $GunCopyWith<$Res>? get secondGun;
}

/// @nodoc
class __$DestructionCopyWithImpl<$Res> extends _$DestructionCopyWithImpl<$Res>
    implements _$DestructionCopyWith<$Res> {
  __$DestructionCopyWithImpl(
      _Destruction _value, $Res Function(_Destruction) _then)
      : super(_value, (v) => _then(v as _Destruction));

  @override
  _Destruction get _value => super._value as _Destruction;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? workType = freezed,
    Object? expectedBehaviour = freezed,
    Object? expectedEffect = freezed,
    Object? performer = freezed,
    Object? description = freezed,
    Object? recomendation = freezed,
    Object? place = freezed,
    Object? date = freezed,
    Object? obstacle = freezed,
    Object? explosiveUnit = freezed,
    Object? initiationSystem = freezed,
    Object? secondExplosiveUnit = freezed,
    Object? secondInitiationSystem = freezed,
    Object? process = freezed,
    Object? mountType = freezed,
    Object? twoStage = freezed,
    Object? isGood = freezed,
    Object? seal = freezed,
    Object? tool = freezed,
    Object? gun = freezed,
    Object? secondTool = freezed,
    Object? secondGun = freezed,
    Object? created = freezed,
    Object? modified = freezed,
    Object? photosAfter = freezed,
    Object? photosBefore = freezed,
  }) {
    return _then(_Destruction(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      workType: workType == freezed
          ? _value.workType
          : workType // ignore: cast_nullable_to_non_nullable
              as WorkType?,
      expectedBehaviour: expectedBehaviour == freezed
          ? _value.expectedBehaviour
          : expectedBehaviour // ignore: cast_nullable_to_non_nullable
              as ExpectedBehaviour?,
      expectedEffect: expectedEffect == freezed
          ? _value.expectedEffect
          : expectedEffect // ignore: cast_nullable_to_non_nullable
              as ExpectedEffect?,
      performer: performer == freezed
          ? _value.performer
          : performer // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      recomendation: recomendation == freezed
          ? _value.recomendation
          : recomendation // ignore: cast_nullable_to_non_nullable
              as String?,
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      obstacle: obstacle == freezed
          ? _value.obstacle
          : obstacle // ignore: cast_nullable_to_non_nullable
              as Obstacle?,
      explosiveUnit: explosiveUnit == freezed
          ? _value.explosiveUnit
          : explosiveUnit // ignore: cast_nullable_to_non_nullable
              as ExplosiveUnit?,
      initiationSystem: initiationSystem == freezed
          ? _value.initiationSystem
          : initiationSystem // ignore: cast_nullable_to_non_nullable
              as InitiationSystem?,
      secondExplosiveUnit: secondExplosiveUnit == freezed
          ? _value.secondExplosiveUnit
          : secondExplosiveUnit // ignore: cast_nullable_to_non_nullable
              as ExplosiveUnit?,
      secondInitiationSystem: secondInitiationSystem == freezed
          ? _value.secondInitiationSystem
          : secondInitiationSystem // ignore: cast_nullable_to_non_nullable
              as InitiationSystem?,
      process: process == freezed
          ? _value.process
          : process // ignore: cast_nullable_to_non_nullable
              as List<ProcessItem>?,
      mountType: mountType == freezed
          ? _value.mountType
          : mountType // ignore: cast_nullable_to_non_nullable
              as MountType?,
      twoStage: twoStage == freezed
          ? _value.twoStage
          : twoStage // ignore: cast_nullable_to_non_nullable
              as bool,
      isGood: isGood == freezed
          ? _value.isGood
          : isGood // ignore: cast_nullable_to_non_nullable
              as bool,
      seal: seal == freezed
          ? _value.seal
          : seal // ignore: cast_nullable_to_non_nullable
              as double,
      tool: tool == freezed
          ? _value.tool
          : tool // ignore: cast_nullable_to_non_nullable
              as Tool?,
      gun: gun == freezed
          ? _value.gun
          : gun // ignore: cast_nullable_to_non_nullable
              as Gun?,
      secondTool: secondTool == freezed
          ? _value.secondTool
          : secondTool // ignore: cast_nullable_to_non_nullable
              as Tool?,
      secondGun: secondGun == freezed
          ? _value.secondGun
          : secondGun // ignore: cast_nullable_to_non_nullable
              as Gun?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modified: modified == freezed
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      photosAfter: photosAfter == freezed
          ? _value.photosAfter
          : photosAfter // ignore: cast_nullable_to_non_nullable
              as List<PhotoWithDescription>?,
      photosBefore: photosBefore == freezed
          ? _value.photosBefore
          : photosBefore // ignore: cast_nullable_to_non_nullable
              as List<PhotoWithDescription>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Destruction implements _Destruction {
  _$_Destruction(
      {required this.id,
      required this.name,
      this.workType,
      this.expectedBehaviour,
      this.expectedEffect,
      this.performer,
      this.description,
      this.recomendation,
      this.place,
      required this.date,
      this.obstacle,
      this.explosiveUnit,
      this.initiationSystem,
      this.secondExplosiveUnit,
      this.secondInitiationSystem,
      this.process,
      this.mountType,
      required this.twoStage,
      required this.isGood,
      required this.seal,
      this.tool,
      this.gun,
      this.secondTool,
      this.secondGun,
      required this.created,
      this.modified,
      this.photosAfter,
      this.photosBefore});

  factory _$_Destruction.fromJson(Map<String, dynamic> json) =>
      _$_$_DestructionFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final WorkType? workType;
  @override
  final ExpectedBehaviour? expectedBehaviour;
  @override
  final ExpectedEffect? expectedEffect;
  @override
  final String? performer;
  @override
  final String? description;
  @override
  final String? recomendation;
  @override
  final String? place;
  @override
  final DateTime date;
  @override
  final Obstacle? obstacle;
  @override
  final ExplosiveUnit? explosiveUnit;
  @override
  final InitiationSystem? initiationSystem;
  @override
  final ExplosiveUnit? secondExplosiveUnit;
  @override
  final InitiationSystem? secondInitiationSystem;
  @override
  final List<ProcessItem>? process;
  @override
  final MountType? mountType;
  @override
  final bool twoStage;
  @override
  final bool isGood;
  @override
  final double seal;
  @override
  final Tool? tool;
  @override
  final Gun? gun;
  @override
  final Tool? secondTool;
  @override
  final Gun? secondGun;
  @override
  final DateTime created;
  @override
  final DateTime? modified;
  @override
  final List<PhotoWithDescription>? photosAfter;
  @override
  final List<PhotoWithDescription>? photosBefore;

  @override
  String toString() {
    return 'Destruction(id: $id, name: $name, workType: $workType, expectedBehaviour: $expectedBehaviour, expectedEffect: $expectedEffect, performer: $performer, description: $description, recomendation: $recomendation, place: $place, date: $date, obstacle: $obstacle, explosiveUnit: $explosiveUnit, initiationSystem: $initiationSystem, secondExplosiveUnit: $secondExplosiveUnit, secondInitiationSystem: $secondInitiationSystem, process: $process, mountType: $mountType, twoStage: $twoStage, isGood: $isGood, seal: $seal, tool: $tool, gun: $gun, secondTool: $secondTool, secondGun: $secondGun, created: $created, modified: $modified, photosAfter: $photosAfter, photosBefore: $photosBefore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Destruction &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.workType, workType) ||
                const DeepCollectionEquality()
                    .equals(other.workType, workType)) &&
            (identical(other.expectedBehaviour, expectedBehaviour) ||
                const DeepCollectionEquality()
                    .equals(other.expectedBehaviour, expectedBehaviour)) &&
            (identical(other.expectedEffect, expectedEffect) ||
                const DeepCollectionEquality()
                    .equals(other.expectedEffect, expectedEffect)) &&
            (identical(other.performer, performer) ||
                const DeepCollectionEquality()
                    .equals(other.performer, performer)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.recomendation, recomendation) ||
                const DeepCollectionEquality()
                    .equals(other.recomendation, recomendation)) &&
            (identical(other.place, place) ||
                const DeepCollectionEquality().equals(other.place, place)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.obstacle, obstacle) ||
                const DeepCollectionEquality()
                    .equals(other.obstacle, obstacle)) &&
            (identical(other.explosiveUnit, explosiveUnit) ||
                const DeepCollectionEquality()
                    .equals(other.explosiveUnit, explosiveUnit)) &&
            (identical(other.initiationSystem, initiationSystem) ||
                const DeepCollectionEquality()
                    .equals(other.initiationSystem, initiationSystem)) &&
            (identical(other.secondExplosiveUnit, secondExplosiveUnit) ||
                const DeepCollectionEquality()
                    .equals(other.secondExplosiveUnit, secondExplosiveUnit)) &&
            (identical(other.secondInitiationSystem, secondInitiationSystem) ||
                const DeepCollectionEquality().equals(
                    other.secondInitiationSystem, secondInitiationSystem)) &&
            (identical(other.process, process) ||
                const DeepCollectionEquality()
                    .equals(other.process, process)) &&
            (identical(other.mountType, mountType) ||
                const DeepCollectionEquality()
                    .equals(other.mountType, mountType)) &&
            (identical(other.twoStage, twoStage) ||
                const DeepCollectionEquality()
                    .equals(other.twoStage, twoStage)) &&
            (identical(other.isGood, isGood) ||
                const DeepCollectionEquality().equals(other.isGood, isGood)) &&
            (identical(other.seal, seal) ||
                const DeepCollectionEquality().equals(other.seal, seal)) &&
            (identical(other.tool, tool) ||
                const DeepCollectionEquality().equals(other.tool, tool)) &&
            (identical(other.gun, gun) ||
                const DeepCollectionEquality().equals(other.gun, gun)) &&
            (identical(other.secondTool, secondTool) ||
                const DeepCollectionEquality()
                    .equals(other.secondTool, secondTool)) &&
            (identical(other.secondGun, secondGun) ||
                const DeepCollectionEquality()
                    .equals(other.secondGun, secondGun)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.modified, modified) ||
                const DeepCollectionEquality().equals(other.modified, modified)) &&
            (identical(other.photosAfter, photosAfter) || const DeepCollectionEquality().equals(other.photosAfter, photosAfter)) &&
            (identical(other.photosBefore, photosBefore) || const DeepCollectionEquality().equals(other.photosBefore, photosBefore)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(workType) ^
      const DeepCollectionEquality().hash(expectedBehaviour) ^
      const DeepCollectionEquality().hash(expectedEffect) ^
      const DeepCollectionEquality().hash(performer) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(recomendation) ^
      const DeepCollectionEquality().hash(place) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(obstacle) ^
      const DeepCollectionEquality().hash(explosiveUnit) ^
      const DeepCollectionEquality().hash(initiationSystem) ^
      const DeepCollectionEquality().hash(secondExplosiveUnit) ^
      const DeepCollectionEquality().hash(secondInitiationSystem) ^
      const DeepCollectionEquality().hash(process) ^
      const DeepCollectionEquality().hash(mountType) ^
      const DeepCollectionEquality().hash(twoStage) ^
      const DeepCollectionEquality().hash(isGood) ^
      const DeepCollectionEquality().hash(seal) ^
      const DeepCollectionEquality().hash(tool) ^
      const DeepCollectionEquality().hash(gun) ^
      const DeepCollectionEquality().hash(secondTool) ^
      const DeepCollectionEquality().hash(secondGun) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(modified) ^
      const DeepCollectionEquality().hash(photosAfter) ^
      const DeepCollectionEquality().hash(photosBefore);

  @JsonKey(ignore: true)
  @override
  _$DestructionCopyWith<_Destruction> get copyWith =>
      __$DestructionCopyWithImpl<_Destruction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DestructionToJson(this);
  }
}

abstract class _Destruction implements Destruction {
  factory _Destruction(
      {required int id,
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
      List<PhotoWithDescription>? photosBefore}) = _$_Destruction;

  factory _Destruction.fromJson(Map<String, dynamic> json) =
      _$_Destruction.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  WorkType? get workType => throw _privateConstructorUsedError;
  @override
  ExpectedBehaviour? get expectedBehaviour =>
      throw _privateConstructorUsedError;
  @override
  ExpectedEffect? get expectedEffect => throw _privateConstructorUsedError;
  @override
  String? get performer => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get recomendation => throw _privateConstructorUsedError;
  @override
  String? get place => throw _privateConstructorUsedError;
  @override
  DateTime get date => throw _privateConstructorUsedError;
  @override
  Obstacle? get obstacle => throw _privateConstructorUsedError;
  @override
  ExplosiveUnit? get explosiveUnit => throw _privateConstructorUsedError;
  @override
  InitiationSystem? get initiationSystem => throw _privateConstructorUsedError;
  @override
  ExplosiveUnit? get secondExplosiveUnit => throw _privateConstructorUsedError;
  @override
  InitiationSystem? get secondInitiationSystem =>
      throw _privateConstructorUsedError;
  @override
  List<ProcessItem>? get process => throw _privateConstructorUsedError;
  @override
  MountType? get mountType => throw _privateConstructorUsedError;
  @override
  bool get twoStage => throw _privateConstructorUsedError;
  @override
  bool get isGood => throw _privateConstructorUsedError;
  @override
  double get seal => throw _privateConstructorUsedError;
  @override
  Tool? get tool => throw _privateConstructorUsedError;
  @override
  Gun? get gun => throw _privateConstructorUsedError;
  @override
  Tool? get secondTool => throw _privateConstructorUsedError;
  @override
  Gun? get secondGun => throw _privateConstructorUsedError;
  @override
  DateTime get created => throw _privateConstructorUsedError;
  @override
  DateTime? get modified => throw _privateConstructorUsedError;
  @override
  List<PhotoWithDescription>? get photosAfter =>
      throw _privateConstructorUsedError;
  @override
  List<PhotoWithDescription>? get photosBefore =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DestructionCopyWith<_Destruction> get copyWith =>
      throw _privateConstructorUsedError;
}

ExplosiveUnit _$ExplosiveUnitFromJson(Map<String, dynamic> json) {
  return _ExplosiveUnit.fromJson(json);
}

/// @nodoc
class _$ExplosiveUnitTearOff {
  const _$ExplosiveUnitTearOff();

  _ExplosiveUnit call(
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
      List<ExplosiveMaterialCount>? explosiveMaterialCount}) {
    return _ExplosiveUnit(
      name: name,
      description: description,
      explosiveUnitType: explosiveUnitType,
      created: created,
      madeTime: madeTime,
      newTnt: newTnt,
      newActual: newActual,
      msd: msd,
      modified: modified,
      photos: photos,
      explosiveMaterialCount: explosiveMaterialCount,
    );
  }

  ExplosiveUnit fromJson(Map<String, Object> json) {
    return ExplosiveUnit.fromJson(json);
  }
}

/// @nodoc
const $ExplosiveUnit = _$ExplosiveUnitTearOff();

/// @nodoc
mixin _$ExplosiveUnit {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  ExplosiveUnitType get explosiveUnitType => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  int? get madeTime => throw _privateConstructorUsedError;
  double? get newTnt => throw _privateConstructorUsedError;
  double? get newActual => throw _privateConstructorUsedError;
  double? get msd => throw _privateConstructorUsedError;
  DateTime? get modified => throw _privateConstructorUsedError;
  List<String>? get photos => throw _privateConstructorUsedError;
  List<ExplosiveMaterialCount>? get explosiveMaterialCount =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExplosiveUnitCopyWith<ExplosiveUnit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExplosiveUnitCopyWith<$Res> {
  factory $ExplosiveUnitCopyWith(
          ExplosiveUnit value, $Res Function(ExplosiveUnit) then) =
      _$ExplosiveUnitCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String description,
      ExplosiveUnitType explosiveUnitType,
      DateTime created,
      int? madeTime,
      double? newTnt,
      double? newActual,
      double? msd,
      DateTime? modified,
      List<String>? photos,
      List<ExplosiveMaterialCount>? explosiveMaterialCount});
}

/// @nodoc
class _$ExplosiveUnitCopyWithImpl<$Res>
    implements $ExplosiveUnitCopyWith<$Res> {
  _$ExplosiveUnitCopyWithImpl(this._value, this._then);

  final ExplosiveUnit _value;
  // ignore: unused_field
  final $Res Function(ExplosiveUnit) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? explosiveUnitType = freezed,
    Object? created = freezed,
    Object? madeTime = freezed,
    Object? newTnt = freezed,
    Object? newActual = freezed,
    Object? msd = freezed,
    Object? modified = freezed,
    Object? photos = freezed,
    Object? explosiveMaterialCount = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      explosiveUnitType: explosiveUnitType == freezed
          ? _value.explosiveUnitType
          : explosiveUnitType // ignore: cast_nullable_to_non_nullable
              as ExplosiveUnitType,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      madeTime: madeTime == freezed
          ? _value.madeTime
          : madeTime // ignore: cast_nullable_to_non_nullable
              as int?,
      newTnt: newTnt == freezed
          ? _value.newTnt
          : newTnt // ignore: cast_nullable_to_non_nullable
              as double?,
      newActual: newActual == freezed
          ? _value.newActual
          : newActual // ignore: cast_nullable_to_non_nullable
              as double?,
      msd: msd == freezed
          ? _value.msd
          : msd // ignore: cast_nullable_to_non_nullable
              as double?,
      modified: modified == freezed
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      explosiveMaterialCount: explosiveMaterialCount == freezed
          ? _value.explosiveMaterialCount
          : explosiveMaterialCount // ignore: cast_nullable_to_non_nullable
              as List<ExplosiveMaterialCount>?,
    ));
  }
}

/// @nodoc
abstract class _$ExplosiveUnitCopyWith<$Res>
    implements $ExplosiveUnitCopyWith<$Res> {
  factory _$ExplosiveUnitCopyWith(
          _ExplosiveUnit value, $Res Function(_ExplosiveUnit) then) =
      __$ExplosiveUnitCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String description,
      ExplosiveUnitType explosiveUnitType,
      DateTime created,
      int? madeTime,
      double? newTnt,
      double? newActual,
      double? msd,
      DateTime? modified,
      List<String>? photos,
      List<ExplosiveMaterialCount>? explosiveMaterialCount});
}

/// @nodoc
class __$ExplosiveUnitCopyWithImpl<$Res>
    extends _$ExplosiveUnitCopyWithImpl<$Res>
    implements _$ExplosiveUnitCopyWith<$Res> {
  __$ExplosiveUnitCopyWithImpl(
      _ExplosiveUnit _value, $Res Function(_ExplosiveUnit) _then)
      : super(_value, (v) => _then(v as _ExplosiveUnit));

  @override
  _ExplosiveUnit get _value => super._value as _ExplosiveUnit;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? explosiveUnitType = freezed,
    Object? created = freezed,
    Object? madeTime = freezed,
    Object? newTnt = freezed,
    Object? newActual = freezed,
    Object? msd = freezed,
    Object? modified = freezed,
    Object? photos = freezed,
    Object? explosiveMaterialCount = freezed,
  }) {
    return _then(_ExplosiveUnit(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      explosiveUnitType: explosiveUnitType == freezed
          ? _value.explosiveUnitType
          : explosiveUnitType // ignore: cast_nullable_to_non_nullable
              as ExplosiveUnitType,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      madeTime: madeTime == freezed
          ? _value.madeTime
          : madeTime // ignore: cast_nullable_to_non_nullable
              as int?,
      newTnt: newTnt == freezed
          ? _value.newTnt
          : newTnt // ignore: cast_nullable_to_non_nullable
              as double?,
      newActual: newActual == freezed
          ? _value.newActual
          : newActual // ignore: cast_nullable_to_non_nullable
              as double?,
      msd: msd == freezed
          ? _value.msd
          : msd // ignore: cast_nullable_to_non_nullable
              as double?,
      modified: modified == freezed
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      explosiveMaterialCount: explosiveMaterialCount == freezed
          ? _value.explosiveMaterialCount
          : explosiveMaterialCount // ignore: cast_nullable_to_non_nullable
              as List<ExplosiveMaterialCount>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExplosiveUnit implements _ExplosiveUnit {
  _$_ExplosiveUnit(
      {required this.name,
      required this.description,
      required this.explosiveUnitType,
      required this.created,
      this.madeTime,
      this.newTnt,
      this.newActual,
      this.msd,
      this.modified,
      this.photos,
      this.explosiveMaterialCount});

  factory _$_ExplosiveUnit.fromJson(Map<String, dynamic> json) =>
      _$_$_ExplosiveUnitFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final ExplosiveUnitType explosiveUnitType;
  @override
  final DateTime created;
  @override
  final int? madeTime;
  @override
  final double? newTnt;
  @override
  final double? newActual;
  @override
  final double? msd;
  @override
  final DateTime? modified;
  @override
  final List<String>? photos;
  @override
  final List<ExplosiveMaterialCount>? explosiveMaterialCount;

  @override
  String toString() {
    return 'ExplosiveUnit(name: $name, description: $description, explosiveUnitType: $explosiveUnitType, created: $created, madeTime: $madeTime, newTnt: $newTnt, newActual: $newActual, msd: $msd, modified: $modified, photos: $photos, explosiveMaterialCount: $explosiveMaterialCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExplosiveUnit &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.explosiveUnitType, explosiveUnitType) ||
                const DeepCollectionEquality()
                    .equals(other.explosiveUnitType, explosiveUnitType)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.madeTime, madeTime) ||
                const DeepCollectionEquality()
                    .equals(other.madeTime, madeTime)) &&
            (identical(other.newTnt, newTnt) ||
                const DeepCollectionEquality().equals(other.newTnt, newTnt)) &&
            (identical(other.newActual, newActual) ||
                const DeepCollectionEquality()
                    .equals(other.newActual, newActual)) &&
            (identical(other.msd, msd) ||
                const DeepCollectionEquality().equals(other.msd, msd)) &&
            (identical(other.modified, modified) ||
                const DeepCollectionEquality()
                    .equals(other.modified, modified)) &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)) &&
            (identical(other.explosiveMaterialCount, explosiveMaterialCount) ||
                const DeepCollectionEquality().equals(
                    other.explosiveMaterialCount, explosiveMaterialCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(explosiveUnitType) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(madeTime) ^
      const DeepCollectionEquality().hash(newTnt) ^
      const DeepCollectionEquality().hash(newActual) ^
      const DeepCollectionEquality().hash(msd) ^
      const DeepCollectionEquality().hash(modified) ^
      const DeepCollectionEquality().hash(photos) ^
      const DeepCollectionEquality().hash(explosiveMaterialCount);

  @JsonKey(ignore: true)
  @override
  _$ExplosiveUnitCopyWith<_ExplosiveUnit> get copyWith =>
      __$ExplosiveUnitCopyWithImpl<_ExplosiveUnit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExplosiveUnitToJson(this);
  }
}

abstract class _ExplosiveUnit implements ExplosiveUnit {
  factory _ExplosiveUnit(
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
      List<ExplosiveMaterialCount>? explosiveMaterialCount}) = _$_ExplosiveUnit;

  factory _ExplosiveUnit.fromJson(Map<String, dynamic> json) =
      _$_ExplosiveUnit.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  ExplosiveUnitType get explosiveUnitType => throw _privateConstructorUsedError;
  @override
  DateTime get created => throw _privateConstructorUsedError;
  @override
  int? get madeTime => throw _privateConstructorUsedError;
  @override
  double? get newTnt => throw _privateConstructorUsedError;
  @override
  double? get newActual => throw _privateConstructorUsedError;
  @override
  double? get msd => throw _privateConstructorUsedError;
  @override
  DateTime? get modified => throw _privateConstructorUsedError;
  @override
  List<String>? get photos => throw _privateConstructorUsedError;
  @override
  List<ExplosiveMaterialCount>? get explosiveMaterialCount =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExplosiveUnitCopyWith<_ExplosiveUnit> get copyWith =>
      throw _privateConstructorUsedError;
}

Course _$CourseFromJson(Map<String, dynamic> json) {
  return _Course.fromJson(json);
}

/// @nodoc
class _$CourseTearOff {
  const _$CourseTearOff();

  _Course call(
      {required String name,
      required User courseLeader,
      required DateTime startDate,
      required DateTime endDate,
      required List<User> participants,
      List<CourseMark> courseMarks = const [],
      required List<Topic> topics}) {
    return _Course(
      name: name,
      courseLeader: courseLeader,
      startDate: startDate,
      endDate: endDate,
      participants: participants,
      courseMarks: courseMarks,
      topics: topics,
    );
  }

  Course fromJson(Map<String, Object> json) {
    return Course.fromJson(json);
  }
}

/// @nodoc
const $Course = _$CourseTearOff();

/// @nodoc
mixin _$Course {
  String get name => throw _privateConstructorUsedError;
  User get courseLeader => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  List<User> get participants => throw _privateConstructorUsedError;
  List<CourseMark> get courseMarks => throw _privateConstructorUsedError;
  List<Topic> get topics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseCopyWith<Course> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCopyWith<$Res> {
  factory $CourseCopyWith(Course value, $Res Function(Course) then) =
      _$CourseCopyWithImpl<$Res>;
  $Res call(
      {String name,
      User courseLeader,
      DateTime startDate,
      DateTime endDate,
      List<User> participants,
      List<CourseMark> courseMarks,
      List<Topic> topics});

  $UserCopyWith<$Res> get courseLeader;
}

/// @nodoc
class _$CourseCopyWithImpl<$Res> implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._value, this._then);

  final Course _value;
  // ignore: unused_field
  final $Res Function(Course) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? courseLeader = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? participants = freezed,
    Object? courseMarks = freezed,
    Object? topics = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      courseLeader: courseLeader == freezed
          ? _value.courseLeader
          : courseLeader // ignore: cast_nullable_to_non_nullable
              as User,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      participants: participants == freezed
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<User>,
      courseMarks: courseMarks == freezed
          ? _value.courseMarks
          : courseMarks // ignore: cast_nullable_to_non_nullable
              as List<CourseMark>,
      topics: topics == freezed
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
    ));
  }

  @override
  $UserCopyWith<$Res> get courseLeader {
    return $UserCopyWith<$Res>(_value.courseLeader, (value) {
      return _then(_value.copyWith(courseLeader: value));
    });
  }
}

/// @nodoc
abstract class _$CourseCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$CourseCopyWith(_Course value, $Res Function(_Course) then) =
      __$CourseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      User courseLeader,
      DateTime startDate,
      DateTime endDate,
      List<User> participants,
      List<CourseMark> courseMarks,
      List<Topic> topics});

  @override
  $UserCopyWith<$Res> get courseLeader;
}

/// @nodoc
class __$CourseCopyWithImpl<$Res> extends _$CourseCopyWithImpl<$Res>
    implements _$CourseCopyWith<$Res> {
  __$CourseCopyWithImpl(_Course _value, $Res Function(_Course) _then)
      : super(_value, (v) => _then(v as _Course));

  @override
  _Course get _value => super._value as _Course;

  @override
  $Res call({
    Object? name = freezed,
    Object? courseLeader = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? participants = freezed,
    Object? courseMarks = freezed,
    Object? topics = freezed,
  }) {
    return _then(_Course(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      courseLeader: courseLeader == freezed
          ? _value.courseLeader
          : courseLeader // ignore: cast_nullable_to_non_nullable
              as User,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      participants: participants == freezed
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<User>,
      courseMarks: courseMarks == freezed
          ? _value.courseMarks
          : courseMarks // ignore: cast_nullable_to_non_nullable
              as List<CourseMark>,
      topics: topics == freezed
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Course implements _Course {
  _$_Course(
      {required this.name,
      required this.courseLeader,
      required this.startDate,
      required this.endDate,
      required this.participants,
      this.courseMarks = const [],
      required this.topics});

  factory _$_Course.fromJson(Map<String, dynamic> json) =>
      _$_$_CourseFromJson(json);

  @override
  final String name;
  @override
  final User courseLeader;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final List<User> participants;
  @JsonKey(defaultValue: const [])
  @override
  final List<CourseMark> courseMarks;
  @override
  final List<Topic> topics;

  @override
  String toString() {
    return 'Course(name: $name, courseLeader: $courseLeader, startDate: $startDate, endDate: $endDate, participants: $participants, courseMarks: $courseMarks, topics: $topics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Course &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.courseLeader, courseLeader) ||
                const DeepCollectionEquality()
                    .equals(other.courseLeader, courseLeader)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.participants, participants) ||
                const DeepCollectionEquality()
                    .equals(other.participants, participants)) &&
            (identical(other.courseMarks, courseMarks) ||
                const DeepCollectionEquality()
                    .equals(other.courseMarks, courseMarks)) &&
            (identical(other.topics, topics) ||
                const DeepCollectionEquality().equals(other.topics, topics)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(courseLeader) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(participants) ^
      const DeepCollectionEquality().hash(courseMarks) ^
      const DeepCollectionEquality().hash(topics);

  @JsonKey(ignore: true)
  @override
  _$CourseCopyWith<_Course> get copyWith =>
      __$CourseCopyWithImpl<_Course>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CourseToJson(this);
  }
}

abstract class _Course implements Course {
  factory _Course(
      {required String name,
      required User courseLeader,
      required DateTime startDate,
      required DateTime endDate,
      required List<User> participants,
      List<CourseMark> courseMarks,
      required List<Topic> topics}) = _$_Course;

  factory _Course.fromJson(Map<String, dynamic> json) = _$_Course.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  User get courseLeader => throw _privateConstructorUsedError;
  @override
  DateTime get startDate => throw _privateConstructorUsedError;
  @override
  DateTime get endDate => throw _privateConstructorUsedError;
  @override
  List<User> get participants => throw _privateConstructorUsedError;
  @override
  List<CourseMark> get courseMarks => throw _privateConstructorUsedError;
  @override
  List<Topic> get topics => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CourseCopyWith<_Course> get copyWith => throw _privateConstructorUsedError;
}

Topic _$TopicFromJson(Map<String, dynamic> json) {
  return _Topic.fromJson(json);
}

/// @nodoc
class _$TopicTearOff {
  const _$TopicTearOff();

  _Topic call(
      {required String name,
      required String courseName,
      DateTime? endDate,
      required bool done}) {
    return _Topic(
      name: name,
      courseName: courseName,
      endDate: endDate,
      done: done,
    );
  }

  Topic fromJson(Map<String, Object> json) {
    return Topic.fromJson(json);
  }
}

/// @nodoc
const $Topic = _$TopicTearOff();

/// @nodoc
mixin _$Topic {
  String get name => throw _privateConstructorUsedError;
  String get courseName => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopicCopyWith<Topic> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicCopyWith<$Res> {
  factory $TopicCopyWith(Topic value, $Res Function(Topic) then) =
      _$TopicCopyWithImpl<$Res>;
  $Res call({String name, String courseName, DateTime? endDate, bool done});
}

/// @nodoc
class _$TopicCopyWithImpl<$Res> implements $TopicCopyWith<$Res> {
  _$TopicCopyWithImpl(this._value, this._then);

  final Topic _value;
  // ignore: unused_field
  final $Res Function(Topic) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? courseName = freezed,
    Object? endDate = freezed,
    Object? done = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      courseName: courseName == freezed
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$TopicCopyWith<$Res> implements $TopicCopyWith<$Res> {
  factory _$TopicCopyWith(_Topic value, $Res Function(_Topic) then) =
      __$TopicCopyWithImpl<$Res>;
  @override
  $Res call({String name, String courseName, DateTime? endDate, bool done});
}

/// @nodoc
class __$TopicCopyWithImpl<$Res> extends _$TopicCopyWithImpl<$Res>
    implements _$TopicCopyWith<$Res> {
  __$TopicCopyWithImpl(_Topic _value, $Res Function(_Topic) _then)
      : super(_value, (v) => _then(v as _Topic));

  @override
  _Topic get _value => super._value as _Topic;

  @override
  $Res call({
    Object? name = freezed,
    Object? courseName = freezed,
    Object? endDate = freezed,
    Object? done = freezed,
  }) {
    return _then(_Topic(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      courseName: courseName == freezed
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Topic implements _Topic {
  _$_Topic(
      {required this.name,
      required this.courseName,
      this.endDate,
      required this.done});

  factory _$_Topic.fromJson(Map<String, dynamic> json) =>
      _$_$_TopicFromJson(json);

  @override
  final String name;
  @override
  final String courseName;
  @override
  final DateTime? endDate;
  @override
  final bool done;

  @override
  String toString() {
    return 'Topic(name: $name, courseName: $courseName, endDate: $endDate, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Topic &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.courseName, courseName) ||
                const DeepCollectionEquality()
                    .equals(other.courseName, courseName)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.done, done) ||
                const DeepCollectionEquality().equals(other.done, done)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(courseName) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(done);

  @JsonKey(ignore: true)
  @override
  _$TopicCopyWith<_Topic> get copyWith =>
      __$TopicCopyWithImpl<_Topic>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TopicToJson(this);
  }
}

abstract class _Topic implements Topic {
  factory _Topic(
      {required String name,
      required String courseName,
      DateTime? endDate,
      required bool done}) = _$_Topic;

  factory _Topic.fromJson(Map<String, dynamic> json) = _$_Topic.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get courseName => throw _privateConstructorUsedError;
  @override
  DateTime? get endDate => throw _privateConstructorUsedError;
  @override
  bool get done => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TopicCopyWith<_Topic> get copyWith => throw _privateConstructorUsedError;
}

ProcessItem _$ProcessItemFromJson(Map<String, dynamic> json) {
  return _ProcessItem.fromJson(json);
}

/// @nodoc
class _$ProcessItemTearOff {
  const _$ProcessItemTearOff();

  _ProcessItem call(
      {required String title,
      required String description,
      required double time}) {
    return _ProcessItem(
      title: title,
      description: description,
      time: time,
    );
  }

  ProcessItem fromJson(Map<String, Object> json) {
    return ProcessItem.fromJson(json);
  }
}

/// @nodoc
const $ProcessItem = _$ProcessItemTearOff();

/// @nodoc
mixin _$ProcessItem {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProcessItemCopyWith<ProcessItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProcessItemCopyWith<$Res> {
  factory $ProcessItemCopyWith(
          ProcessItem value, $Res Function(ProcessItem) then) =
      _$ProcessItemCopyWithImpl<$Res>;
  $Res call({String title, String description, double time});
}

/// @nodoc
class _$ProcessItemCopyWithImpl<$Res> implements $ProcessItemCopyWith<$Res> {
  _$ProcessItemCopyWithImpl(this._value, this._then);

  final ProcessItem _value;
  // ignore: unused_field
  final $Res Function(ProcessItem) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$ProcessItemCopyWith<$Res>
    implements $ProcessItemCopyWith<$Res> {
  factory _$ProcessItemCopyWith(
          _ProcessItem value, $Res Function(_ProcessItem) then) =
      __$ProcessItemCopyWithImpl<$Res>;
  @override
  $Res call({String title, String description, double time});
}

/// @nodoc
class __$ProcessItemCopyWithImpl<$Res> extends _$ProcessItemCopyWithImpl<$Res>
    implements _$ProcessItemCopyWith<$Res> {
  __$ProcessItemCopyWithImpl(
      _ProcessItem _value, $Res Function(_ProcessItem) _then)
      : super(_value, (v) => _then(v as _ProcessItem));

  @override
  _ProcessItem get _value => super._value as _ProcessItem;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? time = freezed,
  }) {
    return _then(_ProcessItem(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProcessItem implements _ProcessItem {
  _$_ProcessItem(
      {required this.title, required this.description, required this.time});

  factory _$_ProcessItem.fromJson(Map<String, dynamic> json) =>
      _$_$_ProcessItemFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final double time;

  @override
  String toString() {
    return 'ProcessItem(title: $title, description: $description, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProcessItem &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(time);

  @JsonKey(ignore: true)
  @override
  _$ProcessItemCopyWith<_ProcessItem> get copyWith =>
      __$ProcessItemCopyWithImpl<_ProcessItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProcessItemToJson(this);
  }
}

abstract class _ProcessItem implements ProcessItem {
  factory _ProcessItem(
      {required String title,
      required String description,
      required double time}) = _$_ProcessItem;

  factory _ProcessItem.fromJson(Map<String, dynamic> json) =
      _$_ProcessItem.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  double get time => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProcessItemCopyWith<_ProcessItem> get copyWith =>
      throw _privateConstructorUsedError;
}

Token _$TokenFromJson(Map<String, dynamic> json) {
  return _Token.fromJson(json);
}

/// @nodoc
class _$TokenTearOff {
  const _$TokenTearOff();

  _Token call(
      {required String accessToken,
      required String refreshToken,
      required double expiresIn}) {
    return _Token(
      accessToken: accessToken,
      refreshToken: refreshToken,
      expiresIn: expiresIn,
    );
  }

  Token fromJson(Map<String, Object> json) {
    return Token.fromJson(json);
  }
}

/// @nodoc
const $Token = _$TokenTearOff();

/// @nodoc
mixin _$Token {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  double get expiresIn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenCopyWith<Token> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenCopyWith<$Res> {
  factory $TokenCopyWith(Token value, $Res Function(Token) then) =
      _$TokenCopyWithImpl<$Res>;
  $Res call({String accessToken, String refreshToken, double expiresIn});
}

/// @nodoc
class _$TokenCopyWithImpl<$Res> implements $TokenCopyWith<$Res> {
  _$TokenCopyWithImpl(this._value, this._then);

  final Token _value;
  // ignore: unused_field
  final $Res Function(Token) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? expiresIn = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: expiresIn == freezed
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$TokenCopyWith<$Res> implements $TokenCopyWith<$Res> {
  factory _$TokenCopyWith(_Token value, $Res Function(_Token) then) =
      __$TokenCopyWithImpl<$Res>;
  @override
  $Res call({String accessToken, String refreshToken, double expiresIn});
}

/// @nodoc
class __$TokenCopyWithImpl<$Res> extends _$TokenCopyWithImpl<$Res>
    implements _$TokenCopyWith<$Res> {
  __$TokenCopyWithImpl(_Token _value, $Res Function(_Token) _then)
      : super(_value, (v) => _then(v as _Token));

  @override
  _Token get _value => super._value as _Token;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? expiresIn = freezed,
  }) {
    return _then(_Token(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: expiresIn == freezed
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Token implements _Token {
  _$_Token(
      {required this.accessToken,
      required this.refreshToken,
      required this.expiresIn});

  factory _$_Token.fromJson(Map<String, dynamic> json) =>
      _$_$_TokenFromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;
  @override
  final double expiresIn;

  @override
  String toString() {
    return 'Token(accessToken: $accessToken, refreshToken: $refreshToken, expiresIn: $expiresIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Token &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)) &&
            (identical(other.expiresIn, expiresIn) ||
                const DeepCollectionEquality()
                    .equals(other.expiresIn, expiresIn)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(expiresIn);

  @JsonKey(ignore: true)
  @override
  _$TokenCopyWith<_Token> get copyWith =>
      __$TokenCopyWithImpl<_Token>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TokenToJson(this);
  }
}

abstract class _Token implements Token {
  factory _Token(
      {required String accessToken,
      required String refreshToken,
      required double expiresIn}) = _$_Token;

  factory _Token.fromJson(Map<String, dynamic> json) = _$_Token.fromJson;

  @override
  String get accessToken => throw _privateConstructorUsedError;
  @override
  String get refreshToken => throw _privateConstructorUsedError;
  @override
  double get expiresIn => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TokenCopyWith<_Token> get copyWith => throw _privateConstructorUsedError;
}

DatabaseCategory _$DatabaseCategoryFromJson(Map<String, dynamic> json) {
  return _DatabaseCategory.fromJson(json);
}

/// @nodoc
class _$DatabaseCategoryTearOff {
  const _$DatabaseCategoryTearOff();

  _DatabaseCategory call(
      {required int id, required String name, required String image}) {
    return _DatabaseCategory(
      id: id,
      name: name,
      image: image,
    );
  }

  DatabaseCategory fromJson(Map<String, Object> json) {
    return DatabaseCategory.fromJson(json);
  }
}

/// @nodoc
const $DatabaseCategory = _$DatabaseCategoryTearOff();

/// @nodoc
mixin _$DatabaseCategory {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatabaseCategoryCopyWith<DatabaseCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseCategoryCopyWith<$Res> {
  factory $DatabaseCategoryCopyWith(
          DatabaseCategory value, $Res Function(DatabaseCategory) then) =
      _$DatabaseCategoryCopyWithImpl<$Res>;
  $Res call({int id, String name, String image});
}

/// @nodoc
class _$DatabaseCategoryCopyWithImpl<$Res>
    implements $DatabaseCategoryCopyWith<$Res> {
  _$DatabaseCategoryCopyWithImpl(this._value, this._then);

  final DatabaseCategory _value;
  // ignore: unused_field
  final $Res Function(DatabaseCategory) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DatabaseCategoryCopyWith<$Res>
    implements $DatabaseCategoryCopyWith<$Res> {
  factory _$DatabaseCategoryCopyWith(
          _DatabaseCategory value, $Res Function(_DatabaseCategory) then) =
      __$DatabaseCategoryCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String image});
}

/// @nodoc
class __$DatabaseCategoryCopyWithImpl<$Res>
    extends _$DatabaseCategoryCopyWithImpl<$Res>
    implements _$DatabaseCategoryCopyWith<$Res> {
  __$DatabaseCategoryCopyWithImpl(
      _DatabaseCategory _value, $Res Function(_DatabaseCategory) _then)
      : super(_value, (v) => _then(v as _DatabaseCategory));

  @override
  _DatabaseCategory get _value => super._value as _DatabaseCategory;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_DatabaseCategory(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DatabaseCategory implements _DatabaseCategory {
  _$_DatabaseCategory(
      {required this.id, required this.name, required this.image});

  factory _$_DatabaseCategory.fromJson(Map<String, dynamic> json) =>
      _$_$_DatabaseCategoryFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String image;

  @override
  String toString() {
    return 'DatabaseCategory(id: $id, name: $name, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DatabaseCategory &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  _$DatabaseCategoryCopyWith<_DatabaseCategory> get copyWith =>
      __$DatabaseCategoryCopyWithImpl<_DatabaseCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DatabaseCategoryToJson(this);
  }
}

abstract class _DatabaseCategory implements DatabaseCategory {
  factory _DatabaseCategory(
      {required int id,
      required String name,
      required String image}) = _$_DatabaseCategory;

  factory _DatabaseCategory.fromJson(Map<String, dynamic> json) =
      _$_DatabaseCategory.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DatabaseCategoryCopyWith<_DatabaseCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiResponse _$ApiResponseFromJson(Map<String, dynamic> json) {
  return _ApiResponse.fromJson(json);
}

/// @nodoc
class _$ApiResponseTearOff {
  const _$ApiResponseTearOff();

  _ApiResponse call({required List<dynamic> content}) {
    return _ApiResponse(
      content: content,
    );
  }

  ApiResponse fromJson(Map<String, Object> json) {
    return ApiResponse.fromJson(json);
  }
}

/// @nodoc
const $ApiResponse = _$ApiResponseTearOff();

/// @nodoc
mixin _$ApiResponse {
  List<dynamic> get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseCopyWith<ApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCopyWith<$Res> {
  factory $ApiResponseCopyWith(
          ApiResponse value, $Res Function(ApiResponse) then) =
      _$ApiResponseCopyWithImpl<$Res>;
  $Res call({List<dynamic> content});
}

/// @nodoc
class _$ApiResponseCopyWithImpl<$Res> implements $ApiResponseCopyWith<$Res> {
  _$ApiResponseCopyWithImpl(this._value, this._then);

  final ApiResponse _value;
  // ignore: unused_field
  final $Res Function(ApiResponse) _then;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$ApiResponseCopyWith<$Res>
    implements $ApiResponseCopyWith<$Res> {
  factory _$ApiResponseCopyWith(
          _ApiResponse value, $Res Function(_ApiResponse) then) =
      __$ApiResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<dynamic> content});
}

/// @nodoc
class __$ApiResponseCopyWithImpl<$Res> extends _$ApiResponseCopyWithImpl<$Res>
    implements _$ApiResponseCopyWith<$Res> {
  __$ApiResponseCopyWithImpl(
      _ApiResponse _value, $Res Function(_ApiResponse) _then)
      : super(_value, (v) => _then(v as _ApiResponse));

  @override
  _ApiResponse get _value => super._value as _ApiResponse;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(_ApiResponse(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiResponse implements _ApiResponse {
  _$_ApiResponse({required this.content});

  factory _$_ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_ApiResponseFromJson(json);

  @override
  final List<dynamic> content;

  @override
  String toString() {
    return 'ApiResponse(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApiResponse &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(content);

  @JsonKey(ignore: true)
  @override
  _$ApiResponseCopyWith<_ApiResponse> get copyWith =>
      __$ApiResponseCopyWithImpl<_ApiResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ApiResponseToJson(this);
  }
}

abstract class _ApiResponse implements ApiResponse {
  factory _ApiResponse({required List<dynamic> content}) = _$_ApiResponse;

  factory _ApiResponse.fromJson(Map<String, dynamic> json) =
      _$_ApiResponse.fromJson;

  @override
  List<dynamic> get content => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ApiResponseCopyWith<_ApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthDto _$AuthDtoFromJson(Map<String, dynamic> json) {
  return _AuthDto.fromJson(json);
}

/// @nodoc
class _$AuthDtoTearOff {
  const _$AuthDtoTearOff();

  _AuthDto call(
      {required Token token,
      required String firstName,
      required String lastName,
      String? dutyTitle,
      required String email,
      List<String>? roles}) {
    return _AuthDto(
      token: token,
      firstName: firstName,
      lastName: lastName,
      dutyTitle: dutyTitle,
      email: email,
      roles: roles,
    );
  }

  AuthDto fromJson(Map<String, Object> json) {
    return AuthDto.fromJson(json);
  }
}

/// @nodoc
const $AuthDto = _$AuthDtoTearOff();

/// @nodoc
mixin _$AuthDto {
  Token get token => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String? get dutyTitle => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  List<String>? get roles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthDtoCopyWith<AuthDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthDtoCopyWith<$Res> {
  factory $AuthDtoCopyWith(AuthDto value, $Res Function(AuthDto) then) =
      _$AuthDtoCopyWithImpl<$Res>;
  $Res call(
      {Token token,
      String firstName,
      String lastName,
      String? dutyTitle,
      String email,
      List<String>? roles});

  $TokenCopyWith<$Res> get token;
}

/// @nodoc
class _$AuthDtoCopyWithImpl<$Res> implements $AuthDtoCopyWith<$Res> {
  _$AuthDtoCopyWithImpl(this._value, this._then);

  final AuthDto _value;
  // ignore: unused_field
  final $Res Function(AuthDto) _then;

  @override
  $Res call({
    Object? token = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? dutyTitle = freezed,
    Object? email = freezed,
    Object? roles = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      dutyTitle: dutyTitle == freezed
          ? _value.dutyTitle
          : dutyTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      roles: roles == freezed
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }

  @override
  $TokenCopyWith<$Res> get token {
    return $TokenCopyWith<$Res>(_value.token, (value) {
      return _then(_value.copyWith(token: value));
    });
  }
}

/// @nodoc
abstract class _$AuthDtoCopyWith<$Res> implements $AuthDtoCopyWith<$Res> {
  factory _$AuthDtoCopyWith(_AuthDto value, $Res Function(_AuthDto) then) =
      __$AuthDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {Token token,
      String firstName,
      String lastName,
      String? dutyTitle,
      String email,
      List<String>? roles});

  @override
  $TokenCopyWith<$Res> get token;
}

/// @nodoc
class __$AuthDtoCopyWithImpl<$Res> extends _$AuthDtoCopyWithImpl<$Res>
    implements _$AuthDtoCopyWith<$Res> {
  __$AuthDtoCopyWithImpl(_AuthDto _value, $Res Function(_AuthDto) _then)
      : super(_value, (v) => _then(v as _AuthDto));

  @override
  _AuthDto get _value => super._value as _AuthDto;

  @override
  $Res call({
    Object? token = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? dutyTitle = freezed,
    Object? email = freezed,
    Object? roles = freezed,
  }) {
    return _then(_AuthDto(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      dutyTitle: dutyTitle == freezed
          ? _value.dutyTitle
          : dutyTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      roles: roles == freezed
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthDto implements _AuthDto {
  _$_AuthDto(
      {required this.token,
      required this.firstName,
      required this.lastName,
      this.dutyTitle,
      required this.email,
      this.roles});

  factory _$_AuthDto.fromJson(Map<String, dynamic> json) =>
      _$_$_AuthDtoFromJson(json);

  @override
  final Token token;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String? dutyTitle;
  @override
  final String email;
  @override
  final List<String>? roles;

  @override
  String toString() {
    return 'AuthDto(token: $token, firstName: $firstName, lastName: $lastName, dutyTitle: $dutyTitle, email: $email, roles: $roles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthDto &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.dutyTitle, dutyTitle) ||
                const DeepCollectionEquality()
                    .equals(other.dutyTitle, dutyTitle)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(dutyTitle) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(roles);

  @JsonKey(ignore: true)
  @override
  _$AuthDtoCopyWith<_AuthDto> get copyWith =>
      __$AuthDtoCopyWithImpl<_AuthDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AuthDtoToJson(this);
  }
}

abstract class _AuthDto implements AuthDto {
  factory _AuthDto(
      {required Token token,
      required String firstName,
      required String lastName,
      String? dutyTitle,
      required String email,
      List<String>? roles}) = _$_AuthDto;

  factory _AuthDto.fromJson(Map<String, dynamic> json) = _$_AuthDto.fromJson;

  @override
  Token get token => throw _privateConstructorUsedError;
  @override
  String get firstName => throw _privateConstructorUsedError;
  @override
  String get lastName => throw _privateConstructorUsedError;
  @override
  String? get dutyTitle => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  List<String>? get roles => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthDtoCopyWith<_AuthDto> get copyWith =>
      throw _privateConstructorUsedError;
}

CourseMark _$CourseMarkFromJson(Map<String, dynamic> json) {
  return _CourseMark.fromJson(json);
}

/// @nodoc
class _$CourseMarkTearOff {
  const _$CourseMarkTearOff();

  _CourseMark call(
      {required String description,
      required String topicName,
      required User student,
      required DateTime timestamp,
      required bool mark}) {
    return _CourseMark(
      description: description,
      topicName: topicName,
      student: student,
      timestamp: timestamp,
      mark: mark,
    );
  }

  CourseMark fromJson(Map<String, Object> json) {
    return CourseMark.fromJson(json);
  }
}

/// @nodoc
const $CourseMark = _$CourseMarkTearOff();

/// @nodoc
mixin _$CourseMark {
  String get description => throw _privateConstructorUsedError;
  String get topicName => throw _privateConstructorUsedError;
  User get student => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  bool get mark => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseMarkCopyWith<CourseMark> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseMarkCopyWith<$Res> {
  factory $CourseMarkCopyWith(
          CourseMark value, $Res Function(CourseMark) then) =
      _$CourseMarkCopyWithImpl<$Res>;
  $Res call(
      {String description,
      String topicName,
      User student,
      DateTime timestamp,
      bool mark});

  $UserCopyWith<$Res> get student;
}

/// @nodoc
class _$CourseMarkCopyWithImpl<$Res> implements $CourseMarkCopyWith<$Res> {
  _$CourseMarkCopyWithImpl(this._value, this._then);

  final CourseMark _value;
  // ignore: unused_field
  final $Res Function(CourseMark) _then;

  @override
  $Res call({
    Object? description = freezed,
    Object? topicName = freezed,
    Object? student = freezed,
    Object? timestamp = freezed,
    Object? mark = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      topicName: topicName == freezed
          ? _value.topicName
          : topicName // ignore: cast_nullable_to_non_nullable
              as String,
      student: student == freezed
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as User,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      mark: mark == freezed
          ? _value.mark
          : mark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $UserCopyWith<$Res> get student {
    return $UserCopyWith<$Res>(_value.student, (value) {
      return _then(_value.copyWith(student: value));
    });
  }
}

/// @nodoc
abstract class _$CourseMarkCopyWith<$Res> implements $CourseMarkCopyWith<$Res> {
  factory _$CourseMarkCopyWith(
          _CourseMark value, $Res Function(_CourseMark) then) =
      __$CourseMarkCopyWithImpl<$Res>;
  @override
  $Res call(
      {String description,
      String topicName,
      User student,
      DateTime timestamp,
      bool mark});

  @override
  $UserCopyWith<$Res> get student;
}

/// @nodoc
class __$CourseMarkCopyWithImpl<$Res> extends _$CourseMarkCopyWithImpl<$Res>
    implements _$CourseMarkCopyWith<$Res> {
  __$CourseMarkCopyWithImpl(
      _CourseMark _value, $Res Function(_CourseMark) _then)
      : super(_value, (v) => _then(v as _CourseMark));

  @override
  _CourseMark get _value => super._value as _CourseMark;

  @override
  $Res call({
    Object? description = freezed,
    Object? topicName = freezed,
    Object? student = freezed,
    Object? timestamp = freezed,
    Object? mark = freezed,
  }) {
    return _then(_CourseMark(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      topicName: topicName == freezed
          ? _value.topicName
          : topicName // ignore: cast_nullable_to_non_nullable
              as String,
      student: student == freezed
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as User,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      mark: mark == freezed
          ? _value.mark
          : mark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CourseMark implements _CourseMark {
  _$_CourseMark(
      {required this.description,
      required this.topicName,
      required this.student,
      required this.timestamp,
      required this.mark});

  factory _$_CourseMark.fromJson(Map<String, dynamic> json) =>
      _$_$_CourseMarkFromJson(json);

  @override
  final String description;
  @override
  final String topicName;
  @override
  final User student;
  @override
  final DateTime timestamp;
  @override
  final bool mark;

  @override
  String toString() {
    return 'CourseMark(description: $description, topicName: $topicName, student: $student, timestamp: $timestamp, mark: $mark)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CourseMark &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.topicName, topicName) ||
                const DeepCollectionEquality()
                    .equals(other.topicName, topicName)) &&
            (identical(other.student, student) ||
                const DeepCollectionEquality()
                    .equals(other.student, student)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.mark, mark) ||
                const DeepCollectionEquality().equals(other.mark, mark)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(topicName) ^
      const DeepCollectionEquality().hash(student) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(mark);

  @JsonKey(ignore: true)
  @override
  _$CourseMarkCopyWith<_CourseMark> get copyWith =>
      __$CourseMarkCopyWithImpl<_CourseMark>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CourseMarkToJson(this);
  }
}

abstract class _CourseMark implements CourseMark {
  factory _CourseMark(
      {required String description,
      required String topicName,
      required User student,
      required DateTime timestamp,
      required bool mark}) = _$_CourseMark;

  factory _CourseMark.fromJson(Map<String, dynamic> json) =
      _$_CourseMark.fromJson;

  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get topicName => throw _privateConstructorUsedError;
  @override
  User get student => throw _privateConstructorUsedError;
  @override
  DateTime get timestamp => throw _privateConstructorUsedError;
  @override
  bool get mark => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CourseMarkCopyWith<_CourseMark> get copyWith =>
      throw _privateConstructorUsedError;
}

DatabaseItem _$DatabaseItemFromJson(Map<String, dynamic> json) {
  return _DatabaseItem.fromJson(json);
}

/// @nodoc
class _$DatabaseItemTearOff {
  const _$DatabaseItemTearOff();

  _DatabaseItem call(
      {required String itemName,
      required DatabaseItemType itemType,
      double? quantity,
      String? suffix}) {
    return _DatabaseItem(
      itemName: itemName,
      itemType: itemType,
      quantity: quantity,
      suffix: suffix,
    );
  }

  DatabaseItem fromJson(Map<String, Object> json) {
    return DatabaseItem.fromJson(json);
  }
}

/// @nodoc
const $DatabaseItem = _$DatabaseItemTearOff();

/// @nodoc
mixin _$DatabaseItem {
  String get itemName => throw _privateConstructorUsedError;
  DatabaseItemType get itemType => throw _privateConstructorUsedError;
  double? get quantity => throw _privateConstructorUsedError;
  String? get suffix => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatabaseItemCopyWith<DatabaseItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseItemCopyWith<$Res> {
  factory $DatabaseItemCopyWith(
          DatabaseItem value, $Res Function(DatabaseItem) then) =
      _$DatabaseItemCopyWithImpl<$Res>;
  $Res call(
      {String itemName,
      DatabaseItemType itemType,
      double? quantity,
      String? suffix});
}

/// @nodoc
class _$DatabaseItemCopyWithImpl<$Res> implements $DatabaseItemCopyWith<$Res> {
  _$DatabaseItemCopyWithImpl(this._value, this._then);

  final DatabaseItem _value;
  // ignore: unused_field
  final $Res Function(DatabaseItem) _then;

  @override
  $Res call({
    Object? itemName = freezed,
    Object? itemType = freezed,
    Object? quantity = freezed,
    Object? suffix = freezed,
  }) {
    return _then(_value.copyWith(
      itemName: itemName == freezed
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      itemType: itemType == freezed
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as DatabaseItemType,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      suffix: suffix == freezed
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DatabaseItemCopyWith<$Res>
    implements $DatabaseItemCopyWith<$Res> {
  factory _$DatabaseItemCopyWith(
          _DatabaseItem value, $Res Function(_DatabaseItem) then) =
      __$DatabaseItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String itemName,
      DatabaseItemType itemType,
      double? quantity,
      String? suffix});
}

/// @nodoc
class __$DatabaseItemCopyWithImpl<$Res> extends _$DatabaseItemCopyWithImpl<$Res>
    implements _$DatabaseItemCopyWith<$Res> {
  __$DatabaseItemCopyWithImpl(
      _DatabaseItem _value, $Res Function(_DatabaseItem) _then)
      : super(_value, (v) => _then(v as _DatabaseItem));

  @override
  _DatabaseItem get _value => super._value as _DatabaseItem;

  @override
  $Res call({
    Object? itemName = freezed,
    Object? itemType = freezed,
    Object? quantity = freezed,
    Object? suffix = freezed,
  }) {
    return _then(_DatabaseItem(
      itemName: itemName == freezed
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      itemType: itemType == freezed
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as DatabaseItemType,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      suffix: suffix == freezed
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DatabaseItem implements _DatabaseItem {
  _$_DatabaseItem(
      {required this.itemName,
      required this.itemType,
      this.quantity,
      this.suffix});

  factory _$_DatabaseItem.fromJson(Map<String, dynamic> json) =>
      _$_$_DatabaseItemFromJson(json);

  @override
  final String itemName;
  @override
  final DatabaseItemType itemType;
  @override
  final double? quantity;
  @override
  final String? suffix;

  @override
  String toString() {
    return 'DatabaseItem(itemName: $itemName, itemType: $itemType, quantity: $quantity, suffix: $suffix)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DatabaseItem &&
            (identical(other.itemName, itemName) ||
                const DeepCollectionEquality()
                    .equals(other.itemName, itemName)) &&
            (identical(other.itemType, itemType) ||
                const DeepCollectionEquality()
                    .equals(other.itemType, itemType)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.suffix, suffix) ||
                const DeepCollectionEquality().equals(other.suffix, suffix)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(itemName) ^
      const DeepCollectionEquality().hash(itemType) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(suffix);

  @JsonKey(ignore: true)
  @override
  _$DatabaseItemCopyWith<_DatabaseItem> get copyWith =>
      __$DatabaseItemCopyWithImpl<_DatabaseItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DatabaseItemToJson(this);
  }
}

abstract class _DatabaseItem implements DatabaseItem {
  factory _DatabaseItem(
      {required String itemName,
      required DatabaseItemType itemType,
      double? quantity,
      String? suffix}) = _$_DatabaseItem;

  factory _DatabaseItem.fromJson(Map<String, dynamic> json) =
      _$_DatabaseItem.fromJson;

  @override
  String get itemName => throw _privateConstructorUsedError;
  @override
  DatabaseItemType get itemType => throw _privateConstructorUsedError;
  @override
  double? get quantity => throw _privateConstructorUsedError;
  @override
  String? get suffix => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DatabaseItemCopyWith<_DatabaseItem> get copyWith =>
      throw _privateConstructorUsedError;
}

PhotoWithDescription _$PhotoWithDescriptionFromJson(Map<String, dynamic> json) {
  return _PhotoWithDescription.fromJson(json);
}

/// @nodoc
class _$PhotoWithDescriptionTearOff {
  const _$PhotoWithDescriptionTearOff();

  _PhotoWithDescription call({required String path, String? description}) {
    return _PhotoWithDescription(
      path: path,
      description: description,
    );
  }

  PhotoWithDescription fromJson(Map<String, Object> json) {
    return PhotoWithDescription.fromJson(json);
  }
}

/// @nodoc
const $PhotoWithDescription = _$PhotoWithDescriptionTearOff();

/// @nodoc
mixin _$PhotoWithDescription {
  String get path => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoWithDescriptionCopyWith<PhotoWithDescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoWithDescriptionCopyWith<$Res> {
  factory $PhotoWithDescriptionCopyWith(PhotoWithDescription value,
          $Res Function(PhotoWithDescription) then) =
      _$PhotoWithDescriptionCopyWithImpl<$Res>;
  $Res call({String path, String? description});
}

/// @nodoc
class _$PhotoWithDescriptionCopyWithImpl<$Res>
    implements $PhotoWithDescriptionCopyWith<$Res> {
  _$PhotoWithDescriptionCopyWithImpl(this._value, this._then);

  final PhotoWithDescription _value;
  // ignore: unused_field
  final $Res Function(PhotoWithDescription) _then;

  @override
  $Res call({
    Object? path = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PhotoWithDescriptionCopyWith<$Res>
    implements $PhotoWithDescriptionCopyWith<$Res> {
  factory _$PhotoWithDescriptionCopyWith(_PhotoWithDescription value,
          $Res Function(_PhotoWithDescription) then) =
      __$PhotoWithDescriptionCopyWithImpl<$Res>;
  @override
  $Res call({String path, String? description});
}

/// @nodoc
class __$PhotoWithDescriptionCopyWithImpl<$Res>
    extends _$PhotoWithDescriptionCopyWithImpl<$Res>
    implements _$PhotoWithDescriptionCopyWith<$Res> {
  __$PhotoWithDescriptionCopyWithImpl(
      _PhotoWithDescription _value, $Res Function(_PhotoWithDescription) _then)
      : super(_value, (v) => _then(v as _PhotoWithDescription));

  @override
  _PhotoWithDescription get _value => super._value as _PhotoWithDescription;

  @override
  $Res call({
    Object? path = freezed,
    Object? description = freezed,
  }) {
    return _then(_PhotoWithDescription(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PhotoWithDescription implements _PhotoWithDescription {
  _$_PhotoWithDescription({required this.path, this.description});

  factory _$_PhotoWithDescription.fromJson(Map<String, dynamic> json) =>
      _$_$_PhotoWithDescriptionFromJson(json);

  @override
  final String path;
  @override
  final String? description;

  @override
  String toString() {
    return 'PhotoWithDescription(path: $path, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhotoWithDescription &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$PhotoWithDescriptionCopyWith<_PhotoWithDescription> get copyWith =>
      __$PhotoWithDescriptionCopyWithImpl<_PhotoWithDescription>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PhotoWithDescriptionToJson(this);
  }
}

abstract class _PhotoWithDescription implements PhotoWithDescription {
  factory _PhotoWithDescription({required String path, String? description}) =
      _$_PhotoWithDescription;

  factory _PhotoWithDescription.fromJson(Map<String, dynamic> json) =
      _$_PhotoWithDescription.fromJson;

  @override
  String get path => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PhotoWithDescriptionCopyWith<_PhotoWithDescription> get copyWith =>
      throw _privateConstructorUsedError;
}

Exercise _$ExerciseFromJson(Map<String, dynamic> json) {
  return _Exercise.fromJson(json);
}

/// @nodoc
class _$ExerciseTearOff {
  const _$ExerciseTearOff();

  _Exercise call(
      {required String name,
      required String place,
      required DateTime start,
      required DateTime stop,
      required int color,
      List<DatabaseItem>? databaseItems}) {
    return _Exercise(
      name: name,
      place: place,
      start: start,
      stop: stop,
      color: color,
      databaseItems: databaseItems,
    );
  }

  Exercise fromJson(Map<String, Object> json) {
    return Exercise.fromJson(json);
  }
}

/// @nodoc
const $Exercise = _$ExerciseTearOff();

/// @nodoc
mixin _$Exercise {
  String get name => throw _privateConstructorUsedError;
  String get place => throw _privateConstructorUsedError;
  DateTime get start => throw _privateConstructorUsedError;
  DateTime get stop => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;
  List<DatabaseItem>? get databaseItems => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseCopyWith<Exercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseCopyWith<$Res> {
  factory $ExerciseCopyWith(Exercise value, $Res Function(Exercise) then) =
      _$ExerciseCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String place,
      DateTime start,
      DateTime stop,
      int color,
      List<DatabaseItem>? databaseItems});
}

/// @nodoc
class _$ExerciseCopyWithImpl<$Res> implements $ExerciseCopyWith<$Res> {
  _$ExerciseCopyWithImpl(this._value, this._then);

  final Exercise _value;
  // ignore: unused_field
  final $Res Function(Exercise) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? place = freezed,
    Object? start = freezed,
    Object? stop = freezed,
    Object? color = freezed,
    Object? databaseItems = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      stop: stop == freezed
          ? _value.stop
          : stop // ignore: cast_nullable_to_non_nullable
              as DateTime,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      databaseItems: databaseItems == freezed
          ? _value.databaseItems
          : databaseItems // ignore: cast_nullable_to_non_nullable
              as List<DatabaseItem>?,
    ));
  }
}

/// @nodoc
abstract class _$ExerciseCopyWith<$Res> implements $ExerciseCopyWith<$Res> {
  factory _$ExerciseCopyWith(_Exercise value, $Res Function(_Exercise) then) =
      __$ExerciseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String place,
      DateTime start,
      DateTime stop,
      int color,
      List<DatabaseItem>? databaseItems});
}

/// @nodoc
class __$ExerciseCopyWithImpl<$Res> extends _$ExerciseCopyWithImpl<$Res>
    implements _$ExerciseCopyWith<$Res> {
  __$ExerciseCopyWithImpl(_Exercise _value, $Res Function(_Exercise) _then)
      : super(_value, (v) => _then(v as _Exercise));

  @override
  _Exercise get _value => super._value as _Exercise;

  @override
  $Res call({
    Object? name = freezed,
    Object? place = freezed,
    Object? start = freezed,
    Object? stop = freezed,
    Object? color = freezed,
    Object? databaseItems = freezed,
  }) {
    return _then(_Exercise(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      stop: stop == freezed
          ? _value.stop
          : stop // ignore: cast_nullable_to_non_nullable
              as DateTime,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      databaseItems: databaseItems == freezed
          ? _value.databaseItems
          : databaseItems // ignore: cast_nullable_to_non_nullable
              as List<DatabaseItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Exercise implements _Exercise {
  _$_Exercise(
      {required this.name,
      required this.place,
      required this.start,
      required this.stop,
      required this.color,
      this.databaseItems});

  factory _$_Exercise.fromJson(Map<String, dynamic> json) =>
      _$_$_ExerciseFromJson(json);

  @override
  final String name;
  @override
  final String place;
  @override
  final DateTime start;
  @override
  final DateTime stop;
  @override
  final int color;
  @override
  final List<DatabaseItem>? databaseItems;

  @override
  String toString() {
    return 'Exercise(name: $name, place: $place, start: $start, stop: $stop, color: $color, databaseItems: $databaseItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Exercise &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.place, place) ||
                const DeepCollectionEquality().equals(other.place, place)) &&
            (identical(other.start, start) ||
                const DeepCollectionEquality().equals(other.start, start)) &&
            (identical(other.stop, stop) ||
                const DeepCollectionEquality().equals(other.stop, stop)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.databaseItems, databaseItems) ||
                const DeepCollectionEquality()
                    .equals(other.databaseItems, databaseItems)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(place) ^
      const DeepCollectionEquality().hash(start) ^
      const DeepCollectionEquality().hash(stop) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(databaseItems);

  @JsonKey(ignore: true)
  @override
  _$ExerciseCopyWith<_Exercise> get copyWith =>
      __$ExerciseCopyWithImpl<_Exercise>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExerciseToJson(this);
  }
}

abstract class _Exercise implements Exercise {
  factory _Exercise(
      {required String name,
      required String place,
      required DateTime start,
      required DateTime stop,
      required int color,
      List<DatabaseItem>? databaseItems}) = _$_Exercise;

  factory _Exercise.fromJson(Map<String, dynamic> json) = _$_Exercise.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get place => throw _privateConstructorUsedError;
  @override
  DateTime get start => throw _privateConstructorUsedError;
  @override
  DateTime get stop => throw _privateConstructorUsedError;
  @override
  int get color => throw _privateConstructorUsedError;
  @override
  List<DatabaseItem>? get databaseItems => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExerciseCopyWith<_Exercise> get copyWith =>
      throw _privateConstructorUsedError;
}

BuildMaterialCount _$BuildMaterialCountFromJson(Map<String, dynamic> json) {
  return _BuildMaterialCount.fromJson(json);
}

/// @nodoc
class _$BuildMaterialCountTearOff {
  const _$BuildMaterialCountTearOff();

  _BuildMaterialCount call({BuildMaterial? buildMaterial, double? quantity}) {
    return _BuildMaterialCount(
      buildMaterial: buildMaterial,
      quantity: quantity,
    );
  }

  BuildMaterialCount fromJson(Map<String, Object> json) {
    return BuildMaterialCount.fromJson(json);
  }
}

/// @nodoc
const $BuildMaterialCount = _$BuildMaterialCountTearOff();

/// @nodoc
mixin _$BuildMaterialCount {
  BuildMaterial? get buildMaterial => throw _privateConstructorUsedError;
  double? get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BuildMaterialCountCopyWith<BuildMaterialCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildMaterialCountCopyWith<$Res> {
  factory $BuildMaterialCountCopyWith(
          BuildMaterialCount value, $Res Function(BuildMaterialCount) then) =
      _$BuildMaterialCountCopyWithImpl<$Res>;
  $Res call({BuildMaterial? buildMaterial, double? quantity});

  $BuildMaterialCopyWith<$Res>? get buildMaterial;
}

/// @nodoc
class _$BuildMaterialCountCopyWithImpl<$Res>
    implements $BuildMaterialCountCopyWith<$Res> {
  _$BuildMaterialCountCopyWithImpl(this._value, this._then);

  final BuildMaterialCount _value;
  // ignore: unused_field
  final $Res Function(BuildMaterialCount) _then;

  @override
  $Res call({
    Object? buildMaterial = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      buildMaterial: buildMaterial == freezed
          ? _value.buildMaterial
          : buildMaterial // ignore: cast_nullable_to_non_nullable
              as BuildMaterial?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  @override
  $BuildMaterialCopyWith<$Res>? get buildMaterial {
    if (_value.buildMaterial == null) {
      return null;
    }

    return $BuildMaterialCopyWith<$Res>(_value.buildMaterial!, (value) {
      return _then(_value.copyWith(buildMaterial: value));
    });
  }
}

/// @nodoc
abstract class _$BuildMaterialCountCopyWith<$Res>
    implements $BuildMaterialCountCopyWith<$Res> {
  factory _$BuildMaterialCountCopyWith(
          _BuildMaterialCount value, $Res Function(_BuildMaterialCount) then) =
      __$BuildMaterialCountCopyWithImpl<$Res>;
  @override
  $Res call({BuildMaterial? buildMaterial, double? quantity});

  @override
  $BuildMaterialCopyWith<$Res>? get buildMaterial;
}

/// @nodoc
class __$BuildMaterialCountCopyWithImpl<$Res>
    extends _$BuildMaterialCountCopyWithImpl<$Res>
    implements _$BuildMaterialCountCopyWith<$Res> {
  __$BuildMaterialCountCopyWithImpl(
      _BuildMaterialCount _value, $Res Function(_BuildMaterialCount) _then)
      : super(_value, (v) => _then(v as _BuildMaterialCount));

  @override
  _BuildMaterialCount get _value => super._value as _BuildMaterialCount;

  @override
  $Res call({
    Object? buildMaterial = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_BuildMaterialCount(
      buildMaterial: buildMaterial == freezed
          ? _value.buildMaterial
          : buildMaterial // ignore: cast_nullable_to_non_nullable
              as BuildMaterial?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BuildMaterialCount implements _BuildMaterialCount {
  _$_BuildMaterialCount({this.buildMaterial, this.quantity});

  factory _$_BuildMaterialCount.fromJson(Map<String, dynamic> json) =>
      _$_$_BuildMaterialCountFromJson(json);

  @override
  final BuildMaterial? buildMaterial;
  @override
  final double? quantity;

  @override
  String toString() {
    return 'BuildMaterialCount(buildMaterial: $buildMaterial, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BuildMaterialCount &&
            (identical(other.buildMaterial, buildMaterial) ||
                const DeepCollectionEquality()
                    .equals(other.buildMaterial, buildMaterial)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(buildMaterial) ^
      const DeepCollectionEquality().hash(quantity);

  @JsonKey(ignore: true)
  @override
  _$BuildMaterialCountCopyWith<_BuildMaterialCount> get copyWith =>
      __$BuildMaterialCountCopyWithImpl<_BuildMaterialCount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BuildMaterialCountToJson(this);
  }
}

abstract class _BuildMaterialCount implements BuildMaterialCount {
  factory _BuildMaterialCount(
      {BuildMaterial? buildMaterial, double? quantity}) = _$_BuildMaterialCount;

  factory _BuildMaterialCount.fromJson(Map<String, dynamic> json) =
      _$_BuildMaterialCount.fromJson;

  @override
  BuildMaterial? get buildMaterial => throw _privateConstructorUsedError;
  @override
  double? get quantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BuildMaterialCountCopyWith<_BuildMaterialCount> get copyWith =>
      throw _privateConstructorUsedError;
}

ExplosiveMaterialCount _$ExplosiveMaterialCountFromJson(
    Map<String, dynamic> json) {
  return _ExplosiveMaterialCount.fromJson(json);
}

/// @nodoc
class _$ExplosiveMaterialCountTearOff {
  const _$ExplosiveMaterialCountTearOff();

  _ExplosiveMaterialCount call(
      {ExplosiveMaterial? explosiveMaterial, double? quantity}) {
    return _ExplosiveMaterialCount(
      explosiveMaterial: explosiveMaterial,
      quantity: quantity,
    );
  }

  ExplosiveMaterialCount fromJson(Map<String, Object> json) {
    return ExplosiveMaterialCount.fromJson(json);
  }
}

/// @nodoc
const $ExplosiveMaterialCount = _$ExplosiveMaterialCountTearOff();

/// @nodoc
mixin _$ExplosiveMaterialCount {
  ExplosiveMaterial? get explosiveMaterial =>
      throw _privateConstructorUsedError;
  double? get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExplosiveMaterialCountCopyWith<ExplosiveMaterialCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExplosiveMaterialCountCopyWith<$Res> {
  factory $ExplosiveMaterialCountCopyWith(ExplosiveMaterialCount value,
          $Res Function(ExplosiveMaterialCount) then) =
      _$ExplosiveMaterialCountCopyWithImpl<$Res>;
  $Res call({ExplosiveMaterial? explosiveMaterial, double? quantity});

  $ExplosiveMaterialCopyWith<$Res>? get explosiveMaterial;
}

/// @nodoc
class _$ExplosiveMaterialCountCopyWithImpl<$Res>
    implements $ExplosiveMaterialCountCopyWith<$Res> {
  _$ExplosiveMaterialCountCopyWithImpl(this._value, this._then);

  final ExplosiveMaterialCount _value;
  // ignore: unused_field
  final $Res Function(ExplosiveMaterialCount) _then;

  @override
  $Res call({
    Object? explosiveMaterial = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      explosiveMaterial: explosiveMaterial == freezed
          ? _value.explosiveMaterial
          : explosiveMaterial // ignore: cast_nullable_to_non_nullable
              as ExplosiveMaterial?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  @override
  $ExplosiveMaterialCopyWith<$Res>? get explosiveMaterial {
    if (_value.explosiveMaterial == null) {
      return null;
    }

    return $ExplosiveMaterialCopyWith<$Res>(_value.explosiveMaterial!, (value) {
      return _then(_value.copyWith(explosiveMaterial: value));
    });
  }
}

/// @nodoc
abstract class _$ExplosiveMaterialCountCopyWith<$Res>
    implements $ExplosiveMaterialCountCopyWith<$Res> {
  factory _$ExplosiveMaterialCountCopyWith(_ExplosiveMaterialCount value,
          $Res Function(_ExplosiveMaterialCount) then) =
      __$ExplosiveMaterialCountCopyWithImpl<$Res>;
  @override
  $Res call({ExplosiveMaterial? explosiveMaterial, double? quantity});

  @override
  $ExplosiveMaterialCopyWith<$Res>? get explosiveMaterial;
}

/// @nodoc
class __$ExplosiveMaterialCountCopyWithImpl<$Res>
    extends _$ExplosiveMaterialCountCopyWithImpl<$Res>
    implements _$ExplosiveMaterialCountCopyWith<$Res> {
  __$ExplosiveMaterialCountCopyWithImpl(_ExplosiveMaterialCount _value,
      $Res Function(_ExplosiveMaterialCount) _then)
      : super(_value, (v) => _then(v as _ExplosiveMaterialCount));

  @override
  _ExplosiveMaterialCount get _value => super._value as _ExplosiveMaterialCount;

  @override
  $Res call({
    Object? explosiveMaterial = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_ExplosiveMaterialCount(
      explosiveMaterial: explosiveMaterial == freezed
          ? _value.explosiveMaterial
          : explosiveMaterial // ignore: cast_nullable_to_non_nullable
              as ExplosiveMaterial?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExplosiveMaterialCount implements _ExplosiveMaterialCount {
  _$_ExplosiveMaterialCount({this.explosiveMaterial, this.quantity});

  factory _$_ExplosiveMaterialCount.fromJson(Map<String, dynamic> json) =>
      _$_$_ExplosiveMaterialCountFromJson(json);

  @override
  final ExplosiveMaterial? explosiveMaterial;
  @override
  final double? quantity;

  @override
  String toString() {
    return 'ExplosiveMaterialCount(explosiveMaterial: $explosiveMaterial, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExplosiveMaterialCount &&
            (identical(other.explosiveMaterial, explosiveMaterial) ||
                const DeepCollectionEquality()
                    .equals(other.explosiveMaterial, explosiveMaterial)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(explosiveMaterial) ^
      const DeepCollectionEquality().hash(quantity);

  @JsonKey(ignore: true)
  @override
  _$ExplosiveMaterialCountCopyWith<_ExplosiveMaterialCount> get copyWith =>
      __$ExplosiveMaterialCountCopyWithImpl<_ExplosiveMaterialCount>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExplosiveMaterialCountToJson(this);
  }
}

abstract class _ExplosiveMaterialCount implements ExplosiveMaterialCount {
  factory _ExplosiveMaterialCount(
      {ExplosiveMaterial? explosiveMaterial,
      double? quantity}) = _$_ExplosiveMaterialCount;

  factory _ExplosiveMaterialCount.fromJson(Map<String, dynamic> json) =
      _$_ExplosiveMaterialCount.fromJson;

  @override
  ExplosiveMaterial? get explosiveMaterial =>
      throw _privateConstructorUsedError;
  @override
  double? get quantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExplosiveMaterialCountCopyWith<_ExplosiveMaterialCount> get copyWith =>
      throw _privateConstructorUsedError;
}

AmmoCount _$AmmoCountFromJson(Map<String, dynamic> json) {
  return _AmmoCount.fromJson(json);
}

/// @nodoc
class _$AmmoCountTearOff {
  const _$AmmoCountTearOff();

  _AmmoCount call({Ammo? ammo, double? quantity}) {
    return _AmmoCount(
      ammo: ammo,
      quantity: quantity,
    );
  }

  AmmoCount fromJson(Map<String, Object> json) {
    return AmmoCount.fromJson(json);
  }
}

/// @nodoc
const $AmmoCount = _$AmmoCountTearOff();

/// @nodoc
mixin _$AmmoCount {
  Ammo? get ammo => throw _privateConstructorUsedError;
  double? get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AmmoCountCopyWith<AmmoCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmmoCountCopyWith<$Res> {
  factory $AmmoCountCopyWith(AmmoCount value, $Res Function(AmmoCount) then) =
      _$AmmoCountCopyWithImpl<$Res>;
  $Res call({Ammo? ammo, double? quantity});

  $AmmoCopyWith<$Res>? get ammo;
}

/// @nodoc
class _$AmmoCountCopyWithImpl<$Res> implements $AmmoCountCopyWith<$Res> {
  _$AmmoCountCopyWithImpl(this._value, this._then);

  final AmmoCount _value;
  // ignore: unused_field
  final $Res Function(AmmoCount) _then;

  @override
  $Res call({
    Object? ammo = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      ammo: ammo == freezed
          ? _value.ammo
          : ammo // ignore: cast_nullable_to_non_nullable
              as Ammo?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  @override
  $AmmoCopyWith<$Res>? get ammo {
    if (_value.ammo == null) {
      return null;
    }

    return $AmmoCopyWith<$Res>(_value.ammo!, (value) {
      return _then(_value.copyWith(ammo: value));
    });
  }
}

/// @nodoc
abstract class _$AmmoCountCopyWith<$Res> implements $AmmoCountCopyWith<$Res> {
  factory _$AmmoCountCopyWith(
          _AmmoCount value, $Res Function(_AmmoCount) then) =
      __$AmmoCountCopyWithImpl<$Res>;
  @override
  $Res call({Ammo? ammo, double? quantity});

  @override
  $AmmoCopyWith<$Res>? get ammo;
}

/// @nodoc
class __$AmmoCountCopyWithImpl<$Res> extends _$AmmoCountCopyWithImpl<$Res>
    implements _$AmmoCountCopyWith<$Res> {
  __$AmmoCountCopyWithImpl(_AmmoCount _value, $Res Function(_AmmoCount) _then)
      : super(_value, (v) => _then(v as _AmmoCount));

  @override
  _AmmoCount get _value => super._value as _AmmoCount;

  @override
  $Res call({
    Object? ammo = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_AmmoCount(
      ammo: ammo == freezed
          ? _value.ammo
          : ammo // ignore: cast_nullable_to_non_nullable
              as Ammo?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AmmoCount implements _AmmoCount {
  _$_AmmoCount({this.ammo, this.quantity});

  factory _$_AmmoCount.fromJson(Map<String, dynamic> json) =>
      _$_$_AmmoCountFromJson(json);

  @override
  final Ammo? ammo;
  @override
  final double? quantity;

  @override
  String toString() {
    return 'AmmoCount(ammo: $ammo, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AmmoCount &&
            (identical(other.ammo, ammo) ||
                const DeepCollectionEquality().equals(other.ammo, ammo)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ammo) ^
      const DeepCollectionEquality().hash(quantity);

  @JsonKey(ignore: true)
  @override
  _$AmmoCountCopyWith<_AmmoCount> get copyWith =>
      __$AmmoCountCopyWithImpl<_AmmoCount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AmmoCountToJson(this);
  }
}

abstract class _AmmoCount implements AmmoCount {
  factory _AmmoCount({Ammo? ammo, double? quantity}) = _$_AmmoCount;

  factory _AmmoCount.fromJson(Map<String, dynamic> json) =
      _$_AmmoCount.fromJson;

  @override
  Ammo? get ammo => throw _privateConstructorUsedError;
  @override
  double? get quantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AmmoCountCopyWith<_AmmoCount> get copyWith =>
      throw _privateConstructorUsedError;
}

ExplosiveUnitCount _$ExplosiveUnitCountFromJson(Map<String, dynamic> json) {
  return _ExplosiveUnitCount.fromJson(json);
}

/// @nodoc
class _$ExplosiveUnitCountTearOff {
  const _$ExplosiveUnitCountTearOff();

  _ExplosiveUnitCount call({ExplosiveUnit? explosiveUnit, double? quantity}) {
    return _ExplosiveUnitCount(
      explosiveUnit: explosiveUnit,
      quantity: quantity,
    );
  }

  ExplosiveUnitCount fromJson(Map<String, Object> json) {
    return ExplosiveUnitCount.fromJson(json);
  }
}

/// @nodoc
const $ExplosiveUnitCount = _$ExplosiveUnitCountTearOff();

/// @nodoc
mixin _$ExplosiveUnitCount {
  ExplosiveUnit? get explosiveUnit => throw _privateConstructorUsedError;
  double? get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExplosiveUnitCountCopyWith<ExplosiveUnitCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExplosiveUnitCountCopyWith<$Res> {
  factory $ExplosiveUnitCountCopyWith(
          ExplosiveUnitCount value, $Res Function(ExplosiveUnitCount) then) =
      _$ExplosiveUnitCountCopyWithImpl<$Res>;
  $Res call({ExplosiveUnit? explosiveUnit, double? quantity});

  $ExplosiveUnitCopyWith<$Res>? get explosiveUnit;
}

/// @nodoc
class _$ExplosiveUnitCountCopyWithImpl<$Res>
    implements $ExplosiveUnitCountCopyWith<$Res> {
  _$ExplosiveUnitCountCopyWithImpl(this._value, this._then);

  final ExplosiveUnitCount _value;
  // ignore: unused_field
  final $Res Function(ExplosiveUnitCount) _then;

  @override
  $Res call({
    Object? explosiveUnit = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      explosiveUnit: explosiveUnit == freezed
          ? _value.explosiveUnit
          : explosiveUnit // ignore: cast_nullable_to_non_nullable
              as ExplosiveUnit?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  @override
  $ExplosiveUnitCopyWith<$Res>? get explosiveUnit {
    if (_value.explosiveUnit == null) {
      return null;
    }

    return $ExplosiveUnitCopyWith<$Res>(_value.explosiveUnit!, (value) {
      return _then(_value.copyWith(explosiveUnit: value));
    });
  }
}

/// @nodoc
abstract class _$ExplosiveUnitCountCopyWith<$Res>
    implements $ExplosiveUnitCountCopyWith<$Res> {
  factory _$ExplosiveUnitCountCopyWith(
          _ExplosiveUnitCount value, $Res Function(_ExplosiveUnitCount) then) =
      __$ExplosiveUnitCountCopyWithImpl<$Res>;
  @override
  $Res call({ExplosiveUnit? explosiveUnit, double? quantity});

  @override
  $ExplosiveUnitCopyWith<$Res>? get explosiveUnit;
}

/// @nodoc
class __$ExplosiveUnitCountCopyWithImpl<$Res>
    extends _$ExplosiveUnitCountCopyWithImpl<$Res>
    implements _$ExplosiveUnitCountCopyWith<$Res> {
  __$ExplosiveUnitCountCopyWithImpl(
      _ExplosiveUnitCount _value, $Res Function(_ExplosiveUnitCount) _then)
      : super(_value, (v) => _then(v as _ExplosiveUnitCount));

  @override
  _ExplosiveUnitCount get _value => super._value as _ExplosiveUnitCount;

  @override
  $Res call({
    Object? explosiveUnit = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_ExplosiveUnitCount(
      explosiveUnit: explosiveUnit == freezed
          ? _value.explosiveUnit
          : explosiveUnit // ignore: cast_nullable_to_non_nullable
              as ExplosiveUnit?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExplosiveUnitCount implements _ExplosiveUnitCount {
  _$_ExplosiveUnitCount({this.explosiveUnit, this.quantity});

  factory _$_ExplosiveUnitCount.fromJson(Map<String, dynamic> json) =>
      _$_$_ExplosiveUnitCountFromJson(json);

  @override
  final ExplosiveUnit? explosiveUnit;
  @override
  final double? quantity;

  @override
  String toString() {
    return 'ExplosiveUnitCount(explosiveUnit: $explosiveUnit, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExplosiveUnitCount &&
            (identical(other.explosiveUnit, explosiveUnit) ||
                const DeepCollectionEquality()
                    .equals(other.explosiveUnit, explosiveUnit)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(explosiveUnit) ^
      const DeepCollectionEquality().hash(quantity);

  @JsonKey(ignore: true)
  @override
  _$ExplosiveUnitCountCopyWith<_ExplosiveUnitCount> get copyWith =>
      __$ExplosiveUnitCountCopyWithImpl<_ExplosiveUnitCount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExplosiveUnitCountToJson(this);
  }
}

abstract class _ExplosiveUnitCount implements ExplosiveUnitCount {
  factory _ExplosiveUnitCount(
      {ExplosiveUnit? explosiveUnit, double? quantity}) = _$_ExplosiveUnitCount;

  factory _ExplosiveUnitCount.fromJson(Map<String, dynamic> json) =
      _$_ExplosiveUnitCount.fromJson;

  @override
  ExplosiveUnit? get explosiveUnit => throw _privateConstructorUsedError;
  @override
  double? get quantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExplosiveUnitCountCopyWith<_ExplosiveUnitCount> get copyWith =>
      throw _privateConstructorUsedError;
}

InitiationSystemCount _$InitiationSystemCountFromJson(
    Map<String, dynamic> json) {
  return _InitiationSystemCount.fromJson(json);
}

/// @nodoc
class _$InitiationSystemCountTearOff {
  const _$InitiationSystemCountTearOff();

  _InitiationSystemCount call(
      {InitiationSystem? initiationSystem, double? quantity}) {
    return _InitiationSystemCount(
      initiationSystem: initiationSystem,
      quantity: quantity,
    );
  }

  InitiationSystemCount fromJson(Map<String, Object> json) {
    return InitiationSystemCount.fromJson(json);
  }
}

/// @nodoc
const $InitiationSystemCount = _$InitiationSystemCountTearOff();

/// @nodoc
mixin _$InitiationSystemCount {
  InitiationSystem? get initiationSystem => throw _privateConstructorUsedError;
  double? get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitiationSystemCountCopyWith<InitiationSystemCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitiationSystemCountCopyWith<$Res> {
  factory $InitiationSystemCountCopyWith(InitiationSystemCount value,
          $Res Function(InitiationSystemCount) then) =
      _$InitiationSystemCountCopyWithImpl<$Res>;
  $Res call({InitiationSystem? initiationSystem, double? quantity});

  $InitiationSystemCopyWith<$Res>? get initiationSystem;
}

/// @nodoc
class _$InitiationSystemCountCopyWithImpl<$Res>
    implements $InitiationSystemCountCopyWith<$Res> {
  _$InitiationSystemCountCopyWithImpl(this._value, this._then);

  final InitiationSystemCount _value;
  // ignore: unused_field
  final $Res Function(InitiationSystemCount) _then;

  @override
  $Res call({
    Object? initiationSystem = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      initiationSystem: initiationSystem == freezed
          ? _value.initiationSystem
          : initiationSystem // ignore: cast_nullable_to_non_nullable
              as InitiationSystem?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  @override
  $InitiationSystemCopyWith<$Res>? get initiationSystem {
    if (_value.initiationSystem == null) {
      return null;
    }

    return $InitiationSystemCopyWith<$Res>(_value.initiationSystem!, (value) {
      return _then(_value.copyWith(initiationSystem: value));
    });
  }
}

/// @nodoc
abstract class _$InitiationSystemCountCopyWith<$Res>
    implements $InitiationSystemCountCopyWith<$Res> {
  factory _$InitiationSystemCountCopyWith(_InitiationSystemCount value,
          $Res Function(_InitiationSystemCount) then) =
      __$InitiationSystemCountCopyWithImpl<$Res>;
  @override
  $Res call({InitiationSystem? initiationSystem, double? quantity});

  @override
  $InitiationSystemCopyWith<$Res>? get initiationSystem;
}

/// @nodoc
class __$InitiationSystemCountCopyWithImpl<$Res>
    extends _$InitiationSystemCountCopyWithImpl<$Res>
    implements _$InitiationSystemCountCopyWith<$Res> {
  __$InitiationSystemCountCopyWithImpl(_InitiationSystemCount _value,
      $Res Function(_InitiationSystemCount) _then)
      : super(_value, (v) => _then(v as _InitiationSystemCount));

  @override
  _InitiationSystemCount get _value => super._value as _InitiationSystemCount;

  @override
  $Res call({
    Object? initiationSystem = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_InitiationSystemCount(
      initiationSystem: initiationSystem == freezed
          ? _value.initiationSystem
          : initiationSystem // ignore: cast_nullable_to_non_nullable
              as InitiationSystem?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InitiationSystemCount implements _InitiationSystemCount {
  _$_InitiationSystemCount({this.initiationSystem, this.quantity});

  factory _$_InitiationSystemCount.fromJson(Map<String, dynamic> json) =>
      _$_$_InitiationSystemCountFromJson(json);

  @override
  final InitiationSystem? initiationSystem;
  @override
  final double? quantity;

  @override
  String toString() {
    return 'InitiationSystemCount(initiationSystem: $initiationSystem, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitiationSystemCount &&
            (identical(other.initiationSystem, initiationSystem) ||
                const DeepCollectionEquality()
                    .equals(other.initiationSystem, initiationSystem)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initiationSystem) ^
      const DeepCollectionEquality().hash(quantity);

  @JsonKey(ignore: true)
  @override
  _$InitiationSystemCountCopyWith<_InitiationSystemCount> get copyWith =>
      __$InitiationSystemCountCopyWithImpl<_InitiationSystemCount>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_InitiationSystemCountToJson(this);
  }
}

abstract class _InitiationSystemCount implements InitiationSystemCount {
  factory _InitiationSystemCount(
      {InitiationSystem? initiationSystem,
      double? quantity}) = _$_InitiationSystemCount;

  factory _InitiationSystemCount.fromJson(Map<String, dynamic> json) =
      _$_InitiationSystemCount.fromJson;

  @override
  InitiationSystem? get initiationSystem => throw _privateConstructorUsedError;
  @override
  double? get quantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitiationSystemCountCopyWith<_InitiationSystemCount> get copyWith =>
      throw _privateConstructorUsedError;
}
