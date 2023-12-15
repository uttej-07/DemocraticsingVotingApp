import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/permissions_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_auth/local_auth.dart';
import 'package:provider/provider.dart';
import 'vote_model.dart';
export 'vote_model.dart';

class VoteWidget extends StatefulWidget {
  const VoteWidget({
    Key? key,
    this.electionname,
    this.fromdate,
  }) : super(key: key);

  final String? electionname;
  final String? fromdate;

  @override
  _VoteWidgetState createState() => _VoteWidgetState();
}

class _VoteWidgetState extends State<VoteWidget> {
  late VoteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VoteModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await requestPermission(cameraPermission);
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).tertiary400,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).customColor4,
        automaticallyImplyLeading: false,
        title: Text(
          'Vote Election',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Urbanist',
                color: Colors.white,
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
                color: FlutterFlowTheme.of(context).secondaryText,
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
      body: AuthUserStreamWidget(
        builder: (context) => FutureBuilder<int>(
          future: queryVotesRecordCount(
            queryBuilder: (votesRecord) => votesRecord
                .where('voter', isEqualTo: currentPhoneNumber)
                .where('election', isEqualTo: widget.electionname),
          ),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: CircularProgressIndicator(
                    color: FlutterFlowTheme.of(context).primaryColor,
                  ),
                ),
              );
            }
            int formvoteCount = snapshot.data!;
            return Form(
              key: _model.formKey,
              autovalidateMode: AutovalidateMode.always,
              child: StreamBuilder<List<ElectionsRecord>>(
                stream: queryElectionsRecord(
                  queryBuilder: (electionsRecord) => electionsRecord
                      .where('electionname', isEqualTo: widget.electionname)
                      .where('fromdate',
                          isLessThanOrEqualTo: dateTimeFromSecondsSinceEpoch(
                                  getCurrentTimestamp.secondsSinceEpoch)
                              .toString()),
                  singleRecord: true,
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          color: FlutterFlowTheme.of(context).primaryColor,
                        ),
                      ),
                    );
                  }
                  List<ElectionsRecord> columnElectionsRecordList =
                      snapshot.data!;
                  // Return an empty Container when the item does not exist.
                  if (snapshot.data!.isEmpty) {
                    return Container();
                  }
                  final columnElectionsRecord =
                      columnElectionsRecordList.isNotEmpty
                          ? columnElectionsRecordList.first
                          : null;
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Material(
                          color: Colors.transparent,
                          elevation: 3.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16.0),
                              bottomRight: Radius.circular(16.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(0.0),
                            ),
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 1.0,
                            height: MediaQuery.of(context).size.height * 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).tertiary400,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(16.0),
                                bottomRight: Radius.circular(16.0),
                                topLeft: Radius.circular(0.0),
                                topRight: Radius.circular(0.0),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 15.0, 20.0, 10.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 20.0),
                                    child: Text(
                                      widget.electionname!,
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Urbanist',
                                            color: Color(0xFF300303),
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 25.0),
                                    child:
                                        StreamBuilder<List<CandidatesRecord>>(
                                      stream: queryCandidatesRecord(
                                        queryBuilder: (candidatesRecord) =>
                                            candidatesRecord
                                                .where(
                                                    'election',
                                                    isEqualTo: columnElectionsRecord!
                                                                .electionname !=
                                                            ''
                                                        ? columnElectionsRecord!
                                                            .electionname
                                                        : null)
                                                .where(
                                                    'constituency',
                                                    isEqualTo: valueOrDefault(
                                                                currentUserDocument
                                                                    ?.constituency,
                                                                '') !=
                                                            ''
                                                        ? valueOrDefault(
                                                            currentUserDocument
                                                                ?.constituency,
                                                            '')
                                                        : null),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                              ),
                                            ),
                                          );
                                        }
                                        List<CandidatesRecord>
                                            votecandidateCandidatesRecordList =
                                            snapshot.data!;
                                        return FlutterFlowRadioButton(
                                          options:
                                              votecandidateCandidatesRecordList
                                                  .map((e) => e.name)
                                                  .withoutNulls
                                                  .toList()
                                                  .toList(),
                                          onChanged: (val) => setState(() {}),
                                          controller: _model
                                                  .votecandidateController ??=
                                              FormFieldController<String>(null),
                                          optionHeight: 25.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Urbanist',
                                                    color: Colors.black,
                                                    fontSize: 20.0,
                                                  ),
                                          buttonPosition:
                                              RadioButtonPosition.left,
                                          direction: Axis.vertical,
                                          radioButtonColor: Color(0xFFAA0505),
                                          inactiveRadioButtonColor:
                                              Color(0x8A000000),
                                          toggleable: false,
                                          horizontalAlignment:
                                              WrapAlignment.start,
                                          verticalAlignment:
                                              WrapCrossAlignment.start,
                                        );
                                      },
                                    ),
                                  ),
                                  if (formvoteCount < 1)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          var _shouldSetState = false;
                                          final _localAuth =
                                              LocalAuthentication();
                                          bool _isBiometricSupported =
                                              await _localAuth
                                                  .isDeviceSupported();

                                          if (_isBiometricSupported) {
                                            _model.confirmationbio =
                                                await _localAuth.authenticate(
                                                    localizedReason:
                                                        'Please Verify to Vote');
                                            setState(() {});
                                          }

                                          _shouldSetState = true;
                                          if (!_model.confirmationbio!) {
                                            if (_shouldSetState)
                                              setState(() {});
                                            return;
                                          }
                                          if (_model.formKey.currentState ==
                                                  null ||
                                              !_model.formKey.currentState!
                                                  .validate()) {
                                            return;
                                          }
                                          if (_model.votecandidateValue ==
                                              null) {
                                            return;
                                          }

                                          final votesCreateData = {
                                            ...createVotesRecordData(
                                              voter: currentPhoneNumber,
                                              candidate:
                                                  _model.votecandidateValue,
                                              election: widget.electionname,
                                            ),
                                            'created_time':
                                                FieldValue.serverTimestamp(),
                                          };
                                          await VotesRecord.collection
                                              .doc()
                                              .set(votesCreateData);
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: Text('Voting  Success'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: Text('Ok'),
                                                  ),
                                                ],
                                              );
                                            },
                                          );

                                          context.pushNamed('profile');

                                          if (_shouldSetState) setState(() {});
                                        },
                                        text: 'Submit',
                                        options: FFButtonOptions(
                                          width: 200.0,
                                          height: 50.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .subtitle2
                                                  .override(
                                                    fontFamily: 'Urbanist',
                                                    color: Colors.white,
                                                    fontSize: 18.0,
                                                  ),
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
