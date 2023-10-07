import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'info_page_model.dart';
export 'info_page_model.dart';

class InfoPageWidget extends StatefulWidget {
  const InfoPageWidget({Key? key}) : super(key: key);

  @override
  _InfoPageWidgetState createState() => _InfoPageWidgetState();
}

class _InfoPageWidgetState extends State<InfoPageWidget> {
  late InfoPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InfoPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFFFBF7F7),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed('Dashboard');
            },
          ),
          title: Text(
            'Petition Topic Description',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.black,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 50.0),
                  child: Text(
                    'Climate Action:\nPetitions to address climate change, reduce carbon emissions, and promote sustainable practices.\n\nRacial Equality:\nPetitions advocating for racial justice, equality, and an end to systemic racism.\n\nGender Equality:\nPetitions supporting gender equity, women\'s rights, and LGBTQ+ equality.\n\nHealthcare Access:\nPetitions for affordable healthcare, improved healthcare infrastructure, and universal coverage.\n\nEducation Equity:\nPetitions for equal educational opportunities, funding for schools in underserved communities, and support for teachers.\n\nEnvironmental Conservation:\nPetitions for habitat preservation, wildlife protection, and sustainable land use.\n\nAnimal Welfare:\nPetitions to end animal cruelty, promote responsible pet ownership, and protect endangered species.\n\nMental Health Awareness:\nPetitions to reduce the stigma around mental health, improve access to mental health services, and increase funding for mental health programs.\n\nCommunity Safety:\nPetitions for community policing, addressing gun violence, and promoting neighborhood safety.\n\nClean Energy Transition:\nPetitions for renewable energy adoption, reducing reliance on fossil fuels, and combating air and water pollution.\n\nArts and Culture Support:\nPetitions to fund the arts, support cultural institutions, and provide access to artistic opportunities.\n\nHumanitarian Aid:\nPetitions to support humanitarian efforts, provide aid to vulnerable populations, and address global crises.\n\nHealth and Well-being:\nPetitions related to mental health awareness, disability rights, and access to healthcare services.',
                    style: FlutterFlowTheme.of(context).bodyMedium,
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
