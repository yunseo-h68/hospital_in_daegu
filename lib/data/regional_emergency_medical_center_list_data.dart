const List<Map<String, dynamic>> remcData = [
  {
    'name':'계명대학교 동산병원',
    'address':'대구 달서구 달구벌대로 1035(신당동)',
    '분류': '지역응급 의료센터',
    '홈페이지':'http://dongsan.dsmc.or.kr/',
    '접수 및 진료시간': {
      '평일': {
        '접수': {
          '시작':'데이터 없음',
          '끝':'데이터 없음',
        },
        '진료': {
          '시작':'오전 9시 00분',
          '끝':'오후 5시 30분',
        }, // 진료
      }, // 평일
      '토요일': {
        '진료': {
          '시작':'데이터 없음',
          '끝':'데이터 없음',
        }, // 진료
      }, // 토요일
    }, // 외래접수 및 진료시간
    '전화번호': {
      '중요 전화번호': {
        '대표전화': ['1577-6622'],
        '전화예약': ['1577-6622'],
        '응급실': ['053-258-6301'],
      },
    },//전화번호
  },
  {
    'name':'대구파티마병원',
    'address':'대구시 동구 아양로 99(신암동)',
    '분류': '지역응급 의료센터',
    '홈페이지':'http://www.fatima.or.kr/front/index.asp',
    '접수 및 진료시간': {
      '평일': {
        '접수': {
          '시작':'오전 9시 00분',
          '끝':'오후 5시 00분',
          '주의':'오전 11시 30분 이후 접수시, 오후 진료만 가능',
        },
        '진료': {
          '시작':'오전 9시 00분',
          '끝':'오후 5시 30분',
        }, // 진료
      }, // 평일
      '토요일': {
        '접수': {
          '시작':'오전 9시 00분',
          '끝':'오후 12시 00분',
          '주의':'단 소아청소년과는 오전 11시 30분까지만 접수',
        },
        '진료': {
          '시작':'오전 9시 00분',
          '끝':'오후 12시 30분',
        }, // 진료
      }, // 평일
    }, // 외래접수 및 진료시간
    '전화번호': {
      '중요 전화번호': {
        '대표전화': ['1688-7770'],
        '전화예약': ['1688-7090'],
        '응급실': ['053-940-7119'],
      },
    },//전화번호
  },
  {
    'name':'영남대학교병원',
    'address':'대구시 남구 현충로 170(대명동)',
    '분류': '지역응급 의료센터',
    '홈페이지':'https://yumc.ac.kr:8443/yumc/index.do',
    '접수 및 진료시간': {
      '평일': {
        '접수': {
          '시작':'오전 8시 30분',
          '끝':'오후 4시 00분',
        },
        '진료': {
          '시작':'오전 8시 30분',
          '끝':'오후 5시 30분',
        }, // 진료
      }, // 평일
      '토요일': {
        '진료': {
          '시작':'데이터 없음',
          '끝':'데이터 없음',
        }, // 진료
      }, // 토요일
    }, // 외래접수 및 진료시간
    '전화번호': {
      '중요 전화번호': {
        '대표전화': ['1522-3114', '053-623-8001'],
        '전화예약': ['053-620-4030'],
        '응급실': ['053-620-3191','053-620-3192'],
      },
    },//전화번호
  },
  {
    'name':'대구가톨릭대학교병원',
    'address':'대구시 남구 두류공원로17길33(대명동)',
    '분류': '지역응급 의료센터',
    '홈페이지':'http://www.dcmc.co.kr/index.asp',
    '접수 및 진료시간': {
      '평일': {
        '접수': {
          '시작':'오전 8시 00분',
          '끝':'오후 5시 00분',
        }, // 접수
        '진료': {
          '시작':'데이터 없음',
          '끝':'데이터 없음',
        }, // 접수
      }, // 평일
      '토요일': {
        '진료': {
          '시작':'데이터 없음',
          '끝':'데이터 없음',
        }, // 진료
      }, // 토요일
    }, // 외래접수 및 진료시간
    '전화번호': {
      '중요 전화번호': {
        '대표전화': ['1688-0077'],
        '전화예약': ['1688-0077'],
        '응급실': ['053-650-4194'],
      },
    },//전화번호
  },
  {
    'name':'칠곡경북대학교병원',
    'address':'대구시 북구 호국로 807(학정동)',
    '분류': '지역응급 의료센터',
    '홈페이지':'http://www.knuch.kr/index.asp',
    '접수 및 진료시간': {
      '평일': {
        '접수': {
          '시작':'오전 8시 30분',
          '끝':'오후 4시 30분',
          '주의':'점심시간 없음',
        },
        '진료': {
          '시작':'오전 8시 30분',
          '끝':'오후 5시 30분',
          '주의':'점심시간 : 12시 30분 ~ 1시 30분',
        }, // 진료
      }, // 평일
      '토요일': {
        '진료': {
          '시작':'데이터 없음',
          '끝':'데이터 없음',
        }, // 진료
      }, // 토요일
    }, // 외래접수 및 진료시간
    '전화번호': {
      '중요 전화번호': {
        '대표전화': ['053-200-2114', '1566-2500'],
        '전화예약': ['053-200-2114'],
        '응급실': ['053-200-2100','053-200-2101','053-200-2102'],
      },
    },//전화번호
  },
];