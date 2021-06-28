.class Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6$PlayerImpl;
.super Ljava/lang/Object;
.source "PlayerServiceCompatV6.java"

# interfaces
.implements Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlayerImpl"
.end annotation


# instance fields
.field private final mService:Lcom/sonyericsson/dlna/playerservice/IPlayerServiceV6;


# direct methods
.method private constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {p1}, Lcom/sonyericsson/dlna/playerservice/IPlayerServiceV6$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonyericsson/dlna/playerservice/IPlayerServiceV6;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6$PlayerImpl;->mService:Lcom/sonyericsson/dlna/playerservice/IPlayerServiceV6;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/IBinder;Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6$1;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6$PlayerImpl;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6$PlayerImpl;->mService:Lcom/sonyericsson/dlna/playerservice/IPlayerServiceV6;

    invoke-interface {v0}, Lcom/sonyericsson/dlna/playerservice/IPlayerServiceV6;->getDuration()I

    move-result v0

    return v0
.end method

.method public getPlaybackPosition()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getPlaybackPosition"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6$PlayerImpl;->mService:Lcom/sonyericsson/dlna/playerservice/IPlayerServiceV6;

    invoke-interface {v0}, Lcom/sonyericsson/dlna/playerservice/IPlayerServiceV6;->getPlaybackPosition()I

    move-result v0

    return v0
.end method

.method public getVolume()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 237
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getVolume"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6$PlayerImpl;->mService:Lcom/sonyericsson/dlna/playerservice/IPlayerServiceV6;

    invoke-interface {v0}, Lcom/sonyericsson/dlna/playerservice/IPlayerServiceV6;->getVolume()I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6$PlayerImpl;->mService:Lcom/sonyericsson/dlna/playerservice/IPlayerServiceV6;

    invoke-interface {v0}, Lcom/sonyericsson/dlna/playerservice/IPlayerServiceV6;->init()V

    return-void
.end method

.method public open(Landroid/net/Uri;IIZLandroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 101
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "open"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6$PlayerImpl;->mService:Lcom/sonyericsson/dlna/playerservice/IPlayerServiceV6;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/sonyericsson/dlna/playerservice/IPlayerServiceV6;->open(Landroid/net/Uri;IIZLandroid/os/Bundle;)V

    return-void
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6$PlayerImpl;->mService:Lcom/sonyericsson/dlna/playerservice/IPlayerServiceV6;

    invoke-interface {v0}, Lcom/sonyericsson/dlna/playerservice/IPlayerServiceV6;->pause()V

    return-void
.end method

.method public play()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "play"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6$PlayerImpl;->mService:Lcom/sonyericsson/dlna/playerservice/IPlayerServiceV6;

    invoke-interface {v0}, Lcom/sonyericsson/dlna/playerservice/IPlayerServiceV6;->play()V

    return-void
.end method

.method public release()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6$PlayerImpl;->mService:Lcom/sonyericsson/dlna/playerservice/IPlayerServiceV6;

    invoke-interface {v0}, Lcom/sonyericsson/dlna/playerservice/IPlayerServiceV6;->release()V

    return-void
.end method

.method public setPlaybackPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6$PlayerImpl;->mService:Lcom/sonyericsson/dlna/playerservice/IPlayerServiceV6;

    invoke-interface {v0, p1}, Lcom/sonyericsson/dlna/playerservice/IPlayerServiceV6;->setPlaybackPosition(I)V

    return-void
.end method

.method public setPlayerId(Ljava/lang/String;)V
    .locals 3

    .line 79
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayerId ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6$PlayerImpl;->mService:Lcom/sonyericsson/dlna/playerservice/IPlayerServiceV6;

    invoke-interface {v0, p1}, Lcom/sonyericsson/dlna/playerservice/IPlayerServiceV6;->setPlayerId(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setVolume(I)V
    .locals 2

    .line 224
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 225
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setVolume"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6$PlayerImpl;->mService:Lcom/sonyericsson/dlna/playerservice/IPlayerServiceV6;

    invoke-interface {v0, p1}, Lcom/sonyericsson/dlna/playerservice/IPlayerServiceV6;->setVolume(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
