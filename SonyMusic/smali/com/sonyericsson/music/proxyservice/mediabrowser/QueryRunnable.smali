.class abstract Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;
.super Ljava/lang/Object;
.source "QueryRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected final mAppContext:Landroid/content/Context;

.field private final mIsBrowsable:Z

.field private final mResult:Landroidx/media/MediaBrowserServiceCompat$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/media/MediaBrowserServiceCompat$Result;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;Z)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;->mAppContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;->mResult:Landroidx/media/MediaBrowserServiceCompat$Result;

    .line 26
    iput-boolean p3, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;->mIsBrowsable:Z

    return-void
.end method


# virtual methods
.method abstract getMediaItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation
.end method

.method public isBrowsable()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;->mIsBrowsable:Z

    return v0
.end method

.method public run()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;->mResult:Landroidx/media/MediaBrowserServiceCompat$Result;

    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;->getMediaItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    return-void
.end method
