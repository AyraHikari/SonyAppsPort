.class Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver;
.super Landroid/database/ContentObserver;
.source "PlayQueueObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver$PlayQueueObserverListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver$PlayQueueObserverListener;

.field private mRegistered:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver$PlayQueueObserverListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 26
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver;->mListener:Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver$PlayQueueObserverListener;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 56
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver;->mListener:Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver$PlayQueueObserverListener;

    if-eqz p1, :cond_0

    .line 57
    invoke-interface {p1}, Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver$PlayQueueObserverListener;->onPlayQueueChanged()V

    :cond_0
    return-void
.end method

.method register()V
    .locals 3

    .line 35
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver;->mRegistered:Z

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 37
    invoke-static {}, Lcom/sonyericsson/music/playqueue/PlayqueueStore$Playqueue;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver;->mRegistered:Z

    :cond_0
    return-void
.end method

.method setListener(Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver$PlayQueueObserverListener;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver;->mListener:Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver$PlayQueueObserverListener;

    return-void
.end method

.method unRegister()V
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver;->mRegistered:Z

    :cond_0
    return-void
.end method
