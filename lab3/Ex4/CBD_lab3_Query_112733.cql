SELECT event_name, event_date
FROM cultural_events.events
WHERE location = 'Lisboa';

SELECT attendee_name, contacts
FROM cultural_events.attendees
WHERE event_id = 6a8049e7-42a5-4304-a39d-2adcf6ae70d2;

SELECT event_name, tags
FROM cultural_events.events
WHERE tags CONTAINS 'arte';

SELECT attendee_name, contacts
FROM cultural_events.attendees
WHERE event_id = 96575ed8-3a52-4413-b36b-8c45de35b556 AND attendee_id = 20f94082-41b0-413a-a3a3-15a95570f49c;

SELECT COUNT(*) AS total_participantes
FROM cultural_events.attendees
WHERE event_id = 6a8049e7-42a5-4304-a39d-2adcf6ae70d2;

SELECT resource_name, resource_links
FROM cultural_events.event_resources
WHERE event_id = 6806451c-1749-43a1-91eb-dd315e9beca9
LIMIT 3 ALLOW FILTERING;
