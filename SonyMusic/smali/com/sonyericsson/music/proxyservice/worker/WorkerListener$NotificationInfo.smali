.class public Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;
.super Ljava/lang/Object;
.source "WorkerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationInfo"
.end annotation


# instance fields
.field private final mAlbumArt:Landroid/graphics/Bitmap;

.field private final mArtist:Ljava/lang/String;

.field private final mIsPlaying:Z

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;->mTitle:Ljava/lang/String;

    .line 245
    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;->mArtist:Ljava/lang/String;

    .line 246
    iput-object p3, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;->mAlbumArt:Landroid/graphics/Bitmap;

    .line 247
    iput-boolean p4, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;->mIsPlaying:Z

    return-void
.end method


# virtual methods
.method public getAlbumArt()Landroid/graphics/Bitmap;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;->mAlbumArt:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 263
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;->mIsPlaying:Z

    return v0
.end method
