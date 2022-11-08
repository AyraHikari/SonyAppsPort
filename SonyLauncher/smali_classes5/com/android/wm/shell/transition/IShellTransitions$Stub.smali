.class public abstract Lcom/android/wm/shell/transition/IShellTransitions$Stub;
.super Landroid/os/Binder;
.source "IShellTransitions.java"

# interfaces
.implements Lcom/android/wm/shell/transition/IShellTransitions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/transition/IShellTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/transition/IShellTransitions$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_registerRemote:I = 0x2

.field static final TRANSACTION_unregisterRemote:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    const-string v0, "com.android.wm.shell.transition.IShellTransitions"

    invoke-virtual {p0, p0, v0}, Lcom/android/wm/shell/transition/IShellTransitions$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/transition/IShellTransitions;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_0
    const-string v0, "com.android.wm.shell.transition.IShellTransitions"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 42
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/wm/shell/transition/IShellTransitions;

    if-eqz v1, :cond_1

    .line 43
    move-object v1, v0

    check-cast v1, Lcom/android/wm/shell/transition/IShellTransitions;

    return-object v1

    .line 45
    :cond_1
    new-instance v1, Lcom/android/wm/shell/transition/IShellTransitions$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/transition/IShellTransitions$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 49
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    const-string v0, "com.android.wm.shell.transition.IShellTransitions"

    .line 54
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 55
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 65
    packed-switch p1, :pswitch_data_1

    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 61
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    return v1

    .line 80
    :pswitch_1
    sget-object v2, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/RemoteTransition;

    .line 81
    .local v2, "_arg0":Landroid/window/RemoteTransition;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 82
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/transition/IShellTransitions$Stub;->unregisterRemote(Landroid/window/RemoteTransition;)V

    .line 83
    goto :goto_0

    .line 70
    .end local v2    # "_arg0":Landroid/window/RemoteTransition;
    :pswitch_2
    sget-object v2, Landroid/window/TransitionFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionFilter;

    .line 72
    .local v2, "_arg0":Landroid/window/TransitionFilter;
    sget-object v3, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/RemoteTransition;

    .line 73
    .local v3, "_arg1":Landroid/window/RemoteTransition;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 74
    invoke-virtual {p0, v2, v3}, Lcom/android/wm/shell/transition/IShellTransitions$Stub;->registerRemote(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V

    .line 75
    nop

    .line 90
    .end local v2    # "_arg0":Landroid/window/TransitionFilter;
    .end local v3    # "_arg1":Landroid/window/RemoteTransition;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
