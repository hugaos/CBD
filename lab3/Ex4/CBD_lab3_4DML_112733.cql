INSERT INTO cultural_events.events (event_id, event_name, event_date, location, tags)
VALUES (uuid(), 'Concerto de Jazz', '2024-11-15 20:00:00', 'Lisboa', {'música', 'jazz', 'concerto'});

INSERT INTO cultural_events.events (event_id, event_name, event_date, location, tags)
VALUES (uuid(), 'Festival de Cinema', '2024-12-01 18:00:00', 'Porto', {'cinema', 'festival', 'arte'});

INSERT INTO cultural_events.events (event_id, event_name, event_date, location, tags)
VALUES (uuid(), 'Workshop de Fotografia', '2024-11-20 15:00:00', 'Aveiro', {'fotografia', 'workshop', 'arte'});

INSERT INTO cultural_events.events (event_id, event_name, event_date, location, tags)
VALUES (uuid(), 'Exposição de Pintura', '2024-11-25 10:00:00', 'Lisboa', {'arte', 'pintura', 'exposição'});

INSERT INTO cultural_events.events (event_id, event_name, event_date, location, tags)
VALUES (uuid(), 'Stand-up Comedy', '2024-12-10 21:00:00', 'Coimbra', {'comédia', 'stand-up', 'entretenimento'});

INSERT INTO cultural_events.events (event_id, event_name, event_date, location, tags)
VALUES (uuid(), 'Feira de Livros', '2024-12-05 14:00:00', 'Braga', {'livros', 'feira', 'literatura'});

INSERT INTO cultural_events.events (event_id, event_name, event_date, location, tags)
VALUES (uuid(), 'Concerto de Rock', '2024-11-18 19:30:00', 'Lisboa', {'música', 'rock', 'concerto'});

INSERT INTO cultural_events.events (event_id, event_name, event_date, location, tags)
VALUES (uuid(), 'Conferência de Tecnologia', '2024-11-30 09:00:00', 'Porto', {'tecnologia', 'inovação', 'conferência'});

INSERT INTO cultural_events.events (event_id, event_name, event_date, location, tags)
VALUES (uuid(), 'Maratona de Programação', '2024-12-15 08:00:00', 'Aveiro', {'programação', 'tecnologia', 'evento'});

INSERT INTO cultural_events.events (event_id, event_name, event_date, location, tags)
VALUES (uuid(), 'Festival de Música', '2024-12-20 17:00:00', 'Coimbra', {'música', 'festival', 'cultural'});

INSERT INTO cultural_events.events (event_id, event_name, event_date, location, tags)
VALUES (uuid(), 'Debate Filosófico', '2024-11-22 16:00:00', 'Lisboa', {'filosofia', 'debate', 'cultural'});

INSERT INTO cultural_events.events (event_id, event_name, event_date, location, tags)
VALUES (uuid(), 'Mostra de Curtas-Metragens', '2024-12-28 19:00:00', 'Porto', {'cinema', 'curtas', 'festival'});



INSERT INTO cultural_events.attendees (event_id, attendee_id, attendee_name, contacts)
VALUES (uuid(), uuid(), 'João Silva', {'email': 'joao.silva@example.com', 'telefone': '912345678'});

INSERT INTO cultural_events.attendees (event_id, attendee_id, attendee_name, contacts)
VALUES (uuid(), uuid(), 'Maria Oliveira', {'email': 'maria.oliveira@example.com', 'telefone': '913456789'});

INSERT INTO cultural_events.attendees (event_id, attendee_id, attendee_name, contacts)
VALUES (uuid(), uuid(), 'Carlos Pereira', {'email': 'carlos.pereira@example.com', 'telefone': '914567890'});

INSERT INTO cultural_events.attendees (event_id, attendee_id, attendee_name, contacts)
VALUES (uuid(), uuid(), 'Ana Costa', {'email': 'ana.costa@example.com', 'telefone': '915678901'});

INSERT INTO cultural_events.attendees (event_id, attendee_id, attendee_name, contacts)
VALUES (uuid(), uuid(), 'Pedro Ferreira', {'email': 'pedro.ferreira@example.com', 'telefone': '916789012'});

INSERT INTO cultural_events.attendees (event_id, attendee_id, attendee_name, contacts)
VALUES (uuid(), uuid(), 'Carla Mendes', {'email': 'carla.mendes@example.com', 'telefone': '917890123'});

INSERT INTO cultural_events.attendees (event_id, attendee_id, attendee_name, contacts)
VALUES (uuid(), uuid(), 'Ricardo Santos', {'email': 'ricardo.santos@example.com', 'telefone': '918901234'});

INSERT INTO cultural_events.attendees (event_id, attendee_id, attendee_name, contacts)
VALUES (uuid(), uuid(), 'Helena Matos', {'email': 'helena.matos@example.com', 'telefone': '919012345'});

INSERT INTO cultural_events.attendees (event_id, attendee_id, attendee_name, contacts)
VALUES (uuid(), uuid(), 'Tiago Nogueira', {'email': 'tiago.nogueira@example.com', 'telefone': '920123456'});

INSERT INTO cultural_events.attendees (event_id, attendee_id, attendee_name, contacts)
VALUES (uuid(), uuid(), 'Sofia Almeida', {'email': 'sofia.almeida@example.com', 'telefone': '921234567'});

INSERT INTO cultural_events.attendees (event_id, attendee_id, attendee_name, contacts)
VALUES (uuid(), uuid(), 'Rui Gonçalves', {'email': 'rui.goncalves@example.com', 'telefone': '922345678'});

INSERT INTO cultural_events.attendees (event_id, attendee_id, attendee_name, contacts)
VALUES (uuid(), uuid(), 'Beatriz Martins', {'email': 'beatriz.martins@example.com', 'telefone': '923456789'});



INSERT INTO cultural_events.feedback (event_id, feedback_id, attendee_id, rating, comments)
VALUES (uuid(), uuid(), uuid(), 5, ['Ótimo evento', 'Gostei muito do repertório']);

INSERT INTO cultural_events.feedback (event_id, feedback_id, attendee_id, rating, comments)
VALUES (uuid(), uuid(), uuid(), 4, ['Muito bom, mas faltaram mais cadeiras']);

INSERT INTO cultural_events.feedback (event_id, feedback_id, attendee_id, rating, comments)
VALUES (uuid(), uuid(), uuid(), 5, ['Incrível seleção de filmes']);

INSERT INTO cultural_events.feedback (event_id, feedback_id, attendee_id, rating, comments)
VALUES (uuid(), uuid(), uuid(), 3, ['Boa organização, mas poderia durar mais tempo']);

INSERT INTO cultural_events.feedback (event_id, feedback_id, attendee_id, rating, comments)
VALUES (uuid(), uuid(), uuid(), 4, ['Adorei as pinturas expostas']);

INSERT INTO cultural_events.feedback (event_id, feedback_id, attendee_id, rating, comments)
VALUES (uuid(), uuid(), uuid(), 5, ['Rir foi ótimo, quero mais eventos assim!']);

INSERT INTO cultural_events.feedback (event_id, feedback_id, attendee_id, rating, comments)
VALUES (uuid(), uuid(), uuid(), 4, ['Diversidade de livros excelente!']);

INSERT INTO cultural_events.feedback (event_id, feedback_id, attendee_id, rating, comments)
VALUES (uuid(), uuid(), uuid(), 5, ['Evento espetacular, amei as músicas']);

INSERT INTO cultural_events.feedback (event_id, feedback_id, attendee_id, rating, comments)
VALUES (uuid(), uuid(), uuid(), 5, ['Ótima organização e palestras']);

INSERT INTO cultural_events.feedback (event_id, feedback_id, attendee_id, rating, comments)
VALUES (uuid(), uuid(), uuid(), 3, ['A competição foi boa, mas poderia ser maior']);



INSERT INTO cultural_events.event_resources (event_id, resource_id, resource_name, resource_links)
VALUES (uuid(), uuid(), 'Apresentação PowerPoint', ['https://example.com/presentation1', 'https://example.com/notes1']);

INSERT INTO cultural_events.event_resources (event_id, resource_id, resource_name, resource_links)
VALUES (uuid(), uuid(), 'Artigos Relacionados', ['https://example.com/article1', 'https://example.com/article2']);

INSERT INTO cultural_events.event_resources (event_id, resource_id, resource_name, resource_links)
VALUES (uuid(), uuid(), 'Gravação do Evento', ['https://example.com/video1']);

INSERT INTO cultural_events.event_resources (event_id, resource_id, resource_name, resource_links)
VALUES (uuid(), uuid(), 'Documentos Técnicos', ['https://example.com/doc1', 'https://example.com/doc2', 'https://example.com/doc3']);

INSERT INTO cultural_events.event_resources (event_id, resource_id, resource_name, resource_links)
VALUES (uuid(), uuid(), 'PDF da Palestra', ['https://example.com/slides1']);

INSERT INTO cultural_events.event_resources (event_id, resource_id, resource_name, resource_links)
VALUES (uuid(), uuid(), 'Links para Leitura', ['https://example.com/resource1', 'https://example.com/resource2']);

INSERT INTO cultural_events.event_resources (event_id, resource_id, resource_name, resource_links)
VALUES (uuid(), uuid(), 'Materiais de Referência', ['https://example.com/reference1', 'https://example.com/reference2']);

INSERT INTO cultural_events.event_resources (event_id, resource_id, resource_name, resource_links)
VALUES (uuid(), uuid(), 'Vídeos Relacionados', ['https://example.com/video2', 'https://example.com/video3']);

INSERT INTO cultural_events.event_resources (event_id, resource_id, resource_name, resource_links)
VALUES (uuid(), uuid(), 'Planilhas para Download', ['https://example.com/sheet1', 'https://example.com/sheet2']);

INSERT INTO cultural_events.event_resources (event_id, resource_id, resource_name, resource_links)
VALUES (uuid(), uuid(), 'Resumo do Evento', ['https://example.com/summary']);


CREATE FUNCTION cultural_events.concat_tags (tags set<text>)
RETURNS NULL ON NULL INPUT
RETURNS text
LANGUAGE java
AS 'return String.join(", ", tags);';


UPDATE cultural_events.events
SET tags = tags + {'evento gratuito'}
WHERE event_id = 6a8049e7-42a5-4304-a39d-2adcf6ae70d2;

UPDATE cultural_events.events
SET tags = tags - {'tecnologia'}
WHERE event_id = 6a8049e7-42a5-4304-a39d-2adcf6ae70d2;

UPDATE cultural_events.attendees
SET contacts['linkedin'] = 'https://linkedin.com/in/carla-mendes'
WHERE event_id = 96575ed8-3a52-4413-b36b-8c45de35b556 AND attendee_id = 20f94082-41b0-413a-a3a3-15a95570f49c;


DELETES:
UPDATE cultural_events.events
SET tags = {}
WHERE event_id = 45063d47-048b-47a1-b055-c0a04bc89661;

DELETE contacts['telefone']
FROM cultural_events.attendees
WHERE event_id = 96575ed8-3a52-4413-b36b-8c45de35b556 AND attendee_id = 20f94082-41b0-413a-a3a3-15a95570f49c;

DELETE FROM cultural_events.attendees
WHERE event_id = 60d185b7-49e5-419b-895d-a320fe2df7c4 AND attendee_id = 4436fc23-5e27-4af8-9d90-d1013e1dd555;


