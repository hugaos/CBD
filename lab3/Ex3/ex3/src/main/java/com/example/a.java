package com.example;

import com.datastax.oss.driver.api.core.CqlSession;
import com.datastax.oss.driver.api.core.CqlSessionBuilder;
import com.datastax.oss.driver.api.core.cql.ResultSet;
import com.datastax.oss.driver.api.core.cql.Row;

import java.net.InetSocketAddress;
import java.util.UUID;
import java.util.Set;
import java.util.Arrays;
import java.util.HashSet;

public class a {
    public static void main(String[] args) {
        try (CqlSession session = new CqlSessionBuilder().withLocalDatacenter("datacenter1").build()) {
            //Set<String> tags = new HashSet<>(Arrays.asList("java", "cassandra"));

            //UUID videoId = UUID.randomUUID();
            //UUID authorId = UUID.randomUUID();
            //session.execute("INSERT INTO video_platform.videos (video_id, author_id, video_name, description, tags, upload_timestamp) "
            //                + "VALUES (?, ?, ?, ?, ?, toTimestamp(now()))",
            //        videoId, authorId, "Novo Vídeo ", "Descrição cassandra", tags);

            //session.execute("UPDATE video_platform.videos SET description = ? WHERE video_id = ?",
            //        "Descrição atualizada ", videoId);

            ResultSet rs = session.execute("SELECT * FROM video_platform.videos");
            for (Row row : rs) {
                System.out.printf("Video ID: %s, Autor: %s, Nome: %s, Descrição: %s, Tags: %s",
                        row.getUuid("video_id"),
                        row.getUuid("author_id"),
                        row.getString("video_name"),
                        row.getString("description"),
                        row.getSet("tags", String.class))
                        .println();
            }

            UUID userId = UUID.fromString("ecd61e1a-0725-41fb-a2ce-014ef7a60835");
            UUID videoId = UUID.fromString("136718da-52cf-4f10-bf78-ce2f2c5ea457");

            System.out.println("\nÚltimos 5 eventos de determinado vídeo realizados por um utilizador:");
            rs = session.execute(
                    "SELECT * FROM video_platform.video_events WHERE user_id = ? AND video_id = ? LIMIT 5", userId, videoId
            );
            for (Row row : rs) {
                System.out.printf("User ID: %s, Video ID: %s, Event Type: %s, Event Timestamp: %s, Video Time Seconds: %d%n",
                        row.getUuid("user_id"),
                        row.getUuid("video_id"),
                        row.getString("event_type"),
                        row.getInstant("event_timestamp"),
                        row.getInt("video_time_seconds"));
            }

            System.out.println("\nTodos os seguidores de determinado vídeo:");
            rs = session.execute(
                    "SELECT * FROM video_platform.video_followers WHERE video_id = ?", videoId
            );

            for (Row row : rs) {
                System.out.printf("Video ID: %s, Follower ID: %s, Follow Timestamp: %s%n",
                        row.getUuid("video_id"),
                        row.getUuid("follower_id"),
                        row.getInstant("follow_timestamp"));
            }


        } catch (Exception e) {
            System.err.println("Erro durante a execução: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
