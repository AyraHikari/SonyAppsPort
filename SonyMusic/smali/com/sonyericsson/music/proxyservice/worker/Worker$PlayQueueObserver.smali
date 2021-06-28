.class Lcom/sonyericsson/music/proxyservice/worker/Worker$PlayQueueObserver;
.super Landroid/database/ContentObserver;
.source "Worker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/worker/Worker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayQueueObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/music/proxyservice/worker/Worker;Landroid/os/Handler;)V
    .locals 0

    .line 2128
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$PlayQueueObserver;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    .line 2129
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 2134
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$PlayQueueObserver;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-boolean v0, p1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mRegisteredPlayQueueObserver:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    .line 2138
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2139
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$PlayQueueObserver;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
