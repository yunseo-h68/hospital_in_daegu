import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class MyHome extends StatelessWidget {
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
                  Card(
                    margin: EdgeInsets.only(top: 30.0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical:10.0, horizontal: 25.0),
                      child: Text(
                          '대구 병원 다모아',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 170, 165, 1),
                            fontFamily: 'UhBee Se_hyun Bold',
                            fontSize: 25.0,
                          )
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 30.0,horizontal: 5.0),
                    child: Text(
                      '이 앱은 대구 지역의 병원 정보를 쉽게 확인할 수 있도록 모아둔 앱입니다. ^^ 많은 이용 바랍니다.',
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/regional-medical-center-list-page');
                          },
                          child: Card(
                            margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 0.0),
                            child: ListTile(
                              leading: Icon(
                                  Icons.local_hospital,
                                  color: Color.fromRGBO(255, 170, 165, 1),
                                  size: 40.0
                              ),
                              title: Text(
                                '권역응급 의료센터(1)',
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontFamily: 'SN BeolBeolJeongJik',
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/regional-emergency-medical-center-list-page');
                          },
                          child: Card(
                            margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 0.0),
                            child: ListTile(
                              leading: Icon(
                                  Icons.local_hospital,
                                  color: Color.fromRGBO(255, 170, 165, 1),
                                  size: 40.0
                              ),
                              title: Text(
                                '지역응급 의료센터(5)',
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontFamily: 'SN BeolBeolJeongJik',
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/regional-emergency-medical-institution-list-page');
                          },
                          child: Card(
                            margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 0.0),
                            child: ListTile(
                              leading: Icon(
                                  Icons.local_hospital,
                                  color: Color.fromRGBO(255, 170, 165, 1),
                                  size: 40.0
                              ),
                              title: Text(
                                '지역응급 의료기관(9)',
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontFamily: 'SN BeolBeolJeongJik',
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/regional-emergency-medical-facility-list-page');
                          },
                          child: Card(
                            margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 0.0),
                            child: ListTile(
                              leading: Icon(
                                  Icons.local_hospital,
                                  color: Color.fromRGBO(255, 170, 165, 1),
                                  size: 40.0
                              ),
                              title: Text(
                                '지역응급의료시설(7)',
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontFamily: 'SN BeolBeolJeongJik',
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
        )
    );
  }
}