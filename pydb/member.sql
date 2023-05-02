-- member 테이블
CREATE TABLE member(
    memberid TEXT PRIMARY KEY,
	passwd TEXT NOT NULL,
	name TEXT NOT NULL,
	gender TEXT,
	regdate DATABASE DEFAULT (datetime('now', 'localtime'))
);

-- 회원 추가
INSERT INTO member(memberid, passwd, name, gender) 
VALUES ('cloud123', 'm123456#', '장그래', '님');

INSERT INTO member(memberid, passwd, name, gender) 
VALUES ('cloud345', 'm123456#', '오대리', '여');

-- 회원 수정
UPDATE member
SET gender = '남'
WHERE name = '장그래';

SELECT * FROM member;