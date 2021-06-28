.class public Lcom/sonyericsson/music/player/PlayerArtDecoder;
.super Ljava/lang/Object;
.source "PlayerArtDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/player/PlayerArtDecoder$OnPlayerArtAdapter;,
        Lcom/sonyericsson/music/player/PlayerArtDecoder$OnPlayerArtListener;
    }
.end annotation


# instance fields
.field private mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

.field private mContext:Landroid/content/Context;

.field private mIsDestroyed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/sonyericsson/music/player/PlayerArtDecoder;->mIsDestroyed:Z

    .line 45
    new-instance v0, Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-direct {v0, p1}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/music/player/PlayerArtDecoder;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 46
    iput-object p1, p0, Lcom/sonyericsson/music/player/PlayerArtDecoder;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/sonyericsson/music/player/PlayerArtDecoder;->mIsDestroyed:Z

    return-void
.end method


# virtual methods
.method public decodeArt(Lcom/sonyericsson/music/common/Track;ILcom/sonyericsson/music/player/PlayerArtDecoder$OnPlayerArtListener;)V
    .locals 10

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerArtDecoder;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getAlbumId()J

    move-result-wide v0

    .line 85
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object p3

    invoke-static {p3}, Lcom/sonyericsson/music/common/DBUtils;->isUriCloudFileType(Landroid/net/Uri;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 91
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object p3

    invoke-static {p3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles;->getAlbumArtUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    .line 92
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getAlbum()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 93
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    move-object v8, v3

    move v5, v4

    goto :goto_2

    .line 95
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getArtist()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 96
    iget-object v3, p0, Lcom/sonyericsson/music/player/PlayerArtDecoder;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getAlbum()Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-static {v3, v4}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownAlbumWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 98
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    move-object v8, v3

    move v5, v4

    .line 101
    :goto_2
    new-instance v9, Lcom/sonyericsson/music/player/PlayerArtDecoder$1;

    invoke-direct {v9, p0, v2}, Lcom/sonyericsson/music/player/PlayerArtDecoder$1;-><init>(Lcom/sonyericsson/music/player/PlayerArtDecoder;Ljava/lang/ref/WeakReference;)V

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    .line 112
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->isUriCloudFileType(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_4
    if-eqz p3, :cond_5

    .line 113
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_3
    move-object v4, p1

    .line 114
    iget-object v3, p0, Lcom/sonyericsson/music/player/PlayerArtDecoder;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    move v6, p2

    move v7, p2

    invoke-virtual/range {v3 .. v9}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->load(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)Z

    :cond_6
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerArtDecoder;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-virtual {v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->destroy()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/sonyericsson/music/player/PlayerArtDecoder;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 53
    iput-object v0, p0, Lcom/sonyericsson/music/player/PlayerArtDecoder;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/sonyericsson/music/player/PlayerArtDecoder;->mIsDestroyed:Z

    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/sonyericsson/music/player/PlayerArtDecoder;->mIsDestroyed:Z

    return v0
.end method
