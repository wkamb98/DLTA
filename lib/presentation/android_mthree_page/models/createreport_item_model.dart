import '../../../core/app_export.dart';

/// This class is used in the [createreport_item_widget] screen.
class CreatereportItemModel {
  CreatereportItemModel({
    this.Txt,
    this.id,
  }) {
    Txt = Txt ?? Rx("إنشاء تقرير");
    id = id ?? Rx("");
  }

  Rx<String>? Txt;

  Rx<String>? id;
}
