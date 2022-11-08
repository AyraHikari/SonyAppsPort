.class public abstract Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub;
.super Landroid/os/Binder;
.source "ILauncherUnlockAnimationController.java"

# interfaces
.implements Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_dispatchSmartspaceStateToSysui:I = 0x6

.field static final TRANSACTION_playUnlockAnimation:I = 0x3

.field static final TRANSACTION_prepareForUnlock:I = 0x1

.field static final TRANSACTION_setSmartspaceSelectedPage:I = 0x4

.field static final TRANSACTION_setSmartspaceVisibility:I = 0x5

.field static final TRANSACTION_setUnlockAmount:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 51
    const-string v0, "com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController"

    invoke-virtual {p0, p0, v0}, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 59
    if-nez p0, :cond_0

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_0
    const-string v0, "com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 63
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;

    if-eqz v1, :cond_1

    .line 64
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;

    return-object v1

    .line 66
    :cond_1
    new-instance v1, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 70
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

    .line 74
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController"

    .line 75
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 76
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 86
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_1

    .line 147
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 82
    :pswitch_0
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    return v10

    .line 142
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub;->dispatchSmartspaceStateToSysui()V

    .line 143
    goto :goto_0

    .line 134
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 135
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {v6, v0}, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub;->setSmartspaceVisibility(I)V

    .line 137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    goto :goto_0

    .line 126
    .end local v0    # "_arg0":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 127
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {v6, v0}, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub;->setSmartspaceSelectedPage(I)V

    .line 129
    goto :goto_0

    .line 114
    .end local v0    # "_arg0":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    .line 116
    .local v12, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 118
    .local v13, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 119
    .local v15, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    move-object/from16 v0, p0

    move v1, v12

    move-wide v2, v13

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub;->playUnlockAnimation(ZJJ)V

    .line 121
    goto :goto_0

    .line 104
    .end local v12    # "_arg0":Z
    .end local v13    # "_arg1":J
    .end local v15    # "_arg2":J
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 106
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 107
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 108
    invoke-virtual {v6, v0, v1}, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub;->setUnlockAmount(FZ)V

    .line 109
    goto :goto_0

    .line 91
    .end local v0    # "_arg0":F
    .end local v1    # "_arg1":Z
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 93
    .local v0, "_arg0":Z
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 95
    .local v1, "_arg1":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 96
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 97
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub;->prepareForUnlock(ZLandroid/graphics/Rect;I)V

    .line 98
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    nop

    .line 150
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    .end local v2    # "_arg2":I
    :goto_0
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
