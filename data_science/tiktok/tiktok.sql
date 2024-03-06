create table tiktok.tiktok_dataset
(
    "#"                      integer,
    claim_status             text,
    video_id                 double precision,
    video_duration_sec       integer,
    video_transcription_text text,
    verified_status          text,
    author_ban_status        text,
    video_view_count         text,
    video_like_count         text,
    video_share_count        text,
    video_download_count     text,
    video_comment_count      text
);