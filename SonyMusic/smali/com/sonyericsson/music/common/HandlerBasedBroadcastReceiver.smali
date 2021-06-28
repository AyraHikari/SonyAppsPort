.class public abstract Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HandlerBasedBroadcastReceiver.java"


# instance fields
.field protected mAppContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mAppContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected cancel(Ljava/lang/Runnable;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract createDelayedRunnable(Landroid/content/Intent;)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public isStarted()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mStarted:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 53
    invoke-virtual {p0, p2}, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->createDelayedRunnable(Landroid/content/Intent;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 56
    iget-object p2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mHandler:Landroid/os/Handler;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method protected abstract registerBroadcastReceiver()Z
.end method

.method public start()V
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mStarted:Z

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->registerBroadcastReceiver()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mStarted:Z

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mStarted:Z

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mStarted:Z

    :cond_0
    return-void
.end method
