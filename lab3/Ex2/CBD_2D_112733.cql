--1. Os últimos 3 comentários introduzidos para um vídeo;
SELECT comment_text FROM video_platform.comments WHERE video_id = 136718da-52cf-4f10-bf78-ce2f2c5ea457 LIMIT 3;

--2. Lista das tags de determinado vídeo;
SELECT tags FROM video_platform.videos WHERE video_id=136718da-52cf-4f10-bf78-ce2f2c5ea457;

--3. Todos os vídeos com a tag Aveiro
cqlsh> SELECT * FROM video_platform.videos WHERE tags CONTAINS 'Aveiro' ALLOW FILTERING;

--4.a Os últimos 5 eventos de determinado vídeo realizados por um utilizador;
SELECT * FROM video_platform.video_events  WHERE user_id = ecd61e1a-0725-41fb-a2ce-014ef7a60835  AND video_id = 136718da-52cf-4f10-bf78-ce2f2c5ea457 LIMIT 5;

--4.b Todos os eventos de determinado utilizador;
SELECT * FROM video_platform.events_by_user WHERE user_id = ecd61e1a-0725-41fb-a2ce-014ef7a60835;

--4.c. Todos os eventos de determinado utilizador do tipo "pause"
SELECT * FROM video_platform.events_by_user WHERE user_id = ecd61e1a-0725-41fb-a2ce-014ef7a60835 AND event_type = 'pause';

--5. Vídeos partilhados por determinado utilizador (maria1987, por exemplo) num determinado período de tempo (Agosto de 2017, por exemplo);

--6. Os últimos 10 vídeos, ordenado inversamente pela data da partilhada;

--7. Todos os seguidores (followers) de determinado vídeo;
SELECT * FROM video_platform.video_followers WHERE video_id=72a817c0-cd97-4e5b-bb2e-7830608fc9fd;

SELECT video_id, comment_id, comment_text, comment_timestamp FROM video_platform.followed_comments WHERE follower_id = ecd61e1a-0725-41fb-a2ce-014ef7a60835;

--10. Uma query que retorne todos os vídeos e que mostre claramente a forma pela qual estão ordenados;
