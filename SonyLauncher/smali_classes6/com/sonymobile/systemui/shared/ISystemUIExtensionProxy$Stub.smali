.class public abstract Lcom/sonymobile/systemui/shared/ISystemUIExtensionProxy$Stub;
.super Landroid/os/Binder;
.source "ISystemUIExtensionProxy.java"

# interfaces
.implements Lcom/sonymobile/systemui/shared/ISystemUIExtensionProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/shared/ISystemUIExtensionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/shared/ISystemUIExtensionProxy$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getRunningSplitTaskIds:I = 0x6

.field static final TRANSACTION_getSplitScreen:I = 0x3

.field static final TRANSACTION_onInitialize:I = 0x2

.field static final TRANSACTION_registerSplitScreenListener:I = 0x4

.field static final TRANSACTION_reverseSideStagePosition:I = 0x7

.field static final TRANSACTION_startIntentAndTask:I = 0x9

.field static final TRANSACTION_startTasks:I = 0x8

.field static final TRANSACTION_unregisterSplitScreenListener:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    const-string v0, "com.sonymobile.systemui.shared.ISystemUIExtensionProxy"

    invoke-virtual {p0, p0, v0}, Lcom/sonymobile/systemui/shared/ISystemUIExtensionProxy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sonymobile/systemui/shared/ISystemUIExtensionProxy;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 66
    if-nez p0, :cond_0

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_0
    const-string v0, "com.sonymobile.systemui.shared.ISystemUIExtensionProxy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 70
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sonymobile/systemui/shared/ISystemUIExtensionProxy;

    if-eqz v1, :cond_1

    .line 71
    move-object v1, v0

    check-cast v1, Lcom/sonymobile/systemui/shared/ISystemUIExtensionProxy;

    return-object v1

    .line 73
    :cond_1
    new-instance v1, Lcom/sonymobile/systemui/shared/ISystemUIExtensionProxy$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sonymobile/systemui/shared/ISystemUIExtensionProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 77
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "com.sonymobile.systemui.shared.ISystemUIExtensionProxy"

    .line 82
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_0

    const v0, 0xffffff

    if-gt v9, v0, :cond_0

    .line 83
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    :cond_0
    packed-switch v9, :pswitch_data_0

    .line 93
    packed-switch v9, :pswitch_data_1

    .line 178
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 89
    :pswitch_0
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    return v13

    .line 159
    :pswitch_1
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/app/PendingIntent;

    .line 161
    .local v14, "_arg0":Landroid/app/PendingIntent;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/Intent;

    .line 163
    .local v15, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 165
    .local v16, "_arg2":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Bundle;

    .line 167
    .local v17, "_arg3":Landroid/os/Bundle;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Bundle;

    .line 169
    .local v18, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 171
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v20

    .line 172
    .local v20, "_arg6":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/sonymobile/systemui/shared/ISystemUIExtensionProxy$Stub;->startIntentAndTask(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/Bundle;IF)V

    .line 174
    goto/16 :goto_0

    .line 141
    .end local v14    # "_arg0":Landroid/app/PendingIntent;
    .end local v15    # "_arg1":Landroid/content/Intent;
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":Landroid/os/Bundle;
    .end local v18    # "_arg4":Landroid/os/Bundle;
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":F
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 143
    .local v7, "_arg0":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/os/Bundle;

    .line 145
    .local v14, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 147
    .local v15, "_arg2":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Bundle;

    .line 149
    .local v16, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 151
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v18

    .line 152
    .local v18, "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v14

    move v3, v15

    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/systemui/shared/ISystemUIExtensionProxy$Stub;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IF)V

    .line 154
    goto :goto_0

    .line 135
    .end local v7    # "_arg0":I
    .end local v14    # "_arg1":Landroid/os/Bundle;
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Landroid/os/Bundle;
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":F
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/systemui/shared/ISystemUIExtensionProxy$Stub;->reverseSideStagePosition()V

    .line 136
    goto :goto_0

    .line 128
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/systemui/shared/ISystemUIExtensionProxy$Stub;->getRunningSplitTaskIds()[I

    move-result-object v0

    .line 129
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 131
    goto :goto_0

    .line 121
    .end local v0    # "_result":[I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/ISplitScreenListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/splitscreen/ISplitScreenListener;

    move-result-object v0

    .line 122
    .local v0, "_arg0":Lcom/android/wm/shell/splitscreen/ISplitScreenListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {v8, v0}, Lcom/sonymobile/systemui/shared/ISystemUIExtensionProxy$Stub;->unregisterSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V

    .line 124
    goto :goto_0

    .line 113
    .end local v0    # "_arg0":Lcom/android/wm/shell/splitscreen/ISplitScreenListener;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/ISplitScreenListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/splitscreen/ISplitScreenListener;

    move-result-object v0

    .line 114
    .restart local v0    # "_arg0":Lcom/android/wm/shell/splitscreen/ISplitScreenListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-virtual {v8, v0}, Lcom/sonymobile/systemui/shared/ISystemUIExtensionProxy$Stub;->registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V

    .line 116
    goto :goto_0

    .line 105
    .end local v0    # "_arg0":Lcom/android/wm/shell/splitscreen/ISplitScreenListener;
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/systemui/shared/ISystemUIExtensionProxy$Stub;->getSplitScreen()Lcom/android/wm/shell/splitscreen/ISplitScreen;

    move-result-object v0

    .line 106
    .local v0, "_result":Lcom/android/wm/shell/splitscreen/ISplitScreen;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 108
    goto :goto_0

    .line 98
    .end local v0    # "_result":Lcom/android/wm/shell/splitscreen/ISplitScreen;
    :pswitch_8
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 99
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 100
    invoke-virtual {v8, v0}, Lcom/sonymobile/systemui/shared/ISystemUIExtensionProxy$Stub;->onInitialize(Landroid/os/Bundle;)V

    .line 101
    nop

    .line 181
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :goto_0
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
