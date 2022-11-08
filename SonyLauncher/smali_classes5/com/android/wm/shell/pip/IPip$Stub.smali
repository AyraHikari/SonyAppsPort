.class public abstract Lcom/android/wm/shell/pip/IPip$Stub;
.super Landroid/os/Binder;
.source "IPip.java"

# interfaces
.implements Lcom/android/wm/shell/pip/IPip;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/pip/IPip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/IPip$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_setPinnedStackAnimationListener:I = 0x4

.field static final TRANSACTION_setShelfHeight:I = 0x5

.field static final TRANSACTION_startSwipePipToHome:I = 0x2

.field static final TRANSACTION_stopSwipePipToHome:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    const-string v0, "com.android.wm.shell.pip.IPip"

    invoke-virtual {p0, p0, v0}, Lcom/android/wm/shell/pip/IPip$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/pip/IPip;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 64
    if-nez p0, :cond_0

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_0
    const-string v0, "com.android.wm.shell.pip.IPip"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 68
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/wm/shell/pip/IPip;

    if-eqz v1, :cond_1

    .line 69
    move-object v1, v0

    check-cast v1, Lcom/android/wm/shell/pip/IPip;

    return-object v1

    .line 71
    :cond_1
    new-instance v1, Lcom/android/wm/shell/pip/IPip$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/IPip$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 75
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "com.android.wm.shell.pip.IPip"

    .line 80
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 81
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 91
    packed-switch v7, :pswitch_data_1

    .line 145
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 87
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    return v11

    .line 136
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 138
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 139
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {v6, v0, v1}, Lcom/android/wm/shell/pip/IPip$Stub;->setShelfHeight(ZI)V

    .line 141
    goto :goto_0

    .line 128
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/pip/IPipAnimationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/pip/IPipAnimationListener;

    move-result-object v0

    .line 129
    .local v0, "_arg0":Lcom/android/wm/shell/pip/IPipAnimationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-virtual {v6, v0}, Lcom/android/wm/shell/pip/IPip$Stub;->setPinnedStackAnimationListener(Lcom/android/wm/shell/pip/IPipAnimationListener;)V

    .line 131
    goto :goto_0

    .line 114
    .end local v0    # "_arg0":Lcom/android/wm/shell/pip/IPipAnimationListener;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 116
    .local v0, "_arg0":I
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 118
    .local v1, "_arg1":Landroid/content/ComponentName;
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 120
    .local v2, "_arg2":Landroid/graphics/Rect;
    sget-object v3, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    .line 121
    .local v3, "_arg3":Landroid/view/SurfaceControl;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 122
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/wm/shell/pip/IPip$Stub;->stopSwipePipToHome(ILandroid/content/ComponentName;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V

    .line 123
    goto :goto_0

    .line 96
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v2    # "_arg2":Landroid/graphics/Rect;
    .end local v3    # "_arg3":Landroid/view/SurfaceControl;
    :pswitch_4
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/content/ComponentName;

    .line 98
    .local v12, "_arg0":Landroid/content/ComponentName;
    sget-object v0, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/content/pm/ActivityInfo;

    .line 100
    .local v13, "_arg1":Landroid/content/pm/ActivityInfo;
    sget-object v0, Landroid/app/PictureInPictureParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/app/PictureInPictureParams;

    .line 102
    .local v14, "_arg2":Landroid/app/PictureInPictureParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 104
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 105
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/pip/IPip$Stub;->startSwipePipToHome(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;II)Landroid/graphics/Rect;

    move-result-object v0

    .line 107
    .local v0, "_result":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 109
    nop

    .line 148
    .end local v0    # "_result":Landroid/graphics/Rect;
    .end local v12    # "_arg0":Landroid/content/ComponentName;
    .end local v13    # "_arg1":Landroid/content/pm/ActivityInfo;
    .end local v14    # "_arg2":Landroid/app/PictureInPictureParams;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :goto_0
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
