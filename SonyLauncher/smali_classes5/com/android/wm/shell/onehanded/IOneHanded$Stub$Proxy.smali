.class Lcom/android/wm/shell/onehanded/IOneHanded$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOneHanded.java"

# interfaces
.implements Lcom/android/wm/shell/onehanded/IOneHanded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/onehanded/IOneHanded$Stub;
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

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/IOneHanded$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 90
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/IOneHanded$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 97
    const-string v0, "com.android.wm.shell.onehanded.IOneHanded"

    return-object v0
.end method

.method public startOneHanded()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 104
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.wm.shell.onehanded.IOneHanded"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/IOneHanded$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 109
    nop

    .line 110
    return-void

    .line 108
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 109
    throw v1
.end method

.method public stopOneHanded()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 116
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.wm.shell.onehanded.IOneHanded"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/IOneHanded$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 121
    nop

    .line 122
    return-void

    .line 120
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 121
    throw v1
.end method
