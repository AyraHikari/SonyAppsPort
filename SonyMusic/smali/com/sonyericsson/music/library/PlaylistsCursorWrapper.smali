.class public Lcom/sonyericsson/music/library/PlaylistsCursorWrapper;
.super Lcom/sonyericsson/music/common/BaseCursorWrapper;
.source "PlaylistsCursorWrapper.java"


# static fields
.field public static final PLAYLIST_NAME_COLUMN:Ljava/lang/String; = "playlist_name"


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 3

    const/16 v0, 0xc

    .line 37
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "playlist_name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "path"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "mediastore_id"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "date_created"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "date_updated"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "date_played"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "is_deleted"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "smart_playlist_type"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "is_hidden"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "play_count"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "members_count"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/common/BaseCursorWrapper;-><init>(Landroid/database/Cursor;[Ljava/lang/String;)V

    return-void
.end method
