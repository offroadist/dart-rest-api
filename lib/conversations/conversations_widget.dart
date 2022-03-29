import '../backend/api_requests/api_calls.dart';
import '../conversation_list/conversation_list_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ConversationsWidget extends StatefulWidget {
  const ConversationsWidget({
    Key key,
    this.id,
    this.displayName,
  }) : super(key: key);

  final int id;
  final String displayName;

  @override
  _ConversationsWidgetState createState() => _ConversationsWidgetState();
}

class _ConversationsWidgetState extends State<ConversationsWidget> {
  ApiCallResponse conversationlist;
  ApiCallResponse id;
  ApiCallResponse itemid;
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
        final conversationsConversationsResponse = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
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
              },
            ),
            title: FutureBuilder<ApiCallResponse>(
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
                return Text(
                  FFLocalizations.of(context).getText(
                    '7dj5lq7m' /* WhatsApp */,
                  ),
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
          ),
          backgroundColor: Color(0xFFF1F5F8),
          body: FutureBuilder<ApiCallResponse>(
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
              final stackConversationsResponse = snapshot.data;
              return Stack(
                alignment: AlignmentDirectional(-0.09999999999999998, 0.1),
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 455),
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
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 50,
                                ),
                              ),
                            );
                          }
                          final imageConversationsResponse = snapshot.data;
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
                    padding: EdgeInsetsDirectional.fromSTEB(0, 166, 0, 0),
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
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                size: 50,
                              ),
                            ),
                          );
                        }
                        final containerConversationsResponse = snapshot.data;
                        return InkWell(
                          onTap: () async {
                            conversationlist = await ConversationsCall.call();

                            setState(() {});
                          },
                          child: Container(
                            width: 400,
                            height: 450,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                            ),
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
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        size: 50,
                                      ),
                                    ),
                                  );
                                }
                                final gridViewConversationsResponse =
                                    snapshot.data;
                                return Builder(
                                  builder: (context) {
                                    final conversations = (getJsonField(
                                              (containerConversationsResponse
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$''',
                                            )?.toList() ??
                                            [])
                                        .take(11)
                                        .toList();
                                    return InkWell(
                                      onTap: () async {
                                        await ConversationsCall.call();
                                      },
                                      onDoubleTap: () async {
                                        await ProductsCall.call();
                                      },
                                      child: GridView.builder(
                                        padding: EdgeInsets.zero,
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 1,
                                          crossAxisSpacing: 1,
                                          mainAxisSpacing: 9,
                                          childAspectRatio: 3,
                                        ),
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: conversations.length,
                                        itemBuilder:
                                            (context, conversationsIndex) {
                                          final conversationsItem =
                                              conversations[conversationsIndex];
                                          return Align(
                                            alignment:
                                                AlignmentDirectional(-0.05, 1),
                                            child:
                                                FutureBuilder<ApiCallResponse>(
                                              future: ConversationsCall.call(),
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
                                                final cardConversationsResponse =
                                                    snapshot.data;
                                                return Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: Color(0xFFF5F5F5),
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
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryColor,
                                                              size: 50,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      final columnConversationsResponse =
                                                          snapshot.data;
                                                      return InkWell(
                                                        onTap: () async {
                                                          await MessagesIDSCall
                                                              .call(
                                                            id: getJsonField(
                                                              conversationsItem,
                                                              r'''$..id''',
                                                            ).toString(),
                                                          );
                                                          await Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder: (context) =>
                                                                  NavBarPage(
                                                                      initialPage:
                                                                          'ConversationList'),
                                                            ),
                                                          );
                                                        },
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            FutureBuilder<
                                                                ApiCallResponse>(
                                                              future:
                                                                  MessagesIDSCall
                                                                      .call(
                                                                id: getJsonField(
                                                                  conversationsItem,
                                                                  r'''$..text''',
                                                                ).toString(),
                                                              ),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width: 50,
                                                                      height:
                                                                          50,
                                                                      child:
                                                                          SpinKitFadingCube(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryColor,
                                                                        size:
                                                                            50,
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                final rowMessagesIDSResponse =
                                                                    snapshot
                                                                        .data;
                                                                return Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    FutureBuilder<
                                                                        ApiCallResponse>(
                                                                      future: MessagesIDSCall
                                                                          .call(
                                                                        id: getJsonField(
                                                                          (columnConversationsResponse?.jsonBody ??
                                                                              ''),
                                                                          r'''$..id''',
                                                                        ).toString(),
                                                                      ),
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
                                                                        final textMessagesIDSResponse =
                                                                            snapshot.data;
                                                                        return InkWell(
                                                                          onTap:
                                                                              () async {
                                                                            itemid =
                                                                                await MessagesIDSCall.call(
                                                                              id: getJsonField(
                                                                                conversationsItem,
                                                                                r'''$..id''',
                                                                              ).toString(),
                                                                            );

                                                                            setState(() {});
                                                                          },
                                                                          child:
                                                                              Text(
                                                                            getJsonField(
                                                                              conversationsItem,
                                                                              r'''$..text''',
                                                                            ).toString(),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyText1,
                                                                          ),
                                                                        );
                                                                      },
                                                                    ),
                                                                  ],
                                                                );
                                                              },
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          14,
                                                                          0,
                                                                          0),
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
                                                                        width:
                                                                            50,
                                                                        height:
                                                                            50,
                                                                        child:
                                                                            SpinKitFadingCube(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryColor,
                                                                          size:
                                                                              50,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  final rowConversationsResponse =
                                                                      snapshot
                                                                          .data;
                                                                  return Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            0,
                                                                            350,
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
                                                                            final textConversationsResponse =
                                                                                snapshot.data;
                                                                            return AutoSizeText(
                                                                              getJsonField(
                                                                                conversationsItem,
                                                                                r'''$..to''',
                                                                              ).toString().maybeHandleOverflow(maxChars: 15),
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Lexend Deca',
                                                                                    lineHeight: 2,
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
                                                            FutureBuilder<
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
                                                                      height:
                                                                          50,
                                                                      child:
                                                                          SpinKitFadingCube(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryColor,
                                                                        size:
                                                                            50,
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                final rowConversationsResponse =
                                                                    snapshot
                                                                        .data;
                                                                return Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            11,
                                                                            0,
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
                                                                            final textConversationsResponse =
                                                                                snapshot.data;
                                                                            return InkWell(
                                                                              onTap: () async {
                                                                                await Navigator.push(
                                                                                  context,
                                                                                  MaterialPageRoute(
                                                                                    builder: (context) => ConversationListWidget(
                                                                                      displayName: getJsonField(
                                                                                        conversationsItem,
                                                                                        r'''$..displayName''',
                                                                                      ).toString(),
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                                id = await ConversationidCall.call(
                                                                                  conversationId: getJsonField(
                                                                                    conversationsItem,
                                                                                    r'''$..id''',
                                                                                  ).toString(),
                                                                                );

                                                                                setState(() {});
                                                                              },
                                                                              child: Text(
                                                                                getJsonField(
                                                                                  conversationsItem,
                                                                                  r'''$..id''',
                                                                                ).toString(),
                                                                                textAlign: TextAlign.start,
                                                                                style: FlutterFlowTheme.of(context).bodyText1,
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
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
                                          );
                                        },
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
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
