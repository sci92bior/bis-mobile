// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class I10n {
  I10n();

  static I10n? _current;

  static I10n get current {
    assert(_current != null,
        'No instance of I10n was loaded. Try to initialize the I10n delegate before accessing I10n.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<I10n> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = I10n();
      I10n._current = instance;

      return instance;
    });
  }

  static I10n of(BuildContext context) {
    final instance = I10n.maybeOf(context);
    assert(instance != null,
        'No instance of I10n present in the widget tree. Did you add I10n.delegate in localizationsDelegates?');
    return instance!;
  }

  static I10n? maybeOf(BuildContext context) {
    return Localizations.of<I10n>(context, I10n);
  }

  /// `Zaloguj!`
  String get loginButtonName {
    return Intl.message(
      'Zaloguj!',
      name: 'loginButtonName',
      desc: '',
      args: [],
    );
  }

  /// `Nazwa użytkownika!`
  String get username {
    return Intl.message(
      'Nazwa użytkownika!',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Hasło`
  String get password {
    return Intl.message(
      'Hasło',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Baza danych`
  String get database {
    return Intl.message(
      'Baza danych',
      name: 'database',
      desc: '',
      args: [],
    );
  }

  /// `Materiały wybuchowe`
  String get explosiveMaterials {
    return Intl.message(
      'Materiały wybuchowe',
      name: 'explosiveMaterials',
      desc: '',
      args: [],
    );
  }

  /// `Materiały budowlane`
  String get buildMaterials {
    return Intl.message(
      'Materiały budowlane',
      name: 'buildMaterials',
      desc: '',
      args: [],
    );
  }

  /// `Amunicja`
  String get ammo {
    return Intl.message(
      'Amunicja',
      name: 'ammo',
      desc: '',
      args: [],
    );
  }

  /// `Bronie`
  String get guns {
    return Intl.message(
      'Bronie',
      name: 'guns',
      desc: '',
      args: [],
    );
  }

  /// `Sytemy inicjujące`
  String get initialSystems {
    return Intl.message(
      'Sytemy inicjujące',
      name: 'initialSystems',
      desc: '',
      args: [],
    );
  }

  /// `Materiały dodatkowe`
  String get additionalMaterials {
    return Intl.message(
      'Materiały dodatkowe',
      name: 'additionalMaterials',
      desc: '',
      args: [],
    );
  }

  /// `Narzędzia`
  String get tools {
    return Intl.message(
      'Narzędzia',
      name: 'tools',
      desc: '',
      args: [],
    );
  }

  /// `AFactor: {aFactor}`
  String aFactorDescription(Object aFactor) {
    return Intl.message(
      'AFactor: $aFactor',
      name: 'aFactorDescription',
      desc: '',
      args: [aFactor],
    );
  }

  /// `rFactor: {rFactor}`
  String rFactor(Object rFactor) {
    return Intl.message(
      'rFactor: $rFactor',
      name: 'rFactor',
      desc: '',
      args: [rFactor],
    );
  }

  /// `Ilość: {grain} {unitType}`
  String grains(Object grain, Object unitType) {
    return Intl.message(
      'Ilość: $grain $unitType',
      name: 'grains',
      desc: '',
      args: [grain, unitType],
    );
  }

  /// `Misje`
  String get missions {
    return Intl.message(
      'Misje',
      name: 'missions',
      desc: '',
      args: [],
    );
  }

  /// `Planer`
  String get planner {
    return Intl.message(
      'Planer',
      name: 'planner',
      desc: '',
      args: [],
    );
  }

  /// `Breaching`
  String get breach {
    return Intl.message(
      'Breaching',
      name: 'breach',
      desc: '',
      args: [],
    );
  }

  /// `Strzelanie`
  String get shooting {
    return Intl.message(
      'Strzelanie',
      name: 'shooting',
      desc: '',
      args: [],
    );
  }

  /// `Ocena`
  String get assessment {
    return Intl.message(
      'Ocena',
      name: 'assessment',
      desc: '',
      args: [],
    );
  }

  /// `Przeszkody`
  String get obstacles {
    return Intl.message(
      'Przeszkody',
      name: 'obstacles',
      desc: '',
      args: [],
    );
  }

  /// `Przeszkoda`
  String get obstacle {
    return Intl.message(
      'Przeszkoda',
      name: 'obstacle',
      desc: '',
      args: [],
    );
  }

  /// `Ładunek wybuchowy`
  String get explosiveUnit {
    return Intl.message(
      'Ładunek wybuchowy',
      name: 'explosiveUnit',
      desc: '',
      args: [],
    );
  }

  /// `Ładunki wybuchowe`
  String get explosiveUnits {
    return Intl.message(
      'Ładunki wybuchowe',
      name: 'explosiveUnits',
      desc: '',
      args: [],
    );
  }

  /// `Niszczenie`
  String get destruction {
    return Intl.message(
      'Niszczenie',
      name: 'destruction',
      desc: '',
      args: [],
    );
  }

  /// `Niszczenia`
  String get destructions {
    return Intl.message(
      'Niszczenia',
      name: 'destructions',
      desc: '',
      args: [],
    );
  }

  /// `Ściana`
  String get wall {
    return Intl.message(
      'Ściana',
      name: 'wall',
      desc: '',
      args: [],
    );
  }

  /// `Strop`
  String get ceiling {
    return Intl.message(
      'Strop',
      name: 'ceiling',
      desc: '',
      args: [],
    );
  }

  /// `Okno`
  String get window {
    return Intl.message(
      'Okno',
      name: 'window',
      desc: '',
      args: [],
    );
  }

  /// `Drzwi`
  String get door {
    return Intl.message(
      'Drzwi',
      name: 'door',
      desc: '',
      args: [],
    );
  }

  /// `Typ przeszkody`
  String get obstacleType {
    return Intl.message(
      'Typ przeszkody',
      name: 'obstacleType',
      desc: '',
      args: [],
    );
  }

  /// `Opis`
  String get description {
    return Intl.message(
      'Opis',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Struktura`
  String get structure {
    return Intl.message(
      'Struktura',
      name: 'structure',
      desc: '',
      args: [],
    );
  }

  /// `Ilość`
  String get quantity {
    return Intl.message(
      'Ilość',
      name: 'quantity',
      desc: '',
      args: [],
    );
  }

  /// `Dodaj`
  String get add {
    return Intl.message(
      'Dodaj',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `Dodaj nowy element do struktury przeszkody`
  String get addNewItemToObstacleStructure {
    return Intl.message(
      'Dodaj nowy element do struktury przeszkody',
      name: 'addNewItemToObstacleStructure',
      desc: '',
      args: [],
    );
  }

  /// `AFactor:`
  String get aFactor {
    return Intl.message(
      'AFactor:',
      name: 'aFactor',
      desc: '',
      args: [],
    );
  }

  /// `TNT EQ:`
  String get tntEq {
    return Intl.message(
      'TNT EQ:',
      name: 'tntEq',
      desc: '',
      args: [],
    );
  }

  /// `Grubość:`
  String get thickness {
    return Intl.message(
      'Grubość:',
      name: 'thickness',
      desc: '',
      args: [],
    );
  }

  /// `Zdjęcia`
  String get photos {
    return Intl.message(
      'Zdjęcia',
      name: 'photos',
      desc: '',
      args: [],
    );
  }

  /// `Dodaj nowe zdjęcia przeszkody`
  String get addNewPhotoOfObstacle {
    return Intl.message(
      'Dodaj nowe zdjęcia przeszkody',
      name: 'addNewPhotoOfObstacle',
      desc: '',
      args: [],
    );
  }

  /// `Nazwa`
  String get name {
    return Intl.message(
      'Nazwa',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Wypełnij pole NAZWA!`
  String get missingNameField {
    return Intl.message(
      'Wypełnij pole NAZWA!',
      name: 'missingNameField',
      desc: '',
      args: [],
    );
  }

  /// `Wypełnij pole OPIS!`
  String get missingDescriptionField {
    return Intl.message(
      'Wypełnij pole OPIS!',
      name: 'missingDescriptionField',
      desc: '',
      args: [],
    );
  }

  /// `Przeszkoda {obstacle} utowrzona pomyślnie`
  String obstacleCreatedSuccessfully(Object obstacle) {
    return Intl.message(
      'Przeszkoda $obstacle utowrzona pomyślnie',
      name: 'obstacleCreatedSuccessfully',
      desc: '',
      args: [obstacle],
    );
  }

  /// `Przeszkoda {obstacle} zaktualizowana pomyślnie`
  String obstacleUpdatedSuccessfully(Object obstacle) {
    return Intl.message(
      'Przeszkoda $obstacle zaktualizowana pomyślnie',
      name: 'obstacleUpdatedSuccessfully',
      desc: '',
      args: [obstacle],
    );
  }

  /// `Szukaj`
  String get search {
    return Intl.message(
      'Szukaj',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Brak wyników`
  String get noResults {
    return Intl.message(
      'Brak wyników',
      name: 'noResults',
      desc: '',
      args: [],
    );
  }

  /// `Data utworzenia`
  String get createdDate {
    return Intl.message(
      'Data utworzenia',
      name: 'createdDate',
      desc: '',
      args: [],
    );
  }

  /// `Data aktualizacji`
  String get updateDate {
    return Intl.message(
      'Data aktualizacji',
      name: 'updateDate',
      desc: '',
      args: [],
    );
  }

  /// `Przeszkoda o nazwa {name} już istnieje`
  String obstacleAlreadyExist(Object name) {
    return Intl.message(
      'Przeszkoda o nazwa $name już istnieje',
      name: 'obstacleAlreadyExist',
      desc: '',
      args: [name],
    );
  }

  /// `Usuń`
  String get delete {
    return Intl.message(
      'Usuń',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Standardowy`
  String get standardType {
    return Intl.message(
      'Standardowy',
      name: 'standardType',
      desc: '',
      args: [],
    );
  }

  /// `Egzotyczny`
  String get exoticType {
    return Intl.message(
      'Egzotyczny',
      name: 'exoticType',
      desc: '',
      args: [],
    );
  }

  /// `Skład`
  String get composition {
    return Intl.message(
      'Skład',
      name: 'composition',
      desc: '',
      args: [],
    );
  }

  /// `N.E.W TNT`
  String get newTnt {
    return Intl.message(
      'N.E.W TNT',
      name: 'newTnt',
      desc: '',
      args: [],
    );
  }

  /// `N.E.W. Actual`
  String get newActual {
    return Intl.message(
      'N.E.W. Actual',
      name: 'newActual',
      desc: '',
      args: [],
    );
  }

  /// `MSD`
  String get msd {
    return Intl.message(
      'MSD',
      name: 'msd',
      desc: '',
      args: [],
    );
  }

  /// `Typ ładunku`
  String get explosiveUnitType {
    return Intl.message(
      'Typ ładunku',
      name: 'explosiveUnitType',
      desc: '',
      args: [],
    );
  }

  /// `Brak zdjęć`
  String get noPhotos {
    return Intl.message(
      'Brak zdjęć',
      name: 'noPhotos',
      desc: '',
      args: [],
    );
  }

  /// `Kalkulator`
  String get calculator {
    return Intl.message(
      'Kalkulator',
      name: 'calculator',
      desc: '',
      args: [],
    );
  }

  /// `Konwenter`
  String get conventer {
    return Intl.message(
      'Konwenter',
      name: 'conventer',
      desc: '',
      args: [],
    );
  }

  /// `Miejsce`
  String get place {
    return Intl.message(
      'Miejsce',
      name: 'place',
      desc: '',
      args: [],
    );
  }

  /// `Data`
  String get date {
    return Intl.message(
      'Data',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `Uszczelnienie`
  String get seal {
    return Intl.message(
      'Uszczelnienie',
      name: 'seal',
      desc: '',
      args: [],
    );
  }

  /// `Wynik`
  String get result {
    return Intl.message(
      'Wynik',
      name: 'result',
      desc: '',
      args: [],
    );
  }

  /// `Tak`
  String get yes {
    return Intl.message(
      'Tak',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `Nie`
  String get no {
    return Intl.message(
      'Nie',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Niszczenie dwu-etapowe`
  String get twoStage {
    return Intl.message(
      'Niszczenie dwu-etapowe',
      name: 'twoStage',
      desc: '',
      args: [],
    );
  }

  /// `Broń`
  String get gun {
    return Intl.message(
      'Broń',
      name: 'gun',
      desc: '',
      args: [],
    );
  }

  /// `Zdjęcia przed`
  String get photosBeforeDestruction {
    return Intl.message(
      'Zdjęcia przed',
      name: 'photosBeforeDestruction',
      desc: '',
      args: [],
    );
  }

  /// `Zdjęcia po`
  String get photosAfterDestruction {
    return Intl.message(
      'Zdjęcia po',
      name: 'photosAfterDestruction',
      desc: '',
      args: [],
    );
  }

  /// `Dodaj zdjęcia po niszczeniu`
  String get addPhotoAfterDestruction {
    return Intl.message(
      'Dodaj zdjęcia po niszczeniu',
      name: 'addPhotoAfterDestruction',
      desc: '',
      args: [],
    );
  }

  /// `Dodaj zdjęcia po niszczeniu`
  String get addPhotoBeforeDestruction {
    return Intl.message(
      'Dodaj zdjęcia po niszczeniu',
      name: 'addPhotoBeforeDestruction',
      desc: '',
      args: [],
    );
  }

  /// `Niszczenie {destruction} dodano pomyślnie!`
  String destructionCreatedSuccessfully(Object destruction) {
    return Intl.message(
      'Niszczenie $destruction dodano pomyślnie!',
      name: 'destructionCreatedSuccessfully',
      desc: '',
      args: [destruction],
    );
  }

  /// `Niszczenie {destruction} zaktualizowano pomyślnie!`
  String destructionUpdatedSuccessfully(Object destruction) {
    return Intl.message(
      'Niszczenie $destruction zaktualizowano pomyślnie!',
      name: 'destructionUpdatedSuccessfully',
      desc: '',
      args: [destruction],
    );
  }

  /// `Nie dodano {item} do niszczenia`
  String didntAddToDestruction(Object item) {
    return Intl.message(
      'Nie dodano $item do niszczenia',
      name: 'didntAddToDestruction',
      desc: '',
      args: [item],
    );
  }

  /// `Ćwiczenie`
  String get exercise {
    return Intl.message(
      'Ćwiczenie',
      name: 'exercise',
      desc: '',
      args: [],
    );
  }

  /// `Data rozpoczęcia`
  String get startDate {
    return Intl.message(
      'Data rozpoczęcia',
      name: 'startDate',
      desc: '',
      args: [],
    );
  }

  /// `Data zakończenia`
  String get endDate {
    return Intl.message(
      'Data zakończenia',
      name: 'endDate',
      desc: '',
      args: [],
    );
  }

  /// `Brak zdjęć`
  String get noPhoto {
    return Intl.message(
      'Brak zdjęć',
      name: 'noPhoto',
      desc: '',
      args: [],
    );
  }

  /// `Dodaj opis do zdjęcia`
  String get addDescriptionToPhoto {
    return Intl.message(
      'Dodaj opis do zdjęcia',
      name: 'addDescriptionToPhoto',
      desc: '',
      args: [],
    );
  }

  /// `Wybierz jeden lub wiele`
  String get choseOneOrMore {
    return Intl.message(
      'Wybierz jeden lub wiele',
      name: 'choseOneOrMore',
      desc: '',
      args: [],
    );
  }

  /// `Planowane elementy`
  String get plannedElements {
    return Intl.message(
      'Planowane elementy',
      name: 'plannedElements',
      desc: '',
      args: [],
    );
  }

  /// `Sprawdź wprowadzone dane`
  String get checkInputData {
    return Intl.message(
      'Sprawdź wprowadzone dane',
      name: 'checkInputData',
      desc: '',
      args: [],
    );
  }

  /// `Przelicz zapotrzebowanie`
  String get calculateDataRangeNeeds {
    return Intl.message(
      'Przelicz zapotrzebowanie',
      name: 'calculateDataRangeNeeds',
      desc: '',
      args: [],
    );
  }

  /// `Rekomendacje`
  String get recomendation {
    return Intl.message(
      'Rekomendacje',
      name: 'recomendation',
      desc: '',
      args: [],
    );
  }

  /// `Czas utworzenia`
  String get madeTime {
    return Intl.message(
      'Czas utworzenia',
      name: 'madeTime',
      desc: '',
      args: [],
    );
  }

  /// `Wykonawca`
  String get performer {
    return Intl.message(
      'Wykonawca',
      name: 'performer',
      desc: '',
      args: [],
    );
  }

  /// `Przebieg`
  String get process {
    return Intl.message(
      'Przebieg',
      name: 'process',
      desc: '',
      args: [],
    );
  }

  /// `Podejście`
  String get approach {
    return Intl.message(
      'Podejście',
      name: 'approach',
      desc: '',
      args: [],
    );
  }

  /// `Czas`
  String get time {
    return Intl.message(
      'Czas',
      name: 'time',
      desc: '',
      args: [],
    );
  }

  /// `Założenie`
  String get assembly {
    return Intl.message(
      'Założenie',
      name: 'assembly',
      desc: '',
      args: [],
    );
  }

  /// `Wejście`
  String get enter {
    return Intl.message(
      'Wejście',
      name: 'enter',
      desc: '',
      args: [],
    );
  }

  /// `Sposób mocowania`
  String get mountType {
    return Intl.message(
      'Sposób mocowania',
      name: 'mountType',
      desc: '',
      args: [],
    );
  }

  /// `Sytuacja realna`
  String get realWork {
    return Intl.message(
      'Sytuacja realna',
      name: 'realWork',
      desc: '',
      args: [],
    );
  }

  /// `Typ roboty`
  String get workType {
    return Intl.message(
      'Typ roboty',
      name: 'workType',
      desc: '',
      args: [],
    );
  }

  /// `Spodziewane działanie`
  String get expectedBehaviour {
    return Intl.message(
      'Spodziewane działanie',
      name: 'expectedBehaviour',
      desc: '',
      args: [],
    );
  }

  /// `Spodziewany efekt`
  String get expectedEffect {
    return Intl.message(
      'Spodziewany efekt',
      name: 'expectedEffect',
      desc: '',
      args: [],
    );
  }

  /// `Kursy`
  String get courses {
    return Intl.message(
      'Kursy',
      name: 'courses',
      desc: '',
      args: [],
    );
  }

  /// `Tematy`
  String get topics {
    return Intl.message(
      'Tematy',
      name: 'topics',
      desc: '',
      args: [],
    );
  }

  /// `Kursanci`
  String get students {
    return Intl.message(
      'Kursanci',
      name: 'students',
      desc: '',
      args: [],
    );
  }

  /// `Wybierz kursantów`
  String get choseStudentsToCourse {
    return Intl.message(
      'Wybierz kursantów',
      name: 'choseStudentsToCourse',
      desc: '',
      args: [],
    );
  }

  /// `Wprowadź temat zajęć`
  String get enterTopic {
    return Intl.message(
      'Wprowadź temat zajęć',
      name: 'enterTopic',
      desc: '',
      args: [],
    );
  }

  /// `Instruktor`
  String get instructor {
    return Intl.message(
      'Instruktor',
      name: 'instructor',
      desc: '',
      args: [],
    );
  }

  /// `Wprowadź datę rozpoczęcia oraz zakończenia kursu`
  String get missingStartStopDate {
    return Intl.message(
      'Wprowadź datę rozpoczęcia oraz zakończenia kursu',
      name: 'missingStartStopDate',
      desc: '',
      args: [],
    );
  }

  /// `Wprowadź instruktora kursu`
  String get missingInstructor {
    return Intl.message(
      'Wprowadź instruktora kursu',
      name: 'missingInstructor',
      desc: '',
      args: [],
    );
  }

  /// `Wprowadź przynajmniej jeden temat`
  String get missingTopics {
    return Intl.message(
      'Wprowadź przynajmniej jeden temat',
      name: 'missingTopics',
      desc: '',
      args: [],
    );
  }

  /// `Dodaj przynajmniej jedenego kursanta`
  String get missingStudents {
    return Intl.message(
      'Dodaj przynajmniej jedenego kursanta',
      name: 'missingStudents',
      desc: '',
      args: [],
    );
  }

  /// `Oceny`
  String get marks {
    return Intl.message(
      'Oceny',
      name: 'marks',
      desc: '',
      args: [],
    );
  }

  /// `Nie odnaleziono skanu`
  String get scansNotFound {
    return Intl.message(
      'Nie odnaleziono skanu',
      name: 'scansNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Anuluj`
  String get cancel {
    return Intl.message(
      'Anuluj',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Dostosuj`
  String get cropper {
    return Intl.message(
      'Dostosuj',
      name: 'cropper',
      desc: '',
      args: [],
    );
  }

  /// `Tytuł`
  String get title {
    return Intl.message(
      'Tytuł',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Dodaj wydarzenie`
  String get addProcessItem {
    return Intl.message(
      'Dodaj wydarzenie',
      name: 'addProcessItem',
      desc: '',
      args: [],
    );
  }

  /// `Strona`
  String get page {
    return Intl.message(
      'Strona',
      name: 'page',
      desc: '',
      args: [],
    );
  }

  /// `Data wydruku`
  String get printDate {
    return Intl.message(
      'Data wydruku',
      name: 'printDate',
      desc: '',
      args: [],
    );
  }

  /// `Ogólne`
  String get general {
    return Intl.message(
      'Ogólne',
      name: 'general',
      desc: '',
      args: [],
    );
  }

  /// `Brak opisu!`
  String get noDescription {
    return Intl.message(
      'Brak opisu!',
      name: 'noDescription',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<I10n> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'pl', countryCode: 'PL'),
      Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<I10n> load(Locale locale) => I10n.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
