.class public final Lcom/sonyericsson/music/library/ArtistsCursorWrapper;
.super Lcom/sonyericsson/music/common/BaseCursorWrapper;
.source "ArtistsCursorWrapper.java"


# static fields
.field public static final ARTIST_ID_COLUMN:Ljava/lang/String; = "_id"

.field public static final ARTIST_NAME_COLUMN:Ljava/lang/String; = "artist_name"

.field public static final NUMBER_OF_TRACKS_COLUMN:Ljava/lang/String; = "number_of_tracks"


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 3

    const/4 v0, 0x3

    .line 60
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "artist_name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "number_of_tracks"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/common/BaseCursorWrapper;-><init>(Landroid/database/Cursor;[Ljava/lang/String;)V

    return-void
.end method
