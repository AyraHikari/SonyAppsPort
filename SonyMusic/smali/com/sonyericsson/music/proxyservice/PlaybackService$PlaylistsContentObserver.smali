.class Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;
.super Landroid/database/ContentObserver;
.source "PlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/PlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlaylistsContentObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLastOnChangeCallTime:J

.field private mPlaylistSyncHandler:Landroid/os/Handler;

.field private mRegistered:Z

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 666
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 663
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;->mLastOnChangeCallTime:J

    .line 735
    new-instance v0, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver$1;-><init>(Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;)V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;->mRunnable:Ljava/lang/Runnable;

    .line 667
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;->mContext:Landroid/content/Context;

    .line 668
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;->mPlaylistSyncHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;)Landroid/content/Context;
    .locals 0

    .line 658
    iget-object p0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$602(Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;J)J
    .locals 0

    .line 658
    iput-wide p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;->mLastOnChangeCallTime:J

    return-wide p1
.end method


# virtual methods
.method isRegistered()Z
    .locals 1

    .line 703
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;->mRegistered:Z

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 708
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    .line 716
    sget-boolean p1, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz p1, :cond_3

    .line 717
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;->mLastOnChangeCallTime:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xbb8

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 718
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;->mPlaylistSyncHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 719
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;->mPlaylistSyncHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 721
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sonyericsson/music/metadata/MusicInfoService;->startPlaylistSync(Landroid/content/Context;)V

    .line 722
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;->mLastOnChangeCallTime:J

    goto :goto_0

    .line 724
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;->mPlaylistSyncHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 725
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;->mPlaylistSyncHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void

    .line 731
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sonyericsson/music/metadata/MusicInfoService;->startPlaylistSync(Landroid/content/Context;)V

    .line 732
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sonyericsson/music/metadata/MusicInfoService;->startHighResContainersSync(Landroid/content/Context;)V

    return-void
.end method

.method register()V
    .locals 3

    .line 672
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;->mRegistered:Z

    if-nez v0, :cond_1

    .line 680
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 686
    iput-boolean v2, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;->mRegistered:Z

    :cond_1
    return-void
.end method

.method unregister()V
    .locals 1

    .line 691
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 698
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;->mRegistered:Z

    :cond_0
    return-void
.end method
