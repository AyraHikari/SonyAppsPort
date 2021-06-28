.class Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$5;
.super Ljava/lang/Object;
.source "MediaPlaybackImpl.java"

# interfaces
.implements Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$AudioSystemListener;


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

    .line 272
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$5;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChanged(I)V
    .locals 3

    .line 275
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$5;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    iget-object v1, v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    const/16 v1, 0x19

    const/4 v2, -0x1

    .line 276
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 277
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$5;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->pause()V

    return-void
.end method

.method public onPlay()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$5;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    iget-boolean v1, v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsReady:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 289
    invoke-static {v0, v1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->access$402(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;Z)Z

    return-void

    .line 293
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->play()V

    return-void
.end method

.method public onPlayContent(Landroid/net/Uri;IZ)V
    .locals 3

    .line 339
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-static {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getSmartPlaylistType(Landroid/net/Uri;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v1

    .line 342
    sget-object v2, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->TRACKS_NON_BROWSABLE:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->equals(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->TRACKS_BROWSABLE:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    .line 343
    invoke-virtual {v2, v0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 348
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$5;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getMediaPlaybackConstant()I

    move-result v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->openSmartPlaylist(IIZ)V

    goto :goto_1

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$5;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->open(Landroid/net/Uri;IZ)V

    goto :goto_1

    .line 345
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$5;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, p2, p3}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->openSmartPlaylist(IIZ)V

    :goto_1
    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$5;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->openFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onSeekTo(J)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$5;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->setPlaybackPosition(I)V

    return-void
.end method

.method public onSetPlayQueuePosition(IZ)V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$5;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->setQueuePosition(IZ)V

    return-void
.end method

.method public onShuffleNext()V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$5;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->shuffleNext()V

    return-void
.end method

.method public onSkipToNext()V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$5;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->next()V

    return-void
.end method

.method public onSkipToPrevious()V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$5;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->prev()V

    return-void
.end method

.method public onStartWinding(Z)V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$5;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->startWinding(Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$5;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->pause()V

    return-void
.end method

.method public onStopWinding()V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$5;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->stopWinding()V

    return-void
.end method
