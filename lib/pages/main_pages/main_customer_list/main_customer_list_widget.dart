import '/components/dropdown_user_edit/dropdown_user_edit_widget.dart';
import '/components/modals/command_palette/command_palette_widget.dart';
import '/components/modals_extra/modal_share_project/modal_share_project_widget.dart';
import '/components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:sticky_headers/sticky_headers.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'main_customer_list_model.dart';
export 'main_customer_list_model.dart';

class MainCustomerListWidget extends StatefulWidget {
  const MainCustomerListWidget({super.key});

  @override
  _MainCustomerListWidgetState createState() => _MainCustomerListWidgetState();
}

class _MainCustomerListWidgetState extends State<MainCustomerListWidget>
    with TickerProviderStateMixin {
  late MainCustomerListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(0.0, 20.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(0.0, 30.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(0.0, 40.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(0.0, 50.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(0.0, 60.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(0.0, 70.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation7': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(0.0, 80.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation8': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(0.0, 20.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation9': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(0.0, 40.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation10': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(0.0, 30.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation11': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(0.0, 50.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation12': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(0.0, 60.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation13': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(0.0, 70.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation14': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(0.0, 80.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainCustomerListModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Main_customerList'});
    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: !isWeb
            ? AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                automaticallyImplyLeading: false,
                title: Text(
                  FFLocalizations.of(context).getText(
                    'fcyoodds' /* Customers */,
                  ),
                  style: FlutterFlowTheme.of(context).displaySmall,
                ),
                actions: const [],
                centerTitle: false,
                elevation: 0.0,
              )
            : null,
        body: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
            ))
              wrapWithModel(
                model: _model.webNavModel,
                updateCallback: () => setState(() {}),
                child: const WebNavWidget(
                  selectedNav: 2,
                ),
              ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'n99lg1qh' /* Customers */,
                              ),
                              style: FlutterFlowTheme.of(context).displaySmall,
                            ),
                          ),
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                            tablet: false,
                          ))
                            Builder(
                              builder: (context) => FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'MAIN_CUSTOMER_LIST_INVITE_USERS_BTN_ON_T');
                                  await showAlignedDialog(
                                    barrierColor: Colors.transparent,
                                    context: context,
                                    isGlobal: true,
                                    avoidOverflow: false,
                                    targetAnchor: const AlignmentDirectional(0.0, 0.0)
                                        .resolve(Directionality.of(context)),
                                    followerAnchor: const AlignmentDirectional(
                                            0.0, 0.0)
                                        .resolve(Directionality.of(context)),
                                    builder: (dialogContext) {
                                      return Material(
                                        color: Colors.transparent,
                                        child: GestureDetector(
                                          onTap: () => _model
                                                  .unfocusNode.canRequestFocus
                                              ? FocusScope.of(context)
                                                  .requestFocus(
                                                      _model.unfocusNode)
                                              : FocusScope.of(context)
                                                  .unfocus(),
                                          child: const ModalShareProjectWidget(),
                                        ),
                                      );
                                    },
                                  ).then((value) => setState(() {}));
                                },
                                text: FFLocalizations.of(context).getText(
                                  'b7er5pp3' /* Invite Users */,
                                ),
                                options: FFButtonOptions(
                                  height: 44.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle:
                                      FlutterFlowTheme.of(context).titleSmall,
                                  elevation: 3.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                  hoverColor:
                                      FlutterFlowTheme.of(context).accent1,
                                  hoverBorderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 1.0,
                                  ),
                                  hoverTextColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  hoverElevation: 0.0,
                                ),
                              ),
                            ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 60.0,
                            icon: Icon(
                              Icons.search_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 30.0,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'MAIN_CUSTOMER_LIST_search_rounded_ICN_ON');
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                barrierColor: const Color(0x1A000000),
                                context: context,
                                builder: (context) {
                                  return GestureDetector(
                                    onTap: () => _model
                                            .unfocusNode.canRequestFocus
                                        ? FocusScope.of(context)
                                            .requestFocus(_model.unfocusNode)
                                        : FocusScope.of(context).unfocus(),
                                    child: Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: const SizedBox(
                                        height: double.infinity,
                                        child: CommandPaletteWidget(),
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            },
                          ),
                        ].divide(const SizedBox(width: 16.0)),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 0.94,
                          decoration: const BoxDecoration(),
                          child: Column(
                            children: [
                              Align(
                                alignment: const Alignment(-1.0, 0),
                                child: FlutterFlowButtonTabBar(
                                  useToggleButtonStyle: false,
                                  isScrollable: true,
                                  labelStyle:
                                      FlutterFlowTheme.of(context).titleMedium,
                                  unselectedLabelStyle: const TextStyle(),
                                  labelColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  unselectedLabelColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).accent1,
                                  borderColor:
                                      FlutterFlowTheme.of(context).primary,
                                  borderWidth: 2.0,
                                  borderRadius: 12.0,
                                  elevation: 0.0,
                                  labelPadding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  buttonMargin: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 8.0, 0.0, 0.0),
                                  tabs: [
                                    Tab(
                                      text: FFLocalizations.of(context).getText(
                                        'lvnskphp' /* All */,
                                      ),
                                    ),
                                    Tab(
                                      text: FFLocalizations.of(context).getText(
                                        'qh2ock0d' /* New Calls */,
                                      ),
                                    ),
                                    Tab(
                                      text: FFLocalizations.of(context).getText(
                                        's7xebw09' /* Contacted */,
                                      ),
                                    ),
                                  ],
                                  controller: _model.tabBarController,
                                ),
                              ),
                              Expanded(
                                child: TabBarView(
                                  controller: _model.tabBarController,
                                  children: [
                                    Container(
                                      width: 100.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: StickyHeader(
                                              overlapHeaders: false,
                                              header: Container(
                                                width: double.infinity,
                                                height: 50.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                ),
                                                alignment: const AlignmentDirectional(
                                                    -1.00, 0.00),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 36.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                      ))
                                                        Container(
                                                          width: 90.0,
                                                          height: 100.0,
                                                          decoration:
                                                              const BoxDecoration(),
                                                        ),
                                                      Expanded(
                                                        child: Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  -1.00, 0.00),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'haes0r2l' /* Name */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelMedium,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                        tablet: false,
                                                      ))
                                                        Expanded(
                                                          child: Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  '5rmzx51f' /* Title */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                        tablet: false,
                                                      ))
                                                        Expanded(
                                                          child: Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'z0huz1sz' /* Company */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                        tablet: false,
                                                      ))
                                                        Expanded(
                                                          child: Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  '04vrv62j' /* Company */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      Expanded(
                                                        child: Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  1.00, 0.00),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '4zc3d2m8' /* Status */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelMedium,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 24.0,
                                                          height: 100.0,
                                                          decoration:
                                                              const BoxDecoration(),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              content: ListView(
                                                padding: const EdgeInsets.fromLTRB(
                                                  0,
                                                  0,
                                                  0,
                                                  70.0,
                                                ),
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 8.0,
                                                                16.0, 0.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'MAIN_CUSTOMER_LIST_Container_sog06zkz_ON');
                                                        await action_blocks
                                                            .openUserDetails(
                                                                context);
                                                      },
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              blurRadius: 3.0,
                                                              color: Color(
                                                                  0x20000000),
                                                              offset: Offset(
                                                                  0.0, 1.0),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      8.0,
                                                                      12.0,
                                                                      8.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child: Image
                                                                    .network(
                                                                  'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
                                                                  width: 70.0,
                                                                  height: 70.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '2su72evi' /* Randy Alcorn */,
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyLarge,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '0zsa579c' /* Head of Procurement */,
                                                                            ),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'w3raz1jn' /* ACME Co. */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Inter',
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'z4lsfg10' /* ACME Co. */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Inter',
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    Expanded(
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        children: [
                                                                          Container(
                                                                            height:
                                                                                32.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).accent2,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              border: Border.all(
                                                                                color: FlutterFlowTheme.of(context).secondary,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.00, 0.00),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                child: Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    '1a4k6aks' /* New */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Builder(
                                                                builder:
                                                                    (context) =>
                                                                        Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'MAIN_CUSTOMER_LIST_Icon_tjxgplxc_ON_TAP');
                                                                      await showAlignedDialog(
                                                                        barrierColor:
                                                                            Colors.transparent,
                                                                        context:
                                                                            context,
                                                                        isGlobal:
                                                                            false,
                                                                        avoidOverflow:
                                                                            true,
                                                                        targetAnchor:
                                                                            const AlignmentDirectional(-1.0, 1.0).resolve(Directionality.of(context)),
                                                                        followerAnchor:
                                                                            const AlignmentDirectional(1.0, -1.0).resolve(Directionality.of(context)),
                                                                        builder:
                                                                            (dialogContext) {
                                                                          return Material(
                                                                            color:
                                                                                Colors.transparent,
                                                                            child:
                                                                                GestureDetector(
                                                                              onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                              child: const DropdownUserEditWidget(),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          setState(
                                                                              () {}));
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .more_vert,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'containerOnPageLoadAnimation1']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 8.0,
                                                                16.0, 0.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'MAIN_CUSTOMER_LIST_Container_87nxy0en_ON');
                                                        await action_blocks
                                                            .openUserDetails(
                                                                context);
                                                      },
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              blurRadius: 3.0,
                                                              color: Color(
                                                                  0x20000000),
                                                              offset: Offset(
                                                                  0.0, 1.0),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      8.0,
                                                                      12.0,
                                                                      8.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child: Image
                                                                    .network(
                                                                  'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
                                                                  width: 70.0,
                                                                  height: 70.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'o16mxq71' /* James Wiseman */,
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyLarge,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'fpsevdzf' /* Account Manager */,
                                                                            ),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'h14ifi7k' /* ACME Co. */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Inter',
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'uqhvoiij' /* ACME Co. */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Inter',
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    Expanded(
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        children: [
                                                                          Container(
                                                                            height:
                                                                                32.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).accent1,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              border: Border.all(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.00, 0.00),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                child: Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'tm49glmo' /* Contacted */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Builder(
                                                                builder:
                                                                    (context) =>
                                                                        Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'MAIN_CUSTOMER_LIST_Icon_auw6gg93_ON_TAP');
                                                                      await showAlignedDialog(
                                                                        barrierColor:
                                                                            Colors.transparent,
                                                                        context:
                                                                            context,
                                                                        isGlobal:
                                                                            false,
                                                                        avoidOverflow:
                                                                            true,
                                                                        targetAnchor:
                                                                            const AlignmentDirectional(1.0, -1.0).resolve(Directionality.of(context)),
                                                                        followerAnchor:
                                                                            const AlignmentDirectional(-1.0, 1.0).resolve(Directionality.of(context)),
                                                                        builder:
                                                                            (dialogContext) {
                                                                          return Material(
                                                                            color:
                                                                                Colors.transparent,
                                                                            child:
                                                                                GestureDetector(
                                                                              onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                              child: const DropdownUserEditWidget(),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          setState(
                                                                              () {}));
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .more_vert,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'containerOnPageLoadAnimation2']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 8.0,
                                                                16.0, 0.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'MAIN_CUSTOMER_LIST_Container_ux7h86qc_ON');
                                                        await action_blocks
                                                            .openUserDetails(
                                                                context);
                                                      },
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              blurRadius: 3.0,
                                                              color: Color(
                                                                  0x20000000),
                                                              offset: Offset(
                                                                  0.0, 1.0),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      8.0,
                                                                      12.0,
                                                                      8.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child: Image
                                                                    .network(
                                                                  'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60',
                                                                  width: 70.0,
                                                                  height: 70.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'kq55jaoh' /* Ignacious Rodriguez */,
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyLarge,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '4h0nuu5i' /* Sales Manager */,
                                                                            ),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'lzbcvfiy' /* Robin HQ */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Inter',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '6fndz1gh' /* Robin HQ */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Inter',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    Expanded(
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        children: [
                                                                          Container(
                                                                            height:
                                                                                32.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).accent2,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              border: Border.all(
                                                                                color: FlutterFlowTheme.of(context).secondary,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.00, 0.00),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                child: Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    '3fvjfyjw' /* New */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Builder(
                                                                builder:
                                                                    (context) =>
                                                                        Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'MAIN_CUSTOMER_LIST_Icon_bchy050k_ON_TAP');
                                                                      await showAlignedDialog(
                                                                        barrierColor:
                                                                            Colors.transparent,
                                                                        context:
                                                                            context,
                                                                        isGlobal:
                                                                            false,
                                                                        avoidOverflow:
                                                                            true,
                                                                        targetAnchor:
                                                                            const AlignmentDirectional(1.0, -1.0).resolve(Directionality.of(context)),
                                                                        followerAnchor:
                                                                            const AlignmentDirectional(-1.0, 1.0).resolve(Directionality.of(context)),
                                                                        builder:
                                                                            (dialogContext) {
                                                                          return Material(
                                                                            color:
                                                                                Colors.transparent,
                                                                            child:
                                                                                GestureDetector(
                                                                              onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                              child: const DropdownUserEditWidget(),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          setState(
                                                                              () {}));
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .more_vert,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'containerOnPageLoadAnimation3']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 8.0,
                                                                16.0, 0.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'MAIN_CUSTOMER_LIST_Container_ulv1eudf_ON');
                                                        await action_blocks
                                                            .openUserDetails(
                                                                context);
                                                      },
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              blurRadius: 3.0,
                                                              color: Color(
                                                                  0x20000000),
                                                              offset: Offset(
                                                                  0.0, 1.0),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      8.0,
                                                                      12.0,
                                                                      8.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child: Image
                                                                    .network(
                                                                  'https://images.unsplash.com/photo-1610737241336-371badac3b66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDN8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60',
                                                                  width: 70.0,
                                                                  height: 70.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '2pc5v8a4' /* Elena Williams */,
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyLarge,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'ceml7ft3' /* Head of Product & Innovation */,
                                                                            ),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '2e1z6z1m' /* Robin HQ */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Inter',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'em2rmo6j' /* Robin HQ */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Inter',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    Expanded(
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        children: [
                                                                          Container(
                                                                            height:
                                                                                32.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).accent1,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              border: Border.all(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.00, 0.00),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                child: Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'mg1pcn8r' /* Contacted */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Builder(
                                                                builder:
                                                                    (context) =>
                                                                        Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'MAIN_CUSTOMER_LIST_Icon_9mm82iqr_ON_TAP');
                                                                      await showAlignedDialog(
                                                                        barrierColor:
                                                                            Colors.transparent,
                                                                        context:
                                                                            context,
                                                                        isGlobal:
                                                                            false,
                                                                        avoidOverflow:
                                                                            true,
                                                                        targetAnchor:
                                                                            const AlignmentDirectional(1.0, -1.0).resolve(Directionality.of(context)),
                                                                        followerAnchor:
                                                                            const AlignmentDirectional(-1.0, 1.0).resolve(Directionality.of(context)),
                                                                        builder:
                                                                            (dialogContext) {
                                                                          return Material(
                                                                            color:
                                                                                Colors.transparent,
                                                                            child:
                                                                                GestureDetector(
                                                                              onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                              child: const DropdownUserEditWidget(),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          setState(
                                                                              () {}));
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .more_vert,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'containerOnPageLoadAnimation4']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 8.0,
                                                                16.0, 0.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'MAIN_CUSTOMER_LIST_Container_uhhuvfrx_ON');
                                                        await action_blocks
                                                            .openUserDetails(
                                                                context);
                                                      },
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              blurRadius: 3.0,
                                                              color: Color(
                                                                  0x20000000),
                                                              offset: Offset(
                                                                  0.0, 1.0),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      8.0,
                                                                      12.0,
                                                                      8.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child: Image
                                                                    .network(
                                                                  'https://images.unsplash.com/photo-1621592484082-2d05b1290d7a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjB8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60',
                                                                  width: 70.0,
                                                                  height: 70.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'insuv9nt' /* Greg Brown */,
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyLarge,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '6dyu1l9r' /* Account Manager */,
                                                                            ),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '4sq50suq' /* Robin HQ */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Inter',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'xf3hji30' /* Robin HQ */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Inter',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    Expanded(
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        children: [
                                                                          Container(
                                                                            height:
                                                                                32.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).accent1,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              border: Border.all(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.00, 0.00),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                child: Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'ucyrtltt' /* Contacted */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Builder(
                                                                builder:
                                                                    (context) =>
                                                                        Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'MAIN_CUSTOMER_LIST_Icon_alvop8hj_ON_TAP');
                                                                      await showAlignedDialog(
                                                                        barrierColor:
                                                                            Colors.transparent,
                                                                        context:
                                                                            context,
                                                                        isGlobal:
                                                                            false,
                                                                        avoidOverflow:
                                                                            true,
                                                                        targetAnchor:
                                                                            const AlignmentDirectional(1.0, -1.0).resolve(Directionality.of(context)),
                                                                        followerAnchor:
                                                                            const AlignmentDirectional(-1.0, 1.0).resolve(Directionality.of(context)),
                                                                        builder:
                                                                            (dialogContext) {
                                                                          return Material(
                                                                            color:
                                                                                Colors.transparent,
                                                                            child:
                                                                                GestureDetector(
                                                                              onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                              child: const DropdownUserEditWidget(),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          setState(
                                                                              () {}));
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .more_vert,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'containerOnPageLoadAnimation5']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 8.0,
                                                                16.0, 0.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'MAIN_CUSTOMER_LIST_Container_iinz817i_ON');
                                                        await action_blocks
                                                            .openUserDetails(
                                                                context);
                                                      },
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              blurRadius: 3.0,
                                                              color: Color(
                                                                  0x20000000),
                                                              offset: Offset(
                                                                  0.0, 1.0),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      8.0,
                                                                      12.0,
                                                                      8.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child: Image
                                                                    .network(
                                                                  'https://images.unsplash.com/photo-1533689476487-034f57831a58?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTA4fHx1c2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
                                                                  width: 70.0,
                                                                  height: 70.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'zafe89jw' /* June Williamson */,
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyLarge,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'fp7rggxx' /* Sr. Account Manager */,
                                                                            ),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'mn5dgpf3' /* HealthAi */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                  fontFamily: 'Inter',
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'r1qj36m1' /* HealthAi */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                  fontFamily: 'Inter',
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    Expanded(
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        children: [
                                                                          Container(
                                                                            height:
                                                                                32.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).accent1,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              border: Border.all(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.00, 0.00),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                child: Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'orrd5fa4' /* Contacted */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Builder(
                                                                builder:
                                                                    (context) =>
                                                                        Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'MAIN_CUSTOMER_LIST_Icon_rb3ftrpq_ON_TAP');
                                                                      await showAlignedDialog(
                                                                        barrierColor:
                                                                            Colors.transparent,
                                                                        context:
                                                                            context,
                                                                        isGlobal:
                                                                            false,
                                                                        avoidOverflow:
                                                                            true,
                                                                        targetAnchor:
                                                                            const AlignmentDirectional(1.0, -1.0).resolve(Directionality.of(context)),
                                                                        followerAnchor:
                                                                            const AlignmentDirectional(-1.0, 1.0).resolve(Directionality.of(context)),
                                                                        builder:
                                                                            (dialogContext) {
                                                                          return Material(
                                                                            color:
                                                                                Colors.transparent,
                                                                            child:
                                                                                GestureDetector(
                                                                              onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                              child: const DropdownUserEditWidget(),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          setState(
                                                                              () {}));
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .more_vert,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'containerOnPageLoadAnimation6']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 8.0,
                                                                16.0, 16.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'MAIN_CUSTOMER_LIST_Container_4md5x3dl_ON');
                                                        await action_blocks
                                                            .openUserDetails(
                                                                context);
                                                      },
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              blurRadius: 3.0,
                                                              color: Color(
                                                                  0x20000000),
                                                              offset: Offset(
                                                                  0.0, 1.0),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      8.0,
                                                                      12.0,
                                                                      8.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child: Image
                                                                    .network(
                                                                  'https://images.unsplash.com/photo-1533689476487-034f57831a58?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTA4fHx1c2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
                                                                  width: 70.0,
                                                                  height: 70.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'eim454pd' /* June Williamson */,
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyLarge,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'a0bkf424' /* Sr. Account Manager */,
                                                                            ),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'u9ywidy9' /* HealthAi */,
                                                                            ),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'v8935cf8' /* HealthAi */,
                                                                            ),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    Expanded(
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        children: [
                                                                          Container(
                                                                            height:
                                                                                32.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).accent1,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              border: Border.all(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.00, 0.00),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                child: Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'yoeqeivb' /* Contacted */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Builder(
                                                                builder:
                                                                    (context) =>
                                                                        Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'MAIN_CUSTOMER_LIST_Icon_vqgrwiqu_ON_TAP');
                                                                      await showAlignedDialog(
                                                                        barrierColor:
                                                                            Colors.transparent,
                                                                        context:
                                                                            context,
                                                                        isGlobal:
                                                                            false,
                                                                        avoidOverflow:
                                                                            true,
                                                                        targetAnchor:
                                                                            const AlignmentDirectional(1.0, -1.0).resolve(Directionality.of(context)),
                                                                        followerAnchor:
                                                                            const AlignmentDirectional(-1.0, 1.0).resolve(Directionality.of(context)),
                                                                        builder:
                                                                            (dialogContext) {
                                                                          return Material(
                                                                            color:
                                                                                Colors.transparent,
                                                                            child:
                                                                                GestureDetector(
                                                                              onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                              child: const DropdownUserEditWidget(),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          setState(
                                                                              () {}));
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .more_vert,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'containerOnPageLoadAnimation7']!),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 100.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: StickyHeader(
                                              overlapHeaders: false,
                                              header: Container(
                                                width: double.infinity,
                                                height: 50.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                ),
                                                alignment: const AlignmentDirectional(
                                                    -1.00, 0.00),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 36.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: 90.0,
                                                        height: 100.0,
                                                        decoration:
                                                            const BoxDecoration(),
                                                      ),
                                                      Expanded(
                                                        child: Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  -1.00, 0.00),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'g7av4tqg' /* Name */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelMedium,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                        tablet: false,
                                                      ))
                                                        Expanded(
                                                          child: Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'xffgkt7t' /* Title */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                        tablet: false,
                                                      ))
                                                        Expanded(
                                                          child: Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'vxppadlg' /* Company */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                        tablet: false,
                                                      ))
                                                        Expanded(
                                                          child: Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'p4xvpvgf' /* Company */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      Expanded(
                                                        child: Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  1.00, 0.00),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'm8o2psfk' /* Status */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelMedium,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 24.0,
                                                          height: 100.0,
                                                          decoration:
                                                              const BoxDecoration(),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              content: ListView(
                                                padding: const EdgeInsets.fromLTRB(
                                                  0,
                                                  0,
                                                  0,
                                                  70.0,
                                                ),
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 8.0,
                                                                16.0, 0.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'MAIN_CUSTOMER_LIST_Container_wr4yzzgv_ON');
                                                        await action_blocks
                                                            .openUserDetails(
                                                                context);
                                                      },
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              blurRadius: 3.0,
                                                              color: Color(
                                                                  0x20000000),
                                                              offset: Offset(
                                                                  0.0, 1.0),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      8.0,
                                                                      12.0,
                                                                      8.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child: Image
                                                                    .network(
                                                                  'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
                                                                  width: 70.0,
                                                                  height: 70.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '4sgc04rh' /* Randy Alcorn */,
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyLarge,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'np65t22e' /* Head of Procurement */,
                                                                            ),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'qpkca13g' /* ACME Co. */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Inter',
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '3tctrgig' /* ACME Co. */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Inter',
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    Expanded(
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        children: [
                                                                          Container(
                                                                            height:
                                                                                32.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).accent2,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              border: Border.all(
                                                                                color: FlutterFlowTheme.of(context).secondary,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.00, 0.00),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                child: Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'fyrppt8y' /* New */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Builder(
                                                                builder:
                                                                    (context) =>
                                                                        Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'MAIN_CUSTOMER_LIST_Icon_jmyz1m78_ON_TAP');
                                                                      await showAlignedDialog(
                                                                        barrierColor:
                                                                            Colors.transparent,
                                                                        context:
                                                                            context,
                                                                        isGlobal:
                                                                            false,
                                                                        avoidOverflow:
                                                                            true,
                                                                        targetAnchor:
                                                                            const AlignmentDirectional(1.0, -1.0).resolve(Directionality.of(context)),
                                                                        followerAnchor:
                                                                            const AlignmentDirectional(-1.0, 1.0).resolve(Directionality.of(context)),
                                                                        builder:
                                                                            (dialogContext) {
                                                                          return Material(
                                                                            color:
                                                                                Colors.transparent,
                                                                            child:
                                                                                GestureDetector(
                                                                              onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                              child: const DropdownUserEditWidget(),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          setState(
                                                                              () {}));
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .more_vert,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'containerOnPageLoadAnimation8']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 8.0,
                                                                16.0, 0.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'MAIN_CUSTOMER_LIST_Container_1iuzatsp_ON');
                                                        await action_blocks
                                                            .openUserDetails(
                                                                context);
                                                      },
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              blurRadius: 3.0,
                                                              color: Color(
                                                                  0x20000000),
                                                              offset: Offset(
                                                                  0.0, 1.0),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      8.0,
                                                                      12.0,
                                                                      8.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child: Image
                                                                    .network(
                                                                  'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60',
                                                                  width: 70.0,
                                                                  height: 70.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '2bby4175' /* Ignacious Rodriguez */,
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyLarge,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '4wembrbp' /* Sales Manager */,
                                                                            ),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'p2txrfk0' /* Robin HQ */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Inter',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '9re9difn' /* Robin HQ */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Inter',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    Expanded(
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        children: [
                                                                          Container(
                                                                            height:
                                                                                32.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).accent2,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              border: Border.all(
                                                                                color: FlutterFlowTheme.of(context).secondary,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.00, 0.00),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                child: Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'ym5de2ey' /* New */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Builder(
                                                                builder:
                                                                    (context) =>
                                                                        Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'MAIN_CUSTOMER_LIST_Icon_1w2ljq6j_ON_TAP');
                                                                      await showAlignedDialog(
                                                                        barrierColor:
                                                                            Colors.transparent,
                                                                        context:
                                                                            context,
                                                                        isGlobal:
                                                                            false,
                                                                        avoidOverflow:
                                                                            true,
                                                                        targetAnchor:
                                                                            const AlignmentDirectional(1.0, -1.0).resolve(Directionality.of(context)),
                                                                        followerAnchor:
                                                                            const AlignmentDirectional(-1.0, 1.0).resolve(Directionality.of(context)),
                                                                        builder:
                                                                            (dialogContext) {
                                                                          return Material(
                                                                            color:
                                                                                Colors.transparent,
                                                                            child:
                                                                                GestureDetector(
                                                                              onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                              child: const DropdownUserEditWidget(),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          setState(
                                                                              () {}));
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .more_vert,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'containerOnPageLoadAnimation9']!),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 100.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: StickyHeader(
                                              overlapHeaders: false,
                                              header: Container(
                                                width: double.infinity,
                                                height: 50.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                ),
                                                alignment: const AlignmentDirectional(
                                                    -1.00, 0.00),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 36.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: 90.0,
                                                        height: 100.0,
                                                        decoration:
                                                            const BoxDecoration(),
                                                      ),
                                                      Expanded(
                                                        child: Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  -1.00, 0.00),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'dhrxhg83' /* Name */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelMedium,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                        tablet: false,
                                                      ))
                                                        Expanded(
                                                          child: Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  '4494sdp5' /* Title */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                        tablet: false,
                                                      ))
                                                        Expanded(
                                                          child: Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  't6erxmdi' /* Company */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                        tablet: false,
                                                      ))
                                                        Expanded(
                                                          child: Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'a2sv9lv3' /* Company */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      Expanded(
                                                        child: Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  1.00, 0.00),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'vc59gy2z' /* Status */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelMedium,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 24.0,
                                                          height: 100.0,
                                                          decoration:
                                                              const BoxDecoration(),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              content: ListView(
                                                padding: const EdgeInsets.fromLTRB(
                                                  0,
                                                  0,
                                                  0,
                                                  70.0,
                                                ),
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 8.0,
                                                                16.0, 0.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'MAIN_CUSTOMER_LIST_Container_bck2lcds_ON');
                                                        await action_blocks
                                                            .openUserDetails(
                                                                context);
                                                      },
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              blurRadius: 3.0,
                                                              color: Color(
                                                                  0x20000000),
                                                              offset: Offset(
                                                                  0.0, 1.0),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      8.0,
                                                                      12.0,
                                                                      8.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child: Image
                                                                    .network(
                                                                  'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
                                                                  width: 70.0,
                                                                  height: 70.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'v5iv0hjb' /* James Wiseman */,
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyLarge,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '7o5zylri' /* Account Manager */,
                                                                            ),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'rvw10tmv' /* ACME Co. */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Inter',
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              's4uvjsw7' /* ACME Co. */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Inter',
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    Expanded(
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        children: [
                                                                          Container(
                                                                            height:
                                                                                32.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).accent1,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              border: Border.all(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.00, 0.00),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                child: Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'w83ub0yw' /* Contacted */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Builder(
                                                                builder:
                                                                    (context) =>
                                                                        Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'MAIN_CUSTOMER_LIST_Icon_ri4npszv_ON_TAP');
                                                                      await showAlignedDialog(
                                                                        barrierColor:
                                                                            Colors.transparent,
                                                                        context:
                                                                            context,
                                                                        isGlobal:
                                                                            false,
                                                                        avoidOverflow:
                                                                            true,
                                                                        targetAnchor:
                                                                            const AlignmentDirectional(1.0, -1.0).resolve(Directionality.of(context)),
                                                                        followerAnchor:
                                                                            const AlignmentDirectional(-1.0, 1.0).resolve(Directionality.of(context)),
                                                                        builder:
                                                                            (dialogContext) {
                                                                          return Material(
                                                                            color:
                                                                                Colors.transparent,
                                                                            child:
                                                                                GestureDetector(
                                                                              onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                              child: const DropdownUserEditWidget(),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          setState(
                                                                              () {}));
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .more_vert,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'containerOnPageLoadAnimation10']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 8.0,
                                                                16.0, 0.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'MAIN_CUSTOMER_LIST_Container_oo6aooni_ON');
                                                        await action_blocks
                                                            .openUserDetails(
                                                                context);
                                                      },
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              blurRadius: 3.0,
                                                              color: Color(
                                                                  0x20000000),
                                                              offset: Offset(
                                                                  0.0, 1.0),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      8.0,
                                                                      12.0,
                                                                      8.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child: Image
                                                                    .network(
                                                                  'https://images.unsplash.com/photo-1610737241336-371badac3b66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDN8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60',
                                                                  width: 70.0,
                                                                  height: 70.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '4yjpkz0n' /* Elena Williams */,
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyLarge,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'l4xjfp78' /* Head of Product & Innovation */,
                                                                            ),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'anfz0t9o' /* Robin HQ */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Inter',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'cz0219wa' /* Robin HQ */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Inter',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    Expanded(
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        children: [
                                                                          Container(
                                                                            height:
                                                                                32.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).accent1,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              border: Border.all(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.00, 0.00),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                child: Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'uf38k81m' /* Contacted */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Builder(
                                                                builder:
                                                                    (context) =>
                                                                        Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'MAIN_CUSTOMER_LIST_Icon_1p66kfb2_ON_TAP');
                                                                      await showAlignedDialog(
                                                                        barrierColor:
                                                                            Colors.transparent,
                                                                        context:
                                                                            context,
                                                                        isGlobal:
                                                                            false,
                                                                        avoidOverflow:
                                                                            true,
                                                                        targetAnchor:
                                                                            const AlignmentDirectional(1.0, -1.0).resolve(Directionality.of(context)),
                                                                        followerAnchor:
                                                                            const AlignmentDirectional(-1.0, 1.0).resolve(Directionality.of(context)),
                                                                        builder:
                                                                            (dialogContext) {
                                                                          return Material(
                                                                            color:
                                                                                Colors.transparent,
                                                                            child:
                                                                                GestureDetector(
                                                                              onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                              child: const DropdownUserEditWidget(),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          setState(
                                                                              () {}));
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .more_vert,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'containerOnPageLoadAnimation11']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 8.0,
                                                                16.0, 0.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'MAIN_CUSTOMER_LIST_Container_liijd9kb_ON');
                                                        await action_blocks
                                                            .openUserDetails(
                                                                context);
                                                      },
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              blurRadius: 3.0,
                                                              color: Color(
                                                                  0x20000000),
                                                              offset: Offset(
                                                                  0.0, 1.0),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      8.0,
                                                                      12.0,
                                                                      8.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child: Image
                                                                    .network(
                                                                  'https://images.unsplash.com/photo-1621592484082-2d05b1290d7a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjB8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60',
                                                                  width: 70.0,
                                                                  height: 70.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'evh01zxl' /* Greg Brown */,
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyLarge,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '6h3e5pnw' /* Account Manager */,
                                                                            ),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '1n18qv7i' /* Robin HQ */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Inter',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'yca9mthr' /* Robin HQ */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Inter',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    Expanded(
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        children: [
                                                                          Container(
                                                                            height:
                                                                                32.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).accent1,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              border: Border.all(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.00, 0.00),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                child: Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'o17d2quf' /* Contacted */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Builder(
                                                                builder:
                                                                    (context) =>
                                                                        Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'MAIN_CUSTOMER_LIST_Icon_avaox4r0_ON_TAP');
                                                                      await showAlignedDialog(
                                                                        barrierColor:
                                                                            Colors.transparent,
                                                                        context:
                                                                            context,
                                                                        isGlobal:
                                                                            false,
                                                                        avoidOverflow:
                                                                            true,
                                                                        targetAnchor:
                                                                            const AlignmentDirectional(1.0, -1.0).resolve(Directionality.of(context)),
                                                                        followerAnchor:
                                                                            const AlignmentDirectional(-1.0, 1.0).resolve(Directionality.of(context)),
                                                                        builder:
                                                                            (dialogContext) {
                                                                          return Material(
                                                                            color:
                                                                                Colors.transparent,
                                                                            child:
                                                                                GestureDetector(
                                                                              onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                              child: const DropdownUserEditWidget(),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          setState(
                                                                              () {}));
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .more_vert,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'containerOnPageLoadAnimation12']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 8.0,
                                                                16.0, 0.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'MAIN_CUSTOMER_LIST_Container_7v0w7ho8_ON');
                                                        await action_blocks
                                                            .openUserDetails(
                                                                context);
                                                      },
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              blurRadius: 3.0,
                                                              color: Color(
                                                                  0x20000000),
                                                              offset: Offset(
                                                                  0.0, 1.0),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      8.0,
                                                                      12.0,
                                                                      8.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child: Image
                                                                    .network(
                                                                  'https://images.unsplash.com/photo-1533689476487-034f57831a58?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTA4fHx1c2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
                                                                  width: 70.0,
                                                                  height: 70.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'd0z8df2i' /* June Williamson */,
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyLarge,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '14oiknrw' /* Sr. Account Manager */,
                                                                            ),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'y3upyxdi' /* HealthAi */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                  fontFamily: 'Inter',
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'ymf5axsy' /* HealthAi */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                  fontFamily: 'Inter',
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    Expanded(
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        children: [
                                                                          Container(
                                                                            height:
                                                                                32.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).accent1,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              border: Border.all(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.00, 0.00),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                child: Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    '60qa1l5k' /* Contacted */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Builder(
                                                                builder:
                                                                    (context) =>
                                                                        Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'MAIN_CUSTOMER_LIST_Icon_pz00dir6_ON_TAP');
                                                                      await showAlignedDialog(
                                                                        barrierColor:
                                                                            Colors.transparent,
                                                                        context:
                                                                            context,
                                                                        isGlobal:
                                                                            false,
                                                                        avoidOverflow:
                                                                            true,
                                                                        targetAnchor:
                                                                            const AlignmentDirectional(1.0, -1.0).resolve(Directionality.of(context)),
                                                                        followerAnchor:
                                                                            const AlignmentDirectional(-1.0, 1.0).resolve(Directionality.of(context)),
                                                                        builder:
                                                                            (dialogContext) {
                                                                          return Material(
                                                                            color:
                                                                                Colors.transparent,
                                                                            child:
                                                                                GestureDetector(
                                                                              onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                              child: const DropdownUserEditWidget(),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          setState(
                                                                              () {}));
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .more_vert,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'containerOnPageLoadAnimation13']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 8.0,
                                                                16.0, 16.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'MAIN_CUSTOMER_LIST_Container_heot3ngs_ON');
                                                        await action_blocks
                                                            .openUserDetails(
                                                                context);
                                                      },
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              blurRadius: 3.0,
                                                              color: Color(
                                                                  0x20000000),
                                                              offset: Offset(
                                                                  0.0, 1.0),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      8.0,
                                                                      12.0,
                                                                      8.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child: Image
                                                                    .network(
                                                                  'https://images.unsplash.com/photo-1533689476487-034f57831a58?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTA4fHx1c2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
                                                                  width: 70.0,
                                                                  height: 70.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'mootyc3i' /* June Williamson */,
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyLarge,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'gun8gz5b' /* Sr. Account Manager */,
                                                                            ),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'sbiuhbrx' /* HealthAi */,
                                                                            ),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'q28hkdoo' /* HealthAi */,
                                                                            ),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    Expanded(
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        children: [
                                                                          Container(
                                                                            height:
                                                                                32.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).accent1,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              border: Border.all(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.00, 0.00),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                child: Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    '4qxa4kwr' /* Contacted */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Builder(
                                                                builder:
                                                                    (context) =>
                                                                        Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'MAIN_CUSTOMER_LIST_Icon_rderf6e5_ON_TAP');
                                                                      await showAlignedDialog(
                                                                        barrierColor:
                                                                            Colors.transparent,
                                                                        context:
                                                                            context,
                                                                        isGlobal:
                                                                            false,
                                                                        avoidOverflow:
                                                                            true,
                                                                        targetAnchor:
                                                                            const AlignmentDirectional(1.0, -1.0).resolve(Directionality.of(context)),
                                                                        followerAnchor:
                                                                            const AlignmentDirectional(-1.0, 1.0).resolve(Directionality.of(context)),
                                                                        builder:
                                                                            (dialogContext) {
                                                                          return Material(
                                                                            color:
                                                                                Colors.transparent,
                                                                            child:
                                                                                GestureDetector(
                                                                              onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                              child: const DropdownUserEditWidget(),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          setState(
                                                                              () {}));
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .more_vert,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'containerOnPageLoadAnimation14']!),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
