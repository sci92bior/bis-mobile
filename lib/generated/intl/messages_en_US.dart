// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en_US locale. All the
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
  String get localeName => 'en_US';

  static String m0(aFactor) => "AFactor: ${aFactor}";

  static String m1(destruction) =>
      "Destruction ${destruction} created successfully!";

  static String m2(destruction) =>
      "Destruction ${destruction} updated successfully!";

  static String m3(item) => "${item} didn\'t add to this destruction";

  static String m4(grain, unitType) => "Grain: ${grain} ${unitType}";

  static String m5(name) => "Obstacle with name ${name} already exist";

  static String m6(obstacle) => "Obstacle ${obstacle} created successfully!";

  static String m7(obstacle) => "Obstacle ${obstacle} updated successfully!";

  static String m8(rFactor) => "rFactor: ${rFactor}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aFactor": MessageLookupByLibrary.simpleMessage("AFactor:"),
        "aFactorDescription": m0,
        "add": MessageLookupByLibrary.simpleMessage("Add"),
        "addDescriptionToPhoto":
            MessageLookupByLibrary.simpleMessage("Add description to photo"),
        "addNewItemToObstacleStructure": MessageLookupByLibrary.simpleMessage(
            "Add new item to obstacle structure"),
        "addNewPhotoOfObstacle":
            MessageLookupByLibrary.simpleMessage("Add new photo of obstacle"),
        "addPhotoAfterDestruction": MessageLookupByLibrary.simpleMessage(
            "Add photos after destruction"),
        "addPhotoBeforeDestruction": MessageLookupByLibrary.simpleMessage(
            "Add photos before destruction"),
        "addProcessItem":
            MessageLookupByLibrary.simpleMessage("Add process event"),
        "additionalMaterials":
            MessageLookupByLibrary.simpleMessage("Additional materials"),
        "ammo": MessageLookupByLibrary.simpleMessage("Ammo"),
        "approach": MessageLookupByLibrary.simpleMessage("Approach"),
        "assembly": MessageLookupByLibrary.simpleMessage("Assembly"),
        "assessment": MessageLookupByLibrary.simpleMessage("Asessment"),
        "breach": MessageLookupByLibrary.simpleMessage("Breach"),
        "buildMaterials":
            MessageLookupByLibrary.simpleMessage("Build materials"),
        "calculateDataRangeNeeds":
            MessageLookupByLibrary.simpleMessage("Calculate data range needs"),
        "calculator": MessageLookupByLibrary.simpleMessage("Calculator"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "ceiling": MessageLookupByLibrary.simpleMessage("CEILING"),
        "checkInputData":
            MessageLookupByLibrary.simpleMessage("Check inserted data"),
        "choseOneOrMore":
            MessageLookupByLibrary.simpleMessage("Chose one or more"),
        "choseStudentsToCourse":
            MessageLookupByLibrary.simpleMessage("Chose students to course"),
        "composition": MessageLookupByLibrary.simpleMessage("Composition"),
        "conventer": MessageLookupByLibrary.simpleMessage("Conventer"),
        "courses": MessageLookupByLibrary.simpleMessage("Courses"),
        "createdDate": MessageLookupByLibrary.simpleMessage("Create date"),
        "cropper": MessageLookupByLibrary.simpleMessage("Cropper"),
        "database": MessageLookupByLibrary.simpleMessage("Database"),
        "date": MessageLookupByLibrary.simpleMessage("Date"),
        "delete": MessageLookupByLibrary.simpleMessage("Delete"),
        "description": MessageLookupByLibrary.simpleMessage("Description"),
        "destruction": MessageLookupByLibrary.simpleMessage("Destruction"),
        "destructionCreatedSuccessfully": m1,
        "destructionUpdatedSuccessfully": m2,
        "destructions": MessageLookupByLibrary.simpleMessage("Destructions"),
        "didntAddToDestruction": m3,
        "door": MessageLookupByLibrary.simpleMessage("DOOR"),
        "endDate": MessageLookupByLibrary.simpleMessage("End date"),
        "enter": MessageLookupByLibrary.simpleMessage("Enter"),
        "enterTopic": MessageLookupByLibrary.simpleMessage("Enter topic"),
        "exercise": MessageLookupByLibrary.simpleMessage("Exercise"),
        "exoticType": MessageLookupByLibrary.simpleMessage("Exotic"),
        "expectedBehaviour":
            MessageLookupByLibrary.simpleMessage("Expected behaviour"),
        "expectedEffect":
            MessageLookupByLibrary.simpleMessage("Expected effect"),
        "explosiveMaterials":
            MessageLookupByLibrary.simpleMessage("Explosive materials"),
        "explosiveUnit": MessageLookupByLibrary.simpleMessage("Explosive Unit"),
        "explosiveUnitType":
            MessageLookupByLibrary.simpleMessage("Explosive Unit type"),
        "explosiveUnits":
            MessageLookupByLibrary.simpleMessage("Explosive Units"),
        "general": MessageLookupByLibrary.simpleMessage("General"),
        "grains": m4,
        "gun": MessageLookupByLibrary.simpleMessage("Gun"),
        "guns": MessageLookupByLibrary.simpleMessage("Guns"),
        "initialSystems":
            MessageLookupByLibrary.simpleMessage("Initial systems"),
        "instructor": MessageLookupByLibrary.simpleMessage("Instructor"),
        "loginButtonName": MessageLookupByLibrary.simpleMessage("Log In!"),
        "madeTime": MessageLookupByLibrary.simpleMessage("Assemble time"),
        "marks": MessageLookupByLibrary.simpleMessage("Marks"),
        "missingDescriptionField": MessageLookupByLibrary.simpleMessage(
            "Fill description value before save!"),
        "missingInstructor":
            MessageLookupByLibrary.simpleMessage("Missin course instructor"),
        "missingNameField": MessageLookupByLibrary.simpleMessage(
            "Fill name value before save!"),
        "missingStartStopDate": MessageLookupByLibrary.simpleMessage(
            "Missing start or stop course date"),
        "missingStudents":
            MessageLookupByLibrary.simpleMessage("Add at least one student"),
        "missingTopics":
            MessageLookupByLibrary.simpleMessage("Enter at least one topic"),
        "missions": MessageLookupByLibrary.simpleMessage("Missions"),
        "mountType": MessageLookupByLibrary.simpleMessage("Mount Type"),
        "msd": MessageLookupByLibrary.simpleMessage("MSD"),
        "name": MessageLookupByLibrary.simpleMessage("Name"),
        "newActual": MessageLookupByLibrary.simpleMessage("N.E.W. Actual"),
        "newTnt": MessageLookupByLibrary.simpleMessage("N.E.W TNT"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noDescription":
            MessageLookupByLibrary.simpleMessage("No description!"),
        "noPhoto": MessageLookupByLibrary.simpleMessage("No photo"),
        "noPhotos": MessageLookupByLibrary.simpleMessage("No Photos"),
        "noResults": MessageLookupByLibrary.simpleMessage("No results found"),
        "obstacle": MessageLookupByLibrary.simpleMessage("Obstacle"),
        "obstacleAlreadyExist": m5,
        "obstacleCreatedSuccessfully": m6,
        "obstacleType": MessageLookupByLibrary.simpleMessage("Obstacle type"),
        "obstacleUpdatedSuccessfully": m7,
        "obstacles": MessageLookupByLibrary.simpleMessage("Obstacles"),
        "page": MessageLookupByLibrary.simpleMessage("Page"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "performer": MessageLookupByLibrary.simpleMessage("Performer"),
        "photos": MessageLookupByLibrary.simpleMessage("Photos"),
        "photosAfterDestruction":
            MessageLookupByLibrary.simpleMessage("Photos after"),
        "photosBeforeDestruction":
            MessageLookupByLibrary.simpleMessage("Photos before"),
        "place": MessageLookupByLibrary.simpleMessage("Place"),
        "plannedElements":
            MessageLookupByLibrary.simpleMessage("Planned elements"),
        "planner": MessageLookupByLibrary.simpleMessage("Planner"),
        "printDate": MessageLookupByLibrary.simpleMessage("Print date"),
        "process": MessageLookupByLibrary.simpleMessage("Process"),
        "quantity": MessageLookupByLibrary.simpleMessage("Quantity"),
        "rFactor": m8,
        "realWork": MessageLookupByLibrary.simpleMessage("Real work"),
        "recomendation": MessageLookupByLibrary.simpleMessage("Recomendation"),
        "result": MessageLookupByLibrary.simpleMessage("Result"),
        "scansNotFound": MessageLookupByLibrary.simpleMessage("Scan not found"),
        "seal": MessageLookupByLibrary.simpleMessage("Seal"),
        "search": MessageLookupByLibrary.simpleMessage("Search"),
        "shooting": MessageLookupByLibrary.simpleMessage("Shooting"),
        "standardType": MessageLookupByLibrary.simpleMessage("Standard"),
        "startDate": MessageLookupByLibrary.simpleMessage("Start date"),
        "structure": MessageLookupByLibrary.simpleMessage("Structure"),
        "students": MessageLookupByLibrary.simpleMessage("Students"),
        "thickness": MessageLookupByLibrary.simpleMessage("Thickness:"),
        "time": MessageLookupByLibrary.simpleMessage("Time"),
        "title": MessageLookupByLibrary.simpleMessage("Title"),
        "tntEq": MessageLookupByLibrary.simpleMessage("TNT EQ:"),
        "tools": MessageLookupByLibrary.simpleMessage("Tools"),
        "topics": MessageLookupByLibrary.simpleMessage("Topics"),
        "twoStage": MessageLookupByLibrary.simpleMessage("Two Stage Breach"),
        "updateDate": MessageLookupByLibrary.simpleMessage("Update date"),
        "username": MessageLookupByLibrary.simpleMessage("Username!"),
        "wall": MessageLookupByLibrary.simpleMessage("WALL"),
        "window": MessageLookupByLibrary.simpleMessage("WINDOW"),
        "workType": MessageLookupByLibrary.simpleMessage("Work type"),
        "yes": MessageLookupByLibrary.simpleMessage("Yes")
      };
}
