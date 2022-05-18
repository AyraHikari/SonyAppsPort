.class Lcom/sonyericsson/music/MusicActivity$3;
.super Ljava/lang/Object;
.source "MusicActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 351
    iput-object p1, p0, Lcom/sonyericsson/music/MusicActivity$3;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 388
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity$3;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 397
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity$3;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {p2}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sonyericsson/music/MusicActivity;->access$202(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;)Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    .line 398
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity$3;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object p1

    .line 399
    iget-object p2, p0, Lcom/sonyericsson/music/MusicActivity$3;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {p2}, Lcom/sonyericsson/music/MusicActivity;->access$200(Lcom/sonyericsson/music/MusicActivity;)Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/player/PlayerController;->setService(Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;)V

    .line 401
    iget-object p2, p0, Lcom/sonyericsson/music/MusicActivity$3;->this$0:Lcom/sonyericsson/music/MusicActivity;

    iget-object p2, p2, Lcom/sonyericsson/music/MusicActivity;->mServiceConnectionListeners:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 402
    iget-object p2, p0, Lcom/sonyericsson/music/MusicActivity$3;->this$0:Lcom/sonyericsson/music/MusicActivity;

    iget-object p2, p2, Lcom/sonyericsson/music/MusicActivity;->mServiceConnectionListeners:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MediaServiceConnection;

    .line 403
    invoke-interface {v0, p1}, Lcom/sonyericsson/music/MediaServiceConnection;->onMediaServiceConnected(Lcom/sonyericsson/music/player/PlayerController;)V

    goto :goto_0

    .line 406
    :cond_1
    iget-object p2, p0, Lcom/sonyericsson/music/MusicActivity$3;->this$0:Lcom/sonyericsson/music/MusicActivity;

    .line 407
    invoke-static {p2}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->isClearAudioPlusEnabled(Landroid/content/Context;)Z

    move-result p2

    .line 406
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/player/PlayerController;->setClearAudioEnabled(Z)V

    .line 409
    iget-object p2, p0, Lcom/sonyericsson/music/MusicActivity$3;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {p2}, Lcom/sonyericsson/music/MusicActivity;->access$300(Lcom/sonyericsson/music/MusicActivity;)V

    .line 411
    iget-object p2, p0, Lcom/sonyericsson/music/MusicActivity$3;->this$0:Lcom/sonyericsson/music/MusicActivity;

    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/sonyericsson/music/MusicActivity;->mAllowSelectRoute:Z

    .line 413
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerController;->updateMediaRouteAndScan()V

    .line 414
    sget-boolean p2, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    const-wide/16 v0, 0x7d0

    if-eqz p2, :cond_2

    .line 417
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity$3;->this$0:Lcom/sonyericsson/music/MusicActivity;

    iget-object p1, p1, Lcom/sonyericsson/music/MusicActivity;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/sonyericsson/music/MusicActivity$3$1;

    invoke-direct {p2, p0}, Lcom/sonyericsson/music/MusicActivity$3$1;-><init>(Lcom/sonyericsson/music/MusicActivity$3;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 432
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerController;->loadPlayQueueIfEmpty()V

    .line 437
    :goto_1
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity$3;->this$0:Lcom/sonyericsson/music/MusicActivity;

    iget-object p1, p1, Lcom/sonyericsson/music/MusicActivity;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/sonyericsson/music/MusicActivity$3$2;

    invoke-direct {p2, p0}, Lcom/sonyericsson/music/MusicActivity$3$2;-><init>(Lcom/sonyericsson/music/MusicActivity$3;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "SemcMusicPlayer"

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in onServiceConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 355
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity$3;->this$0:Lcom/sonyericsson/music/MusicActivity;

    iget-object p1, p1, Lcom/sonyericsson/music/MusicActivity;->mServiceConnectionListeners:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 356
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MediaServiceConnection;

    .line 357
    invoke-interface {v0}, Lcom/sonyericsson/music/MediaServiceConnection;->onMediaServiceDisconnected()V

    goto :goto_0

    .line 361
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity$3;->this$0:Lcom/sonyericsson/music/MusicActivity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/sonyericsson/music/MusicActivity;->mAllowSelectRoute:Z

    const/4 v0, 0x0

    .line 364
    :try_start_0
    invoke-virtual {p1}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object p1

    .line 365
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/player/PlayerController;->setService(Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    :catch_1
    nop

    .line 372
    :goto_1
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity$3;->this$0:Lcom/sonyericsson/music/MusicActivity;

    iget-boolean v1, p1, Lcom/sonyericsson/music/MusicActivity;->mDisableCastButtonVisibilityUpdate:Z

    if-nez v1, :cond_1

    .line 373
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 376
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity$3;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/music/MusicActivity;->unregisterBroadCastReceiverMusicServiceIntents()V

    .line 377
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity$3;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/music/MusicActivity;->unregisterBroadCastReceiverPerformaceMeasurement()V

    .line 379
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity$3;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {p1, v0}, Lcom/sonyericsson/music/MusicActivity;->access$202(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;)Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    return-void
.end method
