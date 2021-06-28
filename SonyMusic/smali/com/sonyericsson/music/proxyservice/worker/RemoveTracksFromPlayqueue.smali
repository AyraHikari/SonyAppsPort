.class public Lcom/sonyericsson/music/proxyservice/worker/RemoveTracksFromPlayqueue;
.super Lcom/sonyericsson/music/proxyservice/worker/Task;
.source "RemoveTracksFromPlayqueue.java"


# instance fields
.field private final mTracks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Task;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/RemoveTracksFromPlayqueue;->mTracks:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public getTracks()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/RemoveTracksFromPlayqueue;->mTracks:Ljava/util/Collection;

    return-object v0
.end method
