.class public Lcom/google/android/a/b;
.super Landroid/os/Binder;
.source "BaseStub.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field private static a:Lcom/google/android/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/a/b;->a:Lcom/google/android/a/d;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    invoke-virtual {p0, p0, p1}, Lcom/google/android/a/b;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 3
    return-void
.end method


# virtual methods
.method protected a(ILandroid/os/Parcel;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 p1, 0x0

    return p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 4
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5
    nop

    .line 6
    const v0, 0xffffff

    if-le p1, v0, :cond_0

    .line 7
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p3

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/a/b;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 9
    const/4 p3, 0x0

    .line 10
    :goto_0
    if-eqz p3, :cond_1

    .line 11
    const/4 p1, 0x1

    return p1

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/a/b;->a(ILandroid/os/Parcel;)Z

    move-result p1

    return p1
.end method
