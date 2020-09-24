-- ������� ���� ������ shop
USE media;

-- ������� ������� �����������
TRUNCATE TABLE users;

-- ������� ��������� �������� 
INSERT INTO users VALUES
  (DEFAULT, '������', DEFAULT, DEFAULT),
  (DEFAULT, '������', DEFAULT, DEFAULT),
  (DEFAULT, '�������', DEFAULT, DEFAULT);
 
 -- ������� ������� �����������
TRUNCATE TABLE content;
-- ������� ��������� �������� 
INSERT INTO content VALUES
  (DEFAULT, '������ ������ �� �����', '�������� �������� ��������� ��������� ��������...', 1, 
  'https://www.ivi.ru/watch/moskva_slezam_ne_verit', 'video', DEFAULT, DEFAULT),
  (DEFAULT, '����������', '������� ������������, ��������� ���� ��������������� �������-������...', 2, 
  'https://www.ivi.ru/watch/100097', 'video', DEFAULT, DEFAULT),
  (DEFAULT, '���� ������ ���', '����, ���� ������ ���, ������, 1985', 1, 
  'https://music.yandex.ru/album/61487', 'audio', DEFAULT, DEFAULT),
  (DEFAULT, '׸���� ����', '������� ������, ���� ���, 1986', 3, 
  'https://music.yandex.ru/album/79292/track/45124292', 'audio', DEFAULT, DEFAULT),
  (DEFAULT, '��������� �������', '��, ��� ������...', 3, 
  'https://yandex.ru/images/search?text=%D0%BA%D0%BE%D1%82%D0%B8%D0%BA%D0%B8&pos=1&img_url=https%3A%2F%2Fi01.fotocdn.net%2Fs117%2Fc23af9bf40feecb6%2Fuser_xl%2F2662790803.jpg&rpt=simage',
  'photo', DEFAULT, DEFAULT),
  (DEFAULT, '����� � ������', '�������� �� ������� ����...', 3, 
  'https://yandex.ru/images/search?text=%D0%BA%D0%BE%D1%82%D0%B8%D0%BA%D0%B8&pos=11&img_url=https%3A%2F%2Fsun9-35.userapi.com%2Fc837133%2Fu356434221%2Fvideo%2Fl_36e1c260.jpg&rpt=simage', 
  'photo', DEFAULT, DEFAULT);
 
-- ������� ������� �������� ����
TRUNCATE TABLE keywords;
-- ������� ��������� �������� 
INSERT INTO keywords VALUES
  (DEFAULT, '������'), 
  (DEFAULT, '���������'),
  (DEFAULT, '������'),
  (DEFAULT, '������'),
  (DEFAULT, '���'),
  (DEFAULT, '������');
 
-- ������� ������� ������
TRUNCATE TABLE content_keywords;
-- ������� ��������� �������� 
INSERT INTO content_keywords VALUES
  (1, 2), 
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 3),
  (3, 4),
  (3, 5),
  (4, 6);
 
