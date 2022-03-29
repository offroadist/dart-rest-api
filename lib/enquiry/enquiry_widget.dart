import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class EnquiryWidget extends StatefulWidget {
  const EnquiryWidget({
    Key key,
    this.enquiry,
    this.id,
    this.customername,
    this.producttitle,
  }) : super(key: key);

  final String enquiry;
  final int id;
  final String customername;
  final String producttitle;

  @override
  _EnquiryWidgetState createState() => _EnquiryWidgetState();
}

class _EnquiryWidgetState extends State<EnquiryWidget> {
  ApiCallResponse customerName;
  ApiCallResponse productTitle;
  ApiCallResponse id;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: GetenquiresCall.call(),
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
        final enquiryGetenquiresResponse = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: getJsonField(
            (enquiryGetenquiresResponse?.jsonBody ?? ''),
            r'''$''',
          )
              ? AppBar(
                  backgroundColor: FlutterFlowTheme.of(context).primaryColor,
                  automaticallyImplyLeading: false,
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
                    future: GetenquiresCall.call(),
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
                      final textGetenquiresResponse = snapshot.data;
                      return Text(
                        'Ürün Soruları',
                        style: FlutterFlowTheme.of(context).title2.override(
                              fontFamily: 'Lexend Deca',
                              color: Colors.white,
                              fontSize: 22,
                            ),
                      );
                    },
                  ),
                  actions: [],
                  centerTitle: false,
                  elevation: 2,
                )
              : null,
          backgroundColor: Color(0xFFF1F5F8),
          body: FutureBuilder<ApiCallResponse>(
            future: GetenquiresCall.call(),
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
              final stackGetenquiresResponse = snapshot.data;
              return Stack(
                alignment: AlignmentDirectional(-0.09999999999999998, 0.1),
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 444),
                      child: FutureBuilder<ApiCallResponse>(
                        future: GetenquiresCall.call(),
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
                          final imageGetenquiresResponse = snapshot.data;
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
                  Align(
                    alignment: AlignmentDirectional(0.1, 0.1),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 170, 0, 0),
                      child: FutureBuilder<ApiCallResponse>(
                        future: GetenquiresCall.call(),
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
                          final containerGetenquiresResponse = snapshot.data;
                          return InkWell(
                            onTap: () async {
                              customerName = await GetenquiresCall.call();
                              productTitle = await GetenquiresCall.call();

                              setState(() {});
                            },
                            child: Container(
                              width: 400,
                              height: 450,
                              decoration: BoxDecoration(
                                color: Color(0xFFEEEEEE),
                                shape: BoxShape.rectangle,
                              ),
                              alignment: AlignmentDirectional(0, 0),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 192, 0, 0),
                    child: FutureBuilder<ApiCallResponse>(
                      future: GetenquiresCall.call(),
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
                        final gridViewGetenquiresResponse = snapshot.data;
                        return Builder(
                          builder: (context) {
                            final enquiry = (getJsonField(
                                      (enquiryGetenquiresResponse?.jsonBody ??
                                          ''),
                                      r'''$''',
                                    )?.toList() ??
                                    [])
                                .take(12)
                                .toList();
                            return InkWell(
                              onTap: () async {
                                id = await GetenquiresCall.call();

                                setState(() {});
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
                                itemCount: enquiry.length,
                                itemBuilder: (context, enquiryIndex) {
                                  final enquiryItem = enquiry[enquiryIndex];
                                  return Align(
                                    alignment: AlignmentDirectional(1, 1),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: GetenquiresCall.call(),
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
                                        final cardGetenquiresResponse =
                                            snapshot.data;
                                        return Card(
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: Color(0xFFF5F5F5),
                                          child: FutureBuilder<ApiCallResponse>(
                                            future: GetenquiresCall.call(),
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
                                              final columnGetenquiresResponse =
                                                  snapshot.data;
                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  FutureBuilder<
                                                      ApiCallResponse>(
                                                    future:
                                                        GetenquiresCall.call(),
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
                                                      final rowGetenquiresResponse =
                                                          snapshot.data;
                                                      return Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          FutureBuilder<
                                                              ApiCallResponse>(
                                                            future:
                                                                GetenquiresCall
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
                                                              final textGetenquiresResponse =
                                                                  snapshot.data;
                                                              return Text(
                                                                getJsonField(
                                                                  enquiryItem,
                                                                  r'''$..customer_name''',
                                                                ).toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
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
                                                                0, 5, 0, 0),
                                                    child: FutureBuilder<
                                                        ApiCallResponse>(
                                                      future: GetenquiresCall
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
                                                        final rowGetenquiresResponse =
                                                            snapshot.data;
                                                        return Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            FutureBuilder<
                                                                ApiCallResponse>(
                                                              future:
                                                                  GetenquiresCall
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
                                                                final textGetenquiresResponse =
                                                                    snapshot
                                                                        .data;
                                                                return Text(
                                                                  getJsonField(
                                                                    enquiryItem,
                                                                    r'''$..product_tittle''',
                                                                  ).toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                );
                                                              },
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -0.15, -0.15),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 55, 0),
                                                      child: FutureBuilder<
                                                          ApiCallResponse>(
                                                        future: GetenquiresCall
                                                            .call(),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
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
                                                          final rowGetenquiresResponse =
                                                              snapshot.data;
                                                          return Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Expanded(
                                                                child: FutureBuilder<
                                                                    ApiCallResponse>(
                                                                  future:
                                                                      GetenquiresCall
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
                                                                    final textGetenquiresResponse =
                                                                        snapshot
                                                                            .data;
                                                                    return InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        await GetenquiresCall
                                                                            .call();
                                                                      },
                                                                      child:
                                                                          Text(
                                                                        getJsonField(
                                                                          enquiryItem,
                                                                          r'''$..enquiry''',
                                                                        ).toString().maybeHandleOverflow(
                                                                            maxChars:
                                                                                300),
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Lexend Deca',
                                                                              lineHeight: 2,
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
                                                    ),
                                                  ),
                                                ],
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
                ],
              );
            },
          ),
        );
      },
    );
  }
}
