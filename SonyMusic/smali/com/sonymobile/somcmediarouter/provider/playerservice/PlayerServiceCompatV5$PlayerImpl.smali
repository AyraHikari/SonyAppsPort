.class Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$PlayerImpl;
.super Ljava/lang/Object;
.source "PlayerServiceCompatV5.java"

# interfaces
.implements Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;


# instance fields
.field private final mService:Lcom/sonyericsson/dlna/playerservice/IPlayerService;


# direct methods
.method private constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-static {p1}, Lcom/sonyericsson/dlna/playerservice/IPlayerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonyericsson/dlna/playerservice/IPlayerService;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$PlayerImpl;->mService:Lcom/sonyericsson/dlna/playerservice/IPlayerService;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/IBinder;Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$1;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$PlayerImpl;-><init>(Landroid/os/IBinder;)V

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

    .line 179
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$PlayerImpl;->mService:Lcom/sonyericsson/dlna/playerservice/IPlayerService;

    invoke-interface {v0}, Lcom/sonyericsson/dlna/playerservice/IPlayerService;->getDuration()I

    move-result v0

    return v0
.end method

.method public getPlaybackPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$PlayerImpl;->mService:Lcom/sonyericsson/dlna/playerservice/IPlayerService;

    invoke-interface {v0}, Lcom/sonyericsson/dlna/playerservice/IPlayerService;->getPlaybackPosition()I

    move-result v0

    return v0
.end method

.method public getVolume()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$PlayerImpl;->mService:Lcom/sonyericsson/dlna/playerservice/IPlayerService;

    invoke-interface {v0}, Lcom/sonyericsson/dlna/playerservice/IPlayerService;->getVolume()I

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

    .line 109
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$PlayerImpl;->mService:Lcom/sonyericsson/dlna/playerservice/IPlayerService;

    invoke-interface {v0}, Lcom/sonyericsson/dlna/playerservice/IPlayerService;->init()V

    return-void
.end method

.method public open(Landroid/net/Uri;IIZLandroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$PlayerImpl;->mService:Lcom/sonyericsson/dlna/playerservice/IPlayerService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sonyericsson/dlna/playerservice/IPlayerService;->open(Landroid/net/Uri;IIZLandroid/os/Bundle;)V

    return-void
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$PlayerImpl;->mService:Lcom/sonyericsson/dlna/playerservice/IPlayerService;

    invoke-interface {v0}, Lcom/sonyericsson/dlna/playerservice/IPlayerService;->pause()V

    return-void
.end method

.method public play()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$PlayerImpl;->mService:Lcom/sonyericsson/dlna/playerservice/IPlayerService;

    invoke-interface {v0}, Lcom/sonyericsson/dlna/playerservice/IPlayerService;->play()V

    return-void
.end method

.method public release()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$PlayerImpl;->mService:Lcom/sonyericsson/dlna/playerservice/IPlayerService;

    invoke-interface {v0}, Lcom/sonyericsson/dlna/playerservice/IPlayerService;->release()V

    return-void
.end method

.method public setPlaybackPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$PlayerImpl;->mService:Lcom/sonyericsson/dlna/playerservice/IPlayerService;

    invoke-interface {v0, p1}, Lcom/sonyericsson/dlna/playerservice/IPlayerService;->setPlaybackPosition(I)V

    return-void
.end method

.method public setPlayerId(Ljava/lang/String;)V
    .locals 1

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$PlayerImpl;->mService:Lcom/sonyericsson/dlna/playerservice/IPlayerService;

    invoke-interface {v0, p1}, Lcom/sonyericsson/dlna/playerservice/IPlayerService;->setPlayerId(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setVolume(I)V
    .locals 1

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$PlayerImpl;->mService:Lcom/sonyericsson/dlna/playerservice/IPlayerService;

    invoke-interface {v0, p1}, Lcom/sonyericsson/dlna/playerservice/IPlayerService;->setVolume(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
