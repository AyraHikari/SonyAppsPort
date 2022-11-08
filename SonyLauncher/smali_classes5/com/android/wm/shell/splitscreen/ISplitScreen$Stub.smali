.class public abstract Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub;
.super Landroid/os/Binder;
.source "ISplitScreen.java"

# interfaces
.implements Lcom/android/wm/shell/splitscreen/ISplitScreen;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/ISplitScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_exitSplitScreen:I = 0x6

.field static final TRANSACTION_exitSplitScreenOnHide:I = 0x7

.field static final TRANSACTION_onGoingToRecentsLegacy:I = 0xe

.field static final TRANSACTION_onStartingSplitLegacy:I = 0xf

.field static final TRANSACTION_registerSplitScreenListener:I = 0x2

.field static final TRANSACTION_removeFromSideStage:I = 0x5

.field static final TRANSACTION_setSideStagePosition:I = 0x10

.field static final TRANSACTION_startIntent:I = 0xa

.field static final TRANSACTION_startIntentAndTaskWithLegacyTransition:I = 0xd

.field static final TRANSACTION_startShortcut:I = 0x9

.field static final TRANSACTION_startTask:I = 0x8

.field static final TRANSACTION_startTasks:I = 0xb

.field static final TRANSACTION_startTasksWithLegacyTransition:I = 0xc

.field static final TRANSACTION_unregisterSplitScreenListener:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 91
    const-string v0, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {p0, p0, v0}, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/splitscreen/ISplitScreen;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 99
    if-nez p0, :cond_0

    .line 100
    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_0
    const-string v0, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 103
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/wm/shell/splitscreen/ISplitScreen;

    if-eqz v1, :cond_1

    .line 104
    move-object v1, v0

    check-cast v1, Lcom/android/wm/shell/splitscreen/ISplitScreen;

    return-object v1

    .line 106
    :cond_1
    new-instance v1, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 110
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v13, "com.android.wm.shell.splitscreen.ISplitScreen"

    .line 115
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v10, v14, :cond_0

    const v0, 0xffffff

    if-gt v10, v0, :cond_0

    .line 116
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    :cond_0
    packed-switch v10, :pswitch_data_0

    .line 126
    packed-switch v10, :pswitch_data_1

    .line 302
    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 122
    :pswitch_1
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    return v14

    .line 295
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 296
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    invoke-virtual {v9, v0}, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub;->setSideStagePosition(I)V

    .line 298
    goto/16 :goto_0

    .line 285
    .end local v0    # "_arg0":I
    :pswitch_3
    sget-object v0, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/RemoteAnimationTarget;

    .line 286
    .local v0, "_arg0":[Landroid/view/RemoteAnimationTarget;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 287
    invoke-virtual {v9, v0}, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub;->onStartingSplitLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v1

    .line 288
    .local v1, "_result":[Landroid/view/RemoteAnimationTarget;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 290
    goto/16 :goto_0

    .line 275
    .end local v0    # "_arg0":[Landroid/view/RemoteAnimationTarget;
    .end local v1    # "_result":[Landroid/view/RemoteAnimationTarget;
    :pswitch_4
    sget-object v0, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/RemoteAnimationTarget;

    .line 276
    .restart local v0    # "_arg0":[Landroid/view/RemoteAnimationTarget;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 277
    invoke-virtual {v9, v0}, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub;->onGoingToRecentsLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v1

    .line 278
    .restart local v1    # "_result":[Landroid/view/RemoteAnimationTarget;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 280
    goto/16 :goto_0

    .line 253
    .end local v0    # "_arg0":[Landroid/view/RemoteAnimationTarget;
    .end local v1    # "_result":[Landroid/view/RemoteAnimationTarget;
    :pswitch_5
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/app/PendingIntent;

    .line 255
    .local v15, "_arg0":Landroid/app/PendingIntent;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/Intent;

    .line 257
    .local v16, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 259
    .local v17, "_arg2":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Bundle;

    .line 261
    .local v18, "_arg3":Landroid/os/Bundle;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/Bundle;

    .line 263
    .local v19, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 265
    .local v20, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v21

    .line 267
    .local v21, "_arg6":F
    sget-object v0, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/view/RemoteAnimationAdapter;

    .line 268
    .local v22, "_arg7":Landroid/view/RemoteAnimationAdapter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub;->startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V

    .line 270
    goto/16 :goto_0

    .line 233
    .end local v15    # "_arg0":Landroid/app/PendingIntent;
    .end local v16    # "_arg1":Landroid/content/Intent;
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":Landroid/os/Bundle;
    .end local v19    # "_arg4":Landroid/os/Bundle;
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":F
    .end local v22    # "_arg7":Landroid/view/RemoteAnimationAdapter;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 235
    .local v8, "_arg0":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/os/Bundle;

    .line 237
    .local v15, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 239
    .local v16, "_arg2":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Bundle;

    .line 241
    .local v17, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 243
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v19

    .line 245
    .local v19, "_arg5":F
    sget-object v0, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/view/RemoteAnimationAdapter;

    .line 246
    .local v20, "_arg6":Landroid/view/RemoteAnimationAdapter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub;->startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V

    .line 248
    goto/16 :goto_0

    .line 213
    .end local v8    # "_arg0":I
    .end local v15    # "_arg1":Landroid/os/Bundle;
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":Landroid/os/Bundle;
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":F
    .end local v20    # "_arg6":Landroid/view/RemoteAnimationAdapter;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 215
    .restart local v8    # "_arg0":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/os/Bundle;

    .line 217
    .restart local v15    # "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 219
    .restart local v16    # "_arg2":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Bundle;

    .line 221
    .restart local v17    # "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 223
    .restart local v18    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v19

    .line 225
    .restart local v19    # "_arg5":F
    sget-object v0, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/window/RemoteTransition;

    .line 226
    .local v20, "_arg6":Landroid/window/RemoteTransition;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;)V

    .line 228
    goto/16 :goto_0

    .line 199
    .end local v8    # "_arg0":I
    .end local v15    # "_arg1":Landroid/os/Bundle;
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":Landroid/os/Bundle;
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":F
    .end local v20    # "_arg6":Landroid/window/RemoteTransition;
    :pswitch_8
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 201
    .local v0, "_arg0":Landroid/app/PendingIntent;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 203
    .local v1, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 205
    .local v2, "_arg2":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 206
    .local v3, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub;->startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 208
    goto/16 :goto_0

    .line 183
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/os/Bundle;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 185
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 187
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 189
    .local v8, "_arg2":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/os/Bundle;

    .line 191
    .local v15, "_arg3":Landroid/os/Bundle;
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/UserHandle;

    .line 192
    .local v16, "_arg4":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub;->startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 194
    goto :goto_0

    .line 171
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v15    # "_arg3":Landroid/os/Bundle;
    .end local v16    # "_arg4":Landroid/os/UserHandle;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 173
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 175
    .local v1, "_arg1":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 176
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub;->startTask(IILandroid/os/Bundle;)V

    .line 178
    goto :goto_0

    .line 163
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 164
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {v9, v0}, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub;->exitSplitScreenOnHide(Z)V

    .line 166
    goto :goto_0

    .line 155
    .end local v0    # "_arg0":Z
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 156
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {v9, v0}, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub;->exitSplitScreen(I)V

    .line 158
    goto :goto_0

    .line 147
    .end local v0    # "_arg0":I
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 148
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {v9, v0}, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub;->removeFromSideStage(I)V

    .line 150
    goto :goto_0

    .line 139
    .end local v0    # "_arg0":I
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/ISplitScreenListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/splitscreen/ISplitScreenListener;

    move-result-object v0

    .line 140
    .local v0, "_arg0":Lcom/android/wm/shell/splitscreen/ISplitScreenListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {v9, v0}, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub;->unregisterSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V

    .line 142
    goto :goto_0

    .line 131
    .end local v0    # "_arg0":Lcom/android/wm/shell/splitscreen/ISplitScreenListener;
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/ISplitScreenListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/splitscreen/ISplitScreenListener;

    move-result-object v0

    .line 132
    .restart local v0    # "_arg0":Lcom/android/wm/shell/splitscreen/ISplitScreenListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    invoke-virtual {v9, v0}, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub;->registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V

    .line 134
    nop

    .line 305
    .end local v0    # "_arg0":Lcom/android/wm/shell/splitscreen/ISplitScreenListener;
    :goto_0
    return v14

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
