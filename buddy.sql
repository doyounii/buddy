USE buddy ;
	
-- 회원 테이블 생성
CREATE TABLE MEMBER(
	id VARCHAR(16) NOT NULL,
	pw VARCHAR(330) NOT NULL,
	NAME VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL,
	tel VARCHAR(13),
	regdate TIMESTAMP NOT NULL default CURRENT_TIMESTAMP,
	POINT INT DEFAULT 0,
	PRIMARY KEY (id));

-- 회원 더미 데이터 삽입
INSERT INTO MEMBER(id, pw, NAME, email, tel) VALUES 
('admin', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '관리자', 'admin@buddy.com', '010-1004-1004');
INSERT INTO MEMBER(id, pw, NAME, email, tel) VALUES 
('kim', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '김영훈', 'kim@buddy.com', '010-7979-2848');
INSERT INTO MEMBER(id, pw, NAME, email, tel) VALUES 
('lee', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '이주연', 'lee@buddy.com', '010-2424-2424');
INSERT INTO MEMBER(id, pw, NAME, email, tel) VALUES
('park', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '박정우', 'park@buddy.com', '010-2848-7979');
INSERT INTO MEMBER(id, pw, NAME, email, tel) VALUES 
('so', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '소정환', 'so@buddy.com', '010-2222-1234');
INSERT INTO MEMBER(id, pw, NAME, email, tel) VALUES 
('yoon', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '윤도운', 'yoon@week.com', '010-3333-3333');

-- 공지사항 테이블 생성
CREATE TABLE board(
	bno INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(200) NOT NULL,
	content VARCHAR(1000),
	author VARCHAR(16),
	resdate TIMESTAMP NOT NULL default CURRENT_TIMESTAMP,
	cnt INT DEFAULT 0);

-- 공지사항 더미 데이터 삽입
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 1", "WeeK 공지사항 글 내용1입니다.", "admin" );
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 2", "WeeK 공지사항 글 내용2입니다.", "admin" );
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 3", "WeeK 공지사항 글 내용3입니다.", "admin" );
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 4", "WeeK 공지사항 글 내용4입니다.", "admin" );
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 5", "WeeK 공지사항 글 내용5입니다.", "admin" );
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 6", "WeeK 공지사항 글 내용6입니다.", "admin" );

INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 7", "WeeK 공지사항 글 내용7입니다.", "admin" );
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 8", "WeeK 공지사항 글 내용8입니다.", "admin" );
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 9", "WeeK 공지사항 글 내용9입니다.", "admin" );
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 10", "WeeK 공지사항 글 내용10입니다.", "admin" );
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 11", "WeeK 공지사항 글 내용11입니다.", "admin" );

INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 12", "WeeK 공지사항 글 내용12입니다.", "admin" );
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 13", "WeeK 공지사항 글 내용13입니다.", "admin" );
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 14", "WeeK 공지사항 글 내용14입니다.", "admin" );
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 15", "WeeK 공지사항 글 내용15입니다.", "admin" );
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 16", "WeeK 공지사항 글 내용16입니다.", "admin" );
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 17", "WeeK 공지사항 글 내용17입니다.", "admin" );	

-- 1:1 문의 테이블 생성
CREATE TABLE qna(qno INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(200) NOT NULL,
content VARCHAR(1000),
author VARCHAR(16),
resdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
cnt INT DEFAULT 0,
lev INT DEFAULT 0,	-- 질문(0), 답변(1)
par INT,		-- 부모 글번호 -> 질문(자신 레코드의 qno), 답변(질문의 글번호)
FOREIGN KEY(author) REFERENCES member(id) ON DELETE CASCADE 
);

-- 1:1 문의 더미 데이터 삽입
INSERT INTO qna(title, content, author, lev) VALUES('질문1', '질문1 내용입니다.', 'kim', 0);
INSERT INTO qna(title, content, author, lev) VALUES('질문2', '질문2 내용입니다.', 'lee', 0);
INSERT INTO qna(title, content, author, lev) VALUES('질문3', '질문3 내용입니다.', 'park', 0);
INSERT INTO qna(title, content, author, lev) VALUES('질문4', '질문4 내용입니다.', 'so', 0);
INSERT INTO qna(title, content, author, lev) VALUES('질문5', '질문5 내용입니다.', 'yoon', 0);
INSERT INTO qna(title, content, author, lev) VALUES('질문6', '질문6 내용입니다.', 'kim', 0);
UPDATE qna SET par=qno WHERE lev = 0;

INSERT INTO qna(title, content, author, lev, par) VALUES('질문1 답변', '답변 내용', 'park', 1, 1);
INSERT INTO qna(title, content, author, lev, par) VALUES('질문2 답변', '답변 내용', 'so', 1, 2);
INSERT INTO qna(title, content, author, lev, par) VALUES('질문3 답변', '답변 내용', 'admin', 1, 3);
INSERT INTO qna(title, content, author, lev, par) VALUES('질문4 답변', '답변 내용', 'admin', 1, 4);
INSERT INTO qna(title, content, author, lev, par) VALUES('질문5 답변', '답변 내용', 'admin', 1, 5);
INSERT INTO qna(title, content, author, lev, par) VALUES('질문6 답변', '답변 내용', 'admin', 1, 6);

-- qnalist 뷰 생성
CREATE VIEW qnalist AS (SELECT a.qno AS qno, a.title AS title, a.content AS content, 
a.author AS author, a.resdate AS resdate, a.cnt AS cnt, a.lev AS lev, a.par AS par, b.name AS NAME
FROM qna a, member b WHERE a.author=b.id ORDER BY a.par DESC, a.lev ASC, a.qno ASC);

-- 자주하는 질문 테이블 생성
CREATE TABLE faq(fno INT PRIMARY KEY AUTO_INCREMENT,
question VARCHAR(200) NOT NULL,
answer VARCHAR(1000),
cnt INT DEFAULT 0);

-- 자주하는 질문 더미 데이터 삽입
INSERT INTO faq (fno, question, answer, cnt) VALUES
	(1, '1. 회사의 역사와 비전은 무엇인가요?', '회사의 설립 배경과 미래 비전에 대한 정보는 '회사 소개' 페이지에서 확인하실 수 있습니다.', 0),
	(2, '2. 다양한 강의 주제는 어떻게 선택되나요?', ' 최신 IT 트렌드와 시장 수요를 고려하여 다양한 주제의 강의를 선택하고 제공합니다. 교육 수요 조사와 업계 동향을 기반으로 선정합니다.', 0),
	(3, '3. 강의의 품질은 어떻게 보장되나요?', '강의의 품질을 중요하게 여기며, 학생들의 피드백을 수시로 반영하여 컨텐츠와 강의 방식을 개선합니다.', 0),
	(4, '4. 어떤 수업을 제공하나요?', '프로그래밍 언어부터 웹 개발, 앱 개발 등 다양한 코딩 교육 수업을 제공합니다. \r\n\r\n자세한 내용은 강좌 페이지를 확인해주세요!', 0),
	(5, '5. 개인 정보 보호는 어떻게 보장되나요?', '우리는 학생들의 개인 정보를 보호하기 위해 최선을 다하며, 개인 정보 보호 정책을 준수합니다.', 0);

-- 1:1 문의 게시판 댓글 테이블 생성
CREATE TABLE comment(
	cno INT PRIMARY KEY AUTO_INCREMENT,
	qno INT,
	author VARCHAR(16),
   resdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
   content VARCHAR(200),
   FOREIGN KEY(qno) REFERENCES qna(qno) ON DELETE CASCADE
);

-- 댓글 더미 데이터 삽입
INSERT INTO comment(qno, author, content) VALUES(3, 'kim', '테스트용 댓글');
INSERT INTO comment(qno, author, content) VALUES(4, 'lee', '테스트용 댓글');
INSERT INTO comment(qno, author, content) VALUES(5, 'park', '테스트용 댓글');
INSERT INTO comment(qno, author, content) VALUES(6, 'so', '테스트용 댓글');
INSERT INTO comment(qno, author, content) VALUES(12, 'yoon', '테스트용 댓글');

COMMIT;