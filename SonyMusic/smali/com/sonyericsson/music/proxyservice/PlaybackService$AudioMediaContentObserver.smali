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

.field private mRegistered:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 784
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 785
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method isRegistered()Z
    .locals 1

    .line 814
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mRegistered:Z

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 819
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 828
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sonyericsson/music/metadata/MusicInfoService;->startMediaStoreDataSync(Landroid/content/Context;)V

    return-void
.end method

.method register()V
    .locals 3

    .line 789
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mRegistered:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 797
    iput-boolean v2, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mRegistered:Z

    :cond_0
    return-void
.end method

.method unregister()V
    .locals 1

    .line 802
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 809
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->mRegistered:Z

    :cond_0
    return-void
.end method
