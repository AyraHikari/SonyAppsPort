.class Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILauncherUnlockAnimationController.java"

# interfaces
.implements Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 158
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public dispatchSmartspaceStateToSysui()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 253
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 258
    nop

    .line 259
    return-void

    .line 257
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 258
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 165
    const-string v0, "com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController"

    return-object v0
.end method

.method public playUnlockAnimation(ZJJ)V
    .locals 5
    .param p1, "unlocked"    # Z
    .param p2, "duration"    # J
    .param p4, "startDelay"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 208
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 210
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 211
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 212
    iget-object v1, p0, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 216
    nop

    .line 217
    return-void

    .line 215
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 216
    throw v1
.end method

.method public prepareForUnlock(ZLandroid/graphics/Rect;I)V
    .locals 5
    .param p1, "animateSmartspace"    # Z
    .param p2, "lockscreenSmartspaceBounds"    # Landroid/graphics/Rect;
    .param p3, "selectedPage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 172
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 174
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 176
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 177
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-object v3, p0, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 179
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 184
    nop

    .line 185
    return-void

    .line 182
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 184
    throw v2
.end method

.method public setSmartspaceSelectedPage(I)V
    .locals 5
    .param p1, "selectedPage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 223
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    iget-object v1, p0, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 229
    nop

    .line 230
    return-void

    .line 228
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 229
    throw v1
.end method

.method public setSmartspaceVisibility(I)V
    .locals 5
    .param p1, "visibility"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 235
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 237
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget-object v2, p0, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 240
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 245
    nop

    .line 246
    return-void

    .line 243
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 245
    throw v2
.end method

.method public setUnlockAmount(FZ)V
    .locals 5
    .param p1, "amount"    # F
    .param p2, "forceIfAnimating"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 193
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 195
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 196
    iget-object v1, p0, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 200
    nop

    .line 201
    return-void

    .line 199
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 200
    throw v1
.end method
