.class public abstract Lcom/android/wm/shell/pip/IPipAnimationListener$Stub;
.super Landroid/os/Binder;
.source "IPipAnimationListener.java"

# interfaces
.implements Lcom/android/wm/shell/pip/IPipAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/pip/IPipAnimationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/IPipAnimationListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onExpandPip:I = 0x3

.field static final TRANSACTION_onPipAnimationStarted:I = 0x1

.field static final TRANSACTION_onPipResourceDimensionsChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "com.android.wm.shell.pip.IPipAnimationListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/wm/shell/pip/IPipAnimationListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/pip/IPipAnimationListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_0

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_0
    const-string v0, "com.android.wm.shell.pip.IPipAnimationListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/wm/shell/pip/IPipAnimationListener;

    if-eqz v1, :cond_1

    .line 53
    move-object v1, v0

    check-cast v1, Lcom/android/wm/shell/pip/IPipAnimationListener;

    return-object v1

    .line 55
    :cond_1
    new-instance v1, Lcom/android/wm/shell/pip/IPipAnimationListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/IPipAnimationListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 59
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

    .line 63
    const-string v0, "com.android.wm.shell.pip.IPipAnimationListener"

    .line 64
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 65
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 75
    packed-switch p1, :pswitch_data_1

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 71
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    return v1

    .line 94
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/IPipAnimationListener$Stub;->onExpandPip()V

    .line 95
    goto :goto_0

    .line 85
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 87
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 88
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 89
    invoke-virtual {p0, v2, v3}, Lcom/android/wm/shell/pip/IPipAnimationListener$Stub;->onPipResourceDimensionsChanged(II)V

    .line 90
    goto :goto_0

    .line 79
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/IPipAnimationListener$Stub;->onPipAnimationStarted()V

    .line 80
    nop

    .line 102
    :goto_0
    return v1

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
