CREATE KEYSPACE IF NOT EXISTS cultural_events
WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};

CREATE TABLE cultural_events.events (
    event_id UUID PRIMARY KEY,
    event_name text,
    event_date timestamp,
    location text,
    tags set<text>
);


CREATE TABLE cultural_events.attendees (
    attendee_id UUID,
    event_id UUID,
    attendee_name text,
    contacts map<text, text>,
    PRIMARY KEY (event_id, attendee_id)
);

CREATE TABLE cultural_events.feedback (
    feedback_id UUID PRIMARY KEY,
    event_id UUID,
    attendee_id UUID,
    rating int,
    comments list<text>
);

CREATE TABLE cultural_events.event_resources (
    event_id UUID,
    resource_id UUID,
    resource_name text,
    resource_links list<text>,
    PRIMARY KEY (event_id, resource_id)
);
