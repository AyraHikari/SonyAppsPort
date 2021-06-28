.class public Lcom/sonyericsson/music/common/TrackUtils;
.super Ljava/lang/Object;
.source "TrackUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canStartPlugins(Lcom/sonyericsson/music/common/Track;Landroid/content/Context;)Z
    .locals 2

    const v0, 0x7f100184

    .line 20
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {p0}, Lcom/sonyericsson/music/common/TrackUtils;->isLocalTrack(Lcom/sonyericsson/music/common/Track;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/music/common/Track;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/music/common/Track;->getArtist()Ljava/lang/String;

    move-result-object p0

    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/sonyericsson/music/common/MusicUtils;->isRestrictedUser(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLocalTrack(Lcom/sonyericsson/music/common/Track;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
