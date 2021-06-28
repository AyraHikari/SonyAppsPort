.class Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "PlayqueueProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$1;->this$0:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 171
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.MEDIA_SCANNER_STARTED"

    .line 177
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 180
    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$1;->this$0:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;

    invoke-static {p1}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->access$000(Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;)V

    goto :goto_0

    :cond_1
    const-string p2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 181
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 182
    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$1;->this$0:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;

    invoke-static {p1}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->access$100(Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;)V

    .line 184
    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$1;->this$0:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;

    iget-object p1, p1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mSyncHandler:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$PlayQueueProviderHandler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 185
    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$1;->this$0:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;

    iget-object p1, p1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mSyncHandler:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$PlayQueueProviderHandler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 187
    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$1;->this$0:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;

    iget-object p1, p1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mSyncHandler:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$PlayQueueProviderHandler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 188
    iget-object p2, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$1;->this$0:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;

    iget-object p2, p2, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mSyncHandler:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$PlayQueueProviderHandler;

    const-wide/16 v0, 0x12c

    .line 189
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_0
    return-void
.end method
