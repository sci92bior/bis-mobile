// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pl_PL locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'pl_PL';

  static String m0(aFactor) => "AFactor: ${aFactor}";

  static String m1(destruction) =>
      "Niszczenie ${destruction} dodano pomyślnie!";

  static String m2(destruction) =>
      "Niszczenie ${destruction} zaktualizowano pomyślnie!";

  static String m3(item) => "Nie dodano ${item} do niszczenia";

  static String m4(grain, unitType) => "Ilość: ${grain} ${unitType}";

  static String m5(name) => "Przeszkoda o nazwa ${name} już istnieje";

  static String m6(obstacle) => "Przeszkoda ${obstacle} utowrzona pomyślnie";

  static String m7(obstacle) =>
      "Przeszkoda ${obstacle} zaktualizowana pomyślnie";

  static String m8(rFactor) => "rFactor: ${rFactor}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aFactor": MessageLookupByLibrary.simpleMessage("AFactor:"),
        "aFactorDescription": m0,
        "add": MessageLookupByLibrary.simpleMessage("Dodaj"),
        "addDescriptionToPhoto":
            MessageLookupByLibrary.simpleMessage("Dodaj opis do zdjęcia"),
        "addNewItemToObstacleStructure": MessageLookupByLibrary.simpleMessage(
            "Dodaj nowy element do struktury przeszkody"),
        "addNewPhotoOfObstacle": MessageLookupByLibrary.simpleMessage(
            "Dodaj nowe zdjęcia przeszkody"),
        "addPhotoAfterDestruction":
            MessageLookupByLibrary.simpleMessage("Dodaj zdjęcia po niszczeniu"),
        "addPhotoBeforeDestruction":
            MessageLookupByLibrary.simpleMessage("Dodaj zdjęcia po niszczeniu"),
        "addProcessItem":
            MessageLookupByLibrary.simpleMessage("Dodaj wydarzenie"),
        "additionalMaterials":
            MessageLookupByLibrary.simpleMessage("Materiały dodatkowe"),
        "ammo": MessageLookupByLibrary.simpleMessage("Amunicja"),
        "approach": MessageLookupByLibrary.simpleMessage("Podejście"),
        "assembly": MessageLookupByLibrary.simpleMessage("Założenie"),
        "assessment": MessageLookupByLibrary.simpleMessage("Ocena"),
        "breach": MessageLookupByLibrary.simpleMessage("Breaching"),
        "buildMaterials":
            MessageLookupByLibrary.simpleMessage("Materiały budowlane"),
        "calculateDataRangeNeeds":
            MessageLookupByLibrary.simpleMessage("Przelicz zapotrzebowanie"),
        "calculator": MessageLookupByLibrary.simpleMessage("Kalkulator"),
        "cancel": MessageLookupByLibrary.simpleMessage("Anuluj"),
        "ceiling": MessageLookupByLibrary.simpleMessage("Strop"),
        "checkInputData":
            MessageLookupByLibrary.simpleMessage("Sprawdź wprowadzone dane"),
        "choseOneOrMore":
            MessageLookupByLibrary.simpleMessage("Wybierz jeden lub wiele"),
        "choseStudentsToCourse":
            MessageLookupByLibrary.simpleMessage("Wybierz kursantów"),
        "composition": MessageLookupByLibrary.simpleMessage("Skład"),
        "conventer": MessageLookupByLibrary.simpleMessage("Konwenter"),
        "courses": MessageLookupByLibrary.simpleMessage("Kursy"),
        "createdDate": MessageLookupByLibrary.simpleMessage("Data utworzenia"),
        "cropper": MessageLookupByLibrary.simpleMessage("Dostosuj"),
        "dashboard": MessageLookupByLibrary.simpleMessage("Dashboard"),
        "database": MessageLookupByLibrary.simpleMessage("Baza danych"),
        "date": MessageLookupByLibrary.simpleMessage("Data"),
        "delete": MessageLookupByLibrary.simpleMessage("Usuń"),
        "description": MessageLookupByLibrary.simpleMessage("Opis"),
        "destruction": MessageLookupByLibrary.simpleMessage("Niszczenie"),
        "destructionCreatedSuccessfully": m1,
        "destructionUpdatedSuccessfully": m2,
        "destructions": MessageLookupByLibrary.simpleMessage("Niszczenia"),
        "didntAddToDestruction": m3,
        "door": MessageLookupByLibrary.simpleMessage("Drzwi"),
        "endDate": MessageLookupByLibrary.simpleMessage("Data zakończenia"),
        "enter": MessageLookupByLibrary.simpleMessage("Wejście"),
        "enterTopic":
            MessageLookupByLibrary.simpleMessage("Wprowadź temat zajęć"),
        "exercise": MessageLookupByLibrary.simpleMessage("Ćwiczenie"),
        "exoticType": MessageLookupByLibrary.simpleMessage("Egzotyczny"),
        "expectedBehaviour":
            MessageLookupByLibrary.simpleMessage("Spodziewane działanie"),
        "expectedEffect":
            MessageLookupByLibrary.simpleMessage("Spodziewany efekt"),
        "explosiveMaterials":
            MessageLookupByLibrary.simpleMessage("Materiały wybuchowe"),
        "explosiveUnit":
            MessageLookupByLibrary.simpleMessage("Ładunek wybuchowy"),
        "explosiveUnitType":
            MessageLookupByLibrary.simpleMessage("Typ ładunku"),
        "explosiveUnits":
            MessageLookupByLibrary.simpleMessage("Ładunki wybuchowe"),
        "general": MessageLookupByLibrary.simpleMessage("Ogólne"),
        "grains": m4,
        "gun": MessageLookupByLibrary.simpleMessage("Broń"),
        "guns": MessageLookupByLibrary.simpleMessage("Bronie"),
        "initialSystems":
            MessageLookupByLibrary.simpleMessage("Sytemy inicjujące"),
        "instructor": MessageLookupByLibrary.simpleMessage("Instruktor"),
        "loginButtonName": MessageLookupByLibrary.simpleMessage("Zaloguj!"),
        "madeTime": MessageLookupByLibrary.simpleMessage("Czas utworzenia"),
        "marks": MessageLookupByLibrary.simpleMessage("Oceny"),
        "missingDescriptionField":
            MessageLookupByLibrary.simpleMessage("Wypełnij pole OPIS!"),
        "missingInstructor":
            MessageLookupByLibrary.simpleMessage("Wprowadź instruktora kursu"),
        "missingNameField":
            MessageLookupByLibrary.simpleMessage("Wypełnij pole NAZWA!"),
        "missingStartStopDate": MessageLookupByLibrary.simpleMessage(
            "Wprowadź datę rozpoczęcia oraz zakończenia kursu"),
        "missingStudents": MessageLookupByLibrary.simpleMessage(
            "Dodaj przynajmniej jedenego kursanta"),
        "missingTopics": MessageLookupByLibrary.simpleMessage(
            "Wprowadź przynajmniej jeden temat"),
        "missions": MessageLookupByLibrary.simpleMessage("Misje"),
        "mountType": MessageLookupByLibrary.simpleMessage("Sposób mocowania"),
        "msd": MessageLookupByLibrary.simpleMessage("MSD"),
        "name": MessageLookupByLibrary.simpleMessage("Nazwa"),
        "newActual": MessageLookupByLibrary.simpleMessage("N.E.W. Actual"),
        "newTnt": MessageLookupByLibrary.simpleMessage("N.E.W TNT"),
        "no": MessageLookupByLibrary.simpleMessage("Nie"),
        "noDescription": MessageLookupByLibrary.simpleMessage("Brak opisu!"),
        "noPhoto": MessageLookupByLibrary.simpleMessage("Brak zdjęć"),
        "noPhotos": MessageLookupByLibrary.simpleMessage("Brak zdjęć"),
        "noResults": MessageLookupByLibrary.simpleMessage("Brak wyników"),
        "obstacle": MessageLookupByLibrary.simpleMessage("Przeszkoda"),
        "obstacleAlreadyExist": m5,
        "obstacleCreatedSuccessfully": m6,
        "obstacleType": MessageLookupByLibrary.simpleMessage("Typ przeszkody"),
        "obstacleUpdatedSuccessfully": m7,
        "obstacles": MessageLookupByLibrary.simpleMessage("Przeszkody"),
        "page": MessageLookupByLibrary.simpleMessage("Strona"),
        "password": MessageLookupByLibrary.simpleMessage("Hasło"),
        "performer": MessageLookupByLibrary.simpleMessage("Wykonawca"),
        "photos": MessageLookupByLibrary.simpleMessage("Zdjęcia"),
        "photosAfterDestruction":
            MessageLookupByLibrary.simpleMessage("Zdjęcia po"),
        "photosBeforeDestruction":
            MessageLookupByLibrary.simpleMessage("Zdjęcia przed"),
        "place": MessageLookupByLibrary.simpleMessage("Miejsce"),
        "plannedElements":
            MessageLookupByLibrary.simpleMessage("Planowane elementy"),
        "planner": MessageLookupByLibrary.simpleMessage("Planer"),
        "printDate": MessageLookupByLibrary.simpleMessage("Data wydruku"),
        "process": MessageLookupByLibrary.simpleMessage("Przebieg"),
        "quantity": MessageLookupByLibrary.simpleMessage("Ilość"),
        "rFactor": m8,
        "realWork": MessageLookupByLibrary.simpleMessage("Sytuacja realna"),
        "recomendation": MessageLookupByLibrary.simpleMessage("Rekomendacje"),
        "result": MessageLookupByLibrary.simpleMessage("Wynik"),
        "scansNotFound":
            MessageLookupByLibrary.simpleMessage("Nie odnaleziono skanu"),
        "seal": MessageLookupByLibrary.simpleMessage("Uszczelnienie"),
        "search": MessageLookupByLibrary.simpleMessage("Szukaj"),
        "shooting": MessageLookupByLibrary.simpleMessage("Strzelanie"),
        "standardType": MessageLookupByLibrary.simpleMessage("Standardowy"),
        "startDate": MessageLookupByLibrary.simpleMessage("Data rozpoczęcia"),
        "structure": MessageLookupByLibrary.simpleMessage("Struktura"),
        "students": MessageLookupByLibrary.simpleMessage("Kursanci"),
        "thickness": MessageLookupByLibrary.simpleMessage("Grubość:"),
        "time": MessageLookupByLibrary.simpleMessage("Czas"),
        "title": MessageLookupByLibrary.simpleMessage("Tytuł"),
        "tntEq": MessageLookupByLibrary.simpleMessage("TNT EQ:"),
        "tools": MessageLookupByLibrary.simpleMessage("Narzędzia"),
        "topics": MessageLookupByLibrary.simpleMessage("Tematy"),
        "twoStage":
            MessageLookupByLibrary.simpleMessage("Niszczenie dwu-etapowe"),
        "updateDate": MessageLookupByLibrary.simpleMessage("Data aktualizacji"),
        "username": MessageLookupByLibrary.simpleMessage("Nazwa użytkownika!"),
        "wall": MessageLookupByLibrary.simpleMessage("Ściana"),
        "window": MessageLookupByLibrary.simpleMessage("Okno"),
        "workType": MessageLookupByLibrary.simpleMessage("Typ roboty"),
        "yes": MessageLookupByLibrary.simpleMessage("Tak")
      };
}
