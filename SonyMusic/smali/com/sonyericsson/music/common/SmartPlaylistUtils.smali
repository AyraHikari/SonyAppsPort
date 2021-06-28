.class public final Lcom/sonyericsson/music/common/SmartPlaylistUtils;
.super Ljava/lang/Object;
.source "SmartPlaylistUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;,
        Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;
    }
.end annotation


# static fields
.field static final MAX_NBR_OF_SMARTPLAYLIST_ITEMS:I = 0x32

.field static final NEWLY_ADDED_TRACKS_COLUMNS:[Ljava/lang/String;

.field static final PLAYED_AND_FAVOURITE_TRACKS_COLUMNS:[Ljava/lang/String;

.field public static final SMART_PLAYLIST_AUTHORITY:Ljava/lang/String; = "com.sonymobile.music.smartplaylist"


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v0, 0x9

    .line 28
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "title"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "album"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "album_id"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "artist"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "artist_id"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-string v1, "duration"

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const-string v1, "audio_id"

    const/4 v9, 0x7

    aput-object v1, v0, v9

    const-string v1, "_data"

    const/16 v10, 0x8

    aput-object v1, v0, v10

    sput-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->PLAYED_AND_FAVOURITE_TRACKS_COLUMNS:[Ljava/lang/String;

    .line 43
    new-array v0, v10, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "title"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v4

    const-string v1, "album_id"

    aput-object v1, v0, v5

    const-string v1, "artist"

    aput-object v1, v0, v6

    const-string v1, "artist_id"

    aput-object v1, v0, v7

    const-string v1, "duration"

    aput-object v1, v0, v8

    const-string v1, "_data"

    aput-object v1, v0, v9

    sput-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->NEWLY_ADDED_TRACKS_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlbumColumn(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Ljava/lang/String;
    .locals 0

    .line 226
    invoke-static {p0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->isPlaylist(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "album"

    goto :goto_0

    :cond_0
    const-string p0, "album"

    :goto_0
    return-object p0
.end method

.method public static getAlbumIdColumn(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Ljava/lang/String;
    .locals 0

    .line 236
    invoke-static {p0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->isPlaylist(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "album_id"

    goto :goto_0

    :cond_0
    const-string p0, "album_id"

    :goto_0
    return-object p0
.end method

.method public static getArtistColumn(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Ljava/lang/String;
    .locals 0

    .line 246
    invoke-static {p0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->isPlaylist(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "artist"

    goto :goto_0

    :cond_0
    const-string p0, "artist"

    :goto_0
    return-object p0
.end method

.method public static getArtistIdColumn(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Ljava/lang/String;
    .locals 0

    .line 256
    invoke-static {p0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->isPlaylist(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "artist_id"

    goto :goto_0

    :cond_0
    const-string p0, "artist_id"

    :goto_0
    return-object p0
.end method

.method public static getDurationColumn(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Ljava/lang/String;
    .locals 0

    .line 266
    invoke-static {p0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->isPlaylist(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "duration"

    goto :goto_0

    :cond_0
    const-string p0, "duration"

    :goto_0
    return-object p0
.end method

.method public static getSmartPlaylistProperties(Landroid/content/Context;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;
    .locals 3

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 169
    sget-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$1;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, -0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 193
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown SmartPlaylist type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 188
    :pswitch_0
    invoke-static {p0}, Lcom/sonyericsson/music/common/DBUtils;->getFavouritesProperties(Landroid/content/ContentResolver;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;

    move-result-object p0

    goto :goto_0

    .line 183
    :pswitch_1
    invoke-static {v2, v1}, Lcom/sonyericsson/music/common/DBUtils;->getNewlyAddedDescProperty([Ljava/lang/String;I)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;

    move-result-object p0

    goto :goto_0

    .line 177
    :pswitch_2
    sget-object p1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-static {p0, v2, v1, p1}, Lcom/sonyericsson/music/common/DBUtils;->getPlayedPlaylistDescProperty(Landroid/content/ContentResolver;[Ljava/lang/String;ILcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;

    move-result-object p0

    goto :goto_0

    .line 171
    :pswitch_3
    sget-object p1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-static {p0, v2, v1, p1}, Lcom/sonyericsson/music/common/DBUtils;->getPlayedPlaylistDescProperty(Landroid/content/ContentResolver;[Ljava/lang/String;ILcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTitleColumn(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Ljava/lang/String;
    .locals 0

    .line 216
    invoke-static {p0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->isPlaylist(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "title"

    goto :goto_0

    :cond_0
    const-string p0, "title"

    :goto_0
    return-object p0
.end method

.method public static getTrackIdColumn(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Ljava/lang/String;
    .locals 0

    .line 206
    invoke-static {p0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->isPlaylist(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "audio_id"

    goto :goto_0

    :cond_0
    const-string p0, "_id"

    :goto_0
    return-object p0
.end method

.method private static isPlaylist(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Z
    .locals 1

    .line 200
    sget-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
