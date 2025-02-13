CREATE TABLE video_platform.users (
    user_id UUID PRIMARY KEY,
    username text,
    name text,
    email text,
    registration_timestamp timestamp
);
INSERT INTO video_platform.users (user_id, username, name, email, registration_timestamp) 
VALUES (uuid(), 'username3', 'User3', 'emailuser3@example.com', toTimestamp(now()));

INSERT INTO video_platform.users (user_id, username, name, email, registration_timestamp) 
VALUES (uuid(), 'username4', 'User4', 'emailuser4@example.com', toTimestamp(now()));

INSERT INTO video_platform.users (user_id, username, name, email, registration_timestamp) 
VALUES (uuid(), 'username5', 'User5', 'emailuser5@example.com', toTimestamp(now()));

INSERT INTO video_platform.users (user_id, username, name, email, registration_timestamp) 
VALUES (uuid(), 'username6', 'User6', 'emailuser6@example.com', toTimestamp(now()));

INSERT INTO video_platform.users (user_id, username, name, email, registration_timestamp) 
VALUES (uuid(), 'username7', 'User7', 'emailuser7@example.com', toTimestamp(now()));

INSERT INTO video_platform.users (user_id, username, name, email, registration_timestamp) 
VALUES (uuid(), 'username8', 'User8', 'emailuser8@example.com', toTimestamp(now()));

INSERT INTO video_platform.users (user_id, username, name, email, registration_timestamp) 
VALUES (uuid(), 'username9', 'User9', 'emailuser9@example.com', toTimestamp(now()));

INSERT INTO video_platform.users (user_id, username, name, email, registration_timestamp) 
VALUES (uuid(), 'username10', 'User10', 'emailuser10@example.com', toTimestamp(now()));

INSERT INTO video_platform.users (user_id, username, name, email, registration_timestamp)  
VALUES (uuid(), 'hugao', 'Hugo', 'huguinho@example.com', toTimestamp(now()));


CREATE TABLE video_platform.videos (
    video_id UUID PRIMARY KEY,
    author_id UUID,
    video_name text,
    description text,
    tags set<text>,
    upload_timestamp timestamp
);
INSERT INTO video_platform.videos (video_id, author_id, video_name, description, tags, upload_timestamp)
VALUES (uuid(), uuid(), 'Video1', 'Descrição do vídeo 1', {'tutorial', 'cassandra'}, toTimestamp(now()));

INSERT INTO video_platform.videos (video_id, author_id, video_name, description, tags, upload_timestamp)
VALUES (uuid(), uuid(), 'Video2', 'Descrição do vídeo 2', {'musica', 'live'}, toTimestamp(now()));

INSERT INTO video_platform.videos (video_id, author_id, video_name, description, tags, upload_timestamp)
VALUES (uuid(), uuid(), 'Video3', 'Descrição do vídeo 3', {'gaming', 'stream'}, toTimestamp(now()));

INSERT INTO video_platform.videos (video_id, author_id, video_name, description, tags, upload_timestamp)
VALUES (uuid(), uuid(), 'Video4', 'Descrição do vídeo 4', {'vlog', 'lifestyle'}, toTimestamp(now()));

INSERT INTO video_platform.videos (video_id, author_id, video_name, description, tags, upload_timestamp)
VALUES (uuid(), uuid(), 'Video5', 'Descrição do vídeo 5', {'review', 'tech'}, toTimestamp(now()));

INSERT INTO video_platform.videos (video_id, author_id, video_name, description, tags, upload_timestamp)
VALUES (uuid(), uuid(), 'Video6', 'Descrição do vídeo 6', {'tutorial', 'desenvolvimento'}, toTimestamp(now()));

INSERT INTO video_platform.videos (video_id, author_id, video_name, description, tags, upload_timestamp)
VALUES (uuid(), uuid(), 'Video7', 'Descrição do vídeo 7', {'esportes', 'competição'}, toTimestamp(now()));

INSERT INTO video_platform.videos (video_id, author_id, video_name, description, tags, upload_timestamp)
VALUES (uuid(), uuid(), 'Video8', 'Descrição do vídeo 8', {'cooking', 'receitas'}, toTimestamp(now()));

INSERT INTO video_platform.videos (video_id, author_id, video_name, description, tags, upload_timestamp)
VALUES (uuid(), uuid(), 'Video9', 'Descrição do vídeo 9', {'documentário', 'história'}, toTimestamp(now()));

INSERT INTO video_platform.videos (video_id, author_id, video_name, description, tags, upload_timestamp)
VALUES (uuid(), uuid(), 'Video10', 'Descrição do vídeo 10', {'ciência', 'educação'}, toTimestamp(now()));


CREATE TABLE video_platform.comments (
    video_id UUID,
    comment_id UUID,
    author_id UUID,
    comment_text text,
    comment_timestamp timestamp,
    PRIMARY KEY (video_id, comment_id)
);
INSERT INTO video_platform.comments (video_id, comment_id, author_id, comment_text, comment_timestamp)
VALUES (136718da-52cf-4f10-bf78-ce2f2c5ea457, uuid(), ecd61e1a-0725-41fb-a2ce-014ef7a60835, 'Ótimo documentário, muito educativo!', toTimestamp(now()));

INSERT INTO video_platform.comments (video_id, comment_id, author_id, comment_text, comment_timestamp)
VALUES (54917f71-440e-4622-a26e-2d2bea7221a3, uuid(), f4bb9421-4fb2-41b4-b915-c9fa92820e77, 'Gostei da análise técnica. Muito útil!', toTimestamp(now()));

INSERT INTO video_platform.comments (video_id, comment_id, author_id, comment_text, comment_timestamp)
VALUES (27e68b8b-89ee-46b3-8d0a-18d608ba9e05, uuid(), 096cdfa1-d942-438d-876f-f75e2bd43f47, 'Boa introdução ao desenvolvimento.', toTimestamp(now()));

INSERT INTO video_platform.comments (video_id, comment_id, author_id, comment_text, comment_timestamp)
VALUES (6abb5237-04fe-4745-b787-baf5d55a63ba, uuid(), 6d257d92-b729-49d5-b8a9-cf37acd84778, 'Explicação clara e objetiva, adorei!', toTimestamp(now()));

INSERT INTO video_platform.comments (video_id, comment_id, author_id, comment_text, comment_timestamp)
VALUES (e383bcc7-3827-4ad5-8c76-1b33805a8bf4, uuid(), c3593b77-7124-49f8-a296-9df3a9c07022, 'Esse vídeo de música está incrível!', toTimestamp(now()));

INSERT INTO video_platform.comments (video_id, comment_id, author_id, comment_text, comment_timestamp)
VALUES (72a817c0-cd97-4e5b-bb2e-7830608fc9fd, uuid(), f3cab3ca-1adc-4de4-bdc4-0dc8e11c6260, 'Vlog bem interessante, gostei muito!', toTimestamp(now()));

INSERT INTO video_platform.comments (video_id, comment_id, author_id, comment_text, comment_timestamp)
VALUES (5728c0a2-24ed-4575-87b1-f553d925af73, uuid(), 42caab6d-c19d-4b06-ad8d-7b9bf3682d1c, 'Live de jogos sempre divertida.', toTimestamp(now()));

INSERT INTO video_platform.comments (video_id, comment_id, author_id, comment_text, comment_timestamp)
VALUES (e1f6e637-6f39-4581-875a-60de64262214, uuid(), 8d02c817-f0e4-4d00-9d7e-112367ed3526, 'Esportes eletrônicos são o futuro!', toTimestamp(now()));

INSERT INTO video_platform.comments (video_id, comment_id, author_id, comment_text, comment_timestamp)
VALUES (032d9481-9925-4f5d-9cc1-2627ca19f3ed, uuid(), c0cb6a68-afc1-4af5-a277-177df1833d51, 'Tutorial de Cassandra excelente!', toTimestamp(now()));

INSERT INTO video_platform.comments (video_id, comment_id, author_id, comment_text, comment_timestamp)
VALUES (7c71b39d-26d5-436b-8305-fc20df4e2deb, uuid(), 19134763-668b-4883-b88d-83eb0a757519, 'Streaming de esports ao vivo, demais!', toTimestamp(now()));


CREATE TABLE video_platform.video_followers (
    video_id UUID,
    follower_id UUID,
    follow_timestamp timestamp,
    PRIMARY KEY (video_id, follower_id)
);
INSERT INTO video_platform.video_followers (video_id, follower_id, follow_timestamp)
VALUES (136718da-52cf-4f10-bf78-ce2f2c5ea457, ecd61e1a-0725-41fb-a2ce-014ef7a60835, toTimestamp(now()));

INSERT INTO video_platform.video_followers (video_id, follower_id, follow_timestamp)
VALUES (54917f71-440e-4622-a26e-2d2bea7221a3, f4bb9421-4fb2-41b4-b915-c9fa92820e77, toTimestamp(now()));

INSERT INTO video_platform.video_followers (video_id, follower_id, follow_timestamp)
VALUES (27e68b8b-89ee-46b3-8d0a-18d608ba9e05, 096cdfa1-d942-438d-876f-f75e2bd43f47, toTimestamp(now()));

INSERT INTO video_platform.video_followers (video_id, follower_id, follow_timestamp)
VALUES (6abb5237-04fe-4745-b787-baf5d55a63ba, 6d257d92-b729-49d5-b8a9-cf37acd84778, toTimestamp(now()));

INSERT INTO video_platform.video_followers (video_id, follower_id, follow_timestamp)
VALUES (e383bcc7-3827-4ad5-8c76-1b33805a8bf4, c3593b77-7124-49f8-a296-9df3a9c07022, toTimestamp(now()));

INSERT INTO video_platform.video_followers (video_id, follower_id, follow_timestamp)
VALUES (72a817c0-cd97-4e5b-bb2e-7830608fc9fd, f3cab3ca-1adc-4de4-bdc4-0dc8e11c6260, toTimestamp(now()));

INSERT INTO video_platform.video_followers (video_id, follower_id, follow_timestamp)
VALUES (5728c0a2-24ed-4575-87b1-f553d925af73, 42caab6d-c19d-4b06-ad8d-7b9bf3682d1c, toTimestamp(now()));

INSERT INTO video_platform.video_followers (video_id, follower_id, follow_timestamp)
VALUES (e1f6e637-6f39-4581-875a-60de64262214, 8d02c817-f0e4-4d00-9d7e-112367ed3526, toTimestamp(now()));

INSERT INTO video_platform.video_followers (video_id, follower_id, follow_timestamp)
VALUES (032d9481-9925-4f5d-9cc1-2627ca19f3ed, c0cb6a68-afc1-4af5-a277-177df1833d51, toTimestamp(now()));

INSERT INTO video_platform.video_followers (video_id, follower_id, follow_timestamp)
VALUES (7c71b39d-26d5-436b-8305-fc20df4e2deb, 19134763-668b-4883-b88d-83eb0a757519, toTimestamp(now()));



CREATE TABLE video_platform.video_events (
    video_id UUID,
    user_id UUID,
    event_type text,
    event_timestamp timestamp,
    video_time_seconds int,
    PRIMARY KEY (video_id, user_id, event_timestamp)
);

INSERT INTO video_platform.video_events (video_id, user_id, event_type, event_timestamp, video_time_seconds)
VALUES (136718da-52cf-4f10-bf78-ce2f2c5ea457, ecd61e1a-0725-41fb-a2ce-014ef7a60835, 'play', toTimestamp(now()), 0);

INSERT INTO video_platform.video_events (video_id, user_id, event_type, event_timestamp, video_time_seconds)
VALUES (136718da-52cf-4f10-bf78-ce2f2c5ea457, ecd61e1a-0725-41fb-a2ce-014ef7a60835, 'pause', toTimestamp(now()), 150);

INSERT INTO video_platform.video_events (video_id, user_id, event_type, event_timestamp, video_time_seconds)
VALUES (136718da-52cf-4f10-bf78-ce2f2c5ea457, ecd61e1a-0725-41fb-a2ce-014ef7a60835, 'stop', toTimestamp(now()), 300);

INSERT INTO video_platform.video_events (video_id, user_id, event_type, event_timestamp, video_time_seconds)
VALUES (54917f71-440e-4622-a26e-2d2bea7221a3, f4bb9421-4fb2-41b4-b915-c9fa92820e77, 'play', toTimestamp(now()), 0);

INSERT INTO video_platform.video_events (video_id, user_id, event_type, event_timestamp, video_time_seconds)
VALUES (54917f71-440e-4622-a26e-2d2bea7221a3, f4bb9421-4fb2-41b4-b915-c9fa92820e77, 'pause', toTimestamp(now()), 60);

INSERT INTO video_platform.video_events (video_id, user_id, event_type, event_timestamp, video_time_seconds)
VALUES (54917f71-440e-4622-a26e-2d2bea7221a3, f4bb9421-4fb2-41b4-b915-c9fa92820e77, 'stop', toTimestamp(now()), 120);

INSERT INTO video_platform.video_events (video_id, user_id, event_type, event_timestamp, video_time_seconds)
VALUES (27e68b8b-89ee-46b3-8d0a-18d608ba9e05, 096cdfa1-d942-438d-876f-f75e2bd43f47, 'play', toTimestamp(now()), 0);

INSERT INTO video_platform.video_events (video_id, user_id, event_type, event_timestamp, video_time_seconds)
VALUES (27e68b8b-89ee-46b3-8d0a-18d608ba9e05, 096cdfa1-d942-438d-876f-f75e2bd43f47, 'pause', toTimestamp(now()), 200);

INSERT INTO video_platform.video_events (video_id, user_id, event_type, event_timestamp, video_time_seconds)
VALUES (6abb5237-04fe-4745-b787-baf5d55a63ba, 6d257d92-b729-49d5-b8a9-cf37acd84778, 'play', toTimestamp(now()), 0);

INSERT INTO video_platform.video_events (video_id, user_id, event_type, event_timestamp, video_time_seconds)
VALUES (6abb5237-04fe-4745-b787-baf5d55a63ba, 6d257d92-b729-49d5-b8a9-cf37acd84778, 'stop', toTimestamp(now()), 500);

INSERT INTO video_platform.video_events (video_id, user_id, event_type, event_timestamp, video_time_seconds)
VALUES (136718da-52cf-4f10-bf78-ce2f2c5ea457, ecd61e1a-0725-41fb-a2ce-014ef7a60835, 'play', toTimestamp(now()), 0);

INSERT INTO video_platform.video_events (video_id, user_id, event_type, event_timestamp, video_time_seconds)
VALUES (136718da-52cf-4f10-bf78-ce2f2c5ea457, ecd61e1a-0725-41fb-a2ce-014ef7a60835, 'pause', toTimestamp(now()), 45);

INSERT INTO video_platform.video_events (video_id, user_id, event_type, event_timestamp, video_time_seconds)
VALUES (136718da-52cf-4f10-bf78-ce2f2c5ea457, ecd61e1a-0725-41fb-a2ce-014ef7a60835, 'stop', toTimestamp(now()), 200);

INSERT INTO video_platform.video_events (video_id, user_id, event_type, event_timestamp, video_time_seconds)
VALUES (54917f71-440e-4622-a26e-2d2bea7221a3, f4bb9421-4fb2-41b4-b915-c9fa92820e77, 'play', toTimestamp(now()), 0);

INSERT INTO video_platform.video_events (video_id, user_id, event_type, event_timestamp, video_time_seconds)
VALUES (54917f71-440e-4622-a26e-2d2bea7221a3, f4bb9421-4fb2-41b4-b915-c9fa92820e77, 'pause', toTimestamp(now()), 90);

INSERT INTO video_platform.video_events (video_id, user_id, event_type, event_timestamp, video_time_seconds)
VALUES (54917f71-440e-4622-a26e-2d2bea7221a3, f4bb9421-4fb2-41b4-b915-c9fa92820e77, 'stop', toTimestamp(now()), 150);

INSERT INTO video_platform.video_events (video_id, user_id, event_type, event_timestamp, video_time_seconds)
VALUES (27e68b8b-89ee-46b3-8d0a-18d608ba9e05, 096cdfa1-d942-438d-876f-f75e2bd43f47, 'play', toTimestamp(now()), 0);

INSERT INTO video_platform.video_events (video_id, user_id, event_type, event_timestamp, video_time_seconds)
VALUES (27e68b8b-89ee-46b3-8d0a-18d608ba9e05, 096cdfa1-d942-438d-876f-f75e2bd43f47, 'pause', toTimestamp(now()), 210);

INSERT INTO video_platform.video_events (video_id, user_id, event_type, event_timestamp, video_time_seconds)
VALUES (27e68b8b-89ee-46b3-8d0a-18d608ba9e05, 096cdfa1-d942-438d-876f-f75e2bd43f47, 'stop', toTimestamp(now()), 350);

INSERT INTO video_platform.video_events (video_id, user_id, event_type, event_timestamp, video_time_seconds)
VALUES (6abb5237-04fe-4745-b787-baf5d55a63ba, 6d257d92-b729-49d5-b8a9-cf37acd84778, 'play', toTimestamp(now()), 0);

INSERT INTO video_platform.video_events (video_id, user_id, event_type, event_timestamp, video_time_seconds)
VALUES (6abb5237-04fe-4745-b787-baf5d55a63ba, 6d257d92-b729-49d5-b8a9-cf37acd84778, 'pause', toTimestamp(now()), 125);

INSERT INTO video_platform.video_events (video_id, user_id, event_type, event_timestamp, video_time_seconds)
VALUES (6abb5237-04fe-4745-b787-baf5d55a63ba, 6d257d92-b729-49d5-b8a9-cf37acd84778, 'stop', toTimestamp(now()), 400);




CREATE TABLE video_platform.video_ratings (
    video_id UUID,
    rating int,
    PRIMARY KEY (video_id)
);

INSERT INTO video_platform.video_ratings (video_id, rating)
VALUES (136718da-52cf-4f10-bf78-ce2f2c5ea457, 5);

INSERT INTO video_platform.video_ratings (video_id, rating)
VALUES (54917f71-440e-4622-a26e-2d2bea7221a3, 4);

INSERT INTO video_platform.video_ratings (video_id, rating)
VALUES (27e68b8b-89ee-46b3-8d0a-18d608ba9e05, 3);

INSERT INTO video_platform.video_ratings (video_id, rating)
VALUES (6abb5237-04fe-4745-b787-baf5d55a63ba, 5);

INSERT INTO video_platform.video_ratings (video_id, rating)
VALUES (e383bcc7-3827-4ad5-8c76-1b33805a8bf4, 2);

INSERT INTO video_platform.video_ratings (video_id, rating)
VALUES (72a817c0-cd97-4e5b-bb2e-7830608fc9fd, 4);

INSERT INTO video_platform.video_ratings (video_id, rating)
VALUES (5728c0a2-24ed-4575-87b1-f553d925af73, 5);

INSERT INTO video_platform.video_ratings (video_id, rating)
VALUES (e1f6e637-6f39-4581-875a-60de64262214, 3);

INSERT INTO video_platform.video_ratings (video_id, rating)
VALUES (032d9481-9925-4f5d-9cc1-2627ca19f3ed, 4);

INSERT INTO video_platform.video_ratings (video_id, rating)
VALUES (7c71b39d-26d5-436b-8305-fc20df4e2deb, 5);

INSERT INTO video_platform.video_ratings (video_id, rating)
VALUES (136718da-52cf-4f10-bf78-ce2f2c5ea457, 4);

INSERT INTO video_platform.video_ratings (video_id, rating)
VALUES (54917f71-440e-4622-a26e-2d2bea7221a3, 5);

INSERT INTO video_platform.video_ratings (video_id, rating)
VALUES (27e68b8b-89ee-46b3-8d0a-18d608ba9e05, 3);

INSERT INTO video_platform.video_ratings (video_id, rating)
VALUES (6abb5237-04fe-4745-b787-baf5d55a63ba, 2);

INSERT INTO video_platform.video_ratings (video_id, rating)
VALUES (e383bcc7-3827-4ad5-8c76-1b33805a8bf4, 4);

INSERT INTO video_platform.video_ratings (video_id, rating)
VALUES (72a817c0-cd97-4e5b-bb2e-7830608fc9fd, 3);

INSERT INTO video_platform.video_ratings (video_id, rating)
VALUES (5728c0a2-24ed-4575-87b1-f553d925af73, 5);

INSERT INTO video_platform.video_ratings (video_id, rating)
VALUES (e1f6e637-6f39-4581-875a-60de64262214, 1);

INSERT INTO video_platform.video_ratings (video_id, rating)
VALUES (032d9481-9925-4f5d-9cc1-2627ca19f3ed, 2);

INSERT INTO video_platform.video_ratings (video_id, rating)
VALUES (7c71b39d-26d5-436b-8305-fc20df4e2deb, 5);



CREATE TABLE video_platform.events_by_user (
    user_id UUID,
    event_type text,
    event_timestamp timestamp,
    video_id UUID,
    video_time_seconds int,
    PRIMARY KEY (user_id, event_type, event_timestamp)
) WITH CLUSTERING ORDER BY (event_type ASC, event_timestamp DESC);

INSERT INTO video_platform.events_by_user (user_id, video_id, event_type, event_timestamp, video_time_seconds)
VALUES (ecd61e1a-0725-41fb-a2ce-014ef7a60835, 136718da-52cf-4f10-bf78-ce2f2c5ea457, 'play', '2024-11-05 10:11:43.658000+0000', 0);

INSERT INTO video_platform.events_by_user (user_id, video_id, event_type, event_timestamp, video_time_seconds)
VALUES (ecd61e1a-0725-41fb-a2ce-014ef7a60835, 136718da-52cf-4f10-bf78-ce2f2c5ea457, 'pause', '2024-11-05 10:11:49.576000+0000', 150);

INSERT INTO video_platform.events_by_user (user_id, video_id, event_type, event_timestamp, video_time_seconds)
VALUES (ecd61e1a-0725-41fb-a2ce-014ef7a60835, 136718da-52cf-4f10-bf78-ce2f2c5ea457, 'stop', '2024-11-05 10:11:49.580000+0000', 300);

INSERT INTO video_platform.events_by_user (user_id, video_id, event_type, event_timestamp, video_time_seconds)
VALUES (ecd61e1a-0725-41fb-a2ce-014ef7a60835, 136718da-52cf-4f10-bf78-ce2f2c5ea457, 'play', '2024-11-05 10:15:51.092000+0000', 0);

INSERT INTO video_platform.events_by_user (user_id, video_id, event_type, event_timestamp, video_time_seconds)
VALUES (ecd61e1a-0725-41fb-a2ce-014ef7a60835, 136718da-52cf-4f10-bf78-ce2f2c5ea457, 'pause', '2024-11-05 10:15:51.097000+0000', 45);

INSERT INTO video_platform.events_by_user (user_id, video_id, event_type, event_timestamp, video_time_seconds)
VALUES (ecd61e1a-0725-41fb-a2ce-014ef7a60835, 136718da-52cf-4f10-bf78-ce2f2c5ea457, 'stop', '2024-11-05 10:15:51.099000+0000', 200);

INSERT INTO video_platform.events_by_user (user_id, video_id, event_type, event_timestamp, video_time_seconds)
VALUES (f4bb9421-4fb2-41b4-b915-c9fa92820e77, 54917f71-440e-4622-a26e-2d2bea7221a3, 'play', '2024-11-05 10:11:49.582000+0000', 0);

INSERT INTO video_platform.events_by_user (user_id, video_id, event_type, event_timestamp, video_time_seconds)
VALUES (f4bb9421-4fb2-41b4-b915-c9fa92820e77, 54917f71-440e-4622-a26e-2d2bea7221a3, 'pause', '2024-11-05 10:11:49.584000+0000', 60);

INSERT INTO video_platform.events_by_user (user_id, video_id, event_type, event_timestamp, video_time_seconds)
VALUES (f4bb9421-4fb2-41b4-b915-c9fa92820e77, 54917f71-440e-4622-a26e-2d2bea7221a3, 'stop', '2024-11-05 10:11:55.528000+0000', 120);

INSERT INTO video_platform.events_by_user (user_id, video_id, event_type, event_timestamp, video_time_seconds)
VALUES (f4bb9421-4fb2-41b4-b915-c9fa92820e77, 54917f71-440e-4622-a26e-2d2bea7221a3, 'play', '2024-11-05 10:15:51.101000+0000', 0);

INSERT INTO video_platform.events_by_user (user_id, video_id, event_type, event_timestamp, video_time_seconds)
VALUES (f4bb9421-4fb2-41b4-b915-c9fa92820e77, 54917f71-440e-4622-a26e-2d2bea7221a3, 'pause', '2024-11-05 10:15:51.103000+0000', 90);

INSERT INTO video_platform.events_by_user (user_id, video_id, event_type, event_timestamp, video_time_seconds)
VALUES (f4bb9421-4fb2-41b4-b915-c9fa92820e77, 54917f71-440e-4622-a26e-2d2bea7221a3, 'stop', '2024-11-05 10:15:56.698000+0000', 150);

INSERT INTO video_platform.events_by_user (user_id, video_id, event_type, event_timestamp, video_time_seconds)
VALUES (096cdfa1-d942-438d-876f-f75e2bd43f47, 27e68b8b-89ee-46b3-8d0a-18d608ba9e05, 'play', '2024-11-05 10:11:55.531000+0000', 0);

CREATE TABLE video_platform.followed_comments (
    follower_id UUID,
    video_id UUID,
    comment_id UUID,
    comment_text text,
    comment_timestamp timestamp,
    PRIMARY KEY (follower_id, video_id, comment_id)
) WITH CLUSTERING ORDER BY (video_id ASC, comment_id ASC);

INSERT INTO video_platform.followed_comments (follower_id, video_id, comment_id, comment_text, comment_timestamp)
VALUES (ecd61e1a-0725-41fb-a2ce-014ef7a60835, 136718da-52cf-4f10-bf78-ce2f2c5ea457, uuid(), 'Ótimo documentário!', toTimestamp(now()));

INSERT INTO video_platform.followed_comments (follower_id, video_id, comment_id, comment_text, comment_timestamp)
VALUES (ecd61e1a-0725-41fb-a2ce-014ef7a60835, 54917f71-440e-4622-a26e-2d2bea7221a3, uuid(), 'Muito educativo!', toTimestamp(now()));



-- QUERIES:

7. Permitir a pesquisa de todos os vídeos de determinado autor;
cqlsh> SELECT JSON * FROM video_platform.videos WHERE author_id = 97a62c9b-6e31-40dd-9e20-5dff7d720f5a ALLOW FILTERING;

8.Permitir a pesquisa de comentários por utilizador, ordenado inversamente pela data;
cqlsh> SELECT JSON * FROM video_platform.comments WHERE author_id = ecd61e1a-0725-41fb-a2ce-014ef7a60835 ALLOW FILTERING;

9. Pesquisa de comentários por vídeos, sem ordenação específica
SELECT JSON * FROM video_platform.comments WHERE video_id = 136718da-52cf-4f10-bf78-ce2f2c5ea457 ALLOW FILTERING;

10. Pesquisa do rating médio de um vídeo e contagem de votos
SELECT rating FROM video_platform.video_ratings WHERE video_id = 136718da-52cf-4f10-bf78-ce2f2c5ea457;
