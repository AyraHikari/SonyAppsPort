.class public abstract Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;
.super Landroid/os/Binder;
.source "IOverviewProxy.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/IOverviewProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/IOverviewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_disable:I = 0x14

.field static final TRANSACTION_onActiveNavBarRegionChanges:I = 0xc

.field static final TRANSACTION_onAssistantAvailable:I = 0xe

.field static final TRANSACTION_onAssistantVisibilityChanged:I = 0xf

.field static final TRANSACTION_onBackAction:I = 0x10

.field static final TRANSACTION_onInitialize:I = 0xd

.field static final TRANSACTION_onNavButtonsDarkIntensityChanged:I = 0x17

.field static final TRANSACTION_onOverviewHidden:I = 0x9

.field static final TRANSACTION_onOverviewShown:I = 0x8

.field static final TRANSACTION_onOverviewToggle:I = 0x7

.field static final TRANSACTION_onRotationProposal:I = 0x13

.field static final TRANSACTION_onScreenTurnedOn:I = 0x16

.field static final TRANSACTION_onSplitScreenSecondaryBoundsChanged:I = 0x12

.field static final TRANSACTION_onSystemBarAttributesChanged:I = 0x15

.field static final TRANSACTION_onSystemUiStateChanged:I = 0x11

.field static final TRANSACTION_onTip:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 89
    const-string v0, "com.android.systemui.shared.recents.IOverviewProxy"

    invoke-virtual {p0, p0, v0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/IOverviewProxy;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 97
    if-nez p0, :cond_0

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 100
    :cond_0
    const-string v0, "com.android.systemui.shared.recents.IOverviewProxy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 101
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v1, :cond_1

    .line 102
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/shared/recents/IOverviewProxy;

    return-object v1

    .line 104
    :cond_1
    new-instance v1, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 108
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

    .line 112
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "com.android.systemui.shared.recents.IOverviewProxy"

    .line 113
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 114
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 124
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_1

    .line 274
    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 120
    :pswitch_1
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    return v10

    .line 267
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 268
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {v6, v0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onNavButtonsDarkIntensityChanged(F)V

    .line 270
    goto/16 :goto_0

    .line 261
    .end local v0    # "_arg0":F
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onScreenTurnedOn()V

    .line 262
    goto/16 :goto_0

    .line 252
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 254
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 255
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-virtual {v6, v0, v1}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onSystemBarAttributesChanged(II)V

    .line 257
    goto/16 :goto_0

    .line 238
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 240
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 242
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 244
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 245
    .local v3, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->disable(IIIZ)V

    .line 247
    goto/16 :goto_0

    .line 228
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Z
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 230
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 231
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {v6, v0, v1}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onRotationProposal(IZ)V

    .line 233
    goto/16 :goto_0

    .line 218
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_7
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 220
    .local v0, "_arg0":Landroid/graphics/Rect;
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 221
    .local v1, "_arg1":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {v6, v0, v1}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onSplitScreenSecondaryBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 223
    goto/16 :goto_0

    .line 210
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 211
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {v6, v0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onSystemUiStateChanged(I)V

    .line 213
    goto/16 :goto_0

    .line 194
    .end local v0    # "_arg0":I
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    .line 196
    .local v12, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 198
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 200
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 202
    .local v15, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 203
    .local v16, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onBackAction(ZIIZZ)V

    .line 205
    goto :goto_0

    .line 186
    .end local v12    # "_arg0":Z
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Z
    .end local v16    # "_arg4":Z
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 187
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {v6, v0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onAssistantVisibilityChanged(F)V

    .line 189
    goto :goto_0

    .line 178
    .end local v0    # "_arg0":F
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 179
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {v6, v0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onAssistantAvailable(Z)V

    .line 181
    goto :goto_0

    .line 137
    .end local v0    # "_arg0":Z
    :pswitch_c
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 138
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {v6, v0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onInitialize(Landroid/os/Bundle;)V

    .line 140
    goto :goto_0

    .line 129
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_d
    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Region;

    .line 130
    .local v0, "_arg0":Landroid/graphics/Region;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {v6, v0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onActiveNavBarRegionChanges(Landroid/graphics/Region;)V

    .line 132
    goto :goto_0

    .line 168
    .end local v0    # "_arg0":Landroid/graphics/Region;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 170
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 171
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {v6, v0, v1}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onTip(II)V

    .line 173
    goto :goto_0

    .line 158
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 160
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 161
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {v6, v0, v1}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onOverviewHidden(ZZ)V

    .line 163
    goto :goto_0

    .line 150
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 151
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {v6, v0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onOverviewShown(Z)V

    .line 153
    goto :goto_0

    .line 144
    .end local v0    # "_arg0":Z
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onOverviewToggle()V

    .line 145
    nop

    .line 277
    :goto_0
    return v10

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
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
