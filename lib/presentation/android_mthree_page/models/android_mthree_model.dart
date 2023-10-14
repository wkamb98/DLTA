import '../../../core/app_export.dart';
import 'createreport_item_model.dart';

/// This class defines the variables used in the [android_mthree_page],
/// and is typically used to hold data that is passed between different parts of the application.
class AndroidMthreeModel {
  Rx<List<CreatereportItemModel>> createreportItemList =
      Rx(List.generate(4, (index) => CreatereportItemModel()));
}
