.class public Lcom/sonyericsson/music/common/MenuUtils$AlbumData;
.super Ljava/lang/Object;
.source "MenuUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/MenuUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumData"
.end annotation


# instance fields
.field private final mAlbumId:J

.field private final mAlbumName:Ljava/lang/String;

.field private final mArtistName:Ljava/lang/String;

.field private final mArtistUri:Landroid/net/Uri;

.field private final mImageUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-wide p1, p0, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->mAlbumId:J

    .line 114
    iput-object p3, p0, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->mAlbumName:Ljava/lang/String;

    .line 115
    iput-object p4, p0, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->mArtistName:Ljava/lang/String;

    .line 116
    iput-object p6, p0, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->mImageUri:Landroid/net/Uri;

    .line 117
    iput-object p5, p0, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->mArtistUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getAlbumId()J
    .locals 2

    .line 121
    iget-wide v0, p0, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->mAlbumId:J

    return-wide v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistUri()Landroid/net/Uri;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->mArtistUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getImageUri()Landroid/net/Uri;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->mImageUri:Landroid/net/Uri;

    return-object v0
.end method
