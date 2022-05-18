.class Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$3;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$3;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 254
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$3;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    iget-object v0, p1, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_2

    iget-boolean p1, p1, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mArtNotificationReceiverRegistered:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.sonyericsson.music.UpdateAsYouPlay.ART_UPDATED"

    .line 264
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "has_album_art_changed"

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 267
    invoke-static {}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->clearDefaultCache()V

    .line 268
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$3;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->onUpdateArt(Lcom/sonyericsson/music/common/Track;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method
