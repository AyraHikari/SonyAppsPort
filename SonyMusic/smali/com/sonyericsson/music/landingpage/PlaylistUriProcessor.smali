.class Lcom/sonyericsson/music/landingpage/PlaylistUriProcessor;
.super Ljava/lang/Object;
.source "PlaylistUriProcessor.java"

# interfaces
.implements Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$AsyncUriProcessor;


# instance fields
.field private final mPlaylistArtStoreUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/PlaylistUriProcessor;->mPlaylistArtStoreUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getImageUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 32
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/PlaylistUriProcessor;->mPlaylistArtStoreUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 35
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/music/landingpage/PlaylistUriProcessor;->mPlaylistArtStoreUri:Landroid/net/Uri;

    const/4 p1, 0x1

    new-array v4, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string v1, "playlist_art_uri"

    aput-object v1, v4, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    .line 38
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "playlist_art_uri"

    .line 40
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 39
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 42
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 47
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 49
    :cond_1
    throw p1

    :cond_2
    :goto_2
    return-object v0
.end method

.method public getProcessingUri()Landroid/net/Uri;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/PlaylistUriProcessor;->mPlaylistArtStoreUri:Landroid/net/Uri;

    return-object v0
.end method
