.class Lcom/sonyericsson/music/MusicActivity$4;
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

    .line 456
    iput-object p1, p0, Lcom/sonyericsson/music/MusicActivity$4;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private showErrorToast(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 529
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity$4;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p1, p2, v0}, Lcom/sonyericsson/music/MusicActivity;->showToastOnUiThread(Ljava/lang/String;I)V

    goto :goto_0

    .line 531
    :cond_0
    iget-object p2, p0, Lcom/sonyericsson/music/MusicActivity$4;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {p1}, Lcom/sonyericsson/music/common/MusicUtils;->getErrorText(I)I

    move-result p1

    invoke-virtual {p2, p1, v0}, Lcom/sonyericsson/music/MusicActivity;->showToastOnUiThread(II)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 460
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity$4;->this$0:Lcom/sonyericsson/music/MusicActivity;

    iget-boolean v0, v0, Lcom/sonyericsson/music/MusicActivity;->mMediaPlaybackReceiverRegistered:Z

    if-nez v0, :cond_0

    return-void

    .line 466
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 472
    invoke-static {p1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackPreparedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 473
    invoke-static {p1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackStartedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 474
    invoke-static {p1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackSkippedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 488
    :cond_1
    invoke-static {p1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getBufferingUpdatedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 489
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity$4;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {p1}, Lcom/sonyericsson/music/MusicActivity;->access$500(Lcom/sonyericsson/music/MusicActivity;)V

    goto/16 :goto_1

    .line 490
    :cond_2
    invoke-static {p1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getPlaybackErrorIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "ERROR_CODE"

    const/4 v0, -0x1

    .line 493
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 498
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity$4;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v0

    const-string v1, "loading"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/MusicFragmentManager;->removeFragment(Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity$4;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "ERROR_MSG"

    .line 503
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERROR_TITLE"

    .line 505
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ERROR_PLAYING"

    const/4 v3, 0x1

    .line 506
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_4

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    const-string p2, "\n"

    .line 510
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 511
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 512
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/MusicActivity$4;->showErrorToast(ILjava/lang/String;)V

    goto :goto_1

    .line 514
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/MusicActivity$4;->showErrorToast(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    const/16 p2, 0xa

    if-eq p1, p2, :cond_5

    const/16 p2, 0x3c

    if-ne p1, p2, :cond_7

    .line 520
    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/MusicActivity$4;->showErrorToast(ILjava/lang/String;)V

    goto :goto_1

    .line 476
    :cond_6
    :goto_0
    iget-object p2, p0, Lcom/sonyericsson/music/MusicActivity$4;->this$0:Lcom/sonyericsson/music/MusicActivity;

    iget-object v1, p2, Lcom/sonyericsson/music/MusicActivity;->mHandler:Landroid/os/Handler;

    iget-object p2, p2, Lcom/sonyericsson/music/MusicActivity;->mRemoveDlnaLoadingDlg:Ljava/lang/Runnable;

    invoke-virtual {v1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 477
    iget-object p2, p0, Lcom/sonyericsson/music/MusicActivity$4;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p2}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object p2

    const-string v1, "loading"

    invoke-virtual {p2, v1}, Lcom/sonyericsson/music/MusicFragmentManager;->removeFragment(Ljava/lang/String;)V

    .line 478
    iget-object p2, p0, Lcom/sonyericsson/music/MusicActivity$4;->this$0:Lcom/sonyericsson/music/MusicActivity;

    const/4 v1, 0x0

    iput-boolean v1, p2, Lcom/sonyericsson/music/MusicActivity;->mConnectingToDlna:Z

    .line 480
    invoke-static {p1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackStartedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    :cond_7
    :goto_1
    return-void
.end method
