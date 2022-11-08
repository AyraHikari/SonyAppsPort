.class public abstract Lcom/android/wm/shell/back/IBackAnimation$Stub;
.super Landroid/os/Binder;
.source "IBackAnimation.java"

# interfaces
.implements Lcom/android/wm/shell/back/IBackAnimation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/back/IBackAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/back/IBackAnimation$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_clearBackToLauncherCallback:I = 0x2

.field static final TRANSACTION_onBackToLauncherAnimationFinished:I = 0x3

.field static final TRANSACTION_setBackToLauncherCallback:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "com.android.wm.shell.back.IBackAnimation"

    invoke-virtual {p0, p0, v0}, Lcom/android/wm/shell/back/IBackAnimation$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/back/IBackAnimation;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 51
    if-nez p0, :cond_0

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_0
    const-string v0, "com.android.wm.shell.back.IBackAnimation"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/wm/shell/back/IBackAnimation;

    if-eqz v1, :cond_1

    .line 56
    move-object v1, v0

    check-cast v1, Lcom/android/wm/shell/back/IBackAnimation;

    return-object v1

    .line 58
    :cond_1
    new-instance v1, Lcom/android/wm/shell/back/IBackAnimation$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/back/IBackAnimation$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 62
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    const-string v0, "com.android.wm.shell.back.IBackAnimation"

    .line 67
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 68
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 78
    packed-switch p1, :pswitch_data_1

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 74
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    return v1

    .line 97
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/wm/shell/back/IBackAnimation$Stub;->onBackToLauncherAnimationFinished()V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    goto :goto_0

    .line 91
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/wm/shell/back/IBackAnimation$Stub;->clearBackToLauncherCallback()V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    goto :goto_0

    .line 83
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/IOnBackInvokedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IOnBackInvokedCallback;

    move-result-object v2

    .line 84
    .local v2, "_arg0":Landroid/window/IOnBackInvokedCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 85
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/back/IBackAnimation$Stub;->setBackToLauncherCallback(Landroid/window/IOnBackInvokedCallback;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    nop

    .line 106
    .end local v2    # "_arg0":Landroid/window/IOnBackInvokedCallback;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
