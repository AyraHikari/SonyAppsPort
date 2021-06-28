.class public abstract Lcom/sonyericsson/music/common/BackgroundLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "BackgroundLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/loader/content/AsyncTaskLoader<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public abstract close(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation
.end method

.method public deliverResult(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/common/BackgroundLoader;->close(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/common/BackgroundLoader;->mData:Ljava/lang/Object;

    .line 76
    iput-object p1, p0, Lcom/sonyericsson/music/common/BackgroundLoader;->mData:Ljava/lang/Object;

    .line 78
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/common/BackgroundLoader;->packageResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-super {p0, v1}, Landroidx/loader/content/Loader;->deliverResult(Ljava/lang/Object;)V

    :cond_2
    if-eqz v0, :cond_3

    if-eq v0, p1, :cond_3

    .line 83
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/common/BackgroundLoader;->close(Ljava/lang/Object;)V

    .line 87
    :cond_3
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->commitContentChanged()V

    return-void
.end method

.method protected getCachedData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/sonyericsson/music/common/BackgroundLoader;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public isClosed(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onCanceled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/common/BackgroundLoader;->close(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onReset()V
    .locals 1

    .line 150
    invoke-super {p0}, Landroidx/loader/content/Loader;->onReset()V

    .line 153
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/BackgroundLoader;->onStopLoading()V

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/music/common/BackgroundLoader;->mData:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/common/BackgroundLoader;->close(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/sonyericsson/music/common/BackgroundLoader;->mData:Ljava/lang/Object;

    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/BackgroundLoader;->useTestStaledataExceptionFixCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/music/common/BackgroundLoader;->mData:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/common/BackgroundLoader;->isClosed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/sonyericsson/music/common/BackgroundLoader;->mData:Ljava/lang/Object;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/common/BackgroundLoader;->mData:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/common/BackgroundLoader;->deliverResult(Ljava/lang/Object;)V

    .line 126
    :cond_1
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/music/common/BackgroundLoader;->mData:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 127
    :cond_2
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->forceLoad()V

    :cond_3
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 135
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->rollbackContentChanged()V

    .line 138
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->cancelLoad()Z

    return-void
.end method

.method protected packageResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)TD;"
        }
    .end annotation

    return-object p1
.end method

.method protected redeliverResult()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/music/common/BackgroundLoader;->mData:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/common/BackgroundLoader;->deliverResult(Ljava/lang/Object;)V

    return-void
.end method

.method protected useTestStaledataExceptionFixCode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
