import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HospitalDetail extends StatelessWidget {
  final Map<String, dynamic> hospital;

  HospitalDetail({Key key, @required this.hospital}):super(key:key);

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
                            hospital['name'],
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
                      '${hospital['분류']}인 ${hospital['name']}은 "${hospital['address']}"에 위치하고 있습니다.',
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
                    child: ListView(
                      children: <Widget>[
                        InkWell(
                          onTap: ()=>launch('${hospital['홈페이지']}'),
                          child: Card(
                            margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 0.0),
                            child: ListTile(
                              leading: Icon(
                                  Icons.home,
                                  color: Color.fromRGBO(255, 170, 165, 1),
                                  size: 40.0
                              ),
                              title: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      '${hospital['name']}의 홈페이지',
                                      style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontFamily: 'SN BeolBeolJeongJik',
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        '${hospital['홈페이지']}',
                                        overflow: TextOverflow.visible,
                                        style: TextStyle(
                                          color: Colors.grey.shade700,
                                          fontFamily: 'SN BeolBeolJeongJik',
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Card(
                            margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 0.0),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical:10.0, horizontal:0.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  '전화번호(각각 대표전화, 전화예약, 응급실)',
                                  style: TextStyle(
                                    color: Colors.grey.shade700,
                                    fontFamily: 'SN BeolBeolJeongJik',
                                    fontSize: 18.0,
                                  ),
                                ),
                                Text(
                                  '000-0000-0000은 데이터가 없음을 의미합니다.',
                                  style: TextStyle(
                                    color: Colors.grey.shade700,
                                    fontFamily: 'SN BeolBeolJeongJik',
                                    fontSize: 12.0,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    InkWell(
                                      onTap: ()=>launch('tel://${hospital['전화번호']['중요 전화번호']['대표전화'][0]}'),
                                      child: Card(
                                        color: Color.fromRGBO(255, 170, 165, 1),
                                        margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                              Icons.phone,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: ()=>launch('tel://${hospital['전화번호']['중요 전화번호']['전화예약'][0]}'),
                                      child: Card(
                                        color: Color.fromRGBO(255, 170, 165, 1),
                                        margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                              Icons.phone,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: ()=>launch('tel://${hospital['전화번호']['중요 전화번호']['응급실'][0]}'),
                                      child: Card(
                                        color: Color.fromRGBO(255, 170, 165, 1),
                                        margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                              Icons.phone,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ),
                        Card(
                          margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 0.0),
                          child: ListTile(
                            leading: Icon(
                                Icons.alarm,
                                color: Color.fromRGBO(255, 170, 165, 1),
                                size: 40.0
                            ),
                            title: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    '${hospital['접수 및 진료시간']['평일']['접수']['시작']} ~ ${hospital['접수 및 진료시간']['평일']['접수']['끝']}',
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontFamily: 'SN BeolBeolJeongJik',
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      '평일 접수 시간',
                                      overflow: TextOverflow.visible,
                                      style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontFamily: 'SN BeolBeolJeongJik',
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 0.0),
                          child: ListTile(
                            leading: Icon(
                                Icons.alarm,
                                color: Color.fromRGBO(255, 170, 165, 1),
                                size: 40.0
                            ),
                            title: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    '${hospital['접수 및 진료시간']['평일']['진료']['시작']} ~ ${hospital['접수 및 진료시간']['평일']['진료']['끝']}',
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontFamily: 'SN BeolBeolJeongJik',
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      '평일 진료 시간',
                                      overflow: TextOverflow.visible,
                                      style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontFamily: 'SN BeolBeolJeongJik',
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 0.0),
                          child: ListTile(
                            leading: Icon(
                                Icons.alarm,
                                color: Color.fromRGBO(255, 170, 165, 1),
                                size: 40.0
                            ),
                            title: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    '${hospital['접수 및 진료시간']['토요일']['진료']['시작']} ~ ${hospital['접수 및 진료시간']['토요일']['진료']['끝']}',
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontFamily: 'SN BeolBeolJeongJik',
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      '토요일 진료 시간',
                                      overflow: TextOverflow.visible,
                                      style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontFamily: 'SN BeolBeolJeongJik',
                                        fontSize: 14.0,
                                      ),
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
                ],
              ),
            )
        )
    );
  }
}
