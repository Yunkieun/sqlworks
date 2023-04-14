-- board ���̺�
CREATE TABLE board(
    bno NUMBER(5) PRIMARY KEY,         -- �۹�ȣ
    title VARCHAR2(200) NOT NULL,      -- ������
    writer VARCHAR2(20) NOT NULL,      -- �ۼ���
    content VARCHAR2(2000) NOT NULL,   -- �۳���
    regdate DATE DEFAULT SYSDATE       -- �����
);
-- ������(�Ϸù�ȣ, �ڵ�����)
CREATE SEQUENCE seq;
DROP SEQUENCE seq;

DELETE FROM board;
DROP TABLE board;

-- ��õ�� Į���� �߰��Ͻÿ�.(Į����: cnt, �ڷ���:NUMBER DEFAULT 0)
-- ALTER TABLE ���̺��̸� ADD Į���� �ڷ���
ALTER TABLE board ADD cnt NUMBER DEFAULT 0;

DESC board;

-- �Խñ� �߰�
INSERT INTO board(bno, title, writer, content) 
values(seq.NEXTVAL, '�����λ�', '������', '�ȳ��ϼ���, �����λ� �����');
INSERT INTO board(bno, title, writer, content) 
values(seq.NEXTVAL, '���������Դϴ�.', '������', '�����λ縦 �����ּ���~');
INSERT INTO board(bno, title, writer, content) 
values(seq.NEXTVAL, '�����λ��Դϴ�.', '�̰�', '�ȳ��ϼ���~');
INSERT INTO board(bno, title, writer, content) 
values(seq.NEXTVAL, '���� �Ϸ�', '���Ϸ�', '���� �Ϸ� �Ǽ���~');


-- �Խñ� �˻�
SELECT *
FROM board;

-- �ۼ��ڰ� �������� �Խñ��� �˻��Ͻÿ�.
SELECT * FROM board
WHERE bno = 2;

-- �Խñ��� �ۼ��ڸ� '������'���� 'admin'���� �����ϼ���.
-- UPDATE ���̺��̸� SET Į�� = ���氪 WHERE ��
UPDATE board SET writer = 'admin'
WHERE bno = 2;

-- 3�� �Խñ��� �����Ͻÿ�.
-- DELETE FROM ���̺��̸� WHERE ��
DELETE FROM board WHERE bno = 3;

ROLLBACK;