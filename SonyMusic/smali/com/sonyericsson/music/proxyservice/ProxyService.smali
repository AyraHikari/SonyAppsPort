.class public Lcom/sonyericsson/music/proxyservice/ProxyService;
.super Landroid/app/Service;
.source "ProxyService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private mClientServiceBindingV1:Z

.field private mClientServiceBindingV3:Z

.field private mClientServiceStubV1:Lcom/sonyericsson/music/proxyservice/ServiceStubV1;

.field private mClientServiceStubV3:Lcom/sonyericsson/music/proxyservice/ServiceStubV3;

.field private mDelayedStartPlaybackIntent:Landroid/content/Intent;

.field private mHasPlaybackServiceBinding:Z

.field mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

.field private mStartId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mStartId:I

    return-void
.end method


# virtual methods
.method bindToPlaybackService()Z
    .locals 3

    .line 214
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.PROXY_SERVICE_BINDING_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/sonyericsson/music/proxyservice/PlaybackService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "grab_media_button_focus"

    const/4 v2, 0x1

    .line 217
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 219
    invoke-virtual {p0, v0, p0, v2}, Landroid/app/Service;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 128
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.sonyericsson.music.SERVICE"

    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 131
    iput-boolean v1, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mClientServiceBindingV1:Z

    .line 132
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mClientServiceStubV1:Lcom/sonyericsson/music/proxyservice/ServiceStubV1;

    return-object p1

    :cond_0
    const-string v0, "com.sonyericsson.music.SERVICE_V3"

    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 134
    iput-boolean v1, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mClientServiceBindingV3:Z

    .line 135
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mClientServiceStubV3:Lcom/sonyericsson/music/proxyservice/ServiceStubV3;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 51
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 54
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/ProxyService;->bindToPlaybackService()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mHasPlaybackServiceBinding:Z

    .line 56
    new-instance v0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    invoke-direct {v0}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    .line 57
    new-instance v0, Lcom/sonyericsson/music/proxyservice/ServiceStubV1;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/proxyservice/ServiceStubV1;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;)V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mClientServiceStubV1:Lcom/sonyericsson/music/proxyservice/ServiceStubV1;

    .line 58
    new-instance v0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;)V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mClientServiceStubV3:Lcom/sonyericsson/music/proxyservice/ServiceStubV3;

    .line 60
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->init(Landroid/content/Context;Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->shutdown()V

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mDelayedStartPlaybackIntent:Landroid/content/Intent;

    .line 106
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mHasPlaybackServiceBinding:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0, p0}, Landroid/app/Service;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mHasPlaybackServiceBinding:Z

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mClientServiceStubV1:Lcom/sonyericsson/music/proxyservice/ServiceStubV1;

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/ServiceStubV1;->destroyArtDecoder()V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mClientServiceStubV3:Lcom/sonyericsson/music/proxyservice/ServiceStubV3;

    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->destroyArtDecoder()V

    .line 117
    :cond_2
    invoke-static {}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->deinit()V

    .line 119
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2

    .line 174
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 176
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.sonyericsson.music.SERVICE"

    .line 178
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 179
    iput-boolean v1, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mClientServiceBindingV1:Z

    goto :goto_0

    :cond_0
    const-string v0, "com.sonyericsson.music.SERVICE_V3"

    .line 180
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 181
    iput-boolean v1, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mClientServiceBindingV3:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 187
    move-object p1, p2

    check-cast p1, Lcom/sonyericsson/music/proxyservice/PlaybackService$ProxyServiceBinder;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/PlaybackService$ProxyServiceBinder;->getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    new-instance v1, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;

    new-instance v2, Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-direct {v2, p0, p1}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    invoke-direct {v1, v2}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;-><init>(Landroid/support/v4/media/session/MediaControllerCompat;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->setMediaController(Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;)V

    .line 194
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    check-cast p2, Lcom/sonyericsson/music/proxyservice/PlaybackService$ProxyServiceBinder;

    .line 195
    invoke-virtual {p2}, Lcom/sonyericsson/music/proxyservice/PlaybackService$ProxyServiceBinder;->getMediaPlayback()Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    move-result-object p2

    .line 194
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->setMediaPlayback(Lcom/sonyericsson/music/proxyservice/MediaPlayback;)V

    .line 197
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mDelayedStartPlaybackIntent:Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 198
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mDelayedStartPlaybackIntent:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->startPlayback(Landroid/net/Uri;)V

    const/4 p1, 0x0

    .line 199
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mDelayedStartPlaybackIntent:Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    sget-object p1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v0, "Could not create a MediaController."

    invoke-virtual {p1, p2, v0}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 209
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->setMediaController(Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;)V

    .line 210
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->setMediaPlayback(Lcom/sonyericsson/music/proxyservice/MediaPlayback;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 68
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 70
    iput p3, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mStartId:I

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    const-string v0, "com.sonyericsson.music.action.START_PLAYBACK"

    .line 73
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 74
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->isInitiated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mServiceStubHandler:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;

    invoke-virtual {p1, p3}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->startPlayback(Landroid/net/Uri;)V

    .line 81
    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mDelayedStartPlaybackIntent:Landroid/content/Intent;

    goto :goto_1

    .line 83
    :cond_1
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mDelayedStartPlaybackIntent:Landroid/content/Intent;

    :cond_2
    :goto_1
    const/4 p1, 0x2

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    .line 147
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.sonyericsson.music.SERVICE"

    .line 149
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 150
    iput-boolean v1, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mClientServiceBindingV1:Z

    goto :goto_0

    :cond_0
    const-string v0, "com.sonyericsson.music.SERVICE_V3"

    .line 151
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 152
    iput-boolean v1, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mClientServiceBindingV3:Z

    .line 159
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mClientServiceBindingV1:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mClientServiceBindingV3:Z

    if-nez p1, :cond_2

    .line 160
    iget p1, p0, Lcom/sonyericsson/music/proxyservice/ProxyService;->mStartId:I

    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelf(I)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
