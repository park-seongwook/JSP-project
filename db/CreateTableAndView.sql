--------------------------------------------------------
--  ������ ������ - ������-5��-04-2022   
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
	"STATEMENT" VARCHAR2(12 BYTE) DEFAULT '�غ���'
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
Insert into LIFEBOOK.BOARD (BOARDNUM,USERID,BOARDTITLE,BOARDCONTENT,REGDATE,USERIP,FILENAME,FILESIZE,REALFILENAME,HITCNT,RECOMMEND) values (3,'member1','�����Խ��� ����3','�����Խ��� ����3',to_date('22/05/04','RR/MM/DD'),'192.168.0.202',null,0,null,0,0);
Insert into LIFEBOOK.BOARD (BOARDNUM,USERID,BOARDTITLE,BOARDCONTENT,REGDATE,USERIP,FILENAME,FILESIZE,REALFILENAME,HITCNT,RECOMMEND) values (1,'member1','�����Խ��� ����1','�����Խ��� ����1',to_date('22/05/04','RR/MM/DD'),'192.168.0.202',null,0,null,0,0);
Insert into LIFEBOOK.BOARD (BOARDNUM,USERID,BOARDTITLE,BOARDCONTENT,REGDATE,USERIP,FILENAME,FILESIZE,REALFILENAME,HITCNT,RECOMMEND) values (2,'member1','�����Խ��� ����2','�����Խ��� ����2',to_date('22/05/04','RR/MM/DD'),'192.168.0.202',null,0,null,3,0);
Insert into LIFEBOOK.BOARD (BOARDNUM,USERID,BOARDTITLE,BOARDCONTENT,REGDATE,USERIP,FILENAME,FILESIZE,REALFILENAME,HITCNT,RECOMMEND) values (4,'member1','�����Խ��� ����4','�����Խ��� ����4 ',to_date('22/05/04','RR/MM/DD'),'192.168.0.202',null,0,null,0,0);
Insert into LIFEBOOK.BOARD (BOARDNUM,USERID,BOARDTITLE,BOARDCONTENT,REGDATE,USERIP,FILENAME,FILESIZE,REALFILENAME,HITCNT,RECOMMEND) values (5,'member1','�����Խ��� ����5','�����Խ��� ����5',to_date('22/05/04','RR/MM/DD'),'192.168.0.202',null,0,null,0,0);
Insert into LIFEBOOK.BOARD (BOARDNUM,USERID,BOARDTITLE,BOARDCONTENT,REGDATE,USERIP,FILENAME,FILESIZE,REALFILENAME,HITCNT,RECOMMEND) values (6,'member1','�����Խ��� ����6','�����Խ��� ����6',to_date('22/05/04','RR/MM/DD'),'192.168.0.202',null,0,null,0,0);
Insert into LIFEBOOK.BOARD (BOARDNUM,USERID,BOARDTITLE,BOARDCONTENT,REGDATE,USERIP,FILENAME,FILESIZE,REALFILENAME,HITCNT,RECOMMEND) values (7,'member1','�����Խ��� ����7','�����Խ��� ����7',to_date('22/05/04','RR/MM/DD'),'192.168.0.202',null,0,null,0,0);
Insert into LIFEBOOK.BOARD (BOARDNUM,USERID,BOARDTITLE,BOARDCONTENT,REGDATE,USERIP,FILENAME,FILESIZE,REALFILENAME,HITCNT,RECOMMEND) values (8,'member1','�����Խ��� ����8','�����Խ��� ����8',to_date('22/05/04','RR/MM/DD'),'192.168.0.202',null,0,null,0,0);
Insert into LIFEBOOK.BOARD (BOARDNUM,USERID,BOARDTITLE,BOARDCONTENT,REGDATE,USERIP,FILENAME,FILESIZE,REALFILENAME,HITCNT,RECOMMEND) values (9,'member1','�����Խ��� ����9','�����Խ��� ����9',to_date('22/05/04','RR/MM/DD'),'192.168.0.202',null,0,null,0,0);
Insert into LIFEBOOK.BOARD (BOARDNUM,USERID,BOARDTITLE,BOARDCONTENT,REGDATE,USERIP,FILENAME,FILESIZE,REALFILENAME,HITCNT,RECOMMEND) values (10,'member1','�����Խ��� ����10','�����Խ��� ����10',to_date('22/05/04','RR/MM/DD'),'192.168.0.202',null,0,null,2,8);
Insert into LIFEBOOK.BOARD (BOARDNUM,USERID,BOARDTITLE,BOARDCONTENT,REGDATE,USERIP,FILENAME,FILESIZE,REALFILENAME,HITCNT,RECOMMEND) values (11,'member1','�����Խ��� ����11','�����Խ��� ����11',to_date('22/05/04','RR/MM/DD'),'192.168.0.202',null,0,null,2,0);
Insert into LIFEBOOK.BOARD (BOARDNUM,USERID,BOARDTITLE,BOARDCONTENT,REGDATE,USERIP,FILENAME,FILESIZE,REALFILENAME,HITCNT,RECOMMEND) values (12,'member1','�����Խ��� ����12','�����Խ��� ����12',to_date('22/05/04','RR/MM/DD'),'192.168.0.202',null,0,null,2,4);
REM INSERTING into LIFEBOOK.BOARDCOMMENT
SET DEFINE OFF;
Insert into LIFEBOOK.BOARDCOMMENT (CMTNUM,BOARDNUM,CMTCONTENT,REGDATE,USERIP) values (1,2,'��������',to_date('22/05/04','RR/MM/DD'),'192.168.0.210');
Insert into LIFEBOOK.BOARDCOMMENT (CMTNUM,BOARDNUM,CMTCONTENT,REGDATE,USERIP) values (2,2,'��������',to_date('22/05/04','RR/MM/DD'),'192.168.0.210');
Insert into LIFEBOOK.BOARDCOMMENT (CMTNUM,BOARDNUM,CMTCONTENT,REGDATE,USERIP) values (3,12,'��������',to_date('22/05/04','RR/MM/DD'),'192.168.0.210');
Insert into LIFEBOOK.BOARDCOMMENT (CMTNUM,BOARDNUM,CMTCONTENT,REGDATE,USERIP) values (4,11,'��������',to_date('22/05/04','RR/MM/DD'),'192.168.0.210');
Insert into LIFEBOOK.BOARDCOMMENT (CMTNUM,BOARDNUM,CMTCONTENT,REGDATE,USERIP) values (5,10,'����������',to_date('22/05/04','RR/MM/DD'),'192.168.0.210');
REM INSERTING into LIFEBOOK.BOOKINFO
SET DEFINE OFF;
Insert into LIFEBOOK.BOOKINFO (BOOKNUM,BOOKNAME,BOOKDETAILS,BOOKPRICE,BOOKPUB,AUTHOR,BOOKIMG,BOOKSTOCK) values (1010100002,'�ۺ��λ� ','������ ������ �� ���� ��Ȳ, ȥ�� ���ĳ����� �Ѵ�
���Ѿ� �� ���, ����� ���� �±�
�迵�ϰ� ���������� ������ ���� 9 �� ���� ������ ����Ҽ� ���ۺ��λ硻�� �׸� ���� ���� �̷��� �������, ���Ȱ� ���� �۵θ�° ����鸰 �� �ҳ��� ������ ���´�. ������ IT ����� �������� �ƹ����� �����ϰ� ��ȭ�Ӱ� ��ư��� ö�̴� ����� ���ڱ� ����ҷ� ������ ����ó�� ������ �������� ������ ȥ���� ���迡 �´ڶ߸��� �Ǹ鼭 ������, ��ü�� ���⿡ �����Ѵ�. ���ÿ� �ڽ�ó�� ��ȸ���� ������ �ڵ��� ���� ó������ ������ �ҼӰ��� ������ ������ ������ ��Ʒ���. ö�̴� �׵�� �Բ� ����Ҹ� Ż���Ͽ� ������ ���ư��� ���� ���� �������� �� �������� ���� �� ���� ������ ��ٸ��� �ִ�.',12600,'��������','�迵�� ','l9791191114225.jpg',1);
Insert into LIFEBOOK.BOOKINFO (BOOKNUM,BOOKNAME,BOOKDETAILS,BOOKPRICE,BOOKPUB,AUTHOR,BOOKIMG,BOOKSTOCK) values (1010100003,'�����䳢 ','2022 ��Ŀ�� ���� �ĺ� ������!
�ѱ� ȣ�� SF/��Ÿ�� ��ǥ�۰� ������ ��ǥ��
2022�� ���ͳ��ų� ��Ŀ�� 1�� �ĺ��� ��ǥ�Ǿ��� �� �ѱ� ���а�� ���� �����. ù ��° ������ ��� ���ʷ� �ѱ� �Ҽ��� �� ���̳� ��̳���Ʈ�Ǿ��� �����̾�����, �� ��° ������ �� �� �� �� �ϳ��� �ٸ� �ϳ��� ���� ���� ���� ���ڵ鿡�� ���� �˷����� ���� �Ҽ����̾��� �����̾���. ��� ���ڴ� �������� ��Ŀ�� �ĺ������ �ܾ �Ἥ �۰��� �Ұ��ϱ⵵ �ߴ�(SF�迡���� ����°�� ������ �����̳ġ���� ź���� ��� ������).
�׸��� ���� �ĺ��� ��ǥ�Ǿ���. �� ������ �ƴ� ���� �۰� �������� �Ҽ���, �������䳢���� �̸��� �÷ȴ�. ��Ŀ�� �ɻ�����ȸ�� �������䳢���� ���� �������� �������, ȣ��, SF�� ��踦 �ʿ��ߴ١�, ������ ��ȸ���� ���������� �ں������� �ſ� �������� ������ �������� �ٷ�� ���� ȯ�����̰� ���������� ��ҵ��� ����Ѵ١���� ���ߴ�.
������ ��Ŀ� �������� �ʰ� �������� �ڱ⸸�� ������ ������ �� �������� ������ �̾߱�, ��Ȥ�� ����, �������󡯶�� �̸� ���� ���ۿ� ���� �帣�� ������ �������䳢���� �ִ�.
',13320,'����','������ ','l97911666866651.jpg',1);
Insert into LIFEBOOK.BOOKINFO (BOOKNUM,BOOKNAME,BOOKDETAILS,BOOKPRICE,BOOKPUB,AUTHOR,BOOKIMG,BOOKSTOCK) values (1010100004,'���� �� ��ó��','����ư����� ������ ������� ��ڰ� ������� �ɾ���ס�

�ҾȰ� ����� �ô븦 ��ư��� ����� ���� ������ ���డ ���� ������ �� ���� ���� �� 30�� �� ����!
ù ������ �� �� 54��, ������ Ī�ϴ� �� 77���� ���� ������ ���డ �ҾȰ� ����� �ô븦 ��ư��� �츮�� ���� ������ �� ������ �ǳٴ�. ���Ժ� �ٶ� �δ� ������ ��ó�� �Ƹ��ٰ� ���ο� �ÿ� �۵��� ���� �͵� ������ ���پ� �ִ� �츮�� ������ �����ϰ� �쿩�ش�.',14400,'����','������','l9788946422056.jpg',100);
Insert into LIFEBOOK.BOOKINFO (BOOKNUM,BOOKNAME,BOOKDETAILS,BOOKPRICE,BOOKPUB,AUTHOR,BOOKIMG,BOOKSTOCK) values (1010200001,'�ƹ�ư, �ǾƳ�','���� �ǾƳ븦 ������ν� ����ų �� ���� ���踦 ���� �ΰ��� �Ǿ���. ��ܿ� �۰��� �ƹ�ư �ø����� �ݰ��� ����.',10800,'��ö��','��ܿ�','l9791188343539.jpg',100);
Insert into LIFEBOOK.BOOKINFO (BOOKNUM,BOOKNAME,BOOKDETAILS,BOOKPRICE,BOOKPUB,AUTHOR,BOOKIMG,BOOKSTOCK) values (2010100001,'�����޽� ��ø�� ���','���̺��� ����� ���� �������� ���ŷ� ��ϵ� �߰� ��ø �ŷ���(���� Ÿ�ӽ�). �쿬�� �տ� ���� ��ø�� ���� ���� �̸���. ����, ����, ��Ĳ, ���ڸ�Ƽ, ����Ƹ�, �긣��, ������, �ƶ��, ��Ƣ��..... �����ϱ�? �� ��θ� �˴� �����? �׸��� �� ��ο��� ������ �����?',15300,'��������','�긮��Ʈ ���ɹ�','1982652580_Rduoi1ZX_72704eab8b8ec771df4571a53f770b306f576bc1.png',122);
Insert into LIFEBOOK.BOOKINFO (BOOKNUM,BOOKNAME,BOOKDETAILS,BOOKPRICE,BOOKPUB,AUTHOR,BOOKIMG,BOOKSTOCK) values (1010200003,'�����Ϻ�ġ�� ���� �װ� ������','2022�� 2�� 26��, �ô��� �������� ū �����̾��� �̾���� ��� 89���� �ϱ�� �����ߴ�. �״� �����Ǿ�� ���� ������ �������� �õ��� ��� �����ϰ� �������� ����ߴ�. �׸��� �� ���� ������ ��ĥ ��, ���ǲ������ �ܴ��� ��Ҹ��� ������ �ҷ��ָ� �� ������ �ϼ��ߴ�.',11700,'�̾��','������','l9791170400813.jpg',100);
Insert into LIFEBOOK.BOOKINFO (BOOKNUM,BOOKNAME,BOOKDETAILS,BOOKPRICE,BOOKPUB,AUTHOR,BOOKIMG,BOOKSTOCK) values (1010200004,'�������� �ʴ� ���� �β����� ���̴�','����ö�δ롵 ������ �ֿ����� ù ������!',13950,'�ֿ���','��ȭ��','l9791191200539.jpg',1123);
Insert into LIFEBOOK.BOOKINFO (BOOKNUM,BOOKNAME,BOOKDETAILS,BOOKPRICE,BOOKPUB,AUTHOR,BOOKIMG,BOOKSTOCK) values (1020100002,'������ ����','��� �ֱǿ� ���� ������ ������ ���� ���� �ذ����� �����ӿ��� ��� �����϶� �� �����϶� �� ������ ��Ģ�� �����',15300,'������','������','1982652580_Rduoi1ZX_72704eab8b8ec771df4571a53f770b306f576bc1.png',1);
Insert into LIFEBOOK.BOOKINFO (BOOKNUM,BOOKNAME,BOOKDETAILS,BOOKPRICE,BOOKPUB,AUTHOR,BOOKIMG,BOOKSTOCK) values (1010100010,'���� ���� ���� 0������ ���� ����Ʈ','������ 3�� ��, ���忡�� 300�� ���ۿ� ������. �ε��� ��ſ� �����ϱ� ���� ������ 2000�� ���� ��� ������ �޾ƾ� �ߴ�. �׷��� �ε��� ���ڸ� ������ �� 10��, �״� 110�� ���� ���ϴ� 50�� ä�� �ε����� ������ �ڻ갡�� �Ǿ���. ������ ���� ���� 0������ ���� ����Ʈ�� ��١��� �� �ε��� �о߿��� ���� ���� ���÷������ 30�� ���̾����� �����Ľá��� �̾߱��.
�� å�� �ε��� �������� ��� 6������ ���̹� �ε����� �Ź� �˻��� �ϸ� �� ���̵� ������ �� �ִ� ���� ã�� ���ڰ� �ඥ�� ����ϵ� ��ǰ�� ��ǰ�� �Ⱦư��� 10�Ⱓ �����ؿ� �Ҿ������� ����� ���� ��ʸ� ���뼺�� å�̴�. ���ڴ� ���Ľð� �� �����̶�� �ϸ� �ŷ����� �ٰ� �װ� ���Ǹ� ���� �Ϸ� ���� �����Ǵ� �� �����ڵ��� ���� ������ ���� ������ �����. �״� �� å�� ���� ���� �����ϸ� ���� ����԰�, ���ݵ� ���� ������� ���� ���� �ִ� ���� �������� �Ƴ����� �����ߴ�. ����Ʈ ���� �̸��� ���� �ż� �ñ�, ���ں��� ���ͱ��� ��� ������ ���� ��ʴ� �д� �͸����ε� ���� ������ �Ǹ�, �װ� ������ ����Ʈ�����ǽ��� ���� Ÿ�缺 �м��� 10�� ���� ����� ����� �м� ���̴�. �Դٰ� ������� ���� ������ �������ڷμ� ������ ���������� �����鼭�� ������ �����ؿ� �� �־��� ���� ������ ��𿡼��� ���� �� ���� �������� ���Ͽ��. �� å�� ������ �ε��� ���ڿ� �پ�� �� �ִٴ� �ڽŰ��� �ָ� ������ ���� ���� 0������ ���� �� �� �־�?����� �����ϴ� �����ڵ鿡�� ��Ȯ�� ���� �� ���̴�.',18000,'�ٻ�Ͻ�','���Ľ�','l9791130689876.jpg',1);
Insert into LIFEBOOK.BOOKINFO (BOOKNUM,BOOKNAME,BOOKDETAILS,BOOKPRICE,BOOKPUB,AUTHOR,BOOKIMG,BOOKSTOCK) values (1010100001,'�־��� �ʾƵ�','������� ������ ��ó�� ��ġ���� �ʳ�����.
�ڲٸ� ����Ϸ� �ϰ�, �ٰ����� �ؿ�.
�����Ե� �� ������ ��� �־��.��
������å ���� ��° ª�� �Ҽ��� �Ⱓ�Ǵ� �̹� å�� �輼�� �׸� �۰��� �Բ��ߴ�. ǳ�濡 ���̴� ���� �����ؼ� ĵ���� ���� �Űܳ��� �輼�� �۰��� ��ǰ���� ������ ���� ��Ҵ�. ��ƶ���� ������ �׸����� ������ �Ҽ� �� �ι����� ���ø��� �Ѵ�. ���־��� �ʾƵ������� ª�� �Ҽ� ���� ��� �Բ� ������ 100�Ű����� ����Ҽ��� �� �� ���ϵǾ� �ִ�. ���� �ڿ������� �����ϰ� ����Ǵ� ª�� �Ҽ��� ��췯�� ����Ҽ������� ������ Ư���� ���迡 ���� ������ Ž���� �� �� ������ ȣ������ ������ �� �ִ�.',13050,'������å','������ ','b1.jpg',100);
Insert into LIFEBOOK.BOOKINFO (BOOKNUM,BOOKNAME,BOOKDETAILS,BOOKPRICE,BOOKPUB,AUTHOR,BOOKIMG,BOOKSTOCK) values (1020100003,'������ �ε������� ���ú���1��','����� ������ 7���� ��� ����, ����� ���ڰ� �Ǿ���?
����� ������ 7���� ��� �ڻ갡�� �� �� �־�����, �׸��� ������ � �������� �����ϰ� �ִ��� �˷��ִ� å�̴�. �ε��� ���ڿ� ���� �������� ���ε�� ���� 7���� ���������, ������ ���ڼ���� ���ڰ����� �� �ٸ���.
�������� �ε��� ���� ���ú��� 1�ϡ��� ���� 7���� ���� �� ������ ����Ʈ, ���� ����Ʈ, ����Ʈ �о��, �簳��/����� �� �������� ���, ���ǽ���, ��, ���Ļ������, �׸��� �������� �� ���� �ٸ� ������ �о߿��� ������ �ŵΰ� ������, �� å�� �׿� ���� �پ��� ������ʸ� �Ұ��ϰ� �ִ�.
�׷��� ������ ���ڵ��� ��������� ���� �ٸ� ������ ���� ���ڵ��� �پ��� ����� ���Ͽ츦 ���ϸ鼭, ���߿��� �ڽſ��� ��︮�� ���ڹ���� �������� ������ ��Ȳ�� ���߾� ��缱���� �� ���� ���̴�.',15750,'����Ʈ�Ͻ�','������ ��','1982652580_Rduoi1ZX_72704eab8b8ec771df4571a53f770b306f576bc1.png',1);
Insert into LIFEBOOK.BOOKINFO (BOOKNUM,BOOKNAME,BOOKDETAILS,BOOKPRICE,BOOKPUB,AUTHOR,BOOKIMG,BOOKSTOCK) values (1020200002,'�������� ��','������ ������ �̷� ��ȸ���� �츮�� ��Ƴ��� ���� ���� �ʿ��� ����� ���� ���� �ݴ�Ǵ� �ǰ��� ���� �ϳ��� ����� ������ �͡��̶�� �Ѵ�. ���� �ְ� ������ ��������� �����ɸ����� ����� ������ �������� �ٰ��� ȥ���� �ñ⿡ �ΰ����� �� ������� ���� ���, �������� �ɷ¿� ���� �ڼ��� Ǯ��´�. ''�ΰ��� ������ ��ø��, ����, ź�¼��� ���� ����''��� ���ڳ�̽�Ʈ�� ��õ��ó��, �� å�� �ΰ� ������ �ɷ��� �ش�ȭ�� ����� �ȳ��� ���̴�.',17820,'21����Ͻ�','�ɳ׽���Ű��','l9788950999445.jpg',100);
Insert into LIFEBOOK.BOOKINFO (BOOKNUM,BOOKNAME,BOOKDETAILS,BOOKPRICE,BOOKPUB,AUTHOR,BOOKIMG,BOOKSTOCK) values (1020200003,'�����ֵ��н���','���γ� ������ �Ϸ��� å�� �տ� ������ �ڲ� �����ϰ� �ʹ�. �׷��ٰ� �ᱹ ������ο� �ӹ��� �ѱ�� ���� ó���ϸ� ��å�Ѵ�. �׷��鼭 �������δ� 1�ð� �����ϰ� 100�ð� ������ �Ͱ� ���� ������ ���� �ʹ�. �׷� �������� ���� ���ι�, �н���, ���Թ��� ���� å�� �鿩�ٺ�����, �׶���, ������ ���ϴ� ������ �������� �ʴ´�. �������ֵ��н������� �Ź� ��Ȥ�� ��鸮�� ����� ������ ���ɿ� ����� ���̶�� ���� �����ϸ鼭��, �����Ա⿡�� ������, ������ ���� ���� �ʰ� ���� �ٸ� ���ι����� ������ ��Ȳ�� ����Ϸ��� �µ��� �����Ѵ�. �׷��鼭 ���������� ���γ� ���� ���� �� �� �ִ� ȯ��, �� ȯ�� �ȿ��� �е� ���� ������ �� �ִ� ������� �����⡯�� �̿��϶�� �����Ѵ�. ������ �� ���� �� �ִٴ� �ɸ� ������ �̿��ϸ� �� � ����к��� ������ ���� �� ȿ�����̶�� ��. �� ���⸦ ��ü������ �н� ������ ��� �����ϰ� �̿��� �� �ִ��� ����� �ν��� ��� ���� ���� �������� �ڽ��� ������� ��鿩 �� å�� ��Ҵ�.
',12600,'��Ʃ��� ���帮','������','l9791191043600.jpg',1);
Insert into LIFEBOOK.BOOKINFO (BOOKNUM,BOOKNAME,BOOKDETAILS,BOOKPRICE,BOOKPUB,AUTHOR,BOOKIMG,BOOKSTOCK) values (1020200004,'�������̺� 2.0','������ ��� ��Ʃ�� �������� �������� ����Ʈ���� ������ ���̺��� ���������� ���ƿԴ�!
�ڼҼ��� ������ �ѹ濡 �غ��ϴ� ����ʻ��!

1) �ų� 2,000�� ���� ������ 10��! ä��� ������ ��� ���� ��Ҵ�!
2) 38���� �����ڿ� �Բ��ϴ� ������ ��� ��Ʃ���� �ٽ��� �����ߴ�!
3) �� 11������ ��� �м�! ���� ������ ���� ���� �߽� �������� �����ߴ�! (*��Ʃ�� �����ʹ� 19�� 5�� �� ����)
4) ������ �����ڵ��� ������ ���ͺ� ���� ��� ����!
5) 1,000���� �հ� ���ϰ� ���� ���� �м�! ���� �������� ������͵鵵 ã�ƺ��� ������!

��Ʃ�� ������ ������ �������� �������� �������� �ذ��ϱ� ���� ���� �ʼ���!
�Ҿ���, �ܷο�, ��ȸ���� �۽��� ����غ������ �� ���� �λ��Ѱ�å���� ������ ������ ������ ���� å!

���ػ��� �������� �ǵ��� �ɸ��� �˰� �̱�� �ο��� ����!
���?

1) �������� �ɸ��� �����ϰ� ���ε�º��� ����������.
2) ������ ������ ���� �׸�. ���� / ��� / ���� ������ �ܼ� ����� �ƴ� �������� Ŀ��� ����.
3) ������ ������ʻ�⡯�� ����� �ڼҼ��� ������ �ѹ濡 �غ�����.
4) �ӿ��� �ð��� ���� ��ȭ�� �� �ֵ��� �н�����.
5) ���ػ��̶�� ������ ���� �ǹ��� ���� �� å���� �ѹ濡 �ذ�����.',17820,'����̺�Ͻ�','������ ����','1982652580_Rduoi1ZX_72704eab8b8ec771df4571a53f770b306f576bc1.png',1);
Insert into LIFEBOOK.BOOKINFO (BOOKNUM,BOOKNAME,BOOKDETAILS,BOOKPRICE,BOOKPUB,AUTHOR,BOOKIMG,BOOKSTOCK) values (2010100002,'�����׽�Ʈ��','�����׽�Ʈ�뵵���Դϴ�',100,'����','�׽�Ʈ','1982652580_Rduoi1ZX_72704eab8b8ec771df4571a53f770b306f576bc1.png',100);
REM INSERTING into LIFEBOOK.CART
SET DEFINE OFF;
REM INSERTING into LIFEBOOK.FAQ
SET DEFINE OFF;
Insert into LIFEBOOK.FAQ (FAQNUM,FAQCATEGORY,FAQTITLE,FAQCONTENT,REGDATE) values (1,'��������','ȸ�� ���� ������ ��� �� �� �ֳ���?',' ȸ�� ���� ������ ���� ������ ����� ȸ�� ID�� Ŭ���Ͽ� ������������ ���� ����, �������� ��ư�� ���� ���� �����մϴ�.',to_date('22/05/04','RR/MM/DD'));
Insert into LIFEBOOK.FAQ (FAQNUM,FAQCATEGORY,FAQTITLE,FAQCONTENT,REGDATE) values (2,'��ǰ����','���亸�� ���񽺰� �����ΰ���?',' ���� ����Ʈ���� å�� �����Ͻ� ���, å �ı� �Խ��ǿ��� �ش� å�� �ı⸦ �ۼ��Ͻ� �� �ֽ��ϴ�.
  �ı⸦ �ۼ��Ͻø� �ٸ� ȸ���е��� ���亸�⸦ ���� ȸ������ �ۼ��Ͻ� �ı⸦ ���� ������ �뷫���� �Ǵ��� �� �� �ִ� ������ �� �� ������, ��õ�� �ް� �� ��� ���� �������� ����Ʈ������ �����ǽ� �� �ֽ��ϴ�!',to_date('22/05/04','RR/MM/DD'));
Insert into LIFEBOOK.FAQ (FAQNUM,FAQCATEGORY,FAQTITLE,FAQCONTENT,REGDATE) values (3,'��۹���','ȸ�������� ���� �ʾƵ� å�� ������ �� �ֳ���?',' �� ȸ�������� ���� �����ŵ� å�� �����Ͻ� �� �ֽ��ϴ�.
  å�� �����Ͻð� ������ �ֹ���ȣ�� ���� �ֹ���Ȳ�� Ȯ���Ͻ� �� �ֽ��ϴ�.',to_date('22/05/04','RR/MM/DD'));
Insert into LIFEBOOK.FAQ (FAQNUM,FAQCATEGORY,FAQTITLE,FAQCONTENT,REGDATE) values (4,'��ȯ/��ǰ����','������ ������ ǥ���� �ҷ��� �� ���ƿ�. ��ǰ�� �����Ѱ���?','å �ܸ��� ���������� �ܱ������� ��� ���� �������(Deckle Edge/Rough Cut)

�Ϻη� ���������ϰ� ó���Ͽ� �ڿ��̸� �����ϰ�, �հ��� ������ �����ϱ� ���� ���� ��ǰ �̹Ƿ�

��ǰ/��ȯ ����� �ƴմϴ�.



�ؿ� ���� ���� �������� �ش� Ư¡�� ǥ�� �Ǿ� ���� ���� �� ������,

�ĺ��� �ƴϹǷ� �ش� ������ ��ǰ �� ��ȯ�� �Ұ��� �� ���� ��Ź �帳�ϴ�.',to_date('22/05/04','RR/MM/DD'));
Insert into LIFEBOOK.FAQ (FAQNUM,FAQCATEGORY,FAQTITLE,FAQCONTENT,REGDATE) values (6,'��ǰ����','�˻��� ���� �ʰų� ǰ��/������ ������ ������ �� ������?','�˻��� ���� �ʴ� ������ ǰ��/������ ��찡 ��κ��Դϴ�.

ǰ���̳� �������� ǥ�õ� ������ ���ǻ翡���� �� �̻� ������� �ʰ� ��� ���� ��찡 ��κ��̶�,
���ϱ� ����� �����Դϴ�. �� ��� ȸ���Բ��� ��û�ϼŵ� ���Խñ⸦ Ȯ���ϰ� ��ӵ帱 �� �����ϴ�.
�̷��� ������ ���԰��� ���θ� Ȯ���Ͻ÷��� ���� �Ҹ��� 1:1���� ����� �̿��Ͽ� �ֽʽÿ�.
�ִ��� Ȯ���Ͽ� �亯�帮�ڽ��ϴ�.',to_date('22/05/04','RR/MM/DD'));
Insert into LIFEBOOK.FAQ (FAQNUM,FAQCATEGORY,FAQTITLE,FAQCONTENT,REGDATE) values (7,'��Ÿ����','��ٱ��Ͽ� ���� ������ ��𿡼� Ȯ���� �� �ֳ���?','����� Cart �޴��� �����ðų� ������������ ��ٱ��� �޴��� ���� ��ٱ��Ͽ� ���� ������ Ȯ���Ͻ� �� �ֽ��ϴ�.',to_date('22/05/04','RR/MM/DD'));
Insert into LIFEBOOK.FAQ (FAQNUM,FAQCATEGORY,FAQTITLE,FAQCONTENT,REGDATE) values (8,'��Ÿ����','�ֹ��� ����(���/����)�� �� �ֳ���?',' ��ٱ��Ͽ� ��Ƶν� ���� �ƴ� ������ ���� �Աݱ��� �Ϸ��ϼ��� ���, ���� �Ҹ��� 1:1���Ǹ� ���� �����ڿ��� ���Ǹ� �Ͽ� �ֹ� ������ �����Ͻ� �� �ֽ��ϴ�.',to_date('22/05/04','RR/MM/DD'));
Insert into LIFEBOOK.FAQ (FAQNUM,FAQCATEGORY,FAQTITLE,FAQCONTENT,REGDATE) values (9,'��۹���','�ֹ��ϸ� �� ���� ������ ���� �� �ֳ���?','���Բ��� �ֹ��Ͻ� ��ǰ�� ���� �����ô� ���� "���������+�����"�Դϴ�.

''���������''�̶� �ٹ��� �������� ������ �غ�Ǵ� �ð����� �ȳ��ϴ� ���̸�,
��۽ð��� ��������� �� �ù踦 ���� ���Բ� ���� ��޵Ǵ� �Ⱓ�� ���մϴ�.

��������� ��ǰ�� ���� �غ�Ⱓ�� �ٸ���
��� �ð��� ������ ���� �ణ�� �ٸ��� ���� 1~3������ �ҿ�˴ϴ�.
(�����갣������ �ִ� 7�� �ҿ�)

* ����������� ������ �������� �����Ǹ�, �Ͽ��ϰ� ������ �� ��Ÿ �޹��Ͽ��� ��۵��� �ʽ��ϴ�.
(��ü�� ����� ����� �޹��� ��� �Ұ���)
* �ֹ��� ��ǰ�� ��翡 ��� ���� ���� �ŷ�ó�� �ٽ� �ֹ� ��û�� �� ���ǹǷ� 3��7�ϳ��� ���� �� �ҿ�˴ϴ�.
* õ������ ���� �Ұ��׷��� ������ ���� ��� ������ �� �ش�Ⱓ ������ ��ۼҿ� �Ⱓ���� ���ܵ˴ϴ�.',to_date('22/05/04','RR/MM/DD'));
Insert into LIFEBOOK.FAQ (FAQNUM,FAQCATEGORY,FAQTITLE,FAQCONTENT,REGDATE) values (4,'��ȯ/��ǰ����','������ ������ ǥ���� �ҷ��� �� ���ƿ�. ��ǰ�� �����Ѱ���?','å �ܸ��� ���������� �ܱ������� ��� ���� �������

�Ϻη� ���������ϰ� ó���Ͽ� �ڿ��̸� �����ϰ�, �հ��� ������ �����ϱ� ���� ���� ��ǰ �̹Ƿ�

��ǰ/��ȯ ����� �ƴմϴ�.



�ؿ� ���� ���� �������� �ش� Ư¡�� ǥ�� �Ǿ� ���� ���� �� ������,

�ĺ��� �ƴϹǷ� �ش� ������ ��ǰ �� ��ȯ�� �Ұ��� �� ���� ��Ź �帳�ϴ�.',to_date('22/05/04','RR/MM/DD'));
Insert into LIFEBOOK.FAQ (FAQNUM,FAQCATEGORY,FAQTITLE,FAQCONTENT,REGDATE) values (10,'��Ÿ����','��밡���� ���� ������ ������ �ֳ���?',' ��밡���� ���������� �Ʒ��� �����ϴ�.

  - �ſ�ī��
  - īī������
  - ���̹�����
  - PAYCO
  - SK PAY
  - �Ｚ���� : �ȵ���̵忡���� �̿밡��
    (�ܸ��⿡ ���� ������ �ȵ� �� �ֽ��ϴ�. �Ｚ���� ���� �ܸ���� �Ｚ���� Ȩ���������� Ȯ�ΰ����մϴ�.)
  - �佺
  - CHAI
  - �������Ա� : �ٷε帲, eBook ���� �� ���Ұ�
  - �޴�������
  - �ǽð�������ü : ���� ������ü PG�� ��ġ �ʿ�',to_date('22/05/04','RR/MM/DD'));
Insert into LIFEBOOK.FAQ (FAQNUM,FAQCATEGORY,FAQTITLE,FAQCONTENT,REGDATE) values (11,'��ǰ����','����å�� ��𿡼� ������ �� �ֳ���?',' �˼��մϴ� ȸ����. ���� �λ�å�濡���� ����å ��ǰ�� �Ǹ��ϰ� ���� �ʽ��ϴ�.',to_date('22/05/04','RR/MM/DD'));
Insert into LIFEBOOK.FAQ (FAQNUM,FAQCATEGORY,FAQTITLE,FAQCONTENT,REGDATE) values (12,'��ǰ����','å�� �뷮���� �����ϰ� ������ ��� �ϳ���?',' ���θ����� å�� �����Ͻ� �� ��ǰ�� ������ ���Ͻô� ��ŭ ���Ͻ� �� �ֽ��ϴ�.',to_date('22/05/04','RR/MM/DD'));
Insert into LIFEBOOK.FAQ (FAQNUM,FAQCATEGORY,FAQTITLE,FAQCONTENT,REGDATE) values (13,'��Ÿ����','������ �ٹ��ð��� ��� �ǳ���?',' ������ �ٹ��ð��� ���� ��-�� 09:00-18:00 �Դϴ�.
- ��, 12��-13�� �߽Ľð�
- ��,�� �� ������ �޹�',to_date('22/05/04','RR/MM/DD'));
REM INSERTING into LIFEBOOK.NOTICE
SET DEFINE OFF;
Insert into LIFEBOOK.NOTICE (NOTICENUM,USERID,NOTICETITLE,NOTICECONTENT,REGDATE,HITCNT) values (1,'aaa','�λ�å�� �ý��� ���� �ȳ�','�ȳ��ϼ���. <br>
�Բ��ϴ� ����, �λ�å���Դϴ�.<br><br>

���Բ� ���� ���ϰ� �������� ���񽺸� �����ϱ� ���� �������˿� ���� �ȳ��帳�ϴ�.<br>

���� �ð����ȿ��� �λ�å���� ��� ���񽺰� �������� ���� �����̿��� <br>
���Բ����� ������ ���� �ʵ��� �Ʒ��� �ð��� Ȯ�����ֽñ� �ٶ��ϴ�. <br><br>

�� ���� ���˽ð� : 2022�� 5�� 5��(��) 02:00 ~ 08:00 (6�ð�����)<br><br>

�λ�å�濡���� ���� �����ϰ� ������ �۾��� ���� <br>
���Բ� ��Ȱ�� ���񽺸� ������ �� �ֵ��� �ּ��� �� �ϰڽ��ϴ�. <br><br>

�� �����Ͻ��ߴ� ���� ���ǻ�����<br>
�λ�å�� ������(�� 1544-0000 / 09�� ~ 18��, �����, ������ �޹�)�� �˷��ֽø�<br>
ģ���ϰ� �ȳ��帮�ڽ��ϴ�.<br><br>

�����մϴ�.',to_date('22/05/04','RR/MM/DD'),8);
Insert into LIFEBOOK.NOTICE (NOTICENUM,USERID,NOTICETITLE,NOTICECONTENT,REGDATE,HITCNT) values (4,'aaa','������ ��ȭ��� ��� ���� �ȳ�','�ȳ��ϼ���.<br>
�Բ��ϴ� ����, �λ�å���Դϴ�.<br><br>

ARS ��ü�� ���� �ٿ����� ���Ͽ�<br>
�λ�å�� ������ ��ǥ��ȣ �� 1544-0000�� ARS������ ���� ���Ͽ�<br>
���� �̿뿡 ������ �帰 �� �������� ��������帳�ϴ�.<br><br>

--------------------------------------------------------<br>
1. ���� ��ֳ��� :<br>
  - ������ ��ǥ��ȣ �� 1544-0000 �������<br><br>

2. ���� ��ֽð� :<br>
  - 2022�� 5�� 4��(��) 11:00 ~ 13:25 (2�ð� 25��)<br><br>

--------------------------------------------------------<br>
���� ��ִ� �����Ǿ� ���������� �̿� �����մϴ�.<br>
�� ��ֱⰣ ���� �̿뿡 ������ �帰 �� �ٽñ� ��������帮��,<br>
���� ģ���ϰ� ��� ���� ��� ���񽺰� �� �� �ֵ��� ����ϴ� �λ�å���� �ǰڽ��ϴ�.<br><br>

�����մϴ�. ',to_date('22/05/04','RR/MM/DD'),1);
Insert into LIFEBOOK.NOTICE (NOTICENUM,USERID,NOTICETITLE,NOTICECONTENT,REGDATE,HITCNT) values (2,'aaa','�λ�å�� ��۾�ü ����','�λ�å�� ��۾�ü�� ����Ǿ� �ȳ� �����帳�ϴ�. <br><br><br>


�ȳ��ϼ���. �λ�å���Դϴ�.<br><br>

������ �λ�å�渦 ������ֽô� ���Բ� �������� ����帮��,<br>
�λ�å�� �ֹ��� ���� ��۾�ü�� ����Ǿ� �ȳ��帳�ϴ�.<br><br>

�������� : 2022�� 5�� 15�� (��) ����<br>
��    �� : �����ù� �� CJ������� <br>

��۾�ü �������� ���Ͽ� 5�� 12��(��) ���� ��ȯ/��ǰ�� ���� ��ǰ ȸ���� 5�� 16��(��) ���� ����� �����Դϴ�. <br>
�̿� ��۾�ü �������� ���� �Ұ����� ȸ�� ������ �߻��ϰ� �� �� ���� ���ظ����帳�ϴ�.<br>

�����ε� ���� ���� ���񽺸� �����帱 �� �ֵ��� �ּ��� ���ϰڽ��ϴ�. <br>
�����մϴ�. ',to_date('22/05/04','RR/MM/DD'),3);
Insert into LIFEBOOK.NOTICE (NOTICENUM,USERID,NOTICETITLE,NOTICECONTENT,REGDATE,HITCNT) values (3,'aaa','���̹����� �������� ���˾ȳ�','�ȳ��ϼ���.<br>
�Բ��ϴ� ����, �λ�å���Դϴ�.<br><br>

������ �λ�å���� �Ƴ��� ������ֽô� ���Բ� �������� ���� �帮��,<br>
���̹����� ���� ���׷��̵� �۾����� ���Ͽ� �Ʒ��� ����<br>
���̹����� ���񽺰� �Ͻ� �ߴܵ��� �ȳ� �帳�ϴ�.<br><br>


------------------------------------------------------------------------<br>
1. ���� ���� ���� :<br>
  - ���̹����� ��������<br><br>

2. �۾� �ð� :<br>
  - 2022�� 5�� 7�� (��) 05:00 ~ 09:00 (4�ð�)<br>
------------------------------------------------------------------------<br><br>

�� ������ �����Ͻþ� �̿뿡 ������ �����ñ� �ٶ��ϴ�.<br><br>

�� ���̹����� ���� �Ͻ��ߴ� ���� ���ǻ�����<br>
���̹����� ������ �� 1588-3816�� ���Ǻ�Ź�帳�ϴ�.<br><br>

�����մϴ�.',to_date('22/05/04','RR/MM/DD'),1);
Insert into LIFEBOOK.NOTICE (NOTICENUM,USERID,NOTICETITLE,NOTICECONTENT,REGDATE,HITCNT) values (5,'aaa','LGU+ �޴����Ҿװ��� �ý������˾ȳ�','LGU+ �޴����Ҿװ��� �ý������˾ȳ�<br><br>

�ȳ��ϼ���.<br>
�Բ��ϴ� ����, �λ�å���Դϴ�.<br><br>

LGU+ �޴����Ҿװ����� ���� �۾����� ���Ͽ� �������񽺰�<br>
�Ʒ��� ���� �Ͻ� �ߴܵ� �����Դϴ�.<br><br>

--------------------------------------------------------<br>
1. ���� �������� :<br>
  - LGU+ �޴����Ҿװ��� ����<br><br>

2. �۾��ð� :<br>
  - 2022�� 5�� 5��(��) 00:00 ~ 01:00 (1�ð�)<br>
--------------------------------------------------------<br><br>

�� ������ �����Ͻþ� �̿뿡 ������ �����ñ⸦ �ٶ��ϴ�.<br><br>

�����մϴ�.',to_date('22/05/04','RR/MM/DD'),1);
Insert into LIFEBOOK.NOTICE (NOTICENUM,USERID,NOTICETITLE,NOTICECONTENT,REGDATE,HITCNT) values (6,'aaa','2022�� 5�� �ſ�ī�� �������Һ� �ȳ�','�λ�å�� 2022�� 5�� �������Һ� ���� ī�带 �˷��帳�ϴ�.<br><br>

5���� �Ʒ� ī��� 5���� �̻� ���Ž� 2~3���� �������Һ� ���񽺸� �����մϴ�.<br><br>

���� �̿� ��Ź�帳�ϴ�.<br><br>


   * ����ī�� * <br><br>

    - ��ȯī��<br><br>

    - �Ｚī��<br><br> 

    - KBī��<br><br>

    - �Ե�ī��<br><br>

      (�Ե�ī��� 6���� �����Һ� ������. �����Һζ�? 1ȸ�� ���δ�, 2~6ȸ�� �Ե�ī�� �δ�)<br><br>

    - POMM�ϳ�ī��(��� �������Һ� ����)<br><br>

    - ���̿�ī��(��� �������Һ� ����)<br><br>

    - �츮�����ī��(��� �������Һ� ����) ',to_date('22/05/04','RR/MM/DD'),1);
Insert into LIFEBOOK.NOTICE (NOTICENUM,USERID,NOTICETITLE,NOTICECONTENT,REGDATE,HITCNT) values (7,'aaa','SKT �޴��� �Ҿװ��� �ý������� �ȳ�','SKT �޴����Ҿװ��� �ý������˾ȳ�<br><br>

�ȳ��ϼ���.<br>
�Բ��ϴ� ����, �λ�å���Դϴ�.<br><br>

SKT �޴����Ҿװ����� ���� �۾����� ���Ͽ� �������񽺰�<br>
�Ʒ��� ���� �Ͻ� �ߴܵ� �����Դϴ�.<br><br>

--------------------------------------------------------<br>
1. ���� �������� :<br>
  - SKT �޴����Ҿװ��� ����<br><br>

2. �۾��ð� :<br>
  - 2022�� 5�� 7��(��) 00:00 ~ 01:00 (1�ð�)<br>
--------------------------------------------------------<br><br>

�� ������ �����Ͻþ� �̿뿡 ������ �����ñ⸦ �ٶ��ϴ�.<br><br>

�����մϴ�.',to_date('22/05/04','RR/MM/DD'),1);
Insert into LIFEBOOK.NOTICE (NOTICENUM,USERID,NOTICETITLE,NOTICECONTENT,REGDATE,HITCNT) values (8,'aaa','�λ�å�� �������� ó����ħ ����','�ȳ��ϼ���. �Բ��ϴ� ����, �λ�å���Դϴ�.<br><br>

�λ�å���� �̿��� �ֽô� ���Բ� ���� �帳�ϴ�.<br>
�λ�å�� ��������ó����ħ�� ������ ���� �Ϻ� ���� �� �������� ���泻���� ���� �����Ͽ���<br>
���� �̿뿡 �����Ͻñ� �ٶ��ϴ�.<br><br><br>


1. ���� ����<br><br>

- �������� ó�� ��Ź��ü �߰� �� ����<br><br>


2. ���� ����<br><br>

����	��ü��	��Ź ���� ����<br>
��Ź��ü �߰�	�����������	������ ����� ����<br>
��Ź��ü ����	��ť����	�ٷε帲 ������ ��۾���<br>
�߸Ž��ڸ���	�ٷε帲 ���ù�� ����<br>
3. ���� ����<br><br>

- 2022�� 5�� 4�Ϻ��� ����<br><br><br>


������ �������� ó����ħ ���뿡 ���� ���ǻ����� ������ ���<br>
�λ�å�� ������(1544-0000)���� ���� �ֽø� �ż��ϰ� ģ���ϰ� �ȳ��� �帮�ڽ��ϴ�.<br>
�̿� �������� �ʴ� ��� ȸ��Ż�� ��û�Ͻ� �� �ֽ��ϴ�.<br><br>

�λ�å���� �������� ���� ���� �ؼ� �� ���Ե��� �������� ��ȣ/������ ���� �ּ��� ���ϰ� ������,<br>
�����ε� ���� ���� ���񽺸� ���� ����ϰڽ��ϴ�.<br>
�����մϴ�.',to_date('22/05/04','RR/MM/DD'),1);
Insert into LIFEBOOK.NOTICE (NOTICENUM,USERID,NOTICETITLE,NOTICECONTENT,REGDATE,HITCNT) values (9,'aaa','�λ�å�� �������� ó����ħ ����','�ȳ��ϼ���. �Բ��ϴ� ����, �λ�å���Դϴ�.<br><br>

�λ�å���� �̿��� �ֽô� ���Բ� ���� �帳�ϴ�.<br>
�λ�å�� ��������ó����ħ�� ������ ���� �Ϻ� ���� �� �������� ���泻���� ���� �����Ͽ���<br>
���� �̿뿡 �����Ͻñ� �ٶ��ϴ�.<br><br>


1. ���� ����<br><br>

- �������� ��ȣå���� ����<br><br>


2. ���� ����<br><br>

����	���� ��	���� ��<br>
�������� ��ȣå����	������������ �ڼ���	������ȹ�� �ֺ���<br>
3. ���� ����<br><br>

- 2022�� 5�� 6�Ϻ��� ����<br><br><br>


������ �������� ó����ħ ���뿡 ���� ���ǻ����� ������ ���<br>
�λ�å�� ������(1544-0000)���� ���� �ֽø� �ż��ϰ� ģ���ϰ� �ȳ��� �帮�ڽ��ϴ�.<br>
�̿� �������� �ʴ� ��� ȸ��Ż�� ��û�Ͻ� �� �ֽ��ϴ�.<br><br>

�λ�å���� �������� ���� ���� �ؼ� �� ���Ե��� �������� ��ȣ/������ ���� �ּ��� ���ϰ� ������,<br>
�����ε� ���� ���� ���񽺸� ���� ����ϰڽ��ϴ�.<br>
�����մϴ�.',to_date('22/05/04','RR/MM/DD'),1);
Insert into LIFEBOOK.NOTICE (NOTICENUM,USERID,NOTICETITLE,NOTICECONTENT,REGDATE,HITCNT) values (10,'aaa','CJ������� �ù� ��� ���� �ȳ�','�ȳ��ϼ���. �λ�å���Դϴ�.
�Ʒ� ������ ���Ͽ� CJ������� �ù� ��� ������ ����Ǿ� �ȳ��帳�ϴ�.

- �Ͻ� : 2022�� 5�� 8�� (��)����
- ���� : �����ù���� ��� �źο� ���� ��� ����

�Ϸ绡�� ����ȭ�Ǿ� �����ϰ� �ż��� ��� �帱 �� �ֵ��� ����ϰڽ��ϴ�.

�����մϴ�.',to_date('22/05/04','RR/MM/DD'),0);
Insert into LIFEBOOK.NOTICE (NOTICENUM,USERID,NOTICETITLE,NOTICECONTENT,REGDATE,HITCNT) values (11,'aaa','īī������ �������� ���˾ȳ�','�ȳ��ϼ���.<br>
�Բ��ϴ� ����, �λ�å���Դϴ�.<br><br>

������ �λ�å���� �Ƴ��� ������ֽô� ���Բ� �������� ���� �帮��,<br>
īī������ ���� ���׷��̵� �۾����� ���Ͽ� �Ʒ��� ����<br>
īī������ ���񽺰� �Ͻ� �ߴܵ��� �ȳ� �帳�ϴ�.<br><br>


------------------------------------------------------------------------<br>
1. ���� ���� ���� :<br>
  - īī������ ��������<br><br>

2. �۾� �ð� :<br>
  - 2022�� 5�� 8�� (��) 05:00 ~ 09:00 (4�ð�)<br>
------------------------------------------------------------------------<br><br>

�� ������ �����Ͻþ� �̿뿡 ������ �����ñ� �ٶ��ϴ�.<br><br>

�� īī������ ���� �Ͻ��ߴ� ���� ���ǻ�����<br>
īī������ ������ �� 1644-7405�� ���Ǻ�Ź�帳�ϴ�.<br><br>

�����մϴ�.',to_date('22/05/04','RR/MM/DD'),1);
REM INSERTING into LIFEBOOK.ORDER_TABLE
SET DEFINE OFF;
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040001,'admin',1010100002,to_date('22/05/04','RR/MM/DD'),'������','01000001111','13536,  ��� ������ �д籸 �Ǳ����� 4,  adssd',1,'��ۿϷ�');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040002,'admin',1010100002,to_date('22/05/04','RR/MM/DD'),'������','01000001111','13536,  ��� ������ �д籸 �Ǳ����� 4,  adssd',1,'�غ���');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040003,'admin',1010100003,to_date('22/05/04','RR/MM/DD'),'������','01000001111','13536,  ��� ������ �д籸 �Ǳ����� 4,  adssd',1,'��ۿϷ�');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040004,'admin',1010100003,to_date('22/05/04','RR/MM/DD'),'������','01000001111','13536,  ��� ������ �д籸 �Ǳ����� 4,  adssd',1,'�غ���');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040005,'admin',1010100003,to_date('22/05/04','RR/MM/DD'),'������','01000001111','13536,  ��� ������ �д籸 �Ǳ����� 4,  adssd',1,'�غ���');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040006,'admin',1010100004,to_date('22/05/04','RR/MM/DD'),'������','01000001111','13536,  ��� ������ �д籸 �Ǳ����� 4,  adssd',1,'��ۿϷ�');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040007,'admin',1010100004,to_date('22/05/04','RR/MM/DD'),'������','01000001111','13536,  ��� ������ �д籸 �Ǳ����� 4,  adssd',1,'��ۿϷ�');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040008,'admin',1010100004,to_date('22/05/04','RR/MM/DD'),'������','01000001111','13536,  ��� ������ �д籸 �Ǳ����� 4,  adssd',1,'�غ���');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040009,'admin',1010100001,to_date('22/05/04','RR/MM/DD'),'������','01000001111','13536,  ��� ������ �д籸 �Ǳ����� 4,  adssd',1,'�غ���');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040010,'admin',1010100001,to_date('22/05/04','RR/MM/DD'),'������','01000001111','13536,  ��� ������ �д籸 �Ǳ����� 4,  adssd',1,'��ۿϷ�');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040011,'admin',1010100001,to_date('22/05/04','RR/MM/DD'),'������','01000001111','13536,  ��� ������ �д籸 �Ǳ����� 4,  adssd',1,'��ۿϷ�');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040012,'admin',1010100010,to_date('22/05/04','RR/MM/DD'),'������','01000001111','13536,  ��� ������ �д籸 �Ǳ����� 4,  adssd',1,'�غ���');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040013,'admin',1010100010,to_date('22/05/04','RR/MM/DD'),'������','01000001111','13536,  ��� ������ �д籸 �Ǳ����� 4,  adssd',1,'�غ���');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040014,'admin',2010100001,to_date('22/05/04','RR/MM/DD'),'������','01000001111','13536,  ��� ������ �д籸 �Ǳ����� 4,  adssd',1,'�غ���');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040015,'admin',1010200001,to_date('22/05/04','RR/MM/DD'),'������','01000001111','13536,  ��� ������ �д籸 �Ǳ����� 4,  adssd',1,'�غ���');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040016,'admin',1010200001,to_date('22/05/04','RR/MM/DD'),'������','01000001111','13536,  ��� ������ �д籸 �Ǳ����� 4,  adssd',1,'�غ���');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040017,'admin',1010200001,to_date('22/05/04','RR/MM/DD'),'������','01000001111','13536,  ��� ������ �д籸 �Ǳ����� 4,  adssd',1,'�غ���');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040018,'admin',1010200003,to_date('22/05/04','RR/MM/DD'),'������','01000001111','13536,  ��� ������ �д籸 �Ǳ����� 4,  adssd',1,'��ۿϷ�');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040019,'admin',1010200003,to_date('22/05/04','RR/MM/DD'),'������','01000001111','13536,  ��� ������ �д籸 �Ǳ����� 4,  adssd',1,'�غ���');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040020,'admin',1010200004,to_date('22/05/04','RR/MM/DD'),'������','01000001111','13536,  ��� ������ �д籸 �Ǳ����� 4,  adssd',1,'��ۿϷ�');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040021,'admin',1020200003,to_date('22/05/04','RR/MM/DD'),'������','01000001111','13536,  ��� ������ �д籸 �Ǳ����� 4,  adssd',1,'��ۿϷ�');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040022,'admin',1020200003,to_date('22/05/04','RR/MM/DD'),'������','01000001111','13536,  ��� ������ �д籸 �Ǳ����� 4,  adssd',1,'�غ���');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040023,'admin',1020200003,to_date('22/05/04','RR/MM/DD'),'������','01000001111','13536,  ��� ������ �д籸 �Ǳ����� 4,  adssd',1,'�غ���');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040024,'admin',1020200002,to_date('22/05/04','RR/MM/DD'),'������','01000001111','13536,  ��� ������ �д籸 �Ǳ����� 4,  adssd',1,'��ۿϷ�');
Insert into LIFEBOOK.ORDER_TABLE (ORDERNUM,USERID,BOOKNUM,ORDERDATE,ORDERRECIPIENT,ORDERPHONENUM,ORDERADDR,AMOUNT,STATEMENT) values (2205040025,'admin',1020200002,to_date('22/05/04','RR/MM/DD'),'������','01000001111','13536,  ��� ������ �д籸 �Ǳ����� 4,  adssd',1,'�غ���');
REM INSERTING into LIFEBOOK.QNA
SET DEFINE OFF;
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (1,'test1','��ǰ����','��ǰ���� 1','��ǰ����1',to_date('22/05/04','RR/MM/DD'),1,0,0);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (2,'test1','��ǰ����','��ǰ���� 2','��ǰ����2',to_date('22/05/04','RR/MM/DD'),2,0,0);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (3,'test1','��۹���','��۹���1','��۹���1',to_date('22/05/04','RR/MM/DD'),3,0,0);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (4,'test1','��۹���','��۹���2','��۹���2',to_date('22/05/04','RR/MM/DD'),4,0,0);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (5,'test1','��ȯ/��ǰ����','��ȯ/��ǰ���� 1','��ȯ/��ǰ���� 1',to_date('22/05/04','RR/MM/DD'),5,0,0);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (6,'test1','��ȯ/��ǰ����','��ȯ/��ǰ���� 2','��ȯ/��ǰ���� 2',to_date('22/05/04','RR/MM/DD'),6,0,0);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (7,'test1','��������','��������1','��������1',to_date('22/05/04','RR/MM/DD'),7,0,0);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (8,'test1','��������','��������2','��������2',to_date('22/05/04','RR/MM/DD'),8,0,0);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (9,'test1','��Ÿ����','��Ÿ����1','��Ÿ����1',to_date('22/05/04','RR/MM/DD'),9,0,0);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (10,'test1','��Ÿ����','��Ÿ����2','��Ÿ����2',to_date('22/05/04','RR/MM/DD'),10,0,0);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (11,'member1','��ǰ����','[���Ǵ亯]:��ǰ���� 1','��ǰ���� �亯1',to_date('22/05/04','RR/MM/DD'),1,1,1);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (12,'member1','��ǰ����','[���Ǵ亯]:��ǰ���� 2','��ǰ���� �亯2',to_date('22/05/04','RR/MM/DD'),2,1,1);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (13,'member1','��۹���','[���Ǵ亯]:��۹���1','��۹��� �亯1',to_date('22/05/04','RR/MM/DD'),3,1,1);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (14,'member1','��۹���','[���Ǵ亯]:��۹���2','��۹��� �亯2',to_date('22/05/04','RR/MM/DD'),4,1,1);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (15,'member1','��ȯ/��ǰ����','[���Ǵ亯]:��ȯ/��ǰ���� 1','��ȯ/��ǰ���� �亯1',to_date('22/05/04','RR/MM/DD'),5,1,1);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (16,'member1','��ȯ/��ǰ����','[���Ǵ亯]:��ȯ/��ǰ���� 2','��ȯ/��ǰ���� �亯2',to_date('22/05/04','RR/MM/DD'),6,1,1);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (17,'member1','��������','[���Ǵ亯]:��������1','�������� �亯1',to_date('22/05/04','RR/MM/DD'),7,1,1);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (18,'member1','��������','[���Ǵ亯]:��������2','�������� �亯2',to_date('22/05/04','RR/MM/DD'),8,1,1);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (19,'member1','��Ÿ����','[���Ǵ亯]:��Ÿ����1','��Ÿ���� �亯1',to_date('22/05/04','RR/MM/DD'),9,1,1);
Insert into LIFEBOOK.QNA (QNANUM,USERID,CATEGORY,QNATITLE,QNACONTENT,REGDATE,QNAREF,QNASTEP,QNALEVEL) values (20,'member1','��Ÿ����','[���Ǵ亯]:��Ÿ����2','��Ÿ���� �亯2',to_date('22/05/04','RR/MM/DD'),10,1,1);
REM INSERTING into LIFEBOOK.REVIEW
SET DEFINE OFF;
Insert into LIFEBOOK.REVIEW (REVIEWNUM,USERID,BOOKNUM,REVIEWTITLE,REVIEWCONTENT,REGDATE,HITCNT,RECOMMEND) values (1,'admin',1010100002,'�����׽�Ʈ1','�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ',to_date('22/05/04','RR/MM/DD'),0,0);
Insert into LIFEBOOK.REVIEW (REVIEWNUM,USERID,BOOKNUM,REVIEWTITLE,REVIEWCONTENT,REGDATE,HITCNT,RECOMMEND) values (2,'admin',1010100003,'�����׽�Ʈ2','�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ',to_date('22/05/04','RR/MM/DD'),0,0);
Insert into LIFEBOOK.REVIEW (REVIEWNUM,USERID,BOOKNUM,REVIEWTITLE,REVIEWCONTENT,REGDATE,HITCNT,RECOMMEND) values (3,'admin',1010100004,'�����׽�Ʈ3','�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ',to_date('22/05/04','RR/MM/DD'),0,0);
Insert into LIFEBOOK.REVIEW (REVIEWNUM,USERID,BOOKNUM,REVIEWTITLE,REVIEWCONTENT,REGDATE,HITCNT,RECOMMEND) values (4,'admin',1010100004,'�����׽�Ʈ4','�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ',to_date('22/05/04','RR/MM/DD'),0,0);
Insert into LIFEBOOK.REVIEW (REVIEWNUM,USERID,BOOKNUM,REVIEWTITLE,REVIEWCONTENT,REGDATE,HITCNT,RECOMMEND) values (5,'admin',1010100001,'�����׽�Ʈ5','�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ',to_date('22/05/04','RR/MM/DD'),0,0);
Insert into LIFEBOOK.REVIEW (REVIEWNUM,USERID,BOOKNUM,REVIEWTITLE,REVIEWCONTENT,REGDATE,HITCNT,RECOMMEND) values (6,'admin',1010200003,'�����׽�Ʈ6','�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ',to_date('22/05/04','RR/MM/DD'),0,0);
Insert into LIFEBOOK.REVIEW (REVIEWNUM,USERID,BOOKNUM,REVIEWTITLE,REVIEWCONTENT,REGDATE,HITCNT,RECOMMEND) values (7,'admin',1020200003,'�����׽�Ʈ7','�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ',to_date('22/05/04','RR/MM/DD'),0,0);
Insert into LIFEBOOK.REVIEW (REVIEWNUM,USERID,BOOKNUM,REVIEWTITLE,REVIEWCONTENT,REGDATE,HITCNT,RECOMMEND) values (8,'admin',1020200002,'�����׽�Ʈ8','�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ',to_date('22/05/04','RR/MM/DD'),0,0);
Insert into LIFEBOOK.REVIEW (REVIEWNUM,USERID,BOOKNUM,REVIEWTITLE,REVIEWCONTENT,REGDATE,HITCNT,RECOMMEND) values (9,'admin',1010200004,'�����׽�Ʈ9','�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ',to_date('22/05/04','RR/MM/DD'),4,0);
Insert into LIFEBOOK.REVIEW (REVIEWNUM,USERID,BOOKNUM,REVIEWTITLE,REVIEWCONTENT,REGDATE,HITCNT,RECOMMEND) values (10,'admin',1020200003,'�����׽�Ʈ10','�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ',to_date('22/05/04','RR/MM/DD'),0,0);
Insert into LIFEBOOK.REVIEW (REVIEWNUM,USERID,BOOKNUM,REVIEWTITLE,REVIEWCONTENT,REGDATE,HITCNT,RECOMMEND) values (11,'admin',1010100001,'�����׽�Ʈ11','�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ�����׽�Ʈ',to_date('22/05/04','RR/MM/DD'),1,4);
REM INSERTING into LIFEBOOK.REVIEWCMT
SET DEFINE OFF;
REM INSERTING into LIFEBOOK.USERINFO
SET DEFINE OFF;
Insert into LIFEBOOK.USERINFO (USERID,USERPWD,USERNAME,USERPHONENUM,USERADDR,USERBIRTH,POINT,ISADMIN) values ('��ȸ��','����������',null,null,null,to_date('22/05/04','RR/MM/DD'),0,0);
Insert into LIFEBOOK.USERINFO (USERID,USERPWD,USERNAME,USERPHONENUM,USERADDR,USERBIRTH,POINT,ISADMIN) values ('admin','123','������','01000001111','13536, ��� ������ �д籸 �Ǳ����� 4, adssd',to_date('91/01/04','RR/MM/DD'),0,1);
Insert into LIFEBOOK.USERINFO (USERID,USERPWD,USERNAME,USERPHONENUM,USERADDR,USERBIRTH,POINT,ISADMIN) values ('test','123','�׽�Ʈ','01012341234','13524, ��� ������ �д籸 �Ǳ�����192���� 14, �׽�Ʈ',to_date('55/01/11','RR/MM/DD'),0,0);
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
