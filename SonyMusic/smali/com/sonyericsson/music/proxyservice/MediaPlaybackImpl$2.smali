.class Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;
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

    .line 169
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    iget-object v1, v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v1, :cond_a

    iget-boolean v0, v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mBroadcastReceiverRegistered:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 177
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    const-string v1, ""

    .line 181
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    iget-object v2, v2, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sonyericsson/music/common/Track;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 182
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    iget-object v1, v1, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    .line 183
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v2, "http"

    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    .line 193
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    .line 194
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.MEDIA_EJECT"

    .line 195
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.MEDIA_REMOVED"

    .line 196
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.MEDIA_NOFS"

    .line 198
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 199
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->saveLastPlayed()V

    .line 201
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    iget-object v0, p1, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    .line 202
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sonyericsson/music/common/DBUtils;->isSameStorageLocation(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 203
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->access$000(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)V

    .line 204
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    iget-object p1, p1, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getRouteType()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_9

    .line 206
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->access$100(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 207
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->access$100(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-static {p2}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->access$100(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter;->getDefaultRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/mediarouter/media/MediaRouter;->selectRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    goto :goto_1

    .line 213
    :cond_4
    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->access$200(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;->setServiceToBackground(Z)V

    goto :goto_1

    :cond_5
    const-string p2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 215
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 216
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    iget-object v0, p2, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_6

    .line 220
    iget-object p2, p2, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/16 v0, 0x17

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 221
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_6
    if-nez v0, :cond_7

    .line 225
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2$1;-><init>(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;)V

    .line 230
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->access$300()I

    move-result v1

    int-to-long v1, v1

    .line 225
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 232
    :cond_7
    :goto_0
    sget-boolean p2, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz p2, :cond_9

    .line 233
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2$2;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2$2;-><init>(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;Landroid/content/Context;)V

    .line 238
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->access$300()I

    move-result p1

    int-to-long v1, p1

    .line 233
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_8
    const-string p1, "android.intent.action.USER_BACKGROUND"

    .line 242
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 243
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 244
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->pause()V

    .line 245
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->saveLastPlayed()V

    :cond_9
    :goto_1
    return-void

    :cond_a
    :goto_2
    return-void
.end method
