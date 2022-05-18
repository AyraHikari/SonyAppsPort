.class Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;
.super Ljava/lang/Object;
.source "MediaPlaybackImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->openInternal(Landroid/net/Uri;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

.field final synthetic val$album:Ljava/lang/String;

.field final synthetic val$artist:Ljava/lang/String;

.field final synthetic val$playbackPos:I

.field final synthetic val$playlistPosition:I

.field final synthetic val$shuffle:Z

.field final synthetic val$sourcePosition:I

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;Landroid/net/Uri;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 703
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;->val$uri:Landroid/net/Uri;

    iput p3, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;->val$playlistPosition:I

    iput-boolean p4, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;->val$shuffle:Z

    iput-object p5, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;->val$title:Ljava/lang/String;

    iput-object p6, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;->val$album:Ljava/lang/String;

    iput-object p7, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;->val$artist:Ljava/lang/String;

    iput p8, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;->val$playbackPos:I

    iput p9, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;->val$sourcePosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    .line 707
    iget-object v1, v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;->val$uri:Landroid/net/Uri;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    iget-object v2, v1, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    .line 708
    iput-boolean v2, v1, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsReady:Z

    .line 710
    iget-object v1, v1, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v1

    const/4 v3, 0x1

    .line 711
    invoke-virtual {v1, v3}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isPlaying(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v1

    const/4 v4, 0x0

    .line 712
    invoke-virtual {v1, v4}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v1

    iget-object v4, v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    .line 713
    invoke-static {v4}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->access$800(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v1

    iget-object v4, v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    .line 714
    invoke-static {v4}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->access$700(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v1

    .line 718
    iget-object v4, v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    iget-object v4, v4, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;->val$uri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/sonyericsson/music/common/DBUtils;->isPlayQueueModeUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 720
    iget-object v4, v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;->val$uri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/sonyericsson/music/common/DBUtils;->isUriCloudFileType(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    iget-object v4, v4, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    .line 721
    invoke-virtual {v4}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isLocalPlayback()Z

    move-result v4

    if-nez v4, :cond_1

    .line 727
    iget-object v2, v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {v2}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->pause()V

    const/4 v2, 0x1

    goto :goto_0

    .line 729
    :cond_1
    iget-object v4, v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    iget-boolean v4, v4, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mShouldCreateNewPlayer:Z

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 734
    iget-object v2, v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-static {v2, v3, v1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->access$900(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;ZLcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)V

    goto :goto_1

    .line 737
    :cond_3
    iget-object v2, v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    iget-object v2, v2, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 738
    iget-object v2, v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    iget-object v2, v2, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 741
    :goto_1
    iget-object v2, v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->access$600(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    .line 743
    new-instance v1, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;

    iget-object v7, v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;->val$uri:Landroid/net/Uri;

    iget v8, v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;->val$playlistPosition:I

    iget-boolean v9, v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;->val$shuffle:Z

    iget-object v11, v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;->val$title:Ljava/lang/String;

    iget-object v12, v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;->val$album:Ljava/lang/String;

    iget-object v13, v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;->val$artist:Ljava/lang/String;

    iget v14, v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;->val$playbackPos:I

    const/4 v15, 0x1

    iget v2, v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;->val$sourcePosition:I

    move-object v6, v1

    move/from16 v16, v2

    invoke-direct/range {v6 .. v16}, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;-><init>(Landroid/net/Uri;IZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 746
    iget-object v2, v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    iget-object v2, v2, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 747
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 749
    iget-object v1, v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-static {v1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->access$1000(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->reset()V

    :cond_4
    return-void
.end method
