--------------------------------------------------------
--  파일이 생성됨 - 수요일-5월-04-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BOARD
--------------------------------------------------------

  CREATE TABLE "LIFEBOOK"."BOARD" 
   (	"BOARDNUM" NUMBER(5,0), 
	"USERID" VARCHAR2(15 BYTE), 
	"BOARDTITLE" VARCHAR2(50 BYTE), 
	"BOARDCONTENT" VARCHAR2(3000 BYTE), 
	"REGDATE" DATE DEFAULT SYSDATE, 
	"USERIP" VARCHAR2(15 BYTE), 
	"FILENAME" VARCHAR2(100 BYTE), 
	"FILESIZE" NUMBER(5,0), 
	"REALFILENAME" VARCHAR2(100 BYTE), 
	"HITCNT" NUMBER(5,0) DEFAULT 0, 
	"RECOMMEND" NUMBER(3,0) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIFEBOOK" ;
--------------------------------------------------------
--  DDL for Table BOARDCOMMENT
--------------------------------------------------------

  CREATE TABLE "LIFEBOOK"."BOARDCOMMENT" 
   (	"CMTNUM" NUMBER(9,0), 
	"BOARDNUM" NUMBER(9,0), 
	"CMTCONTENT" VARCHAR2(100 BYTE), 
	"REGDATE" DATE DEFAULT SYSDATE, 
	"USERIP" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIFEBOOK" ;
--------------------------------------------------------
--  DDL for Table BOOKINFO
--------------------------------------------------------

  CREATE TABLE "LIFEBOOK"."BOOKINFO" 
   (	"BOOKNUM" NUMBER(10,0), 
	"BOOKNAME" VARCHAR2(100 BYTE), 
	"BOOKDETAILS" VARCHAR2(3000 BYTE), 
	"BOOKPRICE" NUMBER(6,0), 
	"BOOKPUB" VARCHAR2(50 BYTE), 
	"AUTHOR" VARCHAR2(30 BYTE), 
	"BOOKIMG" VARCHAR2(3000 BYTE), 
	"BOOKSTOCK" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIFEBOOK" ;
--------------------------------------------------------
--  DDL for Table CART
--------------------------------------------------------

  CREATE TABLE "LIFEBOOK"."CART" 
   (	"CARTNUM" VARCHAR2(25 BYTE), 
	"USERID" VARCHAR2(15 BYTE), 
	"BOOKNUM" NUMBER(10,0), 
	"TOTALPRICE" NUMBER(7,0) DEFAULT 0, 
	"QUANTITY" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIFEBOOK" ;
--------------------------------------------------------
--  DDL for Table FAQ
--------------------------------------------------------

  CREATE TABLE "LIFEBOOK"."FAQ" 
   (	"FAQNUM" NUMBER(3,0), 
	"FAQCATEGORY" VARCHAR2(21 BYTE), 
	"FAQTITLE" VARCHAR2(200 BYTE), 
	"FAQCONTENT" VARCHAR2(3500 BYTE), 
	"REGDATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIFEBOOK" ;
--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "LIFEBOOK"."NOTICE" 
   (	"NOTICENUM" NUMBER(5,0), 
	"USERID" VARCHAR2(15 BYTE), 
	"NOTICETITLE" VARCHAR2(50 BYTE), 
	"NOTICECONTENT" VARCHAR2(3000 BYTE), 
	"REGDATE" DATE, 
	"HITCNT" NUMBER(5,0) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIFEBOOK" ;
--------------------------------------------------------
--  DDL for Table ORDER_TABLE
--------------------------------------------------------

  CREATE TABLE "LIFEBOOK"."ORDER_TABLE" 
   (	"ORDERNUM" NUMBER(10,0), 
	"USERID" VARCHAR2(15 BYTE), 
	"BOOKNUM" NUMBER(10,0), 
	"ORDERDATE" DATE DEFAULT sysdate, 
	"ORDERRECIPIENT" VARCHAR2(15 BYTE), 
	"ORDERPHONENUM" VARCHAR2(15 BYTE), 
	"ORDERADDR" VARCHAR2(100 BYTE), 
	"AMOUNT" NUMBER(3,0), 
	"STATEMENT" VARCHAR2(12 BYTE) DEFAULT '준비중'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIFEBOOK" ;
--------------------------------------------------------
--  DDL for Table QNA
--------------------------------------------------------

  CREATE TABLE "LIFEBOOK"."QNA" 
   (	"QNANUM" NUMBER(5,0), 
	"USERID" VARCHAR2(15 BYTE), 
	"CATEGORY" VARCHAR2(30 BYTE), 
	"QNATITLE" VARCHAR2(100 BYTE), 
	"QNACONTENT" VARCHAR2(3000 BYTE), 
	"REGDATE" DATE DEFAULT sysdate, 
	"QNAREF" NUMBER(5,0), 
	"QNASTEP" NUMBER(5,0), 
	"QNALEVEL" NUMBER(5,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIFEBOOK" ;
--------------------------------------------------------
--  DDL for Table REVIEW
--------------------------------------------------------

  CREATE TABLE "LIFEBOOK"."REVIEW" 
   (	"REVIEWNUM" NUMBER(5,0), 
	"USERID" VARCHAR2(15 BYTE), 
	"BOOKNUM" NUMBER(10,0), 
	"REVIEWTITLE" VARCHAR2(100 BYTE), 
	"REVIEWCONTENT" VARCHAR2(3000 BYTE), 
	"REGDATE" DATE DEFAULT sysdate, 
	"HITCNT" NUMBER(5,0) DEFAULT 0, 
	"RECOMMEND" NUMBER(5,0) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIFEBOOK" ;
--------------------------------------------------------
--  DDL for Table REVIEWCMT
--------------------------------------------------------

  CREATE TABLE "LIFEBOOK"."REVIEWCMT" 
   (	"RVCMTNUM" NUMBER(5,0), 
	"REVIEWNUM" NUMBER(5,0), 
	"RVCMTCONTENT" VARCHAR2(3000 BYTE), 
	"REGDATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIFEBOOK" ;
--------------------------------------------------------
--  DDL for Table USERINFO
--------------------------------------------------------

  CREATE TABLE "LIFEBOOK"."USERINFO" 
   (	"USERID" VARCHAR2(15 BYTE), 
	"USERPWD" VARCHAR2(15 BYTE), 
	"USERNAME" VARCHAR2(15 BYTE), 
	"USERPHONENUM" VARCHAR2(15 BYTE), 
	"USERADDR" VARCHAR2(100 BYTE), 
	"USERBIRTH" DATE, 
	"POINT" NUMBER(7,0) DEFAULT 0, 
	"ISADMIN" NUMBER(1,0) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIFEBOOK" ;
--------------------------------------------------------
--  DDL for View V_ORDER
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "LIFEBOOK"."V_ORDER" ("ORDERNUM", "ORDERDATE", "USERID", "ORDERRECIPIENT", "ORDERPHONENUM", "ORDERADDR", "AMOUNT", "BOOKNUM", "BOOKNAME", "BOOKIMG", "STATEMENT") AS 
  select o.ordernum
     , o.orderdate
     , o.userid
     , o.orderrecipient
     , o.ORDERPHONENUM
     , o.ORDERADDR
     , o.amount
     , o.booknum
     , b.bookname
     , b.bookimg
     , o.statement
from order_table o 
join bookinfo b
on o.booknum = b.booknum
;
REM INSERTING into LIFEBOOK.BOARD
SET DEFINE OFF;
Insert into LIFEBOOK.BOARD (BOARDNUM,USERID,BOARDTITLE,BOARDCONTENT,REGDATE,USERIP,FILENAME,FILESIZE,REALFILENAME,HITCNT,RECOMMEND) values (3,'member1','자유게시판 제목3','자유게시판 내용3',to_date('22/05/04','RR/MM/DD'),'192.168.0.202',null,0,null,0,0);
Insert into LIFEBOOK.BOARD (BOARDNUM,USERID,BOARDTITLE,BOARDCONTENT,REGDATE,USERIP,FILENAME,FILESIZE,REALFILENAME,HITCNT,RECOMMEND) values (1,'member1','자유게시판 제목1','자유게시판 내용1',to_date('22/05/04','RR/MM/DD'),'192.168.0.202',null,0,null,0,0);
Insert into LIFEBOOK.BOARD (BOARDNUM,USERID,BOARDTITLE,BOARDCONTENT,REGDATE,USERIP,FILENAME,FILESIZE,REALFILENAME,HITCNT,RECOMMEND) values (2,'member1','자유게시판 제목2','자유게시판 내용2',to_date('22/05/04','RR/MM/DD'),'192.168.0.202',null,0,null,3,0);
Insert into LIFEBOOK.BOARD (BOARDNUM,USERID,BOARDTITLE,BOARDCONTENT,REGDATE,USERIP,FILENAME,FILESIZE,REALFILENAME,HITCNT,RECOMMEND) values (4,'member1','자유게시판 제목4','자유게시판 내용4 ',to_date('22/05/04','RR/MM/DD'),'192.168.0.202',null,0,null,0,0);
Insert into LIFEBOOK.BOARD (BOARDNUM,USERID,BOARDTITLE,BOARDCONTENT,REGDATE,USERIP,FILENAME,FILESIZE,REALFILENAME,HITCNT,RECOMMEND) values (5,'member1','자유게시판 제목5','자유게시판 내용5',to_date('22/05/04','RR/MM/DD'),'192.168.0.202',null,0,null,0,0);
Insert into LIFEBOOK.BOARD (BOARDNUM,USERID,BOARDTITLE,BOARDCONTENT,REGDATE,USERIP,FILENAME,FILESIZE,REALFILENAME,HITCNT,RECOMMEND) values (6,'member1','자유게시판 제목6','자유게시판 내용6',to_date('22/05/04','RR/MM/DD'),'192.168.0.202',null,0,null,0,0);
Insert into LIFEBOOK.BOARD (BOARDNUM,USERID,BOARDTITLE,BOARDCONTENT,REGDATE,USERIP,FILENAME,FILESIZE,REALFILENAME,HITCNT,RECOMMEND) values (7,'member1','자유게시판 제목7','자유게시판 내용7',to_date('22/05/04','RR/MM/DD'),'192.168.0.202',null,0,null,0,0);
Insert into LIFEBOOK.BOARD (BOARDNUM,USERID,BOARDTITLE,BOARDCONTENT,REGDATE,USERIP,FILENAME,FILESIZE,REALFILENAME,HITCNT,RECOMMEND) values (8,'member1','자유게시판 제목8','자유게시판 내용8',to_date('22/05/04','RR/MM/DD'),'192.168.0.202',null,0,null,0,0);
Insert into LIFEBOOK.BOARD (BOARDNUM,USERID,BOARDTITLE,BOARDCONTENT,REGDATE,USERIP,FILENAME,FILESIZE,REALFILENAME,HITCNT,RECOMMEND) values (9,'member1','자유게시판 제목9','자유게시판 내용9',to_date('22/05/04','RR/MM/DD'),'192.168.0.202',null,0,null,0,0);
Insert into LIFEBOOK.BOARD (BOARDNUM,USERID,BOARDTITLE,BOARDCONTENT,REGDATE,USERIP,FILENAME,FILESIZE,REALFILENAME,HITCNT,RECOMMEND) values (10,'member1','자유게시판 제목10','자유게시판 내용10',to_date('22/05/04','RR/MM/DD'),'192.168.0.202',null,0,null,2,8);
Insert into LIFEBOOK.BOARD (BOARDNUM,USERID,BOARDTITLE,BOARDCONTENT,REGDATE,USERIP,FILENAME,FILESIZE,REALFILENAME,HITCNT,RECOMMEND) values (11,'member1','자유게시판 제목11','자유게시판 내용11',to_date('22/05/04','RR/MM/DD'),'192.168.0.202',null,0,null,2,0);
Insert into LIFEBOOK.BOARD (BOARDNUM,USERID,BOARDTITLE,BOARDCONTENT,REGDATE,USERIP,FILENAME,FILESIZE,REALFILENAME,HITCNT,RECOMMEND) values (12,'member1','자유게시판 제목12','자유게시판 내용12',to_date('22/05/04','RR/MM/DD'),'192.168.0.202',null,0,null,2,4);
REM INSERTING into LIFEBOOK.BOARDCOMMENT
SET DEFINE OFF;
Insert into LIFEBOOK.BOARDCOMMENT (CMTNUM,BOARDNUM,CMTCONTENT,REGDATE,USERIP) values (1,2,'ㅁㅁㅁㅁ',to_date('22/05/04','RR/MM/DD'),'192.168.0.210');
Insert into LIFEBOOK.BOARDCOMMENT (CMTNUM,BOARDNUM,CMTCONTENT,REGDATE,USERIP) values (2,2,'ㅁㅁㅁㅁ',to_date('22/05/04','RR/MM/DD'),'192.168.0.210');
Insert into LIFEBOOK.BOARDCOMMENT (CMTNUM,BOARDNUM,CMTCONTENT,REGDATE,USERIP) values (3,12,'ㅁㅁㅁㅁ',to_date('22/05/04','RR/MM/DD'),'192.168.0.210');
Insert into LIFEBOOK.BOARDCOMMENT (CMTNUM,BOARDNUM,CMTCONTENT,REGDATE,USERIP) values (4,11,'ㅁㅁㅁㅁ',to_date('22/05/04','RR/MM/DD'),'192.168.0.210');
Insert into LIFEBOOK.BOARDCOMMENT (CMTNUM,BOARDNUM,CMTCONTENT,REGDATE,USERIP) values (5,10,'ㅁㅁㅁㅁㅁ',to_date('22/05/04','RR/MM/DD'),'192.168.0.210');
REM INSERTING into LIFEBOOK.BOOKINFO
SET DEFINE OFF;
Insert into LIFEBOOK.BOOKINFO (BOOKNUM,BOOKNAME,BOOKDETAILS,BOOKPRICE,BOOKPUB,AUTHOR,BOOKIMG,BOOKSTOCK) values (1010100002,'작별인사 ','누구도 도와줄 수 없는 상황, 혼자 헤쳐나가야 한다
지켜야 할 약속, 붙잡고 싶은 온기
김영하가 『살인자의 기억법』 이후 9 년 만에 내놓는 장편소설 『작별인사』는 그리 멀지 않은 미래를 배경으로, 별안간 삶이 송두리째 뒤흔들린 한 소년의 여정을 좇는다. 유명한 IT 기업의 연구원인 아버지와 쾌적하고 평화롭게 살아가던 철이는 어느날 갑자기 수용소로 끌려가 난생처음 날것의 감정으로 가득한 혼돈의 세계에 맞닥뜨리게 되면서 정신적, 신체적 위기에 직면한다. 동시에 자신처럼 사회에서 배제된 자들을 만나 처음으로 생생한 소속감을 느끼고 따뜻한 우정도 싹틔운다. 철이는 그들과 함께 수용소를 탈출하여 집으로 돌아가기 위해 길을 떠나지만 그 여정에는 피할 수 없는 질문이 기다리고 있다.',12600,'복복서가','김영하 ','l9791191114225.jpg',1);
Insert into LIFEBOOK.BOOKINFO (BOOKNUM,BOOKNAME,BOOKDETAILS,BOOKPRICE,BOOKPUB,AUTHOR,BOOKIMG,BOOKSTOCK) values (1010100003,'저주토끼 ','2022 부커상 최종 후보 지명작!
한국 호러 SF/판타지 대표작가 정보라 대표작
2022년 인터내셔널 부커상 1차 후보가 발표되었을 때 한국 문학계는 몹시 놀랐다. 첫 번째 이유는 사상 최초로 한국 소설이 두 편이나 노미네이트되었기 때문이었으며, 두 번째 이유는 그 두 편 중 하나가 다른 하나에 비해 국내 문학 독자들에게 많이 알려지지 않은 소설집이었기 때문이었다. 어느 기자는 ‘무명의 부커상 후보’라는 단어를 써서 작가를 소개하기도 했다(SF계에서는 ‘어째서 정보라가 무명이냐’라며 탄식을 뱉긴 했으나).
그리고 최종 후보가 발표되었다. 그 ‘무명 아닌 무명’ 작가 정보라의 소설집, 《저주토끼》가 이름을 올렸다. 부커상 심사위원회는 《저주토끼》에 대해 “마법적 사실주의, 호러, SF의 경계를 초월했다”, “현대 사회에서 가부장제와 자본주의의 매우 현실적인 공포와 잔인함을 다루기 위해 환상적이고 초현실적인 요소들을 사용한다”라고 평했다.
관습과 허식에 얽매이지 않고 오래도록 자기만의 영역을 구축해 온 정보라의 쓸쓸한 이야기, 잔혹한 유머, ‘정보라’라고 이름 붙일 수밖에 없는 장르의 정수가 《저주토끼》에 있다.
',13320,'아작','정보라 ','l97911666866651.jpg',1);
Insert into LIFEBOOK.BOOKINFO (BOOKNUM,BOOKNAME,BOOKDETAILS,BOOKPRICE,BOOKPUB,AUTHOR,BOOKIMG,BOOKSTOCK) values (1010100004,'꽃잎 한 장처럼','“살아갈수록 나에겐 사람들이 어여쁘게 사랑으로 걸어오네”

불안과 우울의 시대를 살아가는 당신을 위해 이해인 수녀가 띄우는 위로의 시 편지 신작 시 30여 편 수록!
첫 서원을 한 지 54년, 희수라고 칭하는 만 77세를 맞은 이해인 수녀가 불안과 우울의 시대를 살아가는 우리를 위해 위로의 시 편지를 건넨다. 연둣빛 바람 부는 봄날의 꽃처럼 아름다고 향기로운 시와 글들은 봄이 와도 여전히 얼어붙어 있는 우리의 마음을 따뜻하게 녹여준다.',14400,'샘터','이해인','l9788946422056.jpg',100);
Insert into LIFEBOOK.BOOKINFO (BOOKNUM,BOOKNAME,BOOKDETAILS,BOOKPRICE,BOOKPUB,AUTHOR,BOOKIMG,BOOKSTOCK) values (1010200001,'아무튼, 피아노','나는 피아노를 배움으로써 돌이킬 수 없는 세계를 가진 인간이 되었다. 김겨울 작가와 아무튼 시리즈의 반가운 만남.',10800,'제철소','김겨울','l9791188343539.jpg',100);
Insert into LIFEBOOK.BOOKINFO (BOOKNUM,BOOKNAME,BOOKDETAILS,BOOKPRICE,BOOKPUB,AUTHOR,BOOKIMG,BOOKSTOCK) values (2010100001,'에르메스 수첩의 비밀','“이베이 역사상 가장 만족스런 구매로 기록될 중고 수첩 거래”(뉴욕 타임스). 우연히 손에 넣은 수첩에 적힌 놀라운 이름들. 샤걀, 콕토, 라캉, 자코메티, 엘뤼아르, 브르통, 브라사이, 아라공, 발튀스..... 누구일까? 이 모두를 알던 사람은? 그리고 이 모두에게 잊혀진 사람은?',15300,'복복서가','브리지트 밴케문','1982652580_Rduoi1ZX_72704eab8b8ec771df4571a53f770b306f576bc1.png',122);
Insert into LIFEBOOK.BOOKINFO (BOOKNUM,BOOKNAME,BOOKDETAILS,BOOKPRICE,BOOKPUB,AUTHOR,BOOKIMG,BOOKSTOCK) values (1010200003,'헌팅턴비치에 가면 네가 있을까','2022년 2월 26일, 시대의 지성이자 큰 스승이었던 이어령이 향년 89세를 일기로 별세했다. 그는 소진되어가는 생의 끝에서 오래도록 시들을 모아 정리하고 엮음새를 고민했다. 그리고 먼 길을 떠나기 며칠 전, 어렴풋하지만 단단한 목소리로 서문을 불러주며 이 시집을 완성했다.',11700,'이어령','열림원','l9791170400813.jpg',100);
Insert into LIFEBOOK.BOOKINFO (BOOKNUM,BOOKNAME,BOOKDETAILS,BOOKPRICE,BOOKPUB,AUTHOR,BOOKIMG,BOOKSTOCK) values (1010200004,'도전하지 않는 것이 부끄러운 것이다','〈강철부대〉 마스터 최영재의 첫 에세이!',13950,'최영재','자화상','l9791191200539.jpg',1123);
Insert into LIFEBOOK.BOOKINFO (BOOKNUM,BOOKNAME,BOOKDETAILS,BOOKPRICE,BOOKPUB,AUTHOR,BOOKIMG,BOOKSTOCK) values (1020100002,'최초의 질문','기술 주권에 대한 이정동 교수의 통찰 문제 해결자의 프레임에서 벗어나 질문하라 ㆍ 설계하라 ㆍ 게임의 규칙을 만들라',15300,'이정동','민음사','1982652580_Rduoi1ZX_72704eab8b8ec771df4571a53f770b306f576bc1.png',1);
Insert into LIFEBOOK.BOOKINFO (BOOKNUM,BOOKNAME,BOOKDETAILS,BOOKPRICE,BOOKPUB,AUTHOR,BOOKIMG,BOOKSTOCK) values (1010100010,'나는 대출 없이 0원으로 소형 아파트','직장인 3년 차, 통장에는 300만 원밖에 없었다. 부동산 경매에 입찰하기 위한 보증금 2000만 원이 없어서 대출을 받아야 했다. 그렇게 부동산 투자를 시작한 지 10년, 그는 110억 원에 달하는 50여 채의 부동산을 소유한 자산가가 되었다. 《나는 대출 없이 0원으로 소형 아파트를 산다》를 쓴 부동산 분야에서 가장 핫한 인플루언서이자 30대 파이어족인 ‘잭파시’의 이야기다.
이 책은 부동산 계약금조차 없어서 6개월간 네이버 부동산의 매물 검색만 하며 돈 없이도 투자할 수 있는 집을 찾던 저자가 멘땅에 헤딩하듯 손품과 발품을 팔아가며 10년간 개발해온 소액투자의 기술과 실전 사례를 집대성한 책이다. 저자는 잭파시가 산 물건이라고 하면 거래량이 뛰고 그가 강의를 열면 하루 만에 마감되는 등 투자자들이 먼저 인정한 무피 투자의 고수다. 그는 이 책을 통해 직접 실행하며 돈을 벌어왔고, 지금도 같은 방법으로 돈을 벌고 있는 투자 전략들을 아낌없이 공개했다. 아파트 단지 이름은 물론 매수 시기, 투자비용과 수익까지 모두 공개한 실전 사례는 읽는 것만으로도 투자 경험이 되며, 그가 개발한 아파트·오피스텔 투자 타당성 분석은 10년 투자 경력이 집약된 분석 툴이다. 게다가 현재까지 개인 명의의 다주택자로서 세금을 무서워하지 않으면서도 꾸준히 투자해올 수 있었던 절세 전략은 어디에서도 들을 수 없는 독보적인 노하우다. 이 책은 누구나 부동산 투자에 뛰어들 수 있다는 자신감을 주며 ‘정말 대출 없이 0원으로 집을 살 수 있어?’라고 생각하는 투자자들에게 명확한 답을 줄 것이다.',18000,'다산북스','잭파시','l9791130689876.jpg',1);
Insert into LIFEBOOK.BOOKINFO (BOOKNUM,BOOKNAME,BOOKDETAILS,BOOKPRICE,BOOKPUB,AUTHOR,BOOKIMG,BOOKSTOCK) values (1010100001,'애쓰지 않아도','“사람의 마음은 좀처럼 지치지를 않나봐요.
자꾸만 노력하려 하고, 다가가려 해요.
나에게도 그 마음이 살아 있어요.”
마음산책 열네 번째 짧은 소설로 출간되는 이번 책은 김세희 그림 작가가 함께했다. 풍경에 스미는 빛을 포착해서 캔버스 위에 옮겨놓는 김세희 작가의 작품들은 따스한 봄을 닮았다. 애틋함이 가득한 그림들은 최은영 소설 속 인물들을 떠올리게 한다. 『애쓰지 않아도』에는 짧은 소설 열세 편과 함께 원고지 100매가량의 단편소설이 한 편 수록되어 있다. 보다 자연스럽고 경쾌하게 진행되는 짧은 소설과 어우러진 단편소설에서는 최은영 특유의 관계에 대한 진지한 탐색을 좀 더 묵직한 호흡으로 만나볼 수 있다.',13050,'마음산책','최은영 ','b1.jpg',100);
Insert into LIFEBOOK.BOOKINFO (BOOKNUM,BOOKNAME,BOOKDETAILS,BOOKPRICE,BOOKPUB,AUTHOR,BOOKIMG,BOOKSTOCK) values (1020100003,'직장인 부동산투자 오늘부터1일','평범한 직장인 7인은 어떻게 수십, 수백억 부자가 되었나?
평범한 직장인 7인이 어떻게 자산가가 될 수 있었는지, 그리고 지금은 어떤 방향으로 투자하고 있는지 알려주는 책이다. 부동산 투자에 대한 긍정적인 마인드는 저자 7인이 비슷하지만, 각각의 투자성향과 투자과정은 꽤 다르다.
『직장인 부동산 투자 오늘부터 1일』의 저자 7인은 서울 및 수도권 아파트, 지방 아파트, 아파트 분양권, 재개발/재건축 등 도시정비 사업, 오피스텔, 상가, 지식산업센터, 그리고 꼬마빌딩 등 서로 다른 각자의 분야에서 성공을 거두고 있으며, 이 책은 그에 대한 다양한 실전사례를 소개하고 있다.
그래서 오히려 독자들은 비슷하지만 각기 다른 생각을 가진 저자들의 다양한 경험과 노하우를 접하면서, 그중에서 자신에게 어울리는 투자방법이 무엇일지 각자의 상황에 맞추어 취사선택할 수 있을 것이다.',15750,'스마트북스','자유몽 외','1982652580_Rduoi1ZX_72704eab8b8ec771df4571a53f770b306f576bc1.png',1);
Insert into LIFEBOOK.BOOKINFO (BOOKNUM,BOOKNAME,BOOKDETAILS,BOOKPRICE,BOOKPUB,AUTHOR,BOOKIMG,BOOKSTOCK) values (1020200002,'프레임의 힘','앞으로 펼쳐질 미래 사회에서 우리가 살아남기 위해 가장 필요한 기술은 ‘두 개의 반대되는 의견을 놓고 하나의 결론을 내리는 것’이라고 한다. 세계 최고 빅데이터 전문가들과 인지심리학자 김경일 교수의 합작으로 다가올 혼돈의 시기에 인간으로 서 갖춰야할 생존 기술, 프레임의 능력에 대해 자세히 풀어냈다. ''인간의 인지적 민첩성, 상상력, 탄력성에 대한 찬가''라는 이코노미스트의 추천사처럼, 이 책은 인간 고유의 능력을 극대화할 방법을 안내할 것이다.',17820,'21세기북스','케네스쿠키어','l9788950999445.jpg',100);
Insert into LIFEBOOK.BOOKINFO (BOOKNUM,BOOKNAME,BOOKDETAILS,BOOKPRICE,BOOKPUB,AUTHOR,BOOKIMG,BOOKSTOCK) values (1020200003,'위기주도학습법','공부나 업무를 하려고 책상 앞에 앉으면 자꾸 딴짓하고 싶다. 그러다가 결국 데드라인에 임박해 쫓기듯 일을 처리하며 자책한다. 그러면서 한편으로는 1시간 공부하고 100시간 공부한 것과 같은 성과를 내고 싶다. 그런 마음으로 각종 공부법, 학습법, 몰입법에 대한 책을 들여다보지만, 그때뿐, 잘하지 못하는 현실은 나아지지 않는다. 《위기주도학습법》은 매번 유혹에 흔들리는 사람의 마음은 본능에 가까운 것이라고 깊이 공감하면서도, 마음먹기에만 의지해, 나에게 맞지 않은 옷과 같은 다른 공부법에만 의지해 상황을 모면하려는 태도를 지적한다. 그러면서 실질적으로 공부나 일을 많이 할 수 있는 환경, 그 환경 안에서 밀도 높게 몰입할 수 있는 방법으로 ‘위기’를 이용하라고 제안한다. 소중한 걸 잃을 수 있다는 심리 기제를 이용하면 그 어떤 방법론보다 성과를 내는 데 효과적이라는 것. 그 위기를 구체적으로 학습 과정에 어떻게 조성하고 이용할 수 있는지 서울대 로스쿨 출신 공부 프로 임현서가 자신의 경험담을 곁들여 이 책에 담았다.
',12600,'스튜디오 오드리','임현서','l9791191043600.jpg',1);
Insert into LIFEBOOK.BOOKINFO (BOOKNUM,BOOKNAME,BOOKDETAILS,BOOKPRICE,BOOKPUB,AUTHOR,BOOKIMG,BOOKSTOCK) values (1020200004,'면접바이블 2.0','독보적 취업 유튜버 ‘면접왕 이형’의 베스트셀러 ‘면접 바이블’이 개정판으로 돌아왔다!
자소서와 면접을 한방에 준비하는 취업필살기!

1) 매년 2,000여 명의 면접만 10년! 채용과 면접의 모든 것을 담았다!
2) 38만명 구독자와 함께하는 독보적 취업 유튜브의 핵심을 정리했다!
3) 총 11만개의 댓글 분석! 가장 공감대 높은 질문 중심 컨텐츠로 구성했다! (*유튜브 데이터는 19년 5월 초 기준)
4) 생생한 구독자들의 현직자 인터뷰 돌파 사례 수록!
5) 1,000명의 합격 패턴과 면접 질문 분석! 현직 면접관과 헤드헌터들도 찾아보는 면접서!

유튜버 면접왕 이형이 구독자의 실제적인 취업고민을 해결하기 위해 만든 필수템!
불안함, 외로움, 후회감에 휩싸인 취업준비생에게 전 대기업 인사총괄책임자 이형이 보내는 편지와 같은 책!

취준생도 면접관의 의도와 심리를 알고 이기는 싸움을 하자!
어떻게?

1) 면접관의 심리를 이해하고 마인드셋부터 재정비하자.
2) 묻지마 지원은 이제 그만. 직무 / 산업 / 직장 순으로 단순 취업이 아닌 성공적인 커리어를 쌓자.
3) 나만의 ‘취업필살기’를 만들어 자소서와 면접을 한방에 준비하자.
4) 임원의 시각과 언어로 대화할 수 있도록 학습하자.
5) 취준생이라면 누구나 가질 의문에 대해 이 책으로 한방에 해결하자.',17820,'얼라이브북스','면접왕 이형','1982652580_Rduoi1ZX_72704eab8b8ec771df4571a53f770b306f576bc1.png',1);
Insert into LIFEBOOK.BOOKINFO (BOOKNUM,BOOKNAME,BOOKDETAILS,BOOKPRICE,BOOKPUB,AUTHOR,BOOKIMG,BOOKSTOCK) values (2010100002,'결제테스트용','결제테스트용도서입니다',100,'결제','테스트','1982652580_Rduoi1ZX_72704eab8b8ec771df4571a53f770b306f576bc1.png',100);
REM INSERTING into LIFEBOOK.CART
SET DEFINE OFF;
REM INSERTING into LIFEBOOK.FAQ
SET DEFINE OFF;
Insert into LIFEBOOK.FAQ (FAQNUM,FAQCATEGORY,FAQTITLE,FAQCONTENT,REGDATE) values (1,'계정관리','회원 정보 수정은 어디서 할 수 있나요?',' 회원 정보 수정은 메인 페이지 상단의 회원 ID를 클릭하여 마이페이지에 들어가신 다음, 정보변경 버튼을 눌러 수정 가능합니다.',to_date('22/05/04','RR/MM/DD'));
Insert into LIFEBOOK.FAQ (FAQNUM,FAQCATEGORY,FAQTITLE,FAQCONTENT,REGDATE) values (2,'상품문의','리뷰보기 서비스가 무엇인가요?',' 저희 사이트에서 책을 구매하신 경우, 책 후기 게시판에서 해당 책의 후기를 작성하실 수 있습니다.
  후기를 작성하시면 다른 회원분들이 리뷰보기를 통해 회원님이 작성하신 후기를 보고 도서의 대략적인 판단을 할 수 있는 기준이 될 수 있으며, 추천을 받게 될 경우 메인 페이지의 베스트도서에 선정되실 수 있습니다!',to_date('22/05/04','RR/MM/DD'));
Insert into LIFEBOOK.FAQ (FAQNUM,FAQCATEGORY,FAQTITLE,FAQCONTENT,REGDATE) values (3,'배송문의','회원가입을 하지 않아도 책을 구매할 수 있나요?',' 네 회원가입을 하지 않으셔도 책을 구매하실 수 있습니다.
  책을 구매하시고 받으신 주문번호를 통해 주문현황을 확인하실 수 있습니다.',to_date('22/05/04','RR/MM/DD'));
Insert into LIFEBOOK.FAQ (FAQNUM,FAQCATEGORY,FAQTITLE,FAQCONTENT,REGDATE) values (4,'교환/반품문의','구매한 도서의 표지가 불량인 것 같아요. 반품이 가능한가요?','책 단면이 울퉁불퉁한 외국도서는 고급 제본 방식으로(Deckle Edge/Rough Cut)

일부러 울퉁불퉁하게 처리하여 자연미를 강조하고, 손가락 베임을 방지하기 위해 제본 상품 이므로

반품/교환 대상이 아닙니다.



해외 도서 정보 부족으로 해당 특징이 표기 되어 있지 않을 수 있으나,

파본이 아니므로 해당 사유로 반품 및 교환이 불가한 점 양해 부탁 드립니다.',to_date('22/05/04','RR/MM/DD'));
Insert into LIFEBOOK.FAQ (FAQNUM,FAQCATEGORY,FAQTITLE,FAQCONTENT,REGDATE) values (6,'상품문의','검색이 되지 않거나 품절/절판인 도서는 구매할 수 없나요?','검색이 되지 않는 도서는 품절/절판일 경우가 대부분입니다.

품절이나 절판으로 표시된 도서는 출판사에서도 더 이상 발행되지 않고 재고가 없는 경우가 대부분이라,
구하기 어려운 도서입니다. 이 경우 회원님께서 요청하셔도 구입시기를 확실하게 약속드릴 수 없습니다.
이러한 도서의 구입가능 여부를 확인하시려면 고객의 소리의 1:1문의 상담을 이용하여 주십시오.
최대한 확인하여 답변드리겠습니다.',to_date('22/05/04','RR/MM/DD'));
Insert into LIFEBOOK.FAQ (FAQNUM,FAQCATEGORY,FAQTITLE,FAQCONTENT,REGDATE) values (7,'기타문의','장바구니에 넣은 도서는 어디에서 확인할 수 있나요?','상단의 Cart 메뉴를 누르시거나 마이페이지의 장바구니 메뉴를 통해 장바구니에 담은 도서를 확인하실 수 있습니다.',to_date('22/05/04','RR/MM/DD'));
Insert into LIFEBOOK.FAQ (FAQNUM,FAQCATEGORY,FAQTITLE,FAQCONTENT,REGDATE) values (8,'기타문의','주문을 수정(취소/변경)할 수 있나요?',' 장바구니에 담아두신 것이 아닌 결제를 통해 입금까지 완료하셨을 경우, 고객의 소리의 1:1문의를 통해 관리자에게 문의를 하여 주문 내용을 수정하실 수 있습니다.',to_date('22/05/04','RR/MM/DD'));
Insert into LIFEBOOK.FAQ (FAQNUM,FAQCATEGORY,FAQTITLE,FAQCONTENT,REGDATE) values (9,'배송문의','주문하면 얼마 만에 도서를 받을 수 있나요?','고객님께서 주문하신 상품을 실제 받으시는 날은 "예상출고일+배송일"입니다.

''예상출고일''이란 근무일 기준으로 도서가 준비되는 시간만을 안내하는 것이며,
배송시간은 예상출고일 외 택배를 통해 고객님께 실제 배달되는 기간을 말합니다.

출고예정일은 상품에 따라 준비기간이 다르며
배송 시간은 지역에 따라 약간씩 다르나 보통 1~3일정도 소요됩니다.
(도서산간지역은 최대 7일 소요)

* 예상출고일은 영업일 기준으로 산정되며, 일요일과 공휴일 및 기타 휴무일에는 배송되지 않습니다.
(우체국 배송은 토요일 휴무로 배송 불가함)
* 주문한 상품의 당사에 재고가 없을 때는 거래처로 다시 주문 요청한 후 출고되므로 3∼7일내외 정도 더 소요됩니다.
* 천재지변 등의 불가항력적 사유로 인한 배송 지연은 그 해당기간 동안의 배송소요 기간에서 제외됩니다.',to_date('22/05/04','RR/MM/DD'));
Insert into LIFEBOOK.FAQ (FAQNUM,FAQCATEGORY,FAQTITLE,FAQCONTENT,REGDATE) values (4,'교환/반품문의','구매한 도서의 표지가 불량인 것 같아요. 반품이 가능한가요?','책 단면이 울퉁불퉁한 외국도서는 고급 제본 방식으로

일부러 울퉁불퉁하게 처리하여 자연미를 강조하고, 손가락 베임을 방지하기 위해 제본 상품 이므로

반품/교환 대상이 아닙니다.



해외 도서 정보 부족으로 해당 특징이 표기 되어 있지 않을 수 있으나,

파본이 아니므로 해당 사유로 반품 및 교환이 불가한 점 양해 부탁 드립니다.',to_date('22/05/04','RR/MM/DD'));
Insert into LIFEBOOK.FAQ (FAQNUM,FAQCATEGORY,FAQTITLE,FAQCONTENT,REGDATE) values (10,'기타문의','사용가능한 결제 수단은 무엇이 있나요?',' 사용가능한 결제수단은 아래와 같습니다.

  - 신용카드
  - 카카오페이
  - 네이버페이
  - PAYCO
  - SK PAY
  - 삼성페이 : 안드로이드에서만 이용가능
    (단말기에 따라 노출이 안될 수 있습니다. 삼성페이 지원 단말기는 삼성페이 홈페이지에서 확인가능합니다.)
  - 토스
  - CHAI
  - 무통장입금 : 바로드림, eBook 구매 시 사용불가
  - 휴대폰결제
  - 실시간계좌이체 : 별도 계좌이체 PG앱 설치 필요',to_date('22/05/04','RR/MM/DD'));
Insert into LIFEBOOK.FAQ (FAQNUM,FAQCATEGORY,FAQTITLE,FAQCONTENT,REGDATE) values (11,'상품문의','전자책은 어디에서 구매할 수 있나요?',' 죄송합니다 회원님. 저희 인색책방에서는 전자책 상품은 판매하고 있지 않습니다.',to_date('22/05/04','RR/MM/DD'));
Insert into LIFEBOOK.FAQ (FAQNUM,FAQCATEGORY,FAQTITLE,FAQCONTENT,REGDATE) values (12,'상품문의','책을 대량으로 구매하고 싶은데 어떻게 하나요?',' 쇼핑몰에서 책을 구매하실 때 상품의 수량을 원하시는 만큼 정하실 수 있습니다.',to_date('22/05/04','RR/MM/DD'));
Insert into LIFEBOOK.FAQ (FAQNUM,FAQCATEGORY,FAQTITLE,FAQCONTENT,REGDATE) values (13,'기타문의','고객센터 근무시간은 어떻게 되나요?',' 고객센터 근무시간은 평일 월-금 09:00-18:00 입니다.
- 단, 12시-13시 중식시간
- 토,일 및 공휴일 휴무',to_date('22/05/04','RR/MM/DD'));
REM INSERTING into LIFEBOOK.NOTICE
SET DEFINE OFF;
Insert into LIFEBOOK.NOTICE (NOTICENUM,USERID,NOTICETITLE,NOTICECONTENT,REGDATE,HITCNT) values (1,'aaa','인생책방 시스템 점검 안내','안녕하세요. <br>
함께하는 공간, 인생책방입니다.<br><br>

고객님께 보다 편리하고 안정적인 서비스를 제공하기 위한 정기점검에 대해 안내드립니다.<br>

점검 시간동안에는 인생책방의 모든 서비스가 제공되지 않을 예정이오니 <br>
고객님께서는 불편을 겪지 않도록 아래의 시간을 확인해주시기 바랍니다. <br><br>

○ 서비스 점검시간 : 2022년 5월 5일(목) 02:00 ~ 08:00 (6시간동안)<br><br>

인생책방에서는 보다 안전하고 빠르게 작업을 마쳐 <br>
고객님께 원활한 서비스를 제공할 수 있도록 최선을 다 하겠습니다. <br><br>

※ 서비스일시중단 관련 문의사항은<br>
인생책방 고객센터(☎ 1544-0000 / 09시 ~ 18시, 토요일, 공휴일 휴무)로 알려주시면<br>
친절하게 안내드리겠습니다.<br><br>

감사합니다.',to_date('22/05/04','RR/MM/DD'),8);
Insert into LIFEBOOK.NOTICE (NOTICENUM,USERID,NOTICETITLE,NOTICECONTENT,REGDATE,HITCNT) values (4,'aaa','고객센터 전화상담 장애 복구 안내','안녕하세요.<br>
함께하는 공간, 인생책방입니다.<br><br>

ARS 업체의 서버 다운으로 인하여<br>
인생책방 고객센터 대표번호 ☎ 1544-0000의 ARS연결이 고르지 못하여<br>
서비스 이용에 불편을 드린 점 진심으로 사과말씀드립니다.<br><br>

--------------------------------------------------------<br>
1. 서비스 장애내용 :<br>
  - 고객센터 대표번호 ☎ 1544-0000 연결장애<br><br>

2. 서비스 장애시간 :<br>
  - 2022년 5월 4일(수) 11:00 ~ 13:25 (2시간 25분)<br><br>

--------------------------------------------------------<br>
현재 장애는 복구되어 정상적으로 이용 가능합니다.<br>
위 장애기간 내에 이용에 불편을 드린 점 다시금 사과말씀드리며,<br>
보다 친절하고 기분 좋은 상담 서비스가 될 수 있도록 노력하는 인생책방이 되겠습니다.<br><br>

감사합니다. ',to_date('22/05/04','RR/MM/DD'),1);
Insert into LIFEBOOK.NOTICE (NOTICENUM,USERID,NOTICETITLE,NOTICECONTENT,REGDATE,HITCNT) values (2,'aaa','인생책방 배송업체 변경','인생책방 배송업체가 변경되어 안내 말씀드립니다. <br><br><br>


안녕하세요. 인생책방입니다.<br><br>

언제나 인생책방를 사랑해주시는 고객님께 진심으로 감사드리며,<br>
인생책방 주문에 대한 배송업체가 변경되어 안내드립니다.<br><br>

변경일자 : 2022년 5월 15일 (일) 부터<br>
내    용 : 한진택배 → CJ대한통운 <br>

배송업체 변경으로 인하여 5월 12일(목) 이후 교환/반품에 대한 물품 회수는 5월 16일(월) 이후 진행될 예정입니다. <br>
이에 배송업체 변경으로 인한 불가피한 회수 지연이 발생하게 된 점 깊이 양해말씀드립니다.<br>

앞으로도 보다 나은 서비스를 제공드릴 수 있도록 최선을 다하겠습니다. <br>
감사합니다. ',to_date('22/05/04','RR/MM/DD'),3);
Insert into LIFEBOOK.NOTICE (NOTICENUM,USERID,NOTICETITLE,NOTICECONTENT,REGDATE,HITCNT) values (3,'aaa','네이버페이 결제서비스 점검안내','안녕하세요.<br>
함께하는 공간, 인생책방입니다.<br><br>

언제나 인생책방을 아끼고 사랑해주시는 고객님께 진심으로 감사 드리며,<br>
네이버페이 서비스 업그레이드 작업으로 인하여 아래와 같이<br>
네이버페이 서비스가 일시 중단됨을 안내 드립니다.<br><br>


------------------------------------------------------------------------<br>
1. 서비스 중지 내용 :<br>
  - 네이버페이 결제서비스<br><br>

2. 작업 시간 :<br>
  - 2022년 5월 7일 (토) 05:00 ~ 09:00 (4시간)<br>
------------------------------------------------------------------------<br><br>

위 내용을 참고하시어 이용에 불편이 없으시기 바랍니다.<br><br>

※ 네이버페이 서비스 일시중단 관련 문의사항은<br>
네이버페이 고객센터 ☎ 1588-3816로 문의부탁드립니다.<br><br>

감사합니다.',to_date('22/05/04','RR/MM/DD'),1);
Insert into LIFEBOOK.NOTICE (NOTICENUM,USERID,NOTICETITLE,NOTICECONTENT,REGDATE,HITCNT) values (5,'aaa','LGU+ 휴대폰소액결제 시스템점검안내','LGU+ 휴대폰소액결제 시스템점검안내<br><br>

안녕하세요.<br>
함께하는 공간, 인생책방입니다.<br><br>

LGU+ 휴대폰소액결제시 서비스 작업으로 인하여 결제서비스가<br>
아래와 같이 일시 중단될 예정입니다.<br><br>

--------------------------------------------------------<br>
1. 서비스 중지내용 :<br>
  - LGU+ 휴대폰소액결제 서비스<br><br>

2. 작업시간 :<br>
  - 2022년 5월 5일(목) 00:00 ~ 01:00 (1시간)<br>
--------------------------------------------------------<br><br>

위 내용을 참고하시어 이용에 불편이 없으시기를 바랍니다.<br><br>

감사합니다.',to_date('22/05/04','RR/MM/DD'),1);
Insert into LIFEBOOK.NOTICE (NOTICENUM,USERID,NOTICETITLE,NOTICECONTENT,REGDATE,HITCNT) values (6,'aaa','2022년 5월 신용카드 무이자할부 안내','인생책방 2022년 5월 무이자할부 적용 카드를 알려드립니다.<br><br>

5월에 아래 카드로 5만원 이상 구매시 2~3개월 무이자할부 서비스를 제공합니다.<br><br>

많은 이용 부탁드립니다.<br><br>


   * 적용카드 * <br><br>

    - 외환카드<br><br>

    - 삼성카드<br><br> 

    - KB카드<br><br>

    - 롯데카드<br><br>

      (롯데카드는 6개월 슬림할부 병행함. 슬림할부란? 1회차 고객부담, 2~6회차 롯데카드 부담)<br><br>

    - POMM하나카드(상시 무이자할부 적용)<br><br>

    - 마이원카드(상시 무이자할부 적용)<br><br>

    - 우리멤버스카드(상시 무이자할부 적용) ',to_date('22/05/04','RR/MM/DD'),1);
Insert into LIFEBOOK.NOTICE (NOTICENUM,USERID,NOTICETITLE,NOTICECONTENT,REGDATE,HITCNT) values (7,'aaa','SKT 휴대폰 소액결제 시스템점검 안내','SKT 휴대폰소액결제 시스템점검안내<br><br>

안녕하세요.<br>
함께하는 공간, 인생책방입니다.<br><br>

SKT 휴대폰소액결제시 서비스 작업으로 인하여 결제서비스가<br>
아래와 같이 일시 중단될 예정입니다.<br><br>

--------------------------------------------------------<br>
1. 서비스 중지내용 :<br>
  - SKT 휴대폰소액결제 서비스<br><br>

2. 작업시간 :<br>
  - 2022년 5월 7일(토) 00:00 ~ 01:00 (1시간)<br>
--------------------------------------------------------<br><br>

위 내용을 참고하시어 이용에 불편이 없으시기를 바랍니다.<br><br>

감사합니다.',to_date('22/05/04','RR/MM/DD'),1);
Insert into LIFEBOOK.NOTICE (NOTICENUM,USERID,NOTICETITLE,NOTICECONTENT,REGDATE,HITCNT) values (8,'aaa','인생책방 개인정보 처리방침 변경','안녕하세요. 함께하는 공간, 인생책방입니다.<br><br>

인생책방을 이용해 주시는 고객님께 감사 드립니다.<br>
인생책방 개인정보처리방침이 다음과 같이 일부 개정 될 예정으로 변경내용을 사전 공지하오니<br>
서비스 이용에 참조하시기 바랍니다.<br><br><br>


1. 개정 사유<br><br>

- 개인정보 처리 위탁업체 추가 및 삭제<br><br>


2. 개정 사항<br><br>

구분	업체명	위탁 업무 내용<br>
위탁업체 추가	씨에스쉐어링㈜	고객센터 고객상담 업무<br>
위탁업체 삭제	㈜큐랜드	바로드림 퀵서비스 배송업무<br>
㈜매쉬코리아	바로드림 오늘배송 서비스<br>
3. 개정 일자<br><br>

- 2022년 5월 4일부터 시행<br><br><br>


개정된 개인정보 처리방침 내용에 대한 문의사항이 있으신 경우<br>
인생책방 고객센터(1544-0000)으로 문의 주시면 신속하고 친절하게 안내해 드리겠습니다.<br>
이에 동의하지 않는 경우 회원탈퇴를 요청하실 수 있습니다.<br><br>

인생책방은 개인정보 관련 법령 준수 및 고객님들의 개인정보 보호/관리를 위해 최선을 다하고 있으며,<br>
앞으로도 더욱 좋은 서비스를 위해 노력하겠습니다.<br>
감사합니다.',to_date('22/05/04','RR/MM/DD'),1);
Insert into LIFEBOOK.NOTICE (NOTICENUM,USERID,NOTICETITLE,NOTICECONTENT,REGDATE,HITCNT) values (9,'aaa','인생책방 개인정보 처리방침 변경','안녕하세요. 함께하는 공간, 인생책방입니다.<br><br>

인생책방을 이용해 주시는 고객님께 감사 드립니다.<br>
인생책방 개인정보처리방침이 다음과 같이 일부 개정 될 예정으로 변경내용을 사전 공지하오니<br>
서비스 이용에 참조하시기 바랍니다.<br><br>


1. 개정 사유<br><br>

- 개인정보 보호책임자 변경<br><br>


2. 개정 사항<br><br>

구분	개정 전	개정 후<br>
개인정보 보호책임자	마케팅추진단 박성욱	전략기획실 최봉준<br>
3. 개정 일자<br><br>

- 2022년 5월 6일부터 시행<br><br><br>


개정된 개인정보 처리방침 내용에 대한 문의사항이 있으신 경우<br>
인생책방 고객센터(1544-0000)으로 문의 주시면 신속하고 친절하게 안내해 드리겠습니다.<br>
이에 동의하지 않는 경우 회원탈퇴를 요청하실 수 있습니다.<br><br>

인생책방은 개인정보 관련 법령 준수 및 고객님들의 개인정보 보호/관리를 위해 최선을 다하고 있으며,<br>
앞으로도 더욱 좋은 서비스를 위해 노력하겠습니다.<br>
감사합니다.',to_date('22/05/04','RR/MM/DD'),1);
Insert into LIFEBOOK.NOTICE (NOTICENUM,USERID,NOTICETITLE,NOTICECONTENT,REGDATE,HITCNT) values (10,'aaa','CJ대한통운 택배 배송 지연 안내','안녕하세요. 인생책방입니다.
아래 사유로 인하여 CJ대한통운 택배 배송 지연이 예상되어 안내드립니다.

- 일시 : 2022년 5월 8일 (일)부터
- 내용 : 전국택배노조 배달 거부에 따른 배송 지연

하루빨리 정상화되어 안전하고 신속히 배송 드릴 수 있도록 노력하겠습니다.

감사합니다.',to_date('22/05/04','RR/MM/DD'),0);
Insert into LIFEBOOK.NOTICE (NOTICENUM,USERID,NOTICETITLE,NOTICECONTENT,REGDATE,HITCNT) values (11,'aaa','카카오페이 결제서비스 점검안내','안녕하세요.<br>
함께하는 공간, 인생책방입니다.<br><br>

언제나 인생책방을 아끼고 사랑해주시는 고객님께 진심으로 감사 드리며,<br>
카카오페이 서비스 업그레이드 작업으로 인하여 아래와 같이<br>
카카오페이 서비스가 일시 중단됨을 안내 드립니다.<br><br>


------------------------------------------------------------------------<br>
1. 서비스 중지 내용 :<br>
  - 카카오페이 결제서비스<br><br>

2. 작업 시간 :<br>
  - 2022년 5월 8일 (토) 05:00 ~ 09:00 (4시간)<br>
------------------------------------------------------------------------<br><br>

위 내용을 참고하시어 이용에 불편이 없으시기 바랍니다.<br><br>

※ 카카오페이 서비스 일시중단 관련 문의사항은<br>
카카오페이 고객센터 ☎ 1644-7405로 문의부탁드립니다.<br><br>

감사합니다.',to_date('22/05/04','RR/MM/DD'),1);
REM INSERTING into LIFEBOOK.ORDER_TABLE
SET DEFINE OFF;
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040001,'admin',1010100002,to_date('22/05/04','RR/MM/DD'),'관리자','01000001111','13536,  경기 성남시 분당구 판교역로 4,  adssd',1,'배송완료');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040002,'admin',1010100002,to_date('22/05/04','RR/MM/DD'),'관리자','01000001111','13536,  경기 성남시 분당구 판교역로 4,  adssd',1,'준비중');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040003,'admin',1010100003,to_date('22/05/04','RR/MM/DD'),'관리자','01000001111','13536,  경기 성남시 분당구 판교역로 4,  adssd',1,'배송완료');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040004,'admin',1010100003,to_date('22/05/04','RR/MM/DD'),'관리자','01000001111','13536,  경기 성남시 분당구 판교역로 4,  adssd',1,'준비중');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040005,'admin',1010100003,to_date('22/05/04','RR/MM/DD'),'관리자','01000001111','13536,  경기 성남시 분당구 판교역로 4,  adssd',1,'준비중');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040006,'admin',1010100004,to_date('22/05/04','RR/MM/DD'),'관리자','01000001111','13536,  경기 성남시 분당구 판교역로 4,  adssd',1,'배송완료');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040007,'admin',1010100004,to_date('22/05/04','RR/MM/DD'),'관리자','01000001111','13536,  경기 성남시 분당구 판교역로 4,  adssd',1,'배송완료');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040008,'admin',1010100004,to_date('22/05/04','RR/MM/DD'),'관리자','01000001111','13536,  경기 성남시 분당구 판교역로 4,  adssd',1,'준비중');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040009,'admin',1010100001,to_date('22/05/04','RR/MM/DD'),'관리자','01000001111','13536,  경기 성남시 분당구 판교역로 4,  adssd',1,'준비중');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040010,'admin',1010100001,to_date('22/05/04','RR/MM/DD'),'관리자','01000001111','13536,  경기 성남시 분당구 판교역로 4,  adssd',1,'배송완료');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040011,'admin',1010100001,to_date('22/05/04','RR/MM/DD'),'관리자','01000001111','13536,  경기 성남시 분당구 판교역로 4,  adssd',1,'배송완료');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040012,'admin',1010100010,to_date('22/05/04','RR/MM/DD'),'관리자','01000001111','13536,  경기 성남시 분당구 판교역로 4,  adssd',1,'준비중');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040013,'admin',1010100010,to_date('22/05/04','RR/MM/DD'),'관리자','01000001111','13536,  경기 성남시 분당구 판교역로 4,  adssd',1,'준비중');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040014,'admin',2010100001,to_date('22/05/04','RR/MM/DD'),'관리자','01000001111','13536,  경기 성남시 분당구 판교역로 4,  adssd',1,'준비중');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040015,'admin',1010200001,to_date('22/05/04','RR/MM/DD'),'관리자','01000001111','13536,  경기 성남시 분당구 판교역로 4,  adssd',1,'준비중');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040016,'admin',1010200001,to_date('22/05/04','RR/MM/DD'),'관리자','01000001111','13536,  경기 성남시 분당구 판교역로 4,  adssd',1,'준비중');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040017,'admin',1010200001,to_date('22/05/04','RR/MM/DD'),'관리자','01000001111','13536,  경기 성남시 분당구 판교역로 4,  adssd',1,'준비중');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040018,'admin',1010200003,to_date('22/05/04','RR/MM/DD'),'관리자','01000001111','13536,  경기 성남시 분당구 판교역로 4,  adssd',1,'배송완료');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040019,'admin',1010200003,to_date('22/05/04','RR/MM/DD'),'관리자','01000001111','13536,  경기 성남시 분당구 판교역로 4,  adssd',1,'준비중');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040020,'admin',1010200004,to_date('22/05/04','RR/MM/DD'),'관리자','01000001111','13536,  경기 성남시 분당구 판교역로 4,  adssd',1,'배송완료');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040021,'admin',1020200003,to_date('22/05/04','RR/MM/DD'),'관리자','01000001111','13536,  경기 성남시 분당구 판교역로 4,  adssd',1,'배송완료');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040022,'admin',1020200003,to_date('22/05/04','RR/MM/DD'),'관리자','01000001111','13536,  경기 성남시 분당구 판교역로 4,  adssd',1,'준비중');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040023,'admin',1020200003,to_date('22/05/04','RR/MM/DD'),'관리자','01000001111','13536,  경기 성남시 분당구 판교역로 4,  adssd',1,'준비중');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040024,'admin',1020200002,to_date('22/05/04','RR/MM/DD'),'관리자','01000001111','13536,  경기 성남시 분당구 판교역로 4,  adssd',1,'배송완료');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040025,'admin',1020200002,to_date('22/05/04','RR/MM/DD'),'관리자','01000001111','13536,  경기 성남시 분당구 판교역로 4,  adssd',1,'준비중');
REM INSERTING into LIFEBOOK.QNA
SET DEFINE OFF;
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (1,'test1','상품문의','상품문의 1','상품문의1',to_date('22/05/04','RR/MM/DD'),1,0,0);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (2,'test1','상품문의','상품문의 2','상품문의2',to_date('22/05/04','RR/MM/DD'),2,0,0);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (3,'test1','배송문의','배송문의1','배송문의1',to_date('22/05/04','RR/MM/DD'),3,0,0);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (4,'test1','배송문의','배송문의2','배송문의2',to_date('22/05/04','RR/MM/DD'),4,0,0);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (5,'test1','교환/반품문의','교환/반품문의 1','교환/반품문의 1',to_date('22/05/04','RR/MM/DD'),5,0,0);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (6,'test1','교환/반품문의','교환/반품문의 2','교환/반품문의 2',to_date('22/05/04','RR/MM/DD'),6,0,0);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (7,'test1','계정관리','계정관리1','계정관리1',to_date('22/05/04','RR/MM/DD'),7,0,0);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (8,'test1','계정관리','계정관리2','계정관리2',to_date('22/05/04','RR/MM/DD'),8,0,0);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (9,'test1','기타문의','기타문의1','기타문의1',to_date('22/05/04','RR/MM/DD'),9,0,0);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (10,'test1','기타문의','기타문의2','기타문의2',to_date('22/05/04','RR/MM/DD'),10,0,0);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (11,'member1','상품문의','[문의답변]:상품문의 1','상품문의 답변1',to_date('22/05/04','RR/MM/DD'),1,1,1);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (12,'member1','상품문의','[문의답변]:상품문의 2','상품문의 답변2',to_date('22/05/04','RR/MM/DD'),2,1,1);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (13,'member1','배송문의','[문의답변]:배송문의1','배송문의 답변1',to_date('22/05/04','RR/MM/DD'),3,1,1);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (14,'member1','배송문의','[문의답변]:배송문의2','배송문의 답변2',to_date('22/05/04','RR/MM/DD'),4,1,1);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (15,'member1','교환/반품문의','[문의답변]:교환/반품문의 1','교환/반품문의 답변1',to_date('22/05/04','RR/MM/DD'),5,1,1);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (16,'member1','교환/반품문의','[문의답변]:교환/반품문의 2','교환/반품문의 답변2',to_date('22/05/04','RR/MM/DD'),6,1,1);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (17,'member1','계정관리','[문의답변]:계정관리1','계정관리 답변1',to_date('22/05/04','RR/MM/DD'),7,1,1);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (18,'member1','계정관리','[문의답변]:계정관리2','계정관리 답변2',to_date('22/05/04','RR/MM/DD'),8,1,1);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (19,'member1','기타문의','[문의답변]:기타문의1','기타문의 답변1',to_date('22/05/04','RR/MM/DD'),9,1,1);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (20,'member1','기타문의','[문의답변]:기타문의2','기타문의 답변2',to_date('22/05/04','RR/MM/DD'),10,1,1);
REM INSERTING into LIFEBOOK.REVIEW
SET DEFINE OFF;
Insert into LIFEBOOK.REVIEW (REVIEWNUM,USERID,BOOKNUM,REVIEWTITLE,REVIEWCONTENT,REGDATE,HITCNT,RECOMMEND) values (1,'admin',1010100002,'리뷰테스트1','리뷰테스트리뷰테스트리뷰테스트리뷰테스트리뷰테스트리뷰테스트리뷰테스트리뷰테스트리뷰테스트리뷰테스트리뷰테스트',to_date('22/05/04','RR/MM/DD'),0,0);
Insert into LIFEBOOK.REVIEW (REVIEWNUM,USERID,BOOKNUM,REVIEWTITLE,REVIEWCONTENT,REGDATE,HITCNT,RECOMMEND) values (2,'admin',1010100003,'리뷰테스트2','리뷰테스트리뷰테스트리뷰테스트리뷰테스트리뷰테스트리뷰테스트',to_date('22/05/04','RR/MM/DD'),0,0);
Insert into LIFEBOOK.REVIEW (REVIEWNUM,USERID,BOOKNUM,REVIEWTITLE,REVIEWCONTENT,REGDATE,HITCNT,RECOMMEND) values (3,'admin',1010100004,'리뷰테스트3','리뷰테스트리뷰테스트리뷰테스트리뷰테스트리뷰테스트',to_date('22/05/04','RR/MM/DD'),0,0);
Insert into LIFEBOOK.REVIEW (REVIEWNUM,USERID,BOOKNUM,REVIEWTITLE,REVIEWCONTENT,REGDATE,HITCNT,RECOMMEND) values (4,'admin',1010100004,'리뷰테스트4','리뷰테스트리뷰테스트리뷰테스트리뷰테스트리뷰테스트',to_date('22/05/04','RR/MM/DD'),0,0);
Insert into LIFEBOOK.REVIEW (REVIEWNUM,USERID,BOOKNUM,REVIEWTITLE,REVIEWCONTENT,REGDATE,HITCNT,RECOMMEND) values (5,'admin',1010100001,'리뷰테스트5','리뷰테스트리뷰테스트리뷰테스트리뷰테스트리뷰테스트',to_date('22/05/04','RR/MM/DD'),0,0);
Insert into LIFEBOOK.REVIEW (REVIEWNUM,USERID,BOOKNUM,REVIEWTITLE,REVIEWCONTENT,REGDATE,HITCNT,RECOMMEND) values (6,'admin',1010200003,'리뷰테스트6','리뷰테스트리뷰테스트리뷰테스트리뷰테스트리뷰테스트',to_date('22/05/04','RR/MM/DD'),0,0);
Insert into LIFEBOOK.REVIEW (REVIEWNUM,USERID,BOOKNUM,REVIEWTITLE,REVIEWCONTENT,REGDATE,HITCNT,RECOMMEND) values (7,'admin',1020200003,'리뷰테스트7','리뷰테스트리뷰테스트리뷰테스트리뷰테스트리뷰테스트',to_date('22/05/04','RR/MM/DD'),0,0);
Insert into LIFEBOOK.REVIEW (REVIEWNUM,USERID,BOOKNUM,REVIEWTITLE,REVIEWCONTENT,REGDATE,HITCNT,RECOMMEND) values (8,'admin',1020200002,'리뷰테스트8','리뷰테스트리뷰테스트리뷰테스트리뷰테스트',to_date('22/05/04','RR/MM/DD'),0,0);
Insert into LIFEBOOK.REVIEW (REVIEWNUM,USERID,BOOKNUM,REVIEWTITLE,REVIEWCONTENT,REGDATE,HITCNT,RECOMMEND) values (9,'admin',1010200004,'리뷰테스트9','리뷰테스트리뷰테스트리뷰테스트리뷰테스트',to_date('22/05/04','RR/MM/DD'),4,0);
Insert into LIFEBOOK.REVIEW (REVIEWNUM,USERID,BOOKNUM,REVIEWTITLE,REVIEWCONTENT,REGDATE,HITCNT,RECOMMEND) values (10,'admin',1020200003,'리뷰테스트10','리뷰테스트리뷰테스트리뷰테스트리뷰테스트리뷰테스트',to_date('22/05/04','RR/MM/DD'),0,0);
Insert into LIFEBOOK.REVIEW (REVIEWNUM,USERID,BOOKNUM,REVIEWTITLE,REVIEWCONTENT,REGDATE,HITCNT,RECOMMEND) values (11,'admin',1010100001,'리뷰테스트11','리뷰테스트리뷰테스트리뷰테스트리뷰테스트리뷰테스트',to_date('22/05/04','RR/MM/DD'),1,4);
REM INSERTING into LIFEBOOK.REVIEWCMT
SET DEFINE OFF;
REM INSERTING into LIFEBOOK.USERINFO
SET DEFINE OFF;
Insert into LIFEBOOK.USERINFO (USERID,USERPWD,USERNAME,USERPHONENUM,USERADDR,USERBIRTH,POINT,ISADMIN) values ('비회원','ㅁㄴㅇㄴㄹ',null,null,null,to_date('22/05/04','RR/MM/DD'),0,0);
Insert into LIFEBOOK.USERINFO (USERID,USERPWD,USERNAME,USERPHONENUM,USERADDR,USERBIRTH,POINT,ISADMIN) values ('admin','123','관리자','01000001111','13536, 경기 성남시 분당구 판교역로 4, adssd',to_date('91/01/04','RR/MM/DD'),0,1);
Insert into LIFEBOOK.USERINFO (USERID,USERPWD,USERNAME,USERPHONENUM,USERADDR,USERBIRTH,POINT,ISADMIN) values ('test','123','테스트','01012341234','13524, 경기 성남시 분당구 판교역로192번길 14, 테스트',to_date('55/01/11','RR/MM/DD'),0,0);
--------------------------------------------------------
--  DDL for Index BOOKINFO_PK_BOOKNUM
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIFEBOOK"."BOOKINFO_PK_BOOKNUM" ON "LIFEBOOK"."BOOKINFO" ("BOOKNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIFEBOOK" ;
--------------------------------------------------------
--  DDL for Index NOTICE_NUMBER_PK_NOTICENUM
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIFEBOOK"."NOTICE_NUMBER_PK_NOTICENUM" ON "LIFEBOOK"."NOTICE" ("NOTICENUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIFEBOOK" ;
--------------------------------------------------------
--  DDL for Index ORDER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIFEBOOK"."ORDER_PK" ON "LIFEBOOK"."ORDER_TABLE" ("ORDERNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIFEBOOK" ;
--------------------------------------------------------
--  DDL for Index PK_BOARDCOMMENT_CMTNUM
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIFEBOOK"."PK_BOARDCOMMENT_CMTNUM" ON "LIFEBOOK"."BOARDCOMMENT" ("CMTNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIFEBOOK" ;
--------------------------------------------------------
--  DDL for Index PK_BOARD_BOARDNUM
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIFEBOOK"."PK_BOARD_BOARDNUM" ON "LIFEBOOK"."BOARD" ("BOARDNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIFEBOOK" ;
--------------------------------------------------------
--  DDL for Index SYS_C007398
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIFEBOOK"."SYS_C007398" ON "LIFEBOOK"."CART" ("CARTNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIFEBOOK" ;
--------------------------------------------------------
--  DDL for Index SYS_C007403
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIFEBOOK"."SYS_C007403" ON "LIFEBOOK"."REVIEW" ("REVIEWNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIFEBOOK" ;
--------------------------------------------------------
--  DDL for Index SYS_C007405
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIFEBOOK"."SYS_C007405" ON "LIFEBOOK"."REVIEWCMT" ("RVCMTNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIFEBOOK" ;
--------------------------------------------------------
--  DDL for Index SYS_C007407
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIFEBOOK"."SYS_C007407" ON "LIFEBOOK"."QNA" ("QNANUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIFEBOOK" ;
--------------------------------------------------------
--  DDL for Index USERINFO_USERID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIFEBOOK"."USERINFO_USERID_PK" ON "LIFEBOOK"."USERINFO" ("USERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIFEBOOK" ;

--------------------------------------------------------
--  Constraints for Table BOARD
--------------------------------------------------------

  ALTER TABLE "LIFEBOOK"."BOARD" ADD CONSTRAINT "PK_BOARD_BOARDNUM" PRIMARY KEY ("BOARDNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIFEBOOK"  ENABLE;
  ALTER TABLE "LIFEBOOK"."BOARD" MODIFY ("BOARDCONTENT" NOT NULL ENABLE);
  ALTER TABLE "LIFEBOOK"."BOARD" MODIFY ("BOARDTITLE" NOT NULL ENABLE);
  ALTER TABLE "LIFEBOOK"."BOARD" MODIFY ("USERID" NOT NULL ENABLE);
  ALTER TABLE "LIFEBOOK"."BOARD" MODIFY ("BOARDNUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOARDCOMMENT
--------------------------------------------------------

  ALTER TABLE "LIFEBOOK"."BOARDCOMMENT" ADD CONSTRAINT "PK_BOARDCOMMENT_CMTNUM" PRIMARY KEY ("CMTNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIFEBOOK"  ENABLE;
  ALTER TABLE "LIFEBOOK"."BOARDCOMMENT" MODIFY ("USERIP" NOT NULL ENABLE);
  ALTER TABLE "LIFEBOOK"."BOARDCOMMENT" MODIFY ("CMTCONTENT" NOT NULL ENABLE);
  ALTER TABLE "LIFEBOOK"."BOARDCOMMENT" MODIFY ("BOARDNUM" NOT NULL ENABLE);
  ALTER TABLE "LIFEBOOK"."BOARDCOMMENT" MODIFY ("CMTNUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOOKINFO
--------------------------------------------------------

  ALTER TABLE "LIFEBOOK"."BOOKINFO" ADD CONSTRAINT "BOOKINFO_PK_BOOKNUM" PRIMARY KEY ("BOOKNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIFEBOOK"  ENABLE;
  ALTER TABLE "LIFEBOOK"."BOOKINFO" MODIFY ("BOOKPRICE" NOT NULL ENABLE);
  ALTER TABLE "LIFEBOOK"."BOOKINFO" MODIFY ("BOOKNAME" NOT NULL ENABLE);
  ALTER TABLE "LIFEBOOK"."BOOKINFO" MODIFY ("BOOKNUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "LIFEBOOK"."CART" ADD PRIMARY KEY ("CARTNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIFEBOOK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "LIFEBOOK"."NOTICE" ADD CONSTRAINT "NOTICE_NUMBER_PK_NOTICENUM" PRIMARY KEY ("NOTICENUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIFEBOOK"  ENABLE;
  ALTER TABLE "LIFEBOOK"."NOTICE" MODIFY ("NOTICECONTENT" NOT NULL ENABLE);
  ALTER TABLE "LIFEBOOK"."NOTICE" MODIFY ("NOTICETITLE" NOT NULL ENABLE);
  ALTER TABLE "LIFEBOOK"."NOTICE" MODIFY ("USERID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ORDER_TABLE
--------------------------------------------------------

  ALTER TABLE "LIFEBOOK"."ORDER_TABLE" ADD CONSTRAINT "ORDER_PK" PRIMARY KEY ("ORDERNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIFEBOOK"  ENABLE;
  ALTER TABLE "LIFEBOOK"."ORDER_TABLE" MODIFY ("AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "LIFEBOOK"."ORDER_TABLE" MODIFY ("BOOKNUM" NOT NULL ENABLE);
  ALTER TABLE "LIFEBOOK"."ORDER_TABLE" MODIFY ("USERID" NOT NULL ENABLE);
  ALTER TABLE "LIFEBOOK"."ORDER_TABLE" MODIFY ("ORDERNUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "LIFEBOOK"."QNA" ADD PRIMARY KEY ("QNANUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIFEBOOK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "LIFEBOOK"."REVIEW" ADD PRIMARY KEY ("REVIEWNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIFEBOOK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table REVIEWCMT
--------------------------------------------------------

  ALTER TABLE "LIFEBOOK"."REVIEWCMT" ADD PRIMARY KEY ("RVCMTNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIFEBOOK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USERINFO
--------------------------------------------------------

  ALTER TABLE "LIFEBOOK"."USERINFO" ADD CONSTRAINT "USERINFO_USERID_PK" PRIMARY KEY ("USERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LIFEBOOK"  ENABLE;
  ALTER TABLE "LIFEBOOK"."USERINFO" MODIFY ("USERPWD" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BOARDCOMMENT
--------------------------------------------------------

  ALTER TABLE "LIFEBOOK"."BOARDCOMMENT" ADD CONSTRAINT "FK_BOARDCOMMEN_BOARDNUM" FOREIGN KEY ("BOARDNUM")
	  REFERENCES "LIFEBOOK"."BOARD" ("BOARDNUM") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "LIFEBOOK"."CART" ADD FOREIGN KEY ("USERID")
	  REFERENCES "LIFEBOOK"."USERINFO" ("USERID") ENABLE;
  ALTER TABLE "LIFEBOOK"."CART" ADD FOREIGN KEY ("BOOKNUM")
	  REFERENCES "LIFEBOOK"."BOOKINFO" ("BOOKNUM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDER_TABLE
--------------------------------------------------------

  ALTER TABLE "LIFEBOOK"."ORDER_TABLE" ADD CONSTRAINT "order_booknumber" FOREIGN KEY ("BOOKNUM")
	  REFERENCES "LIFEBOOK"."BOOKINFO" ("BOOKNUM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "LIFEBOOK"."REVIEW" ADD FOREIGN KEY ("BOOKNUM")
	  REFERENCES "LIFEBOOK"."BOOKINFO" ("BOOKNUM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REVIEWCMT
--------------------------------------------------------

  ALTER TABLE "LIFEBOOK"."REVIEWCMT" ADD FOREIGN KEY ("REVIEWNUM")
	  REFERENCES "LIFEBOOK"."REVIEW" ("REVIEWNUM") ENABLE;
