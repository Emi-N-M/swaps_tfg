import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class UpdateItemPageModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  String? localPath;

  List<int> localFile = [];
  void addToLocalFile(int item) => localFile.add(item);
  void removeFromLocalFile(int item) => localFile.remove(item);
  void removeAtIndexFromLocalFile(int index) => localFile.removeAt(index);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Custom Action - takePhoto] action in itemImage widget.
  dynamic? pickerOutput;
  // State field(s) for itemName widget.
  TextEditingController? itemNameController;
  String? Function(BuildContext, String?)? itemNameControllerValidator;
  String? _itemNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for itemDescription widget.
  TextEditingController? itemDescriptionController;
  String? Function(BuildContext, String?)? itemDescriptionControllerValidator;
  String? _itemDescriptionControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (uploadMedia)] action in Button widget.
  ApiCallResponse? apiResultins;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    itemNameControllerValidator = _itemNameControllerValidator;
    itemDescriptionControllerValidator = _itemDescriptionControllerValidator;
  }

  void dispose() {
    itemNameController?.dispose();
    itemDescriptionController?.dispose();
  }

  /// Additional helper methods are added here.

}
