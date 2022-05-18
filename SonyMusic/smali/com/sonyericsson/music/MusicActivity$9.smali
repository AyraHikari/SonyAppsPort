.class Lcom/sonyericsson/music/MusicActivity$9;
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

    .line 638
    iput-object p1, p0, Lcom/sonyericsson/music/MusicActivity$9;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.sonymobile.audioeffect.intent.action.CLEARAUDIO_PLUS_STATUS"

    .line 641
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.sonymobile.audioeffect.intent.extra.CLEARAUDIO_PLUS_STATUS"

    const/4 v1, 0x0

    .line 642
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 645
    :cond_0
    invoke-static {p1, v1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setClearAudioPlusEnabled(Landroid/content/Context;Z)V

    .line 647
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity$9;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/player/PlayerController;->setClearAudioEnabled(Z)V

    :cond_1
    return-void
.end method
