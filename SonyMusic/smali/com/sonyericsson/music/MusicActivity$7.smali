.class Lcom/sonyericsson/music/MusicActivity$7;
.super Landroid/content/BroadcastReceiver;
.source "MusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/MusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/MusicActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MusicActivity;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lcom/sonyericsson/music/MusicActivity$7;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 601
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity$7;->this$0:Lcom/sonyericsson/music/MusicActivity;

    iget-boolean v0, v0, Lcom/sonyericsson/music/MusicActivity;->mIsInternalPlaybackListenerRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "com.sonyericsson.music.playbackcontrol.ENQUEUED_INTENT"

    .line 604
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ENQUEUED_TYPE"

    const/4 v1, -0x1

    .line 606
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 607
    invoke-static {p1, p2}, Lcom/sonyericsson/music/common/MusicUtils;->showEnqueueToast(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method
