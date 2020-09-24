
 USE media;

-- Убедимся, что значения вставились
SELECT * FROM users;
SELECT * FROM content;
SELECT * FROM keywords;
SELECT * FROM media.content_keywords;

SELECT * FROM content
WHERE data_types = 'video';
 
SELECT content.name, content.desription, content.data_types, users.name 
FROM content  
INNER JOIN users ON users.id = content.user_id
WHERE users.name = 'Сидоров';



SELECT content.name, content.desription, keywords.name 
FROM content  
INNER JOIN content_keywords ON content.id = content_keywords.content_id
INNER JOIN keywords ON content_keywords.keyword_id = keywords.id
WHERE keywords.name = 'Старое'
