import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'addconstituency_model.dart';
export 'addconstituency_model.dart';

class AddconstituencyWidget extends StatefulWidget {
  const AddconstituencyWidget({Key? key}) : super(key: key);

  @override
  _AddconstituencyWidgetState createState() => _AddconstituencyWidgetState();
}

class _AddconstituencyWidgetState extends State<AddconstituencyWidget> {
  late AddconstituencyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddconstituencyModel());

    _model.constituencynameController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).tertiary400,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).tertiary400,
        automaticallyImplyLeading: false,
        title: Text(
          'Constituency',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Urbanist',
                color: Colors.black,
              ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: Icon(
                Icons.person,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () async {
                context.pushNamed('profile');
              },
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Container(
          width: MediaQuery.of(context).size.width * 1.0,
          child: Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                      child: TextFormField(
                        controller: _model.constituencynameController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Constituency  Name',
                          labelStyle:
                              FlutterFlowTheme.of(context).title3.override(
                                    fontFamily: 'Urbanist',
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 32.0, 20.0, 12.0),
                        ),
                        style: FlutterFlowTheme.of(context).title3,
                        textAlign: TextAlign.start,
                        validator: _model.constituencynameControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 16.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      if (_model.formKey.currentState == null ||
                          !_model.formKey.currentState!.validate()) {
                        return;
                      }

                      final constituencyCreateData = {
                        ...createConstituencyRecordData(
                          name: _model.constituencynameController.text,
                        ),
                        'created_time': FieldValue.serverTimestamp(),
                      };
                      await ConstituencyRecord.collection
                          .doc()
                          .set(constituencyCreateData);
                      setState(() {
                        _model.constituencynameController?.clear();
                      });

                      context.pushNamed('constituencies');
                    },
                    text: 'Submit',
                    options: FFButtonOptions(
                      width: 270.0,
                      height: 50.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primaryColor,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle1.override(
                                fontFamily: 'Urbanist',
                                color: Colors.white,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
