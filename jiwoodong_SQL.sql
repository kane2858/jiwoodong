﻿DROP TABLE "BUSINESS_MEMBER";

CREATE TABLE "BUSINESS_MEMBER" (
	"BU_NO"	NUMBER		NOT NULL,
	"BU_ID"	VARCHAR2(20)		NOT NULL,
	"BU_NUMBER"	VARCHAR2(20)		NOT NULL,
	"BU_PWD"	VARCHAR2(40)		NOT NULL,
	"BU_NAME"	VARCHAR2(20)		NOT NULL,
	"BU_BIRTH"	VARCHAR2(20)		NOT NULL,
	"BU_GENDER"	VARCHAR2(1)		NOT NULL,
	"BU_EMAIL"	VARCHAR2(20)		NOT NULL,
	"BU_TEL"	VARCHAR2(20)		NOT NULL,
	"BU_WRITE_DATE"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NOT NULL,
	"Field8"	VARCHAR(255)		NULL,
	"Key4"	VARCHAR(255)		NOT NULL
);

COMMENT ON COLUMN "BUSINESS_MEMBER"."BU_GENDER" IS 'M/F';

DROP TABLE "COMPANY";

CREATE TABLE "COMPANY" (
	재우
	"CP_NO"	NUMBER		NOT NULL,
	"BU_NO"	NUMBER		NOT NULL,
	"CP_CATEGORY"	VARCHAR2(20)		NOT NULL,
	"CP_NAME"	VARCHAR2(20)		NOT NULL,
	"CP_EXPLAIN"	VARCHAR2(40000)		NOT NULL,
	"CP_CLASSIFY"	VARCHAR2(1)		NOT NULL,
	"CP_OPEN_DATE"	TIMESTAMP		NOT NULL,
	"CP_CLOSE_DATE"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NOT NULL,
	"CP_OPEN_TIME"	VARCHAR2(100)		NOT NULL,
	"CP_CLOSE_TIME"	VARCHAR2(100)		NOT NULL,
	"CP_TERM"	VARCHAR(255)		NOT NULL,
	"CP_POSTNUM"	VARCHAR2(20)		NOT NULL,
	"CP_ADDRESS"	VARCHAR2(200)		NOT NULL,
	"CP_DTADDRESS"	VARCHAR2(1000)		NULL,
	"CP_WRITE_DATE"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NOT NULL,
	"Field11"	VARCHAR(255)		NULL,
	"FL_GNO"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "COMPANY"."CP_CATEGORY" IS '카페/미용실/호텔';

COMMENT ON COLUMN "COMPANY"."CP_CLASSIFY" IS '항상 : A / 특정기간 : B';

DROP TABLE "MENU";

CREATE TABLE "MENU" (
	"MENU_NO"	NUMBER		NOT NULL,
	"CP_NO"	NUMBER		NOT NULL,
	"MENU_NAME"	VARCHAR(255)		NULL,
	"MENU_PRICE"	VARCHAR(255)		NULL,
	"MENU_EXPLAIN"	VARCHAR(255)		NULL,
	"MENU_USEYN"	VARCHAR(255)		NULL,
	"MENU_WRITE_DATE"	VARCHAR(255)		NULL,
	"MENU_UPDATE_DATE"	VARCHAR(255)		NULL,
	"FL_GNO"	VARCHAR(255)		NOT NULL
);

DROP TABLE "FILE";

CREATE TABLE "FILE" (
	"FL_GNO"	NUMBER		NOT NULL,
	"FL_NO"	NUMBER		NOT NULL,
	"FL_NAME"	VARCHAR2(20)		NOT NULL,
	"FL_RENAME"	VARCHAR2(20)		NULL,
	"FL_SRC"	VARCHAR2(20)		NOT NULL,
	"FILE_WRITE_DATE"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NOT NULL
);

COMMENT ON COLUMN "FILE"."FILE_WRITE_DATE" IS 'YYYY-MM-DD';

DROP TABLE "REVIEW";

CREATE TABLE "REVIEW" (
	"RV_NO"	NUMBER		NOT NULL,
	"UM_ID"	VARCHAR2(20)		NOT NULL,
	"RV_CNO"	NUMBER		NOT NULL,
	"RV_SCORE"	NUMBER		NOT NULL,
	"RV_CONTENT"	VARCHAR2(4000)		NOT NULL,
	"FL_GNO"	NUMBER		NULL,
	"RV_WRITE_DATE"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NOT NULL,
	"RV_MODIFY_DATE"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NULL
);

COMMENT ON COLUMN "REVIEW"."RV_WRITE_DATE" IS 'YYYY-MM-DD';

COMMENT ON COLUMN "REVIEW"."RV_MODIFY_DATE" IS 'YYYY-MM-DD';

DROP TABLE "USER_MEMBER";

CREATE TABLE "USER_MEMBER" (
	"UM_NO"	NUMBER		NOT NULL,
	"UM_ID"	VARCHAR2(20)		NOT NULL,
	"UM_PWD"	VARCHAR2(40)		NOT NULL,
	"UM_NAME"	VARCHAR2(20)		NOT NULL,
	"UM_GENDER"	VARCHAR2(1)		NOT NULL,
	"UM_BIRTH"	VARCHAR2(20)		NOT NULL,
	"UM_TEL"	VARCHAR2(20)		NOT NULL,
	"UM_POSTCODE"	VARCHAR2(20)		NOT NULL,
	"UM_ADDRESS"	VARCHAR2(100)		NOT NULL,
	"UM_DETAIL_ADDRESS"	VARCHAR2(100)		NOT NULL,
	"UM_EMAIL"	VARCHAR2(40)		NOT NULL,
	"UM_POINT"	NUMBER(10,1)		NOT NULL,
	"UM_QUIT"	VARCHAR2(1)		NOT NULL,
	"UM_WRITE_DATE"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NOT NULL,
	"UM_UPDATE_DATE"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NULL
);

COMMENT ON COLUMN "USER_MEMBER"."UM_GENDER" IS 'M/F';

COMMENT ON COLUMN "USER_MEMBER"."UM_BIRTH" IS 'xxxx-xx-xx';

COMMENT ON COLUMN "USER_MEMBER"."UM_TEL" IS 'xxx-xxxx-xxxx';

COMMENT ON COLUMN "USER_MEMBER"."UM_ADDRESS" IS '주소 API';

COMMENT ON COLUMN "USER_MEMBER"."UM_QUIT" IS 'Y/N';

DROP TABLE "BOOKING";

CREATE TABLE "BOOKING" (
	"BK_NO"	NUMBER		NOT NULL,
	"Key2"	NUMBER		NOT NULL,
	"UM_ID"	VARCHAR2(20)		NOT NULL,
	"BK_NAME"	VARCHAR2(20)		NOT NULL,
	"BK_PHONE"	VARCHAR2(20)		NOT NULL,
	"BK_REQUIRE"	VARCHAR2(1000)		NULL,
	"BK_DATE"	VARCHAR2(40)		NOT NULL,
	"BK_CDATE"	VARCHAR2(40)		NULL,
	"BK_TIME"	VARCHAR2(40)		NOT NULL,
	"BK_STATUS"	VARCHAR2(1)		NOT NULL,
	"BK_PAY"	VARCHAR2(1)		NOT NULL,
	"BK_WRITE_DATE"	TIMESTAMP	DEFAULT SYSDATESTAMP	NULL,
	"BK_UPDATE_DATE"	TIMESTAMP	DEFAULT SYSDATESTAMP	NULL
);

COMMENT ON COLUMN "BOOKING"."BK_STATUS" IS '예약 R / 취소 : C';

COMMENT ON COLUMN "BOOKING"."BK_PAY" IS '결제 API';

DROP TABLE "USER_Q&A";

CREATE TABLE "USER_Q&A" (
	"UQ_NO"	NUMBER		NOT NULL,
	"UM_ID"	VARCHAR2(20)		NOT NULL,
	"BU_NO"	NUMBER		NOT NULL,
	"UQ_TITLE"	VARCHAR2(20)		NOT NULL,
	"UQ_CONTENT"	VARCHAR2(4000)		NOT NULL,
	"UQ_ANSWER"	VARCHAR2(4000)		NULL,
	"UQ_WRITE_DATE"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NOT NULL,
	"UQ_UPDATE_DATE"	TIMESTAMP		NULL
);

DROP TABLE "BUSINESS_Q&A";

CREATE TABLE "BUSINESS_Q&A" (
	"BQ_NO"	NUMBER		NOT NULL,
	"BU_ID"	VARCHAR2(20)		NOT NULL,
	"BQ_TITLE"	VARCHAR2(20)		NOT NULL,
	"BQ_CONTENT"	VARCHAR2(4000)		NOT NULL,
	"BQ_ANSWER"	VARCHAR2(4000)		NULL,
	"BQ_WRITE_DATE"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NOT NULL,
	"BQ_UPDATE_DATE"	VARCHAR(255)		NULL
);

DROP TABLE "BOOKING_MENU";

CREATE TABLE "BOOKING_MENU" (
	"BKM_NO"	NUMBER		NOT NULL,
	"BK_NO"	NUMBER		NOT NULL,
	"MENU_NO"	NUMBER		NULL,
	"BKM_WRITE_DATE"	VARCHAR(255)		NULL,
	"BKM_UPDATE_DATE"	VARCHAR(255)		NULL
);

DROP TABLE "USER_BOOKMARK";

CREATE TABLE "USER_BOOKMARK" (
	"UB_NO"	NUMBER		NOT NULL,
	"UM_ID"	VARCHAR2(20)		NOT NULL,
	"Key2"	VARCHAR(255)		NOT NULL,
	"UB_WRITEDATE"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NOT NULL
);

DROP TABLE "ADMIN";

CREATE TABLE "ADMIN" (
	"AD_NO"	NUMBER		NOT NULL,
	"AD_ID"	VARCHAR2(20)		NOT NULL,
	"AD_PW"	VARCHAR2(40)		NOT NULL
);

DROP TABLE "NOTICE";

CREATE TABLE "NOTICE" (
	"NT_NO"	NUMBER		NOT NULL,
	"AD_ID"	VARCHAR2(20)		NOT NULL,
	"NT_TITLE"	VARCHAR2(50)		NOT NULL,
	"NT_WRITE_DATE"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NOT NULL,
	"NT_COUNT"	NUMBER		NOT NULL,
	"FL_GNO"	NUMBER		NOT NULL
);

DROP TABLE "CLAUSE";

CREATE TABLE "CLAUSE" (
	"CU_CODE"	NUMBER		NOT NULL,
	"CU_NAME"	VARCHAR2(20)		NOT NULL,
	"CU_CONTENT"	VARCHAR2(200)		NOT NULL,
	"CU_REQURIRED"	VARCHAR2(1)		NOT NULL
);

COMMENT ON COLUMN "CLAUSE"."CU_CODE" IS '이용약관 01/개인정보수집 및 이용 동의 02/위치정보서비스 동의03';

COMMENT ON COLUMN "CLAUSE"."CU_NAME" IS '이용약관동의/개인정보 수집 및 이용 동의/위치정보서비스 동의';

COMMENT ON COLUMN "CLAUSE"."CU_REQURIRED" IS 'Y/N';

DROP TABLE "ADMIN_Q&A";

CREATE TABLE "ADMIN_Q&A" (
	"AQ_NO"	NUMBER		NOT NULL,
	"AQ_TITLE"	VARCHAR2(20)		NOT NULL,
	"AQ_CONTENT"	VARCHAR2(4000)		NOT NULL,
	"AQ_ANSWER"	VARCHAR2(4000)		NULL,
	"AQ_WRITE_DATE"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NOT NULL,
	"AQ_UPDATE_DATE"	TIMESTAMP		NULL,
	"AD_NO"	NUMBER		NOT NULL,
	"AD_ID"	VARCHAR2(20)		NOT NULL
);

DROP TABLE "Untitled";

CREATE TABLE "Untitled" (
	"CU_CODE"	NUMBER		NOT NULL,
	"CU_AGREE"	VARCHAR2(1)		NOT NULL,
	"CU_DATE"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NOT NULL,
	"BU_ID"	VARCHAR2(20)		NOT NULL,
	"UM_ID"	VARCHAR2(20)		NOT NULL
);

COMMENT ON COLUMN "Untitled"."CU_CODE" IS '이용약관 01/개인정보수집 및 이용 동의 02/위치정보서비스 동의03';

COMMENT ON COLUMN "Untitled"."CU_AGREE" IS 'Y/N';

COMMENT ON COLUMN "Untitled"."CU_DATE" IS 'YYYY-MM-DD';

ALTER TABLE "BUSINESS_MEMBER" ADD CONSTRAINT "PK_BUSINESS_MEMBER" PRIMARY KEY (
	"BU_NO",
	"BU_ID",
	"BU_NUMBER"
);

ALTER TABLE "COMPANY" ADD CONSTRAINT "PK_COMPANY" PRIMARY KEY (
	"CP_NO"
);

ALTER TABLE "MENU" ADD CONSTRAINT "PK_MENU" PRIMARY KEY (
	"MENU_NO"
);

ALTER TABLE "FILE" ADD CONSTRAINT "PK_FILE" PRIMARY KEY (
	"FL_GNO"
);

ALTER TABLE "REVIEW" ADD CONSTRAINT "PK_REVIEW" PRIMARY KEY (
	"RV_NO"
);

ALTER TABLE "USER_MEMBER" ADD CONSTRAINT "PK_USER_MEMBER" PRIMARY KEY (
	"UM_NO",
	"UM_ID"
);

ALTER TABLE "BOOKING" ADD CONSTRAINT "PK_BOOKING" PRIMARY KEY (
	"BK_NO"
);

ALTER TABLE "USER_Q&A" ADD CONSTRAINT "PK_USER_Q&A" PRIMARY KEY (
	"UQ_NO"
);

ALTER TABLE "BUSINESS_Q&A" ADD CONSTRAINT "PK_BUSINESS_Q&A" PRIMARY KEY (
	"BQ_NO"
);

ALTER TABLE "BOOKING_MENU" ADD CONSTRAINT "PK_BOOKING_MENU" PRIMARY KEY (
	"BKM_NO"
);

ALTER TABLE "USER_BOOKMARK" ADD CONSTRAINT "PK_USER_BOOKMARK" PRIMARY KEY (
	"UB_NO"
);

ALTER TABLE "ADMIN" ADD CONSTRAINT "PK_ADMIN" PRIMARY KEY (
	"AD_NO",
	"AD_ID"
);

ALTER TABLE "NOTICE" ADD CONSTRAINT "PK_NOTICE" PRIMARY KEY (
	"NT_NO"
);

ALTER TABLE "ADMIN_Q&A" ADD CONSTRAINT "PK_ADMIN_Q&A" PRIMARY KEY (
	"AQ_NO"
);

ALTER TABLE "Untitled" ADD CONSTRAINT "PK_UNTITLED" PRIMARY KEY (
	"CU_CODE"
);

ALTER TABLE "BUSINESS_MEMBER" ADD CONSTRAINT "FK_FILE_TO_BUSINESS_MEMBER_1" FOREIGN KEY (
	"Key4"
)
REFERENCES "FILE" (
	"FL_GNO"
);

ALTER TABLE "COMPANY" ADD CONSTRAINT "FK_BUSINESS_MEMBER_TO_COMPANY_1" FOREIGN KEY (
	"BU_NO"
)
REFERENCES "BUSINESS_MEMBER" (
	"BU_NO"
);

ALTER TABLE "COMPANY" ADD CONSTRAINT "FK_FILE_TO_COMPANY_1" FOREIGN KEY (
	"FL_GNO"
)
REFERENCES "FILE" (
	"FL_GNO"
);

ALTER TABLE "MENU" ADD CONSTRAINT "FK_COMPANY_TO_MENU_1" FOREIGN KEY (
	"CP_NO"
)
REFERENCES "COMPANY" (
	"CP_NO"
);

ALTER TABLE "MENU" ADD CONSTRAINT "FK_FILE_TO_MENU_1" FOREIGN KEY (
	"FL_GNO"
)
REFERENCES "FILE" (
	"FL_GNO"
);

ALTER TABLE "REVIEW" ADD CONSTRAINT "FK_USER_MEMBER_TO_REVIEW_1" FOREIGN KEY (
	"UM_ID"
)
REFERENCES "USER_MEMBER" (
	"UM_ID"
);

ALTER TABLE "REVIEW" ADD CONSTRAINT "FK_FILE_TO_REVIEW_1" FOREIGN KEY (
	"FL_GNO"
)
REFERENCES "FILE" (
	"FL_GNO"
);

ALTER TABLE "BOOKING" ADD CONSTRAINT "FK_COMPANY_TO_BOOKING_1" FOREIGN KEY (
	"Key2"
)
REFERENCES "COMPANY" (
	"CP_NO"
);

ALTER TABLE "BOOKING" ADD CONSTRAINT "FK_USER_MEMBER_TO_BOOKING_1" FOREIGN KEY (
	"UM_ID"
)
REFERENCES "USER_MEMBER" (
	"UM_ID"
);

ALTER TABLE "USER_Q&A" ADD CONSTRAINT "FK_USER_MEMBER_TO_USER_Q&A_1" FOREIGN KEY (
	"UM_ID"
)
REFERENCES "USER_MEMBER" (
	"UM_NO"
);

ALTER TABLE "USER_Q&A" ADD CONSTRAINT "FK_BUSINESS_MEMBER_TO_USER_Q&A_1" FOREIGN KEY (
	"BU_NO"
)
REFERENCES "BUSINESS_MEMBER" (
	"BU_NO"
);

ALTER TABLE "BUSINESS_Q&A" ADD CONSTRAINT "FK_BUSINESS_MEMBER_TO_BUSINESS_Q&A_1" FOREIGN KEY (
	"BU_ID"
)
REFERENCES "BUSINESS_MEMBER" (
	"BU_ID"
);

ALTER TABLE "BOOKING_MENU" ADD CONSTRAINT "FK_BOOKING_TO_BOOKING_MENU_1" FOREIGN KEY (
	"BK_NO"
)
REFERENCES "BOOKING" (
	"BK_NO"
);

ALTER TABLE "BOOKING_MENU" ADD CONSTRAINT "FK_MENU_TO_BOOKING_MENU_1" FOREIGN KEY (
	"MENU_NO"
)
REFERENCES "MENU" (
	"MENU_NO"
);

ALTER TABLE "USER_BOOKMARK" ADD CONSTRAINT "FK_USER_MEMBER_TO_USER_BOOKMARK_1" FOREIGN KEY (
	"UM_ID"
)
REFERENCES "USER_MEMBER" (
	"UM_ID"
);

ALTER TABLE "USER_BOOKMARK" ADD CONSTRAINT "FK_COMPANY_TO_USER_BOOKMARK_1" FOREIGN KEY (
	"Key2"
)
REFERENCES "COMPANY" (
	"CP_NO"
);

ALTER TABLE "NOTICE" ADD CONSTRAINT "FK_ADMIN_TO_NOTICE_1" FOREIGN KEY (
	"AD_ID"
)
REFERENCES "ADMIN" (
	"AD_ID"
);

ALTER TABLE "NOTICE" ADD CONSTRAINT "FK_FILE_TO_NOTICE_1" FOREIGN KEY (
	"FL_GNO"
)
REFERENCES "FILE" (
	"FL_GNO"
);

ALTER TABLE "CLAUSE" ADD CONSTRAINT "FK_Untitled_TO_CLAUSE_1" FOREIGN KEY (
	"CU_CODE"
)
REFERENCES "Untitled" (
	"CU_CODE"
);

ALTER TABLE "ADMIN_Q&A" ADD CONSTRAINT "FK_ADMIN_TO_ADMIN_Q&A_1" FOREIGN KEY (
	"AD_NO"
)
REFERENCES "ADMIN" (
	"AD_NO"
);

ALTER TABLE "ADMIN_Q&A" ADD CONSTRAINT "FK_ADMIN_TO_ADMIN_Q&A_2" FOREIGN KEY (
	"AD_ID"
)
REFERENCES "ADMIN" (
	"AD_ID"
);

ALTER TABLE "Untitled" ADD CONSTRAINT "FK_BUSINESS_MEMBER_TO_Untitled_1" FOREIGN KEY (
	"BU_ID"
)
REFERENCES "BUSINESS_MEMBER" (
	"BU_ID"
);

ALTER TABLE "Untitled" ADD CONSTRAINT "FK_USER_MEMBER_TO_Untitled_1" FOREIGN KEY (
	"UM_ID"
)
REFERENCES "USER_MEMBER" (
	"UM_ID"
);

