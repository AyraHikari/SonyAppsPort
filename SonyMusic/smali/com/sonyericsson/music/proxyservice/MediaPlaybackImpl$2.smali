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

    .line 166
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 170
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    iget-object v0, p1, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_9

    iget-boolean p1, p1, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mBroadcastReceiverRegistered:Z

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 174
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 175
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    const-string v0, ""

    .line 178
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    iget-object v1, v1, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getDataUri()Landroid/net/Uri;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "http"

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    .line 190
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 191
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.MEDIA_EJECT"

    .line 192
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    .line 193
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.MEDIA_NOFS"

    .line 195
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 196
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->saveLastPlayed()V

    .line 198
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    iget-object v1, p1, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v1, :cond_4

    if-eqz p2, :cond_3

    .line 199
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sonyericsson/music/common/DBUtils;->isSameStorageLocation(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 200
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->access$000(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)V

    .line 201
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    iget-object p1, p1, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getRouteType()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_8

    .line 203
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->access$100(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 204
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->access$100(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-static {p2}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->access$100(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter;->getDefaultRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/mediarouter/media/MediaRouter;->selectRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 210
    :cond_4
    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->access$200(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;->setServiceToBackground(Z)V

    goto :goto_0

    :cond_5
    const-string p2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 212
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 213
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    iget-object p2, p1, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz p2, :cond_6

    .line 217
    iget-object p1, p1, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/16 p2, 0x17

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_6
    if-nez p2, :cond_8

    .line 222
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2$1;

    invoke-direct {p2, p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2$1;-><init>(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;)V

    .line 227
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->access$300()I

    move-result v0

    int-to-long v0, v0

    .line 222
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_7
    const-string p2, "android.intent.action.USER_BACKGROUND"

    .line 229
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 230
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 231
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->pause()V

    .line 232
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->saveLastPlayed()V

    :cond_8
    :goto_0
    return-void

    :cond_9
    :goto_1
    return-void
.end method
