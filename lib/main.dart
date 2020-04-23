import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hospitalindaegu/pages/hospital_detail_page.dart';
import 'package:hospitalindaegu/pages/my_home.dart';
import 'package:hospitalindaegu/pages/regional_medical_center_list_page.dart';
import 'package:hospitalindaegu/pages/regional_emergency_medical_center_list_page.dart';
import 'package:hospitalindaegu/pages/regional_emergency_medical_institution_list_page.dart';
import 'package:hospitalindaegu/pages/regional_emergency_medical_facility_list_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyHome(),
        '/regional-medical-center-list-page': (context) => RegionalMedicalCenterListPage(),
        '/regional-emergency-medical-center-list-page': (context) => RegionalEmergencyMedicalCenterListPage(),
        '/regional-emergency-medical-institution-list-page': (context) => RegionalEmergencyMedicalInstitutionListPage(),
        '/regional-emergency-medical-facility-list-page': (context) => RegionalEmergencyMedicalFacilityListPage(),
      },
    );
  }
}
