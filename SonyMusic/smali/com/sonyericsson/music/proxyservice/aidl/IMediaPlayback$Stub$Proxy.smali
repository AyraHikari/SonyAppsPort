.class Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMediaPlayback.java"

# interfaces
.implements Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 671
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public enqueue(Landroid/net/Uri;IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    .line 1156
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 1158
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1159
    invoke-virtual {p1, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1162
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1164
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1165
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1166
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1168
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1169
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->enqueue(Landroid/net/Uri;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1176
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1173
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1176
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1176
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1178
    throw p1
.end method

.method public enqueueTrack(Landroid/net/Uri;Landroid/net/Uri;IIZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    .line 1195
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 1197
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1198
    invoke-virtual {p1, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1201
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 1204
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1205
    invoke-virtual {p2, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1208
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1210
    :goto_1
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1211
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 1212
    :goto_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1213
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1215
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1216
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->enqueueTrack(Landroid/net/Uri;Landroid/net/Uri;IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1220
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1225
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    return-object v0
.end method

.method public getPlaybackPosition()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1017
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1018
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    .line 1021
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1022
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1024
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1025
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->getPlaybackPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1032
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1028
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1029
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1032
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1032
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1034
    throw v2
.end method

.method public getPlaybackState()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1485
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1486
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    .line 1489
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1490
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1492
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1493
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->getPlaybackState()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1505
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1496
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1497
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1498
    sget-object v2, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1505
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1505
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1507
    throw v2
.end method

.method public loadPlayQueueIfEmpty()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 838
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 839
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    .line 841
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 842
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 844
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 845
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->loadPlayQueueIfEmpty()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 852
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 853
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 849
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 852
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 853
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 852
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 853
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 854
    throw v2
.end method

.method public moveTrack(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1289
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    .line 1291
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1292
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1293
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1294
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1296
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1297
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->moveTrack(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1304
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1301
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1304
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1304
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1306
    throw p1
.end method

.method public next()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 968
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 969
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    .line 971
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 972
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 974
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 975
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->next()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 982
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 983
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 979
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 982
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 983
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 982
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 983
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 984
    throw v2
.end method

.method public open(Landroid/net/Uri;IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 691
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 692
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    .line 694
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 696
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 697
    invoke-virtual {p1, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 700
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 702
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p3, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 703
    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 704
    iget-object v4, p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 706
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 707
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->open(Landroid/net/Uri;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 711
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 716
    throw p1
.end method

.method public openSmartPlaylist(IIZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 810
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 811
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    .line 813
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 814
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 816
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 817
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 819
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 820
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->openSmartPlaylist(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 827
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 824
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 827
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 827
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 829
    throw p1
.end method

.method public openWithMetadata(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 772
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 773
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    .line 775
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 777
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 778
    invoke-virtual {p1, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 781
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 783
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 784
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 785
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 786
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 787
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 789
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 790
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->openWithMetadata(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 797
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 798
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 794
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 797
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 798
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 797
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 798
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 799
    throw p1
.end method

.method public openWithSourcePos(Landroid/net/Uri;IZI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 729
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 730
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    .line 732
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 734
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    invoke-virtual {p1, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 738
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 740
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 741
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 742
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 743
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 745
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 746
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->openWithSourcePos(Landroid/net/Uri;IZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 750
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 753
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 753
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 755
    throw p1
.end method

.method public pause()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 863
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 864
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    .line 866
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 867
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 869
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 870
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 877
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 874
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 877
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 877
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 879
    throw v2
.end method

.method public pauseDelayed(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 894
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 895
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    .line 897
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 898
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 899
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 901
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 902
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->pauseDelayed(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 909
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 906
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 909
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 909
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 911
    throw p1
.end method

.method public play()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 920
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 921
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    .line 923
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 924
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 926
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 927
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->play()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 935
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 931
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 934
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 935
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 934
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 935
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 936
    throw v2
.end method

.method public prev()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 944
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 945
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    .line 947
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 948
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 950
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 951
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->prev()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 958
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 955
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 958
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 958
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 960
    throw v2
.end method

.method public removeTrack(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    .line 1264
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1265
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1266
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1268
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1269
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->removeTrack(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1273
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1278
    throw p1
.end method

.method public removeTracks(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1235
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    .line 1238
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1239
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1240
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1242
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1243
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->removeTracks(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1250
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1247
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1250
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1250
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1252
    throw p1
.end method

.method public setClearAudioEnabled(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1371
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1372
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    .line 1374
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1375
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1376
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1378
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1379
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setClearAudioEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1386
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1383
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1386
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1386
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1388
    throw p1
.end method

.method public setMediaRoute(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1532
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1533
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    .line 1535
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 1537
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1538
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1541
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1543
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1544
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1546
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1547
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setMediaRoute(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1554
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1551
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1554
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1554
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1556
    throw p1
.end method

.method public setPersonalDataCollectionConsented(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1396
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    .line 1399
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1400
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1401
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x19

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1403
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1404
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setPersonalDataCollectionConsented(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1411
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1408
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1411
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1411
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1413
    throw p1
.end method

.method public setPlaybackPosition(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1045
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1046
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    .line 1048
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1050
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1052
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1053
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setPlaybackPosition(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1060
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1057
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1060
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1060
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1062
    throw p1
.end method

.method public setQueuePosition(IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1124
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    .line 1127
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1128
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1129
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1130
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1132
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1133
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setQueuePosition(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1140
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1137
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1140
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1140
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1142
    throw p1
.end method

.method public setRepeatMode(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1346
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    .line 1349
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1350
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1351
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1353
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1354
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setRepeatMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1361
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1358
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1361
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1361
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1363
    throw p1
.end method

.method public setShowSyncUserNoticeDialog(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1460
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1461
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    .line 1463
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1464
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1465
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1467
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1468
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setShowSyncUserNoticeDialog(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1475
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1472
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1475
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1475
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1477
    throw p1
.end method

.method public setShuffle(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    .line 1318
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1319
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1320
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1322
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1323
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setShuffle(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1327
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1332
    throw p1
.end method

.method public setWifiAndMobileDataAccepted(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    .line 1420
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1421
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1422
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1424
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1425
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setWifiAndMobileDataAccepted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1432
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1429
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1432
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1432
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1434
    throw p1
.end method

.method public shouldShowSyncUserNoticeDialog()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1439
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    .line 1442
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1443
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1445
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1446
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->shouldShowSyncUserNoticeDialog()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1453
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1449
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1450
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1453
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1453
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1455
    throw v2
.end method

.method public shuffleNext()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 991
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 992
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    .line 994
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 995
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 997
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 998
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->shuffleNext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1005
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1006
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1002
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1005
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1006
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1005
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1006
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1007
    throw v2
.end method

.method public startWinding(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1074
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1075
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    .line 1077
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1078
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1079
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1081
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1082
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->startWinding(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1089
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1086
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1089
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1089
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1091
    throw p1
.end method

.method public stopWinding()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1098
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1099
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    .line 1101
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1102
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1104
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1105
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->stopWinding()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1109
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1114
    throw v2
.end method

.method public updateMediaRouteAndScan()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1512
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1513
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    .line 1515
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1516
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1518
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1519
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->updateMediaRouteAndScan()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1526
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1523
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1526
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1526
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1528
    throw v2
.end method
