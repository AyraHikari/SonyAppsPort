.class public Lcom/sonyericsson/music/common/ArtistActions;
.super Ljava/lang/Object;
.source "ArtistActions.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteArtist(Lcom/sonyericsson/music/MusicActivity;JLjava/lang/String;)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 40
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isWriteStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 44
    invoke-static {p0, p3, p1}, Lcom/sonyericsson/music/delete/DeleteActivity;->createDeleteArtistIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static enqueueArtist(Lcom/sonyericsson/music/player/PlayerController;JZ)V
    .locals 1

    if-eqz p0, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 30
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x2

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/music/player/PlayerController;->enqueue(Landroid/net/Uri;IZ)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static sendArtist(Lcom/sonyericsson/music/MusicActivity;J)V
    .locals 0

    .line 35
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/music/common/Sender;->sendArtistTracks(Lcom/sonyericsson/music/MusicActivity;J)V

    return-void
.end method
