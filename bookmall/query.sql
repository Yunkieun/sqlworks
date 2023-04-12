-- �ǽ�����
-- ���� ������ ���� ���̺��� �˻��Ͻÿ�.

-- 1.��� ������ �̸��� �ּҸ� �˻��Ͻÿ�.
SELECT name, address
FROM customer;

-- 2. ��� ������ �̸�, �ּ�, ��ȭ��ȣ�� �˻��Ͻÿ�.
SELECT name, address, phone
FROM customer;

-- 3. �ּҰ� '����'�� ������ �˻��Ͻÿ�.
SELECT *
FROM customer
WHERE address LIKE '����%';

-- 4. ������ �̸��� '�迬��' Ȥ�� '�Ȼ�'�� ������ �˻��Ͻÿ�.
SELECT *
FROM customer
WHERE name IN ('�迬��', '�Ȼ�');

-- 5. �ּҰ� '���ѹα�'�� �ƴ� ������ �˻��Ͻÿ�.
SELECT *
FROM customer
WHERE address NOT LIKE '���ѹα�%';

-- 6. ��ȭ��ȣ�� ���� ������ �˻��Ͻÿ�.
SELECT *
FROM customer
WHERE phone IS NULL;

-- 7. ������ �̸������� �����Ͻÿ�.
SELECT *
FROM customer
ORDER BY name;

-- 8. ������ �� �ο����� ���Ͻÿ�. 
SELECT COUNT(*) ���ο���
FROM customer;