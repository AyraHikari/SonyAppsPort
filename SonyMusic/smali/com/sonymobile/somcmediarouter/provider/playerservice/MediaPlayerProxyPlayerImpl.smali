.class Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyPlayerImpl;
.super Ljava/lang/Object;
.source "MediaPlayerProxyPlayerImpl.java"

# interfaces
.implements Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaPlayerProxyPlayerImpl"


# instance fields
.field private final mService:Lcom/sonyericsson/mediaproxy/playerservice/IPlayerService;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lcom/sonyericsson/mediaproxy/playerservice/IPlayerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonyericsson/mediaproxy/playerservice/IPlayerService;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyPlayerImpl;->mService:Lcom/sonyericsson/mediaproxy/playerservice/IPlayerService;

    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 4

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyPlayerImpl;->mService:Lcom/sonyericsson/mediaproxy/playerservice/IPlayerService;

    invoke-interface {v0}, Lcom/sonyericsson/mediaproxy/playerservice/IPlayerService;->getDuration()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, -0x1

    .line 144
    :goto_0
    sget-boolean v1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v1, :cond_0

    .line 145
    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDuration() duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public getPlaybackPosition()I
    .locals 4

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyPlayerImpl;->mService:Lcom/sonyericsson/mediaproxy/playerservice/IPlayerService;

    invoke-interface {v0}, Lcom/sonyericsson/mediaproxy/playerservice/IPlayerService;->getPlaybackPosition()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, -0x1

    .line 160
    :goto_0
    sget-boolean v1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v1, :cond_0

    .line 161
    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPlaybackPosition() position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public getVolume()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 260
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 261
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyPlayerImpl;->TAG:Ljava/lang/String;

    const-string v1, "getVolume is not support"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyPlayerImpl;->TAG:Ljava/lang/String;

    const-string v1, "init()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyPlayerImpl;->mService:Lcom/sonyericsson/mediaproxy/playerservice/IPlayerService;

    invoke-interface {v0}, Lcom/sonyericsson/mediaproxy/playerservice/IPlayerService;->init()V

    return-void
.end method

.method public open(Landroid/net/Uri;IIZLandroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyPlayerImpl;->TAG:Ljava/lang/String;

    const-string v1, "open()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyPlayerImpl;->mService:Lcom/sonyericsson/mediaproxy/playerservice/IPlayerService;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/sonyericsson/mediaproxy/playerservice/IPlayerService;->open(Landroid/net/Uri;IIZLandroid/os/Bundle;)V

    return-void
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyPlayerImpl;->TAG:Ljava/lang/String;

    const-string v1, "pause()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyPlayerImpl;->mService:Lcom/sonyericsson/mediaproxy/playerservice/IPlayerService;

    invoke-interface {v0}, Lcom/sonyericsson/mediaproxy/playerservice/IPlayerService;->pause()V

    return-void
.end method

.method public play()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyPlayerImpl;->TAG:Ljava/lang/String;

    const-string v1, "play()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyPlayerImpl;->mService:Lcom/sonyericsson/mediaproxy/playerservice/IPlayerService;

    invoke-interface {v0}, Lcom/sonyericsson/mediaproxy/playerservice/IPlayerService;->play()V

    return-void
.end method

.method public release()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyPlayerImpl;->TAG:Ljava/lang/String;

    const-string v1, "release()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyPlayerImpl;->mService:Lcom/sonyericsson/mediaproxy/playerservice/IPlayerService;

    invoke-interface {v0}, Lcom/sonyericsson/mediaproxy/playerservice/IPlayerService;->release()V

    return-void
.end method

.method public setPlaybackPosition(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyPlayerImpl;->TAG:Ljava/lang/String;

    const-string v1, "setPlaybackPosition()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyPlayerImpl;->mService:Lcom/sonyericsson/mediaproxy/playerservice/IPlayerService;

    invoke-interface {v0, p1}, Lcom/sonyericsson/mediaproxy/playerservice/IPlayerService;->setPlaybackPosition(I)V

    return-void
.end method

.method public setPlayerId(Ljava/lang/String;)V
    .locals 3

    .line 44
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyPlayerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayerId() ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyPlayerImpl;->mService:Lcom/sonyericsson/mediaproxy/playerservice/IPlayerService;

    invoke-interface {v0, p1}, Lcom/sonyericsson/mediaproxy/playerservice/IPlayerService;->setPlayerId(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setVolume(I)V
    .locals 1

    .line 253
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_0

    .line 254
    sget-object p1, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyPlayerImpl;->TAG:Ljava/lang/String;

    const-string v0, "setVolume is not support"

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
