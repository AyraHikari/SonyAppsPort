.class Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager$PollingThread;
.super Ljava/lang/Object;
.source "PollingManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PollingThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;


# direct methods
.method private constructor <init>(Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager$PollingThread;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager$1;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager$PollingThread;-><init>(Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;)V

    return-void
.end method

.method private notifyUpdatePosition(Z)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager$PollingThread;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->access$200(Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager$PollingThread;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->access$300(Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;)Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager$Callback;->requestUpdatePosition(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 136
    iget p1, p1, Landroid/os/Message;->what:I

    const-wide/16 v0, 0x1388

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_1

    .line 137
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager$PollingThread;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->access$100(Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 138
    invoke-direct {p0, v3}, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager$PollingThread;->notifyUpdatePosition(Z)V

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager$PollingThread;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->access$100(Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    if-ne p1, v3, :cond_2

    .line 143
    invoke-direct {p0, v3}, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager$PollingThread;->notifyUpdatePosition(Z)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    .line 145
    invoke-direct {p0, v2}, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager$PollingThread;->notifyUpdatePosition(Z)V

    .line 146
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager$PollingThread;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->access$100(Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return v3

    :cond_3
    return v2
.end method
