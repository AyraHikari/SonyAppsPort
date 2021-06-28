.class public Lcom/sonyericsson/music/common/ArtistInfo;
.super Ljava/lang/Object;
.source "ArtistInfo.java"


# instance fields
.field private final mArtistArtUri:Landroid/net/Uri;

.field private final mArtistId:J

.field private final mArtistName:Ljava/lang/String;

.field private final mArtistUri:Landroid/net/Uri;

.field private final mTrackUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JLandroid/net/Uri;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1, p2}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/common/ArtistInfo;->mArtistName:Ljava/lang/String;

    .line 31
    iput-wide p3, p0, Lcom/sonyericsson/music/common/ArtistInfo;->mArtistId:J

    .line 32
    iput-object p5, p0, Lcom/sonyericsson/music/common/ArtistInfo;->mTrackUri:Landroid/net/Uri;

    .line 33
    invoke-static {p2}, Lcom/sonyericsson/music/common/ArtistImageUtils;->getArtistArtUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/common/ArtistInfo;->mArtistArtUri:Landroid/net/Uri;

    .line 34
    sget-object p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 35
    invoke-static {p1, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/common/ArtistInfo;->mArtistUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 69
    :cond_0
    instance-of v1, p1, Lcom/sonyericsson/music/common/ArtistInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 73
    :cond_1
    check-cast p1, Lcom/sonyericsson/music/common/ArtistInfo;

    .line 75
    iget-object v1, p0, Lcom/sonyericsson/music/common/ArtistInfo;->mArtistName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/ArtistInfo;->getArtistName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/sonyericsson/music/common/ArtistInfo;->mArtistId:J

    .line 76
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/ArtistInfo;->getArtistId()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getArtistArtUri()Landroid/net/Uri;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/sonyericsson/music/common/ArtistInfo;->mArtistArtUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getArtistId()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/sonyericsson/music/common/ArtistInfo;->mArtistId:J

    return-wide v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/sonyericsson/music/common/ArtistInfo;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistUri()Landroid/net/Uri;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/sonyericsson/music/common/ArtistInfo;->mArtistUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getTrackUri()Landroid/net/Uri;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/music/common/ArtistInfo;->mTrackUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/sonyericsson/music/common/ArtistInfo;->mArtistUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0
.end method
