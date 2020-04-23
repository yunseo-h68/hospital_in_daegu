import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hospitalindaegu/data/regional_emergency_medical_institution_list_data.dart';

import 'hospital_detail_page.dart';

class RegionalEmergencyMedicalInstitutionListPage extends StatelessWidget {
  final List<Map<String, dynamic>> items = remiData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(255, 170, 165, 1),
        body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical:10.0, horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(width: double.infinity),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Card(
                      margin: EdgeInsets.only(top: 30.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.keyboard_arrow_left,
                          color: Color.fromRGBO(255, 170, 165, 1),
                          size: 35.0,
                        ),
                        title: Text(
                            '지역응급 의료기관(9)',
                            style: TextStyle(
                              color: Color.fromRGBO(255, 170, 165, 1),
                              fontFamily: 'SN BeolBeolJeongJik',
                              fontSize: 25.0,
                            )
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 30.0,horizontal: 5.0),
                    child: Text(
                      '대구 지역에는 지역응급 의료기관이 9곳 존재합니다. 찾고자 하는 곳을 클릭하여 자세한 정보를 확인하세요.',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SN BeolBeolJeongJik',
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.pink,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HospitalDetail(hospital: items[index]),
                              ),
                            );
                          },
                          child: Card(
                            margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 0.0),
                            child: ListTile(
                              leading: Icon(
                                  Icons.local_hospital,
                                  color: Color.fromRGBO(255, 170, 165, 1),
                                  size: 40.0
                              ),
                              title: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      '${items[index]['name']}',
                                      style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontFamily: 'SN BeolBeolJeongJik',
                                        fontSize: 20.0,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        '${items[index]['address']}',
                                        overflow: TextOverflow.visible,
                                        style: TextStyle(
                                          color: Colors.grey.shade700,
                                          fontFamily: 'SN BeolBeolJeongJik',
                                          fontSize: 12.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
        )
    );
  }
}
