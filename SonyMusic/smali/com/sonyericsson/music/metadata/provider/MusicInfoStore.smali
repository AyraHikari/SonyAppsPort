.class public Lcom/sonyericsson/music/metadata/provider/MusicInfoStore;
.super Ljava/lang/Object;
.source "MusicInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Files;,
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio;,
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable;,
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles;,
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudAccounts;,
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia;,
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;,
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Tracks;,
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Albums;,
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SensMe;,
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Artists;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sonyericsson.music.musicinfo"

.field public static final CONTENT_AUTHORITY_SLASH:Ljava/lang/String; = "content://com.sonyericsson.music.musicinfo/"

.field public static final EXTRA_MEDIA_ALBUM:Ljava/lang/String; = "android.intent.extra.album"

.field public static final EXTRA_MEDIA_ARTIST:Ljava/lang/String; = "android.intent.extra.artist"

.field public static final EXTRA_MEDIA_FOCUS:Ljava/lang/String; = "android.intent.extra.focus"

.field public static final EXTRA_MEDIA_TITLE:Ljava/lang/String; = "android.intent.extra.title"

.field public static final EXTRA_OUTPUT:Ljava/lang/String; = "output"

.field public static final INTENT_ACTION_MEDIA_PLAY_FROM_SEARCH:Ljava/lang/String; = "android.media.action.MEDIA_PLAY_FROM_SEARCH"

.field public static final INTENT_ACTION_MEDIA_SEARCH:Ljava/lang/String; = "android.intent.action.MEDIA_SEARCH"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMediaStoreUri(Landroid/net/Uri;)Z
    .locals 2

    const-string v0, "media"

    .line 1505
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1506
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    invoke-virtual {v0, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
