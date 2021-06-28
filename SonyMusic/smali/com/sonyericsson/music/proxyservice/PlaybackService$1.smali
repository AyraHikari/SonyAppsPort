.class Lcom/sonyericsson/music/proxyservice/PlaybackService$1;
.super Landroid/content/BroadcastReceiver;
.source "PlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/PlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/proxyservice/PlaybackService;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/proxyservice/PlaybackService;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$1;->this$0:Lcom/sonyericsson/music/proxyservice/PlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 120
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$1;->this$0:Lcom/sonyericsson/music/proxyservice/PlaybackService;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/proxyservice/PlaybackService;->fullMediaPlaybackShutdown(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "com.android.music.musicservicecommand"

    .line 124
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "pause"

    const-string v0, "command"

    .line 125
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 127
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$1;->this$0:Lcom/sonyericsson/music/proxyservice/PlaybackService;

    iget-object p1, p1, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->pause()V

    :cond_1
    :goto_0
    return-void
.end method
