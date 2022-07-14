import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:bis/app/app.logger.dart';
import 'package:bis/models/application_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

import '../../app/app.locator.dart';
import '../../generated/l10n.dart';
import 'file_save_helper.dart';

class PdfService {
  final log = getLogger('PdfService');
  final _localizationService = locator<I10n>();

  late ByteData regular;
  late ByteData bold;
  late ByteData noPicture;
  late ByteData todayIcon;
  late ByteData personIcon;
  late ByteData localizationIcon;
  late ByteData typeIcon;
  late ByteData sizeIcon;
  late ByteData descriptionIcon;
  late ByteData infoIcon;
  late ByteData timerIcon;
  late ByteData gunIcon;
  late ByteData chainsawIcon;

  Future<void> initialise() async {
    regular = await rootBundle.load('assets/fonts/Oswald-Regular.ttf');
    bold = await rootBundle.load('assets/fonts/Oswald-Bold.ttf');
    noPicture = await rootBundle.load('assets/icons/no_picture.png');
    todayIcon = await rootBundle.load('assets/icons/calendar_today.png');
    personIcon = await rootBundle.load('assets/icons/person.png');
    localizationIcon = await rootBundle.load('assets/icons/localization.png');
    typeIcon = await rootBundle.load('assets/icons/type.png');
    sizeIcon = await rootBundle.load('assets/icons/size.png');
    descriptionIcon = await rootBundle.load('assets/icons/description.png');
    infoIcon = await rootBundle.load('assets/icons/info.png');
    todayIcon = await rootBundle.load('assets/icons/calendar_today.png');
    timerIcon = await rootBundle.load('assets/icons/timer.png');
    gunIcon = await rootBundle.load('assets/icons/gun.png');
    chainsawIcon = await rootBundle.load('assets/icons/chainsaw.png');
  }

  Future<String> toQrImageData(String data) async {
    final image = await QrPainter(
            data: data,
            version: QrVersions.auto,
            color: Colors.black,
            emptyColor: Colors.white)
        .toImageData(400);

    return base64Encode(image!.buffer.asUint8List());
  }

  PdfLayoutResult generateObstacleList(List<BuildMaterialCount> materials,
      PdfFont headerFont, PdfFont contentFont, PdfPage page, Rect bounds) {
    PdfGrid grid = PdfGrid();
    grid.columns.add(count: 3);
    grid.headers.add(1);
    PdfGridRow header = grid.headers[0];
    header.height = 20;
    header.cells[0].value = 'L.p.';
    header.cells[1].value = _localizationService.name;
    header.cells[2].value = _localizationService.quantity;

    PdfGridCellStyle headerStyle = PdfGridCellStyle();
    headerStyle.borders.all = PdfPen(PdfColor.empty);
    headerStyle.backgroundBrush = PdfBrushes.gray;
    headerStyle.textBrush = PdfBrushes.white;

    headerStyle.font = contentFont;

    for (int i = 0; i < header.cells.count; i++) {
      header.cells[i].stringFormat = PdfStringFormat(
          alignment: PdfTextAlignment.left,
          lineAlignment: PdfVerticalAlignment.top);
      header.cells[i].style = headerStyle;
    }

    PdfGridRow row = grid.rows.add();
    int buildMaterialsCounter = 0;
    materials.forEach((element) {
      buildMaterialsCounter++;
      row.cells[0].value = buildMaterialsCounter.toString();
      row.cells[1].value = element.buildMaterial!.name;
      row.cells[2].value = "${element.quantity.toString()} cm";
      row = grid.rows.add();
    });

    grid.style.cellPadding = PdfPaddings(left: 2, right: 2, top: 2, bottom: 2);

    PdfGridCellStyle cellStyle = PdfGridCellStyle();
    cellStyle.borders.all = PdfPens.white;
    cellStyle.borders.bottom = PdfPen(PdfColor(217, 217, 217), width: 0.70);
    cellStyle.font = contentFont;
    cellStyle.textBrush = PdfSolidBrush(PdfColor(131, 130, 136));
    for (int i = 0; i < grid.rows.count; i++) {
      PdfGridRow row = grid.rows[i];
      for (int j = 0; j < row.cells.count; j++) {
        row.cells[j].style = cellStyle;
        row.cells[j].stringFormat = PdfStringFormat(
            alignment: PdfTextAlignment.left,
            lineAlignment: PdfVerticalAlignment.middle);
      }
    }

    PdfLayoutFormat layoutFormat =
        PdfLayoutFormat(layoutType: PdfLayoutType.paginate);

    return grid.draw(page: page, bounds: bounds, format: layoutFormat)!;
  }

  Future<PdfLayoutResult> addPhotoWithDescription(
      PdfPage page,
      PhotoWithDescription photoWithDescription,
      PdfFont font,
      Rect bounds) async {
    page.graphics.drawRectangle(pen: PdfPens.black, bounds: bounds);
    var photo = await File(photoWithDescription.path).readAsBytes();
    page.graphics.drawImage(
      PdfBitmap.fromBase64String(base64Encode(photo)),
      Rect.fromLTWH(bounds.left, bounds.top, 100, 150),
    );
    PdfTextElement textElement =
        PdfTextElement(text: photoWithDescription.description!=null ? photoWithDescription.description!: _localizationService.noDescription, font: font);

    return textElement.draw(
        page: page,
        bounds: Rect.fromLTWH(bounds.left + 102, bounds.top,
            page.getClientSize().width / 2 - 102, 0))!;
  }

  PdfLayoutResult generateExplosiveMaterialList(
      List<ExplosiveMaterialCount> materials,
      PdfFont headerFont,
      PdfFont contentFont,
      PdfPage page,
      Rect bounds) {
    PdfGrid grid = PdfGrid();
    grid.columns.add(count: 3);
    grid.headers.add(1);
    PdfGridRow header = grid.headers[0];
    header.height = 20;
    header.cells[0].value = 'L.p.';
    header.cells[1].value = _localizationService.name;
    header.cells[2].value = _localizationService.quantity;

    PdfGridCellStyle headerStyle = PdfGridCellStyle();
    headerStyle.borders.all = PdfPen(PdfColor.empty);
    headerStyle.backgroundBrush = PdfBrushes.gray;
    headerStyle.textBrush = PdfBrushes.white;

    headerStyle.font = contentFont;

    for (int i = 0; i < header.cells.count; i++) {
      header.cells[i].stringFormat = PdfStringFormat(
          alignment: PdfTextAlignment.left,
          lineAlignment: PdfVerticalAlignment.top);
      header.cells[i].style = headerStyle;
    }

    PdfGridRow row = grid.rows.add();
    int buildMaterialsCounter = 0;
    materials.forEach((element) {
      buildMaterialsCounter++;
      row.cells[0].value = buildMaterialsCounter.toString();
      row.cells[1].value = element.explosiveMaterial!.name;
      row.cells[2].value =
          "${element.quantity.toString()} ${element.explosiveMaterial!.unitType!}";
      row = grid.rows.add();
    });

    grid.style.cellPadding = PdfPaddings(left: 2, right: 2, top: 2, bottom: 2);

    PdfGridCellStyle cellStyle = PdfGridCellStyle();
    cellStyle.borders.all = PdfPens.white;
    cellStyle.borders.bottom = PdfPen(PdfColor(217, 217, 217), width: 0.70);
    cellStyle.font = contentFont;
    cellStyle.textBrush = PdfSolidBrush(PdfColor(131, 130, 136));
    for (int i = 0; i < grid.rows.count; i++) {
      PdfGridRow row = grid.rows[i];
      for (int j = 0; j < row.cells.count; j++) {
        row.cells[j].style = cellStyle;
        row.cells[j].stringFormat = PdfStringFormat(
            alignment: PdfTextAlignment.left,
            lineAlignment: PdfVerticalAlignment.middle);
      }
    }

    PdfLayoutFormat layoutFormat =
        PdfLayoutFormat(layoutType: PdfLayoutType.paginate);
    return grid.draw(page: page, bounds: bounds, format: layoutFormat)!;
  }

  PdfLayoutResult addHeader(
      String text, PdfPage page, Rect bounds, PdfFont font) {
    page.graphics.drawRectangle(brush: PdfBrushes.lightGray, bounds: bounds);

    PdfTextElement textElement = PdfTextElement(text: text, font: font);

    return textElement.draw(
        page: page,
        bounds: Rect.fromLTWH(
            bounds.left + 4, bounds.top, bounds.width, bounds.width))!;
  }

  PdfLayoutResult addProcessItem(
      ProcessItem process, PdfPage page, Rect bounds, PdfFont headerFont) {
    page.graphics
        .drawRectangle(brush: PdfBrushes.lightSlateGray, bounds: bounds);

    PdfTextElement textElement =
        PdfTextElement(text: process.title, font: headerFont);

    textElement.draw(
        page: page, bounds: Rect.fromLTWH(bounds.left + 4, bounds.top, 0, 0));

    var result = addItemWIthIcon(
        timerIcon,
        page,
        Rect.fromLTWH(bounds.left + 400, bounds.top, 12, 12),
        headerFont,
        "${process.time.toStringAsFixed(0)} min");
    textElement = PdfTextElement(text: process.description, font: headerFont);

    return textElement.draw(
        page: page,
        bounds: Rect.fromLTWH(
            6, bounds.bottom + 2, page.getClientSize().width - 18, 0))!;
  }

  PdfLayoutResult addItemWIthIcon(
      ByteData icon, PdfPage page, Rect bounds, PdfFont font, String text) {
    page.graphics.drawImage(
        PdfBitmap.fromBase64String(base64Encode(icon.buffer.asUint8List())),
        bounds);
    PdfTextElement textElement = PdfTextElement(text: text, font: font);
    return textElement.draw(
        page: page, bounds: Rect.fromLTWH(bounds.left + 17, bounds.top, 0, 0))!;
  }

  PdfLayoutResult addItemWIthText(String header, PdfPage page, Rect bounds,
      PdfFont textFont, PdfFont boldFont, String text) {
    String headerName = "$header :";
    Size headerNameSize = boldFont.measureString(headerName);
    PdfTextElement element = PdfTextElement(text: headerName, font: boldFont);
    element.brush = PdfBrushes.black;
    var result = element.draw(page: page, bounds: bounds);

    String content = text;
    element = PdfTextElement(text: content, font: textFont);
    element.brush = PdfBrushes.black;
    return element.draw(
        page: page,
        bounds: Rect.fromLTWH(
            bounds.left + headerNameSize.width + 4, result!.bounds.top, 0, 0))!;
  }

  PdfLayoutResult addGoNOGO(
      bool go, PdfPage page, Rect bounds, PdfFont boldFont) {
    page.graphics.drawRectangle(brush: PdfBrushes.lightGray, bounds: bounds);
    String headerName = "${_localizationService.result.toUpperCase()} :";
    Size headerNameSize = boldFont.measureString(headerName);
    PdfTextElement element = PdfTextElement(text: headerName, font: boldFont);
    element.brush = PdfBrushes.black;
    var result = element.draw(page: page, bounds: bounds);

    String content = go ? "GO" : "NO GO";
    element = PdfTextElement(text: content, font: boldFont);
    element.brush = go ? PdfBrushes.green : PdfBrushes.red;
    return element.draw(
        page: page,
        bounds: Rect.fromLTWH(
            bounds.left + headerNameSize.width + 4, result!.bounds.top, 0, 0))!;
  }

  PdfLayoutResult add2SB(
      bool twoStageBreach, PdfPage page, Rect bounds, PdfFont boldFont) {
    page.graphics.drawRectangle(brush: PdfBrushes.lightGray, bounds: bounds);
    String headerName = "${_localizationService.twoStage.toUpperCase()} :";
    Size headerNameSize = boldFont.measureString(headerName);
    PdfTextElement element = PdfTextElement(text: headerName, font: boldFont);
    element.brush = PdfBrushes.black;
    var result = element.draw(page: page, bounds: bounds);

    String content = twoStageBreach ? _localizationService.yes.toUpperCase() : _localizationService.no.toUpperCase() ;
    element = PdfTextElement(text: content, font: boldFont);
    element.brush = twoStageBreach ? PdfBrushes.red : PdfBrushes.green;
    return element.draw(
        page: page,
        bounds: Rect.fromLTWH(
            bounds.left + headerNameSize.width + 4, result!.bounds.top, 0, 0))!;
  }

  Future<void> generatePDF(Destruction destruction) async {
    //Create a PDF document.
    var largeFont = PdfTrueTypeFont(regular.buffer.asUint8List(), 45);
    var largeFontBold = PdfTrueTypeFont(bold.buffer.asUint8List(), 30);
    var subHeadingFontBold = PdfTrueTypeFont(bold.buffer.asUint8List(), 14);
    var subTabHeadFontBold = PdfTrueTypeFont(bold.buffer.asUint8List(), 12);
    var subHeadingFont = PdfTrueTypeFont(regular.buffer.asUint8List(), 14);
    var boldFont = PdfTrueTypeFont(bold.buffer.asUint8List(), 10);
    var textFont = PdfTrueTypeFont(regular.buffer.asUint8List(), 10);

    var grom = await rootBundle.load('assets/images/grom.png');
    //Nagłówek
    PdfImage qrcode = PdfBitmap.fromBase64String(
        await toQrImageData(destruction.id.toString()));

    PdfDocument document = PdfDocument();

    PdfPage currentPage;

    PdfPage page = document.pages.add();
    currentPage = page;
    Rect headerBounds = Rect.fromLTWH(0, 0, currentPage.getClientSize().width, 50);
    PdfPageTemplateElement header = PdfPageTemplateElement(headerBounds);

    header.graphics.drawImage(
        PdfBitmap.fromBase64String(base64Encode(grom.buffer.asUint8List())),
        Rect.fromLTWH(0, 0, 40, 50));

    header.graphics.drawImage(
        qrcode, Rect.fromLTWH(currentPage.getClientSize().width - 50, 0, 50, 50));

    header.graphics.drawString("#${destruction.id}", largeFontBold,
        bounds: Rect.fromLTWH(currentPage.getClientSize().width / 2 - 25, 0, 50, 50));

    document.template.top = header;

    Rect footerBounds = Rect.fromLTWH(0, 0, currentPage.getClientSize().width, 20);
    PdfPageTemplateElement footer = PdfPageTemplateElement(footerBounds);

    PdfCompositeField compositeField = PdfCompositeField(
        font: textFont,
        brush: PdfBrushes.black,
        text: "${_localizationService.page} {0} / {1}",
        fields: <PdfAutomaticField>[
          PdfPageNumberField(font: textFont, brush: PdfBrushes.black),
          PdfPageCountField(font: textFont, brush: PdfBrushes.black)
        ]);
    compositeField.bounds = footer.bounds;

    footer.graphics.drawString(
        "${_localizationService.printDate}:  ${DateFormat.yMd().format(DateTime.now())} ${DateFormat.Hm().format(DateTime.now())}",
        textFont,
        bounds: Rect.fromLTWH(0, 0, 0, 0));

    compositeField.draw(footer.graphics, Offset(470, 0));
    document.template.bottom = footer;

    //GENERAL////////////////////////////////////////////////////////////////
    PdfLayoutResult layoutResult = addHeader(
        _localizationService.general.toUpperCase(),
        currentPage,
        Rect.fromLTWH(0, 10, currentPage.getClientSize().width, 20),
        subHeadingFont);

    var size = currentPage.getClientSize().width / 4;

    layoutResult = addItemWIthIcon(
        todayIcon,
        currentPage,
        Rect.fromLTWH(4, layoutResult.bounds.bottom + 5, 15, 15),
        textFont,
        "${DateFormat.yMd().format(destruction.date)} ${DateFormat.Hm().format(destruction.date)}");
    layoutResult = addItemWIthIcon(
        personIcon,
        currentPage,
        Rect.fromLTWH(size + 10, layoutResult.bounds.top, 15, 15),
        textFont,
        destruction.performer!);
    layoutResult = addItemWIthIcon(
        localizationIcon,
        currentPage,
        Rect.fromLTWH(size * 2 + 10, layoutResult.bounds.top, 15, 15),
        textFont,
        destruction.place!);
    layoutResult = addItemWIthIcon(
        typeIcon,
        currentPage,
        Rect.fromLTWH(size * 3 + 10, layoutResult.bounds.top, 15, 15),
        textFont,
        destruction.workType!.name);

    currentPage.graphics.drawImage(
        PdfBitmap.fromBase64String(
            base64Encode(descriptionIcon.buffer.asUint8List())),
        Rect.fromLTWH(4, layoutResult.bounds.bottom + 4, 15, 15));
    PdfTextElement textElement =
        PdfTextElement(text: destruction.description!, font: textFont);
    layoutResult = textElement.draw(
        page: currentPage,
        bounds: Rect.fromLTWH(21, layoutResult.bounds.bottom + 4,
            currentPage.getClientSize().width - 21, 0))!;

    //OBSTACLE ////////////////////////////////////////////////////////////////
    var headerLayout = addHeader(
        _localizationService.obstacle.toUpperCase(),
        currentPage,
        Rect.fromLTWH(
            0, layoutResult.bounds.bottom + 4, currentPage.getClientSize().width, 20),
        subHeadingFont);

    Uint8List obstaclePhoto;
    if (destruction.obstacle!.photos != null &&
        destruction.obstacle!.photos!.isNotEmpty) {
      obstaclePhoto =
          await File(destruction.obstacle!.photos![0]).readAsBytes();
    } else {
      obstaclePhoto = noPicture.buffer.asUint8List();
    }
    currentPage.graphics.drawImage(
      PdfBitmap.fromBase64String(base64Encode(obstaclePhoto)),
      Rect.fromLTWH(0, headerLayout.bounds.bottom + 4, 100, 150),
    );

    size = (currentPage.getClientSize().width - 104) / 4;
    layoutResult = addItemWIthIcon(
        infoIcon,
        currentPage,
        Rect.fromLTWH(104, headerLayout.bounds.bottom + 5, 15, 15),
        textFont,
        destruction.obstacle!.name);
    layoutResult = addItemWIthIcon(
        todayIcon,
        currentPage,
        Rect.fromLTWH(100 + size, layoutResult.bounds.top, 15, 15),
        textFont,
        "${DateFormat.yMd().format(destruction.obstacle!.created)} ${DateFormat.Hm().format(destruction.obstacle!.created)}");
    layoutResult = addItemWIthIcon(
        typeIcon,
        currentPage,
        Rect.fromLTWH(size * 3 + 10, layoutResult.bounds.top, 15, 15),
        textFont,
        destruction.obstacle!.obstacleType.name);
    if (destruction.obstacle!.thickness != null) {
      layoutResult = addItemWIthIcon(
          sizeIcon,
          currentPage,
          Rect.fromLTWH(size * 4 + 10, layoutResult.bounds.top, 15, 15),
          textFont,
          "${destruction.obstacle!.thickness!.toStringAsFixed(2)} cm.");
    }

    currentPage.graphics.drawImage(
        PdfBitmap.fromBase64String(
            base64Encode(descriptionIcon.buffer.asUint8List())),
        Rect.fromLTWH(104, layoutResult.bounds.bottom + 4, 15, 15));
    textElement =
        PdfTextElement(text: destruction.description!, font: textFont);
    layoutResult = textElement.draw(
        page: currentPage,
        bounds: Rect.fromLTWH(121, layoutResult.bounds.bottom + 4,
            currentPage.getClientSize().width - 21, 0))!;

    if (destruction.obstacle!.obstacleType == ObstacleType.CEILING ||
        destruction.obstacle!.obstacleType == ObstacleType.WALL) {
      layoutResult = generateObstacleList(
          destruction.obstacle!.buildMaterials!,
          subHeadingFont,
          textFont,
          currentPage,
          Rect.fromLTWH(104, layoutResult.bounds.bottom + 4, 0, 0));
    }

    //EXPLOSIVE UNIT////////////////////////////////////////////////////////////
    headerLayout = addHeader(
        _localizationService.explosiveUnit.toUpperCase(),
        currentPage,
        Rect.fromLTWH(0, headerLayout.bounds.bottom + 154 + 4,
            currentPage.getClientSize().width, 20),
        subHeadingFont);

    if(destruction.explosiveUnit!=null) {
      Uint8List? explosiveUnitPhoto;
      if (destruction.explosiveUnit!.photos != null ||
          !destruction.explosiveUnit!.photos!.isNotEmpty) {
        explosiveUnitPhoto =
        await File(destruction.explosiveUnit!.photos![0]).readAsBytes();
      } else {
        explosiveUnitPhoto = noPicture.buffer.asUint8List();
      }
      currentPage.graphics.drawImage(
        PdfBitmap.fromBase64String(base64Encode(explosiveUnitPhoto)),
        Rect.fromLTWH(0, headerLayout.bounds.bottom + 4, 100, 150),
      );
      size = (currentPage
          .getClientSize()
          .width - 104) / 3;
      layoutResult = addItemWIthIcon(
          infoIcon,
          currentPage,
          Rect.fromLTWH(104, headerLayout.bounds.bottom + 5, 15, 15),
          textFont,
          destruction.explosiveUnit!.name);
      layoutResult = addItemWIthIcon(
          todayIcon,
          currentPage,
          Rect.fromLTWH(100 + size, layoutResult.bounds.top, 15, 15),
          textFont,
          "${DateFormat.yMd().format(
              destruction.explosiveUnit!.created)} ${DateFormat.Hm().format(
              destruction.obstacle!.created)}");
      layoutResult = addItemWIthIcon(
          timerIcon,
          currentPage,
          Rect.fromLTWH(size * 3 + 10, layoutResult.bounds.top, 15, 15),
          textFont,
          "${destruction.explosiveUnit!.madeTime!.toStringAsFixed(0)} min");
      layoutResult = addItemWIthText(
          _localizationService.newTnt,
          currentPage,
          Rect.fromLTWH(104, layoutResult.bounds.bottom + 4, 0, 0),
          textFont,
          boldFont,
          "${destruction.explosiveUnit!.newTnt!.toStringAsFixed(2)}");
      layoutResult = addItemWIthText(
          _localizationService.newActual,
          currentPage,
          Rect.fromLTWH(104 + size, layoutResult.bounds.top, 0, 0),
          textFont,
          boldFont,
          "${destruction.explosiveUnit!.newActual!.toStringAsFixed(2)}");

      layoutResult = addItemWIthText(
          _localizationService.initialSystems,
          currentPage,
          Rect.fromLTWH(104 + size * 2, layoutResult.bounds.top, 0, 0),
          textFont,
          boldFont,
          "${destruction.initiationSystem!.name}");

      layoutResult = addItemWIthText(
          _localizationService.expectedBehaviour,
          currentPage,
          Rect.fromLTWH(104, layoutResult.bounds.bottom + 4, 0, 0),
          textFont,
          boldFont,
          "${destruction.expectedBehaviour!.name}");

      layoutResult = addItemWIthText(
          _localizationService.mountType,
          currentPage,
          Rect.fromLTWH(104 + size, layoutResult.bounds.top, 0, 0),
          textFont,
          boldFont,
          "${destruction.mountType!.name}");

      layoutResult = addItemWIthText(
          _localizationService.seal,
          currentPage,
          Rect.fromLTWH(104 + size *2, layoutResult.bounds.top, 0, 0),
          textFont,
          boldFont,
          "${destruction.seal.toStringAsFixed(0)}");

      currentPage.graphics.drawImage(
          PdfBitmap.fromBase64String(
              base64Encode(descriptionIcon.buffer.asUint8List())),
          Rect.fromLTWH(104, layoutResult.bounds.bottom + 4, 15, 15));
      textElement = PdfTextElement(
          text: destruction.explosiveUnit!.description, font: textFont);
      layoutResult = textElement.draw(
          page: currentPage,
          bounds: Rect.fromLTWH(121, layoutResult.bounds.bottom + 4,
              currentPage
                  .getClientSize()
                  .width - 21, 0))!;

      layoutResult = generateExplosiveMaterialList(
          destruction.explosiveUnit!.explosiveMaterialCount!,
          textFont,
          textFont,
          currentPage,
          Rect.fromLTWH(104, layoutResult.bounds.bottom + 4, 0, 0));
    }
  //GUN///////////////////////////////////////////////////////////////////////
    headerLayout = addHeader(
        _localizationService.gun.toUpperCase(),
        currentPage,
        Rect.fromLTWH(0, headerLayout.bounds.bottom + 154 + 4,
            currentPage.getClientSize().width, 20),
        subHeadingFont); 
    
    if(destruction.gun!=null){
      headerLayout = addItemWIthIcon(gunIcon, currentPage, Rect.fromLTWH(0, headerLayout.bounds.bottom + 4,
          15, 15), textFont, destruction.gun!.name);
    }
    //TOOL///////////////////////////////////////////////////////////////////////
    headerLayout = addHeader(
        _localizationService.tools.toUpperCase(),
        currentPage,
        Rect.fromLTWH(
            0, headerLayout.bounds.bottom + 4, currentPage.getClientSize().width, 20),
        subHeadingFont);
    if(destruction.tool!=null){
      headerLayout = addItemWIthIcon(chainsawIcon, currentPage, Rect.fromLTWH(0, headerLayout.bounds.bottom + 4,
          15, 15), textFont, destruction.tool!.name);
    }
    //2FB///////////////////////////////////////////////////////////////////////

    PdfPage page2 = document.pages.add();
    currentPage = page2;

    headerLayout = add2SB(
        destruction.twoStage,
        currentPage,
        Rect.fromLTWH(0, 5,
            currentPage.getClientSize().width, 23),
        subHeadingFont);

    if(destruction.secondGun!=null){
      headerLayout = addItemWIthIcon(gunIcon, currentPage, Rect.fromLTWH(0, headerLayout.bounds.bottom + 4,
          15, 15), textFont, destruction.secondGun!.name);
    }
    if(destruction.secondTool!=null){
      headerLayout = addItemWIthIcon(chainsawIcon, currentPage, Rect.fromLTWH(0, headerLayout.bounds.bottom + 4,
          15, 15), textFont, destruction.secondTool!.name);
    }

    layoutResult = addHeader(_localizationService.process.toUpperCase(), currentPage,
        Rect.fromLTWH(0, headerLayout.bounds.bottom + 5, page.getClientSize().width, 20), subHeadingFont);
    for (var element in destruction.process!) {
      layoutResult = addProcessItem(
          element,
          currentPage,
          Rect.fromLTWH(5, layoutResult.bounds.bottom + 4,
              page.getClientSize().width - 10, 16),
          textFont);
    }

    layoutResult = addGoNOGO(
        destruction.isGood,
        currentPage,
        Rect.fromLTWH(
            0, layoutResult.bounds.bottom + 4, page.getClientSize().width, 25),
        subHeadingFont);

    headerLayout = addHeader(
        _localizationService.photosBeforeDestruction.toUpperCase(),
        currentPage,
        Rect.fromLTWH(
            0, layoutResult.bounds.bottom + 9, page.getClientSize().width, 20),
        subHeadingFont);

    double start = 0;
    int index = 0;
    for (var element in destruction.photosBefore!) {
      index++;
      if (index.isOdd) {
        start = 0.0;
      }
        layoutResult = await addPhotoWithDescription(
          currentPage,
          element,
          textFont,
          Rect.fromLTWH(start, headerLayout.bounds.bottom + 4 + (((index/2).ceil()-1)*154),
              page.getClientSize().width / 2 - 4, 150),
        );
        start = page.getClientSize().width / 2 + 4;

    }

    bool newPage = false;
    if(destruction.photosBefore!.length >2 || destruction.photosAfter!.length > 2){
      PdfPage page3 = document.pages.add();
      currentPage = page3;
      newPage = true;
    }

    headerLayout = addHeader(
        _localizationService.photosAfterDestruction.toUpperCase(),
        currentPage,
        Rect.fromLTWH(0, newPage?  5 : headerLayout.bounds.bottom + 158,
            page.getClientSize().width, 20),
        subHeadingFont);


    start = 0;
    index = 0;
    int row = 0;
    for (var element in destruction.photosAfter!) {
      index++;
      if (index.isOdd) {
        row ++;
        start = 0.0;
      }
      layoutResult = await addPhotoWithDescription(
        currentPage,
        element,
        textFont,
        Rect.fromLTWH(start, headerLayout.bounds.bottom + 4 + ((row-1)*154),
            page.getClientSize().width / 2 - 4, 150),
      );
      start = page.getClientSize().width / 2 + 4;

    }
    headerLayout = addHeader(
        _localizationService.recomendation.toUpperCase(),
        currentPage,
        Rect.fromLTWH(0, headerLayout.bounds.bottom + ((row)*154 +4),
            currentPage.getClientSize().width, 20),
        subHeadingFont);

    textElement =
        PdfTextElement(text: destruction.recomendation!, font: textFont);

    textElement.draw(
        page: currentPage,
        bounds: Rect.fromLTWH(6, headerLayout.bounds.bottom + 2,
            page.getClientSize().width - 6, 0))!;

//Adds page settings
    /* document.pageSettings.orientation = PdfPageOrientation.portrait;
    document.pageSettings.margins.all = 20;

//Adds a page to the document
    PdfPage page1 = document.pages.add();
    PdfGraphics graphics = page1.graphics;


    //Info
    solidBrush = PdfSolidBrush(PdfColor(126, 151, 173));
    bounds = Rect.fromLTWH(0, 100, graphics.clientSize.width, 30);
    graphics.drawRectangle(brush: solidBrush, bounds: bounds);
    element = PdfTextElement(text: '${destruction.name})', font: subHeadingFontBold);
    element.brush = PdfBrushes.white;
    result = element.draw(
        page: page1, bounds: Rect.fromLTWH(10, bounds.top + 8, 0, 0))!;

    String currentDate = '${_localizationService.date}';
    Size currentDateTextSize = boldFont.measureString(currentDate);
    element = PdfTextElement(
        text: currentDate,
        font: boldFont);
    element.brush = PdfBrushes.black;
    result = element.draw(
        page: page1, bounds: Rect.fromLTWH(4, result.bounds.bottom + 10, currentDateTextSize.width, 0))!;

    String currentDateContent = '${ DateFormat.yMMMd().format(destruction.date)}';
    Size currentDateContentTextSize = textFont.measureString(currentDateContent);
    element = PdfTextElement(
        text: currentDateContent,
        font: textFont);
    element.brush = PdfBrushes.black;
    result = element.draw(
        page: page1, bounds: Rect.fromLTWH(4 + currentDateTextSize.width+4, result.bounds.bottom - currentDateTextSize.height +1, 0, 0))!;


    String placeTitle = '${_localizationService.place} :';
    Size placeTitleTextSize = boldFont.measureString(placeTitle);
    element = PdfTextElement(
        text: placeTitle,
        font: boldFont);
    element.brush = PdfBrushes.black;
    result = element.draw(
        page: page1, bounds: Rect.fromLTWH(graphics.clientSize.width /2, result.bounds.bottom - currentDateContentTextSize.height +1, 0, 0))!;

    String placeContent = '${destruction.place}';
    Size placeContentSize = textFont.measureString(placeContent);
    element = PdfTextElement(
        text: placeContent,
        font: textFont);
    element.brush = PdfBrushes.black;
    result = element.draw(
        page: page1, bounds: Rect.fromLTWH(graphics.clientSize.width /2 + placeTitleTextSize.width+4, result.bounds.bottom - placeTitleTextSize.height +1, 0, 0))!;


//Creates text elements to add the address and draw it to the page
    String performerTitle = '${_localizationService.performer} :';
    Size performerTitleTextSize = boldFont.measureString(performerTitle);
    element = PdfTextElement(
        text: performerTitle,
        font: boldFont);
    element.brush = PdfBrushes.black;
    result = element.draw(
        page: page1, bounds: Rect.fromLTWH(4, result.bounds.bottom + 10, performerTitleTextSize.width, 0))!;

    String performerName = '${destruction.performer}';
    Size performerTextSize = textFont.measureString(performerName);
    element = PdfTextElement(
        text: performerName,
        font: textFont);
    element.brush = PdfBrushes.black;
    result = element.draw(
        page: page1, bounds: Rect.fromLTWH(4 + performerTitleTextSize.width+4, result.bounds.bottom - performerTitleTextSize.height +1, 0, 0))!;


    String exerciseType = '${_localizationService.workType} :';
    Size exerciseTypeTextSize = boldFont.measureString(exerciseType);
    element = PdfTextElement(
        text: exerciseType,
        font: boldFont);
    element.brush = PdfBrushes.black;
    result = element.draw(
        page: page1, bounds: Rect.fromLTWH(graphics.clientSize.width /2, result.bounds.bottom - performerTextSize.height +1, 0, 0))!;

    String currentExerciseType = '${destruction.workType}';
    Size currentExerciseTypeSize = textFont.measureString(performerName);
    element = PdfTextElement(
        text: currentExerciseType,
        font: textFont);
    element.brush = PdfBrushes.black;
    result = element.draw(
        page: page1, bounds: Rect.fromLTWH(graphics.clientSize.width /2 + exerciseTypeTextSize.width+4, result.bounds.bottom - exerciseTypeTextSize.height +1, 0, 0))!;

    String description = '${_localizationService.description} :';
    Size descriptionTextSize = boldFont.measureString(exerciseType);
    element = PdfTextElement(
        text: description,
        font: boldFont);
    element.brush = PdfBrushes.black;
    result = element.draw(
        page: page1, bounds: Rect.fromLTWH(4, result.bounds.bottom + 10, 0, 0))!;

    String descriptionContent = '${destruction.description}';
    Size descriptionContentSize = textFont.measureString(performerName);
    element = PdfTextElement(
        text: descriptionContent,
        font: textFont);
    element.brush = PdfBrushes.black;
    result = element.draw(
        page: page1, bounds: Rect.fromLTWH(4 + descriptionTextSize.width, result.bounds.bottom - descriptionTextSize.height +1, graphics.clientSize.width-(4 + descriptionTextSize.width+4), 0))!;

    graphics.drawLine(
        PdfPen(PdfColor(126, 151, 173), width: 0.7),
        Offset(0, result.bounds.bottom + 3),
        Offset(graphics.clientSize.width, result.bounds.bottom + 3));

    //Przeszkoda

    var obstaclePhoto = await File(destruction.obstacle!.photos![0]).readAsBytes();
    page1.graphics.drawImage(PdfBitmap.fromBase64String(base64Encode(obstaclePhoto)), Rect.fromLTWH(0, result.bounds.bottom+10, 150, 200),);


    solidBrush = PdfSolidBrush(PdfColor(126, 151, 173));
    bounds = Rect.fromLTWH(160, result.bounds.bottom+10, graphics.clientSize.width, 30);
    graphics.drawRectangle(brush: solidBrush, bounds: bounds);
    element = PdfTextElement(text: _localizationService.obstacle.toUpperCase(), font: subHeadingFontBold);
    element.brush = PdfBrushes.white;
    result = element.draw(
        page: page1, bounds: Rect.fromLTWH(170, bounds.top + 8, 0, 0))!;

    String obstacleName = '${_localizationService.name} :';
    Size obstalceNameSize = boldFont.measureString(obstacleName);
    element = PdfTextElement(
        text: obstacleName,
        font: boldFont);
    element.brush = PdfBrushes.black;
    result = element.draw(
        page: page1, bounds: Rect.fromLTWH(164, result.bounds.bottom + 10, 0, 0))!;

    String obstacleNameContent = destruction.obstacle!.name;
    Size obstacleNameContentTextSize = textFont.measureString(obstacleNameContent);
    element = PdfTextElement(
        text: obstacleNameContent,
        font: textFont);
    element.brush = PdfBrushes.black;
    result = element.draw(
        page: page1, bounds: Rect.fromLTWH(164 + obstalceNameSize.width+4, result.bounds.bottom - obstalceNameSize.height +1, 0, 0))!;

    String thicknessName = '${_localizationService.thickness}';
    Size thicknessNameSize = boldFont.measureString(thicknessName);
    element = PdfTextElement(
        text: thicknessName,
        font: boldFont);
    element.brush = PdfBrushes.black;
    result = element.draw(
        page: page1, bounds: Rect.fromLTWH(graphics.clientSize.width/2, result.bounds.bottom - obstacleNameContentTextSize.height +1, 0, 0))!;

    String thicknessContent = '${destruction.obstacle!.thickness.toString()} cm.';
    Size thicknessContentTextSize = textFont.measureString(thicknessContent);
    element = PdfTextElement(
        text: thicknessContent,
        font: textFont);
    element.brush = PdfBrushes.black;
    result = element.draw(
        page: page1, bounds: Rect.fromLTWH(graphics.clientSize.width/2 + thicknessNameSize.width+4, result.bounds.bottom - thicknessNameSize.height +1, 0, 0))!;

    String obstacleDescription = '${_localizationService.description} :';
    Size obstacleDescriptionSize = boldFont.measureString(obstacleDescription);
    element = PdfTextElement(
        text: obstacleDescription,
        font: boldFont);
    element.brush = PdfBrushes.black;
    result = element.draw(
        page: page1, bounds: Rect.fromLTWH(164, result.bounds.bottom + 10, 0, 0))!;

    String obstacleDescriptionContent = destruction.obstacle!.description;
    Size obstacleDescriptionContentTextSize = textFont.measureString(obstacleDescriptionContent);
    element = PdfTextElement(
        text: obstacleNameContent,
        font: textFont);
    element.brush = PdfBrushes.black;
    result = element.draw(
        page: page1, bounds: Rect.fromLTWH(164 + obstacleDescriptionSize.width+4, result.bounds.bottom - obstacleDescriptionSize.height +1, graphics.clientSize.width-(4 + obstacleDescriptionSize.width+4), 0))!;

    PdfGrid grid = PdfGrid();
    grid.columns.add(count: 3);
    grid.headers.add(1);

    PdfGridRow header = grid.headers[0];
    header.height = 30;
    header.cells[0].value = 'L.p.';
    header.cells[1].value = _localizationService.name;
    header.cells[2].value = _localizationService.quantity;

    PdfGridCellStyle headerStyle = PdfGridCellStyle();
    headerStyle.borders.all = PdfPen(PdfColor(126, 151, 173));
    headerStyle.backgroundBrush = PdfBrushes.gray;
    headerStyle.textBrush = PdfBrushes.white;
    headerStyle.font = subTabHeadFontBold;

    for (int i = 0; i < header.cells.count; i++) {
        header.cells[i].stringFormat = PdfStringFormat(
            alignment: PdfTextAlignment.left,
            lineAlignment: PdfVerticalAlignment.middle);
      header.cells[i].style = headerStyle;
    }

    PdfGridRow row = grid.rows.add();
    int buildMaterialsCounter = 0;
    destruction.obstacle!.buildMaterials!.forEach((element) {
      buildMaterialsCounter ++;
      row.cells[0].value = buildMaterialsCounter.toString();
      row.cells[1].value = element.buildMaterial!.name;
      row.cells[2].value = element.quantity.toString();
      row = grid.rows.add();
    });

    grid.style.cellPadding = PdfPaddings(left: 5, right: 5, top: 5, bottom: 5);

    PdfGridCellStyle cellStyle = PdfGridCellStyle();
    cellStyle.borders.all = PdfPens.white;
    cellStyle.borders.bottom = PdfPen(PdfColor(217, 217, 217), width: 0.70);
    cellStyle.font = textFont;
    cellStyle.textBrush = PdfSolidBrush(PdfColor(131, 130, 136));
    for (int i = 0; i < grid.rows.count; i++) {
      PdfGridRow row = grid.rows[i];
      for (int j = 0; j < row.cells.count; j++) {
        row.cells[j].style = cellStyle;
          row.cells[j].stringFormat = PdfStringFormat(
              alignment: PdfTextAlignment.left,
              lineAlignment: PdfVerticalAlignment.middle);

      }
    }

    PdfLayoutFormat layoutFormat =
    PdfLayoutFormat(layoutType: PdfLayoutType.paginate);

    PdfLayoutResult gridResult = grid.draw(
        page: page1,
        bounds: Rect.fromLTWH(160, result.bounds.bottom + 20,
            graphics.clientSize.width, graphics.clientSize.height - 100),
        format: layoutFormat)!;




    //Ładunek wybuchowy

    var explosiveUnitPhoto = await File(destruction.explosiveUnit!.photos![0]).readAsBytes();
    page1.graphics.drawImage(PdfBitmap.fromBase64String(base64Encode(explosiveUnitPhoto)), Rect.fromLTWH(0, gridResult.bounds.bottom+10, 150, 200),);



    solidBrush = PdfSolidBrush(PdfColor(126, 151, 173));
    bounds = Rect.fromLTWH(160, gridResult.bounds.bottom+10, graphics.clientSize.width, 30);
    graphics.drawRectangle(brush: solidBrush, bounds: bounds);
    element = PdfTextElement(text: _localizationService.explosiveUnit.toUpperCase(), font: subHeadingFontBold);
    element.brush = PdfBrushes.white;
    result = element.draw(
        page: page1, bounds: Rect.fromLTWH(170, bounds.top + 8, 0, 0))!;

    String explosiveUnit = '${_localizationService.name} :';
    Size explosiveUnitSize = boldFont.measureString(explosiveUnit);
    element = PdfTextElement(
        text: explosiveUnit,
        font: boldFont);
    element.brush = PdfBrushes.black;
    result = element.draw(
        page: page1, bounds: Rect.fromLTWH(164, result.bounds.bottom + 10, 0, 0))!;

    String explosiveUnitNameContent = destruction.explosiveUnit!.name;
    Size explosiveUnitNameContentTextSize = textFont.measureString(explosiveUnitNameContent);
    element = PdfTextElement(
        text: explosiveUnitNameContent,
        font: textFont);
    element.brush = PdfBrushes.black;
    result = element.draw(
        page: page1, bounds: Rect.fromLTWH(164 + explosiveUnitSize.width+4, result.bounds.bottom - explosiveUnitSize.height +1, 0, 0))!;

    String assembleTime = '${_localizationService.madeTime}';
    Size assembleTimeSize = boldFont.measureString(assembleTime);
    element = PdfTextElement(
        text: assembleTime,
        font: boldFont);
    element.brush = PdfBrushes.black;
    result = element.draw(
        page: page1, bounds: Rect.fromLTWH(graphics.clientSize.width/2, result.bounds.bottom - explosiveUnitNameContentTextSize.height +1, 0, 0))!;

    String assembleTimeContent = '${destruction.explosiveUnit!.madeTime.toString()} min.';
    Size assembleTimeContentTextSize = textFont.measureString(assembleTimeContent);
    element = PdfTextElement(
        text: assembleTimeContent,
        font: textFont);
    element.brush = PdfBrushes.black;
    result = element.draw(
        page: page1, bounds: Rect.fromLTWH(graphics.clientSize.width/2 + assembleTimeSize.width+4, result.bounds.bottom - assembleTimeSize.height +1, 0, 0))!;

    String newTntTitle = '${_localizationService.newTnt} :';
    Size newTntTitleSize = boldFont.measureString(newTntTitle);
    element = PdfTextElement(
        text: newTntTitle,
        font: boldFont);
    element.brush = PdfBrushes.black;
    result = element.draw(
        page: page1, bounds: Rect.fromLTWH(164, result.bounds.bottom + 10, 0, 0))!;

    String newTntContent = destruction.explosiveUnit!.newTnt!.toStringAsFixed(2);
    Size newTntContentSize = textFont.measureString(newTntContent);
    element = PdfTextElement(
        text: newTntContent,
        font: textFont);
    element.brush = PdfBrushes.black;
    result = element.draw(
        page: page1, bounds: Rect.fromLTWH(164 + newTntTitleSize.width+4, result.bounds.bottom - newTntTitleSize.height +1, 0, 0))!;

    String newActuralTitle = '${_localizationService.newActual}';
    Size newActuralTitleSize = boldFont.measureString(newActuralTitle);
    element = PdfTextElement(
        text: newActuralTitle,
        font: boldFont);
    element.brush = PdfBrushes.black;
    result = element.draw(
        page: page1, bounds: Rect.fromLTWH(graphics.clientSize.width/2, result.bounds.bottom - newTntContentSize.height +1, 0, 0))!;

    String anewActuralTitleContent = '${destruction.explosiveUnit!.newActual.toString()}';
    Size aanewActuralTitleContentTextSize = textFont.measureString(assembleTimeContent);
    element = PdfTextElement(
        text: anewActuralTitleContent,
        font: textFont);
    element.brush = PdfBrushes.black;
    result = element.draw(
        page: page1, bounds: Rect.fromLTWH(graphics.clientSize.width/2 + newActuralTitleSize.width+4, result.bounds.bottom - newActuralTitleSize.height +1, 0, 0))!;

    String explosiveUnitDescription = '${_localizationService.description} :';
    Size explosiveUnitDescriptionSize = boldFont.measureString(explosiveUnitDescription);
    element = PdfTextElement(
        text: explosiveUnitDescription,
        font: boldFont);
    element.brush = PdfBrushes.black;
    result = element.draw(
        page: page1, bounds: Rect.fromLTWH(164, result.bounds.bottom + 10, 0, 0))!;

    String explosiveUnitDescriptionContent = destruction.explosiveUnit!.description;
    Size explosiveUnitDescriptionContentTextSize = textFont.measureString(explosiveUnitDescriptionContent);
    element = PdfTextElement(
        text: explosiveUnitDescriptionContent,
        font: textFont);
    element.brush = PdfBrushes.black;
    result = element.draw(
        page: page1, bounds: Rect.fromLTWH(164 + explosiveUnitDescriptionSize.width+4, result.bounds.bottom - explosiveUnitDescriptionSize.height +1, graphics.clientSize.width-(4 + obstacleDescriptionSize.width+4), 0))!;

    PdfGrid explosiveGrid = PdfGrid();
    explosiveGrid.columns.add(count: 3);
    explosiveGrid.headers.add(1);

    PdfGridRow explosiveHeader = explosiveGrid.headers[0];
    explosiveHeader.height = 30;
    explosiveHeader.cells[0].value = 'L.p.';
    explosiveHeader.cells[1].value = _localizationService.name;
    explosiveHeader.cells[2].value = _localizationService.quantity;

    PdfGridCellStyle explosiveUnitHeaderStyle = PdfGridCellStyle();
    explosiveUnitHeaderStyle.borders.all = PdfPen(PdfColor(126, 151, 173));
    explosiveUnitHeaderStyle.backgroundBrush = PdfBrushes.gray;
    explosiveUnitHeaderStyle.textBrush = PdfBrushes.white;
    explosiveUnitHeaderStyle.font = subTabHeadFontBold;

    for (int i = 0; i < explosiveHeader.cells.count; i++) {
      explosiveHeader.cells[i].stringFormat = PdfStringFormat(
          alignment: PdfTextAlignment.left,
          lineAlignment: PdfVerticalAlignment.middle);
      explosiveHeader.cells[i].style = explosiveUnitHeaderStyle;
    }

    PdfGridRow explosiveRow = explosiveGrid.rows.add();
    buildMaterialsCounter = 0;
    destruction.explosiveUnit!.explosiveMaterialCount!.forEach((element) {
      buildMaterialsCounter ++;
      explosiveRow.cells[0].value = buildMaterialsCounter.toString();
      explosiveRow.cells[1].value = element.explosiveMaterial!.name;
      explosiveRow.cells[2].value = '${element.quantity.toString()} ${element.explosiveMaterial!.unitType}';
      explosiveRow = explosiveGrid.rows.add();
    });

    explosiveGrid.style.cellPadding = PdfPaddings(left: 5, right: 5, top: 5, bottom: 5);

    PdfGridCellStyle explosiveUnitCellStyle = PdfGridCellStyle();
    explosiveUnitCellStyle.borders.all = PdfPens.white;
    explosiveUnitCellStyle.borders.bottom = PdfPen(PdfColor(217, 217, 217), width: 0.70);
    explosiveUnitCellStyle.font = textFont;
    explosiveUnitCellStyle.textBrush = PdfSolidBrush(PdfColor(131, 130, 136));
    for (int i = 0; i < explosiveGrid.rows.count; i++) {
      PdfGridRow row = explosiveGrid.rows[i];
      for (int j = 0; j < row.cells.count; j++) {
        row.cells[j].style = explosiveUnitCellStyle;
        row.cells[j].stringFormat = PdfStringFormat(
            alignment: PdfTextAlignment.left,
            lineAlignment: PdfVerticalAlignment.middle);

      }
    }

    gridResult = explosiveGrid.draw(
        page: page1,
        bounds: Rect.fromLTWH(160, result.bounds.bottom + 20,
            graphics.clientSize.width, graphics.clientSize.height - 100),
        format: layoutFormat)!;


    //Info
    solidBrush = PdfSolidBrush(PdfColor(126, 151, 173));
    bounds = Rect.fromLTWH(0, 0, graphics.clientSize.width, 30);
    graphics.drawRectangle(brush: solidBrush, bounds: bounds);

    String resultGO = '${_localizationService.result}';
    Size resultGOTextSize = boldFont.measureString(resultGO);
    element = PdfTextElement(
        text: resultGO,
        font: subHeadingFontBold);
    element.brush = PdfBrushes.white;
    result = element.draw(
        page: page1, bounds: Rect.fromLTWH(4, 5,0, 0))!;

    String resultGOEffect = destruction.isGood ? "GO" : "NO GO";
    Size resultGOEffectTextSize = boldFont.measureString(resultGOEffect);
    element = PdfTextElement(
        text: resultGOEffect,
        font: subHeadingFontBold);
    element.brush = destruction.isGood ? PdfBrushes.green : PdfBrushes.red;
    result = element.draw(
        page: page1, bounds: Rect.fromLTWH(result.bounds.width +resultGOTextSize.width+50, result.bounds.top,0, 0))!;

    */

//Save and dispose the PDF document

    final List<int> bytes = document.save();
    document.dispose();
    //Launch file.
    await FileSaveHelper.saveAndLaunchFile(bytes, 'Invoice.pdf');
  }
}
