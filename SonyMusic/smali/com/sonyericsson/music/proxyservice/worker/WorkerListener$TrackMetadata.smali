.class public Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;
.super Ljava/lang/Object;
.source "WorkerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackMetadata"
.end annotation


# instance fields
.field private final mAlbum:Ljava/lang/String;

.field private final mAlbumArt:Landroid/graphics/Bitmap;

.field private final mArtist:Ljava/lang/String;

.field private final mDuration:I

.field private final mPlayQueueLength:I

.field private final mPlayQueuePosition:I

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/graphics/Bitmap;)V
    .locals 0

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;->mArtist:Ljava/lang/String;

    .line 280
    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;->mAlbum:Ljava/lang/String;

    .line 281
    iput-object p3, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;->mTitle:Ljava/lang/String;

    .line 282
    iput p4, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;->mPlayQueuePosition:I

    .line 283
    iput p5, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;->mPlayQueueLength:I

    .line 284
    iput p6, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;->mDuration:I

    .line 285
    iput-object p7, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;->mAlbumArt:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;->mAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumArt()Landroid/graphics/Bitmap;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;->mAlbumArt:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 309
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;->mDuration:I

    return v0
.end method

.method public getPlayQueueLength()I
    .locals 1

    .line 305
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;->mPlayQueueLength:I

    return v0
.end method

.method public getPlayQueuePosition()I
    .locals 1

    .line 301
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;->mPlayQueuePosition:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;->mTitle:Ljava/lang/String;

    return-object v0
.end method
