.class Lcom/sonyericsson/music/ArtistInfoNotifier$1;
.super Landroid/content/BroadcastReceiver;
.source "ArtistInfoNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/ArtistInfoNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/ArtistInfoNotifier;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/ArtistInfoNotifier;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/sonyericsson/music/ArtistInfoNotifier$1;->this$0:Lcom/sonyericsson/music/ArtistInfoNotifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier$1;->this$0:Lcom/sonyericsson/music/ArtistInfoNotifier;

    invoke-static {v0}, Lcom/sonyericsson/music/ArtistInfoNotifier;->access$000(Lcom/sonyericsson/music/ArtistInfoNotifier;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/ArtistInfoNotifier$1;->this$0:Lcom/sonyericsson/music/ArtistInfoNotifier;

    iget-object v1, v1, Lcom/sonyericsson/music/ArtistInfoNotifier;->mGetArtistInfoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier$1;->this$0:Lcom/sonyericsson/music/ArtistInfoNotifier;

    new-instance v1, Lcom/sonyericsson/music/ArtistInfoNotifier$GetArtistInfoRunnable;

    invoke-static {v0}, Lcom/sonyericsson/music/ArtistInfoNotifier;->access$100(Lcom/sonyericsson/music/ArtistInfoNotifier;)Lcom/sonyericsson/music/MusicActivity;

    move-result-object v2

    invoke-direct {v1, v0, v2, p2}, Lcom/sonyericsson/music/ArtistInfoNotifier$GetArtistInfoRunnable;-><init>(Lcom/sonyericsson/music/ArtistInfoNotifier;Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v1, v0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mGetArtistInfoRunnable:Ljava/lang/Runnable;

    .line 74
    iget-object p2, p0, Lcom/sonyericsson/music/ArtistInfoNotifier$1;->this$0:Lcom/sonyericsson/music/ArtistInfoNotifier;

    .line 75
    invoke-static {p2}, Lcom/sonyericsson/music/ArtistInfoNotifier;->access$100(Lcom/sonyericsson/music/ArtistInfoNotifier;)Lcom/sonyericsson/music/MusicActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackToBePreparedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 74
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sonyericsson/music/ArtistInfoNotifier$1;->this$0:Lcom/sonyericsson/music/ArtistInfoNotifier;

    .line 75
    invoke-static {p1}, Lcom/sonyericsson/music/ArtistInfoNotifier;->access$200(Lcom/sonyericsson/music/ArtistInfoNotifier;)Lcom/sonyericsson/music/common/ArtistInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/sonyericsson/music/ArtistInfoNotifier$1;->this$0:Lcom/sonyericsson/music/ArtistInfoNotifier;

    invoke-static {p1}, Lcom/sonyericsson/music/ArtistInfoNotifier;->access$000(Lcom/sonyericsson/music/ArtistInfoNotifier;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/music/ArtistInfoNotifier$1;->this$0:Lcom/sonyericsson/music/ArtistInfoNotifier;

    iget-object p2, p2, Lcom/sonyericsson/music/ArtistInfoNotifier;->mGetArtistInfoRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/ArtistInfoNotifier$1;->this$0:Lcom/sonyericsson/music/ArtistInfoNotifier;

    iget-object p1, p1, Lcom/sonyericsson/music/ArtistInfoNotifier;->mGetArtistInfoRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method
