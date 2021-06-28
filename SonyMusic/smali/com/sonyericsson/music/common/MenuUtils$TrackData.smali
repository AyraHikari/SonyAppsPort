.class public Lcom/sonyericsson/music/common/MenuUtils$TrackData;
.super Ljava/lang/Object;
.source "MenuUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/MenuUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackData"
.end annotation


# instance fields
.field private final mAlbumArtUri:Landroid/net/Uri;

.field private final mAlbumName:Ljava/lang/String;

.field private final mAlbumUri:Landroid/net/Uri;

.field private final mArtistName:Ljava/lang/String;

.field private final mArtistUri:Landroid/net/Uri;

.field private final mIsLocal:Z

.field private final mTrackName:Ljava/lang/String;

.field private final mTrackUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->mAlbumArtUri:Landroid/net/Uri;

    .line 58
    iput-object p2, p0, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->mTrackUri:Landroid/net/Uri;

    .line 59
    iput-object p3, p0, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->mArtistUri:Landroid/net/Uri;

    .line 60
    iput-object p4, p0, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->mAlbumUri:Landroid/net/Uri;

    .line 61
    iput-object p5, p0, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->mTrackName:Ljava/lang/String;

    .line 62
    iput-object p6, p0, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->mArtistName:Ljava/lang/String;

    .line 63
    iput-object p7, p0, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->mAlbumName:Ljava/lang/String;

    .line 64
    iput-boolean p8, p0, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->mIsLocal:Z

    return-void
.end method


# virtual methods
.method public getAlbumArtUri()Landroid/net/Uri;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->mAlbumArtUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumUri()Landroid/net/Uri;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->mAlbumUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistUri()Landroid/net/Uri;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->mArtistUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->mTrackName:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackUri()Landroid/net/Uri;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->mTrackUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isLocal()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->mIsLocal:Z

    return v0
.end method
