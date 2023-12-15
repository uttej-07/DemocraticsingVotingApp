import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddelectionModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Electionname widget.
  TextEditingController? electionnameController;
  String? Function(BuildContext, String?)? electionnameControllerValidator;
  String? _electionnameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for candidatestotal widget.
  TextEditingController? candidatestotalController;
  String? Function(BuildContext, String?)? candidatestotalControllerValidator;
  String? _candidatestotalControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  DateTime? datePicked1;
  DateTime? datePicked2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    electionnameControllerValidator = _electionnameControllerValidator;
    candidatestotalControllerValidator = _candidatestotalControllerValidator;
  }

  void dispose() {
    electionnameController?.dispose();
    candidatestotalController?.dispose();
  }

  /// Additional helper methods are added here.

}
