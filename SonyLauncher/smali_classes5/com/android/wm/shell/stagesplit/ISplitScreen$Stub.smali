.class public abstract Lcom/android/wm/shell/stagesplit/ISplitScreen$Stub;
.super Landroid/os/Binder;
.source "ISplitScreen.java"

# interfaces
.implements Lcom/android/wm/shell/stagesplit/ISplitScreen;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/stagesplit/ISplitScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/stagesplit/ISplitScreen$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_exitSplitScreen:I = 0x6

.field static final TRANSACTION_exitSplitScreenOnHide:I = 0x7

.field static final TRANSACTION_onGoingToRecentsLegacy:I = 0xd

.field static final TRANSACTION_registerSplitScreenListener:I = 0x2

.field static final TRANSACTION_removeFromSideStage:I = 0x5

.field static final TRANSACTION_setSideStageVisibility:I = 0x4

.field static final TRANSACTION_startIntent:I = 0xa

.field static final TRANSACTION_startShortcut:I = 0x9

.field static final TRANSACTION_startTask:I = 0x8

.field static final TRANSACTION_startTasks:I = 0xb

.field static final TRANSACTION_startTasksWithLegacyTransition:I = 0xc

.field static final TRANSACTION_unregisterSplitScreenListener:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 79
    const-string v0, "com.android.wm.shell.stagesplit.ISplitScreen"

    invoke-virtual {p0, p0, v0}, Lcom/android/wm/shell/stagesplit/ISplitScreen$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/stagesplit/ISplitScreen;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 87
    if-nez p0, :cond_0

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 90
    :cond_0
    const-string v0, "com.android.wm.shell.stagesplit.ISplitScreen"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 91
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/wm/shell/stagesplit/ISplitScreen;

    if-eqz v1, :cond_1

    .line 92
    move-object v1, v0

    check-cast v1, Lcom/android/wm/shell/stagesplit/ISplitScreen;

    return-object v1

    .line 94
    :cond_1
    new-instance v1, Lcom/android/wm/shell/stagesplit/ISplitScreen$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/stagesplit/ISplitScreen$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 98
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "com.android.wm.shell.stagesplit.ISplitScreen"

    .line 103
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 104
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 114
    packed-switch v8, :pswitch_data_1

    .line 262
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 110
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    return v12

    .line 251
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 253
    .local v0, "_arg0":Z
    sget-object v1, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/RemoteAnimationTarget;

    .line 254
    .local v1, "_arg1":[Landroid/view/RemoteAnimationTarget;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    invoke-virtual {v7, v0, v1}, Lcom/android/wm/shell/stagesplit/ISplitScreen$Stub;->onGoingToRecentsLegacy(Z[Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v2

    .line 256
    .local v2, "_result":[Landroid/view/RemoteAnimationTarget;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {v10, v2, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 258
    goto/16 :goto_0

    .line 233
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":[Landroid/view/RemoteAnimationTarget;
    .end local v2    # "_result":[Landroid/view/RemoteAnimationTarget;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 235
    .local v13, "_arg0":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/os/Bundle;

    .line 237
    .local v14, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 239
    .local v15, "_arg2":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Bundle;

    .line 241
    .local v16, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 243
    .local v17, "_arg4":I
    sget-object v0, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/view/RemoteAnimationAdapter;

    .line 244
    .local v18, "_arg5":Landroid/view/RemoteAnimationAdapter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    move-object/from16 v0, p0

    move v1, v13

    move-object v2, v14

    move v3, v15

    move-object/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/stagesplit/ISplitScreen$Stub;->startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;ILandroid/view/RemoteAnimationAdapter;)V

    .line 246
    goto/16 :goto_0

    .line 215
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":Landroid/os/Bundle;
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Landroid/os/Bundle;
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Landroid/view/RemoteAnimationAdapter;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 217
    .restart local v13    # "_arg0":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/os/Bundle;

    .line 219
    .restart local v14    # "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 221
    .restart local v15    # "_arg2":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Bundle;

    .line 223
    .restart local v16    # "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 225
    .restart local v17    # "_arg4":I
    sget-object v0, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/window/RemoteTransition;

    .line 226
    .local v18, "_arg5":Landroid/window/RemoteTransition;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    move-object/from16 v0, p0

    move v1, v13

    move-object v2, v14

    move v3, v15

    move-object/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/stagesplit/ISplitScreen$Stub;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;ILandroid/window/RemoteTransition;)V

    .line 228
    goto/16 :goto_0

    .line 199
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":Landroid/os/Bundle;
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Landroid/os/Bundle;
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Landroid/window/RemoteTransition;
    :pswitch_4
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/PendingIntent;

    .line 201
    .local v6, "_arg0":Landroid/app/PendingIntent;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/content/Intent;

    .line 203
    .local v13, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 205
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 207
    .local v15, "_arg3":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Bundle;

    .line 208
    .local v16, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/stagesplit/ISplitScreen$Stub;->startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;IILandroid/os/Bundle;)V

    .line 210
    goto/16 :goto_0

    .line 181
    .end local v6    # "_arg0":Landroid/app/PendingIntent;
    .end local v13    # "_arg1":Landroid/content/Intent;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Landroid/os/Bundle;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 183
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 185
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 187
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 189
    .local v16, "_arg3":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Bundle;

    .line 191
    .local v17, "_arg4":Landroid/os/Bundle;
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/UserHandle;

    .line 192
    .local v18, "_arg5":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/stagesplit/ISplitScreen$Stub;->startShortcut(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 194
    goto :goto_0

    .line 167
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Landroid/os/Bundle;
    .end local v18    # "_arg5":Landroid/os/UserHandle;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 169
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 171
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 173
    .local v2, "_arg2":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 174
    .local v3, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/wm/shell/stagesplit/ISplitScreen$Stub;->startTask(IIILandroid/os/Bundle;)V

    .line 176
    goto :goto_0

    .line 159
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/os/Bundle;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 160
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {v7, v0}, Lcom/android/wm/shell/stagesplit/ISplitScreen$Stub;->exitSplitScreenOnHide(Z)V

    .line 162
    goto :goto_0

    .line 151
    .end local v0    # "_arg0":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 152
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {v7, v0}, Lcom/android/wm/shell/stagesplit/ISplitScreen$Stub;->exitSplitScreen(I)V

    .line 154
    goto :goto_0

    .line 143
    .end local v0    # "_arg0":I
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 144
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {v7, v0}, Lcom/android/wm/shell/stagesplit/ISplitScreen$Stub;->removeFromSideStage(I)V

    .line 146
    goto :goto_0

    .line 135
    .end local v0    # "_arg0":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 136
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {v7, v0}, Lcom/android/wm/shell/stagesplit/ISplitScreen$Stub;->setSideStageVisibility(Z)V

    .line 138
    goto :goto_0

    .line 127
    .end local v0    # "_arg0":Z
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/stagesplit/ISplitScreenListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/stagesplit/ISplitScreenListener;

    move-result-object v0

    .line 128
    .local v0, "_arg0":Lcom/android/wm/shell/stagesplit/ISplitScreenListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {v7, v0}, Lcom/android/wm/shell/stagesplit/ISplitScreen$Stub;->unregisterSplitScreenListener(Lcom/android/wm/shell/stagesplit/ISplitScreenListener;)V

    .line 130
    goto :goto_0

    .line 119
    .end local v0    # "_arg0":Lcom/android/wm/shell/stagesplit/ISplitScreenListener;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/stagesplit/ISplitScreenListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/stagesplit/ISplitScreenListener;

    move-result-object v0

    .line 120
    .restart local v0    # "_arg0":Lcom/android/wm/shell/stagesplit/ISplitScreenListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {v7, v0}, Lcom/android/wm/shell/stagesplit/ISplitScreen$Stub;->registerSplitScreenListener(Lcom/android/wm/shell/stagesplit/ISplitScreenListener;)V

    .line 122
    nop

    .line 265
    .end local v0    # "_arg0":Lcom/android/wm/shell/stagesplit/ISplitScreenListener;
    :goto_0
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
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
        :pswitch_1
    .end packed-switch
.end method
