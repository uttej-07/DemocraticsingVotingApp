import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailaddress widget.
  TextEditingController? emailaddressController;
  String? Function(BuildContext, String?)? emailaddressControllerValidator;
  // State field(s) for password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for name-Create widget.
  TextEditingController? nameCreateController;
  String? Function(BuildContext, String?)? nameCreateControllerValidator;
  // State field(s) for emailAddress-Create widget.
  TextEditingController? emailAddressCreateController;
  String? Function(BuildContext, String?)?
      emailAddressCreateControllerValidator;
  // State field(s) for phonenumber-Create widget.
  TextEditingController? phonenumberCreateController;
  String? Function(BuildContext, String?)? phonenumberCreateControllerValidator;
  // State field(s) for aadhar-Create widget.
  TextEditingController? aadharCreateController;
  String? Function(BuildContext, String?)? aadharCreateControllerValidator;
  // State field(s) for constituency widget.
  TextEditingController? constituencyController;
  String? Function(BuildContext, String?)? constituencyControllerValidator;
  // State field(s) for password-Create widget.
  TextEditingController? passwordCreateController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)? passwordCreateControllerValidator;
  // State field(s) for confirmpassword-Create widget.
  TextEditingController? confirmpasswordCreateController;
  late bool confirmpasswordCreateVisibility;
  String? Function(BuildContext, String?)?
      confirmpasswordCreateControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordCreateVisibility = false;
    confirmpasswordCreateVisibility = false;
  }

  void dispose() {
    emailaddressController?.dispose();
    passwordController?.dispose();
    nameCreateController?.dispose();
    emailAddressCreateController?.dispose();
    phonenumberCreateController?.dispose();
    aadharCreateController?.dispose();
    constituencyController?.dispose();
    passwordCreateController?.dispose();
    confirmpasswordCreateController?.dispose();
  }

  /// Additional helper methods are added here.

}
