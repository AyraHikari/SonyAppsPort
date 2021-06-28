.class Lcom/sonyericsson/music/proxyservice/PlaybackService$2;
.super Ljava/lang/Object;
.source "PlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 147
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$2;->this$0:Lcom/sonyericsson/music/proxyservice/PlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$2;->this$0:Lcom/sonyericsson/music/proxyservice/PlaybackService;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/PlaybackService;->access$000(Lcom/sonyericsson/music/proxyservice/PlaybackService;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$2;->this$0:Lcom/sonyericsson/music/proxyservice/PlaybackService;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/PlaybackService;->canStopService()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$2;->this$0:Lcom/sonyericsson/music/proxyservice/PlaybackService;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/PlaybackService;->access$100(Lcom/sonyericsson/music/proxyservice/PlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$2;->this$0:Lcom/sonyericsson/music/proxyservice/PlaybackService;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->getPlaybackState()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isInPlayQueueMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$2;->this$0:Lcom/sonyericsson/music/proxyservice/PlaybackService;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    .line 156
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->isPlayExpected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$2;->this$0:Lcom/sonyericsson/music/proxyservice/PlaybackService;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mIMediaPlayback:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->stop()V

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$2;->this$0:Lcom/sonyericsson/music/proxyservice/PlaybackService;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mIMediaPlayback:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->setMediaPlayback(Lcom/sonyericsson/music/proxyservice/MediaPlayback;)V

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$2;->this$0:Lcom/sonyericsson/music/proxyservice/PlaybackService;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->release(Z)V

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$2;->this$0:Lcom/sonyericsson/music/proxyservice/PlaybackService;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/PlaybackService;->access$200(Lcom/sonyericsson/music/proxyservice/PlaybackService;)Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;->unregister()V

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$2;->this$0:Lcom/sonyericsson/music/proxyservice/PlaybackService;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/PlaybackService;->access$300(Lcom/sonyericsson/music/proxyservice/PlaybackService;)Lcom/sonyericsson/music/proxyservice/PlaybackService$MusicInfoSyncObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/PlaybackService$MusicInfoSyncObserver;->unregister()V

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$2;->this$0:Lcom/sonyericsson/music/proxyservice/PlaybackService;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/PlaybackService;->delayedNotificationAutoDismiss()V

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$2;->this$0:Lcom/sonyericsson/music/proxyservice/PlaybackService;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/PlaybackService;->access$400(Lcom/sonyericsson/music/proxyservice/PlaybackService;)Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$2;->this$0:Lcom/sonyericsson/music/proxyservice/PlaybackService;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/PlaybackService;->access$400(Lcom/sonyericsson/music/proxyservice/PlaybackService;)Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$2;->this$0:Lcom/sonyericsson/music/proxyservice/PlaybackService;

    invoke-static {v1}, Lcom/sonyericsson/music/proxyservice/PlaybackService;->access$000(Lcom/sonyericsson/music/proxyservice/PlaybackService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;->stopSelf(I)V

    :cond_1
    :goto_0
    return-void
.end method
