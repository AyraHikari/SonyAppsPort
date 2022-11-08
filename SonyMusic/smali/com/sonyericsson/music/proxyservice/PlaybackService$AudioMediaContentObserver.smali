.class Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;
.super Landroid/database/ContentObserver;
.source "PlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/PlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AudioMediaContentObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLastOnChangeCallTime:J

.field private mMediaSyncHandler:Landroid/os/Handler;

.field private mRegistered:Z

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 841
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 837
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mLastOnChangeCallTime:J

    .line 903
    new-instance v0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver$1;-><init>(Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;)V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mRunnable:Ljava/lang/Runnable;

    .line 842
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mContext:Landroid/content/Context;

    .line 843
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mMediaSyncHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;)Landroid/content/Context;
    .locals 0

    .line 833
    iget-object p0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$802(Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;J)J
    .locals 0

    .line 833
    iput-wide p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mLastOnChangeCallTime:J

    return-wide p1
.end method


# virtual methods
.method isRegistered()Z
    .locals 1

    .line 874
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mRegistered:Z

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 879
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    .line 884
    sget-boolean p1, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez p1, :cond_0

    return-void

    .line 889
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mLastOnChangeCallTime:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xbb8

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    .line 890
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mMediaSyncHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 891
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mMediaSyncHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 893
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sonyericsson/music/metadata/MusicInfoService;->startMediaStoreDataSync(Landroid/content/Context;)V

    .line 894
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sonyericsson/music/metadata/MusicInfoService;->startHighResContainersSync(Landroid/content/Context;)V

    .line 895
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mLastOnChangeCallTime:J

    goto :goto_0

    .line 897
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mMediaSyncHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 898
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mMediaSyncHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method register()V
    .locals 3

    .line 847
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mRegistered:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 855
    iput-boolean v2, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mRegistered:Z

    :cond_0
    return-void
.end method

.method unregister()V
    .locals 2

    .line 860
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 867
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mRegistered:Z

    .line 869
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mMediaSyncHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
