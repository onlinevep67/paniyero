import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'logoheader_model.dart';
export 'logoheader_model.dart';

class LogoheaderWidget extends StatefulWidget {
  const LogoheaderWidget({super.key});

  @override
  State<LogoheaderWidget> createState() => _LogoheaderWidgetState();
}

class _LogoheaderWidgetState extends State<LogoheaderWidget> {
  late LogoheaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogoheaderModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
      child: Container(
        decoration: const BoxDecoration(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: const BoxDecoration(),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('Homepage');
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    Theme.of(context).brightness == Brightness.dark
                        ? 'assets/images/Untitled_design_(1).png'
                        : 'assets/images/dark.png',
                    width: 146.0,
                    height: 59.0,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                  child: FaIcon(
                    FontAwesomeIcons.headphonesAlt,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24.0,
                  ),
                ),
                if (valueOrDefault(currentUserDocument?.notifcount, 0) != 0)
                  AuthUserStreamWidget(
                    builder: (context) => InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('Notifications');
                      },
                      child: badges.Badge(
                        badgeContent: Text(
                          valueOrDefault<String>(
                            valueOrDefault(currentUserDocument?.notifcount, 0)
                                .toString(),
                            '0',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleSmallFamily,
                                color: Colors.white,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .titleSmallFamily),
                              ),
                        ),
                        showBadge: true,
                        shape: badges.BadgeShape.circle,
                        badgeColor: FlutterFlowTheme.of(context).primary,
                        elevation: 4.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                        position: badges.BadgePosition.topEnd(),
                        animationType: badges.BadgeAnimationType.scale,
                        toAnimate: true,
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 18.0, 0.0),
                          child: Icon(
                            Icons.notifications_sharp,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 28.0,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
