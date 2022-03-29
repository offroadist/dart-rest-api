import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ConversationListWidget extends StatefulWidget {
  const ConversationListWidget({
    Key key,
    this.firstname,
    this.displayName,
  }) : super(key: key);

  final int firstname;
  final String displayName;

  @override
  _ConversationListWidgetState createState() => _ConversationListWidgetState();
}

class _ConversationListWidgetState extends State<ConversationListWidget> {
  ApiCallResponse conversations;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  ApiCallResponse id;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: ConversationsCall.call(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: SpinKitFadingCube(
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 50,
              ),
            ),
          );
        }
        final conversationListConversationsResponse = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: getJsonField(
            (conversationListConversationsResponse?.jsonBody ?? ''),
            r'''$''',
          )
              ? AppBar(
                  backgroundColor: FlutterFlowTheme.of(context).primaryColor,
                  automaticallyImplyLeading: true,
                  leading: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30,
                    borderWidth: 1,
                    buttonSize: 60,
                    icon: Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () async {
                      Navigator.pop(context);
                      conversations = await ConversationsCall.call();

                      setState(() {});
                    },
                  ),
                  title: FutureBuilder<ApiCallResponse>(
                    future: MessagesIDSCall.call(
                      id: getJsonField(
                        (conversationListConversationsResponse?.jsonBody ?? ''),
                        r'''$..displayName''',
                      ).toString(),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: SpinKitFadingCube(
                              color: FlutterFlowTheme.of(context).primaryColor,
                              size: 50,
                            ),
                          ),
                        );
                      }
                      final textMessagesIDSResponse = snapshot.data;
                      return Text(
                        getJsonField(
                          (conversationListConversationsResponse?.jsonBody ??
                              ''),
                          r'''$..displayName''',
                        ).toString(),
                        style: FlutterFlowTheme.of(context).title2.override(
                              fontFamily: 'Lexend Deca',
                              color: Colors.white,
                              fontSize: 22,
                            ),
                      );
                    },
                  ),
                  actions: [],
                  centerTitle: true,
                  elevation: 2,
                )
              : null,
          backgroundColor: Color(0xFFF1F5F8),
          body: FutureBuilder<ApiCallResponse>(
            future: MessagesIDSCall.call(
              id: getJsonField(
                (conversationListConversationsResponse?.jsonBody ?? ''),
                r'''$..id''',
              ).toString(),
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: SpinKitFadingCube(
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 50,
                    ),
                  ),
                );
              }
              final stackMessagesIDSResponse = snapshot.data;
              return Stack(
                alignment: AlignmentDirectional(-0.09999999999999998, 0.1),
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 455),
                      child: FutureBuilder<ApiCallResponse>(
                        future: MessagesIDSCall.call(),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: SpinKitFadingCube(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 50,
                                ),
                              ),
                            );
                          }
                          final imageMessagesIDSResponse = snapshot.data;
                          return Image.asset(
                            'assets/images/offroad-ist-white-transparent.png',
                            width: 300,
                            height: 200,
                            fit: BoxFit.fitWidth,
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 142, 0, 0),
                    child: FutureBuilder<ApiCallResponse>(
                      future: MessagesIDSCall.call(
                        id: getJsonField(
                          (stackMessagesIDSResponse?.jsonBody ?? ''),
                          r'''$''',
                        ).toString(),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: SpinKitFadingCube(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                size: 50,
                              ),
                            ),
                          );
                        }
                        final containerMessagesIDSResponse = snapshot.data;
                        return Container(
                          width: 450,
                          height: 450,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                          ),
                          child: FutureBuilder<ApiCallResponse>(
                            future: MessagesIDSCall.call(
                              id: getJsonField(
                                (containerMessagesIDSResponse?.jsonBody ?? ''),
                                r'''$..id''',
                              ).toString(),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: SpinKitFadingCube(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 50,
                                    ),
                                  ),
                                );
                              }
                              final gridViewMessagesIDSResponse = snapshot.data;
                              return InkWell(
                                onTap: () async {
                                  id = await MessagesIDSCall.call(
                                    id: getJsonField(
                                      (gridViewMessagesIDSResponse?.jsonBody ??
                                          ''),
                                      r'''$..id''',
                                    ).toString(),
                                  );

                                  setState(() {});
                                },
                                onDoubleTap: () async {
                                  await ProductsCall.call();
                                },
                                child: GridView(
                                  padding: EdgeInsets.zero,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 1,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10,
                                    childAspectRatio: 1,
                                  ),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    FutureBuilder<ApiCallResponse>(
                                      future: MessagesIDSCall.call(),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50,
                                              height: 50,
                                              child: SpinKitFadingCube(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                size: 50,
                                              ),
                                            ),
                                          );
                                        }
                                        final cardMessagesIDSResponse =
                                            snapshot.data;
                                        return Card(
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: Color(0xFFF5F5F5),
                                          child: FutureBuilder<ApiCallResponse>(
                                            future: MessagesIDSCall.call(),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child: SpinKitFadingCube(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      size: 50,
                                                    ),
                                                  ),
                                                );
                                              }
                                              final columnMessagesIDSResponse =
                                                  snapshot.data;
                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -0.05, 1),
                                                    child: FutureBuilder<
                                                        ApiCallResponse>(
                                                      future: ConversationsCall
                                                          .call(),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50,
                                                              height: 50,
                                                              child:
                                                                  SpinKitFadingCube(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                                size: 50,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        final cardConversationsResponse =
                                                            snapshot.data;
                                                        return Card(
                                                          clipBehavior: Clip
                                                              .antiAliasWithSaveLayer,
                                                          color:
                                                              Color(0xFFF5F5F5),
                                                          child: FutureBuilder<
                                                              ApiCallResponse>(
                                                            future:
                                                                ConversationsCall
                                                                    .call(),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        SpinKitFadingCube(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      size: 50,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              final columnConversationsResponse =
                                                                  snapshot.data;
                                                              return SingleChildScrollView(
                                                                primary: false,
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: [
                                                                    FutureBuilder<
                                                                        ApiCallResponse>(
                                                                      future: MessagesIDSCall
                                                                          .call(),
                                                                      builder:
                                                                          (context,
                                                                              snapshot) {
                                                                        // Customize what your widget looks like when it's loading.
                                                                        if (!snapshot
                                                                            .hasData) {
                                                                          return Center(
                                                                            child:
                                                                                SizedBox(
                                                                              width: 50,
                                                                              height: 50,
                                                                              child: SpinKitFadingCube(
                                                                                color: FlutterFlowTheme.of(context).primaryColor,
                                                                                size: 50,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        }
                                                                        final rowMessagesIDSResponse =
                                                                            snapshot.data;
                                                                        return Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Expanded(
                                                                              child: FutureBuilder<ApiCallResponse>(
                                                                                future: MessagesIDSCall.call(
                                                                                  id: getJsonField(
                                                                                    (containerMessagesIDSResponse?.jsonBody ?? ''),
                                                                                    r'''$..text''',
                                                                                  ).toString(),
                                                                                ),
                                                                                builder: (context, snapshot) {
                                                                                  // Customize what your widget looks like when it's loading.
                                                                                  if (!snapshot.hasData) {
                                                                                    return Center(
                                                                                      child: SizedBox(
                                                                                        width: 50,
                                                                                        height: 50,
                                                                                        child: SpinKitFadingCube(
                                                                                          color: FlutterFlowTheme.of(context).primaryColor,
                                                                                          size: 50,
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  }
                                                                                  final textMessagesIDSResponse = snapshot.data;
                                                                                  return Text(
                                                                                    getJsonField(
                                                                                      (containerMessagesIDSResponse?.jsonBody ?? ''),
                                                                                      r'''$..text''',
                                                                                    ).toString(),
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Lexend Deca',
                                                                                          fontSize: 16,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          lineHeight: 14,
                                                                                        ),
                                                                                  );
                                                                                },
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        );
                                                                      },
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              0,
                                                                              255,
                                                                              0),
                                                                      child: FutureBuilder<
                                                                          ApiCallResponse>(
                                                                        future:
                                                                            ConversationsCall.call(),
                                                                        builder:
                                                                            (context,
                                                                                snapshot) {
                                                                          // Customize what your widget looks like when it's loading.
                                                                          if (!snapshot
                                                                              .hasData) {
                                                                            return Center(
                                                                              child: SizedBox(
                                                                                width: 50,
                                                                                height: 50,
                                                                                child: SpinKitFadingCube(
                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                  size: 50,
                                                                                ),
                                                                              ),
                                                                            );
                                                                          }
                                                                          final rowConversationsResponse =
                                                                              snapshot.data;
                                                                          return Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceEvenly,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 255, 0),
                                                                                child: FutureBuilder<ApiCallResponse>(
                                                                                  future: ConversationsCall.call(),
                                                                                  builder: (context, snapshot) {
                                                                                    // Customize what your widget looks like when it's loading.
                                                                                    if (!snapshot.hasData) {
                                                                                      return Center(
                                                                                        child: SizedBox(
                                                                                          width: 50,
                                                                                          height: 50,
                                                                                          child: SpinKitFadingCube(
                                                                                            color: FlutterFlowTheme.of(context).primaryColor,
                                                                                            size: 50,
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                    }
                                                                                    final textConversationsResponse = snapshot.data;
                                                                                    return AutoSizeText(
                                                                                      getJsonField(
                                                                                        (textConversationsResponse?.jsonBody ?? ''),
                                                                                        r'''$..msisdn''',
                                                                                      ).toString(),
                                                                                      textAlign: TextAlign.start,
                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Lexend Deca',
                                                                                            fontSize: 16,
                                                                                            fontWeight: FontWeight.w500,
                                                                                            lineHeight: 3,
                                                                                          ),
                                                                                    );
                                                                                  },
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          );
                                                                        },
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            0,
                                                                            224,
                                                                            0),
                                                                        child: FutureBuilder<
                                                                            ApiCallResponse>(
                                                                          future:
                                                                              ConversationsCall.call(),
                                                                          builder:
                                                                              (context, snapshot) {
                                                                            // Customize what your widget looks like when it's loading.
                                                                            if (!snapshot.hasData) {
                                                                              return Center(
                                                                                child: SizedBox(
                                                                                  width: 50,
                                                                                  height: 50,
                                                                                  child: SpinKitFadingCube(
                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                    size: 50,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            }
                                                                            final rowConversationsResponse =
                                                                                snapshot.data;
                                                                            return SingleChildScrollView(
                                                                              scrollDirection: Axis.horizontal,
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  if (getJsonField(
                                                                                        (rowConversationsResponse?.jsonBody ?? ''),
                                                                                        r'''$..text''',
                                                                                      ) ??
                                                                                      true)
                                                                                    Align(
                                                                                      alignment: AlignmentDirectional(0, 0),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 255, 0),
                                                                                        child: FutureBuilder<ApiCallResponse>(
                                                                                          future: ConversationsCall.call(),
                                                                                          builder: (context, snapshot) {
                                                                                            // Customize what your widget looks like when it's loading.
                                                                                            if (!snapshot.hasData) {
                                                                                              return Center(
                                                                                                child: SizedBox(
                                                                                                  width: 50,
                                                                                                  height: 50,
                                                                                                  child: SpinKitFadingCube(
                                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                    size: 50,
                                                                                                  ),
                                                                                                ),
                                                                                              );
                                                                                            }
                                                                                            final textConversationsResponse = snapshot.data;
                                                                                            return AutoSizeText(
                                                                                              getJsonField(
                                                                                                (rowConversationsResponse?.jsonBody ?? ''),
                                                                                                r'''$..displayName''',
                                                                                              ).toString(),
                                                                                              textAlign: TextAlign.center,
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: 'Lexend Deca',
                                                                                                    fontSize: 16,
                                                                                                    fontWeight: FontWeight.normal,
                                                                                                    lineHeight: 4,
                                                                                                  ),
                                                                                            );
                                                                                          },
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                ],
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
