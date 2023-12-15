import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddcandidateModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for candidatename widget.
  TextEditingController? candidatenameController;
  String? Function(BuildContext, String?)? candidatenameControllerValidator;
  String? _candidatenameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for partyname widget.
  TextEditingController? partynameController;
  String? Function(BuildContext, String?)? partynameControllerValidator;
  String? _partynameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for election widget.
  String? electionValue;
  FormFieldController<String>? electionController;
  // State field(s) for constituency widget.
  String? constituencyValue;
  FormFieldController<String>? constituencyController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    candidatenameControllerValidator = _candidatenameControllerValidator;
    partynameControllerValidator = _partynameControllerValidator;
  }

  void dispose() {
    candidatenameController?.dispose();
    partynameController?.dispose();
  }

  /// Additional helper methods are added here.

}
