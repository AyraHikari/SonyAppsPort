.class public abstract Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;
.super Landroid/os/Binder;
.source "ISystemUiProxy.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/ISystemUiProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/ISystemUiProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_expandNotificationPanel:I = 0x1e

.field static final TRANSACTION_getNonMinimizedSplitScreenSecondaryBounds:I = 0x8

.field static final TRANSACTION_handleImageAsScreenshot:I = 0x16

.field static final TRANSACTION_handleImageBundleAsScreenshot:I = 0x1d

.field static final TRANSACTION_notifyAccessibilityButtonClicked:I = 0x10

.field static final TRANSACTION_notifyAccessibilityButtonLongClicked:I = 0x11

.field static final TRANSACTION_notifyPrioritizedRotation:I = 0x1a

.field static final TRANSACTION_notifySwipeToHomeFinished:I = 0x18

.field static final TRANSACTION_notifySwipeUpGestureStarted:I = 0x2f

.field static final TRANSACTION_notifyTaskbarAutohideSuspend:I = 0x31

.field static final TRANSACTION_notifyTaskbarStatus:I = 0x30

.field static final TRANSACTION_onAssistantGestureCompletion:I = 0x13

.field static final TRANSACTION_onAssistantProgress:I = 0xd

.field static final TRANSACTION_onBackPressed:I = 0x2d

.field static final TRANSACTION_onImeSwitcherPressed:I = 0x32

.field static final TRANSACTION_onOverviewShown:I = 0x7

.field static final TRANSACTION_onStatusBarMotionEvent:I = 0xa

.field static final TRANSACTION_setHomeRotationEnabled:I = 0x2e

.field static final TRANSACTION_setNavBarButtonAlpha:I = 0x14

.field static final TRANSACTION_setSplitScreenMinimized:I = 0x17

.field static final TRANSACTION_startAssistant:I = 0xe

.field static final TRANSACTION_startScreenPinning:I = 0x2

.field static final TRANSACTION_stopScreenPinning:I = 0x12

.field static final TRANSACTION_toggleNotificationPanel:I = 0x33


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 149
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 150
    const-string v0, "com.android.systemui.shared.recents.ISystemUiProxy"

    invoke-virtual {p0, p0, v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/ISystemUiProxy;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 158
    if-nez p0, :cond_0

    .line 159
    const/4 v0, 0x0

    return-object v0

    .line 161
    :cond_0
    const-string v0, "com.android.systemui.shared.recents.ISystemUiProxy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 162
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v1, :cond_1

    .line 163
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/shared/recents/ISystemUiProxy;

    return-object v1

    .line 165
    :cond_1
    new-instance v1, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 169
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    const-string v0, "com.android.systemui.shared.recents.ISystemUiProxy"

    .line 174
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 175
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 185
    sparse-switch p1, :sswitch_data_0

    .line 392
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 181
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    return v1

    .line 386
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->toggleNotificationPanel()V

    .line 387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    goto/16 :goto_0

    .line 380
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->onImeSwitcherPressed()V

    .line 381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    goto/16 :goto_0

    .line 373
    :sswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 374
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 375
    invoke-virtual {p0, v2}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->notifyTaskbarAutohideSuspend(Z)V

    .line 376
    goto/16 :goto_0

    .line 363
    .end local v2    # "_arg0":Z
    :sswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 365
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 366
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 367
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->notifyTaskbarStatus(ZZ)V

    .line 368
    goto/16 :goto_0

    .line 357
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->notifySwipeUpGestureStarted()V

    .line 358
    goto/16 :goto_0

    .line 349
    :sswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 350
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 351
    invoke-virtual {p0, v2}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->setHomeRotationEnabled(Z)V

    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    goto/16 :goto_0

    .line 342
    .end local v2    # "_arg0":Z
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->onBackPressed()V

    .line 343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    goto/16 :goto_0

    .line 336
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->expandNotificationPanel()V

    .line 337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    goto/16 :goto_0

    .line 322
    :sswitch_8
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 324
    .local v2, "_arg0":Landroid/os/Bundle;
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 326
    .local v3, "_arg1":Landroid/graphics/Rect;
    sget-object v4, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Insets;

    .line 328
    .local v4, "_arg2":Landroid/graphics/Insets;
    sget-object v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 329
    .local v5, "_arg3":Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 330
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->handleImageBundleAsScreenshot(Landroid/os/Bundle;Landroid/graphics/Rect;Landroid/graphics/Insets;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    .line 331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    goto/16 :goto_0

    .line 313
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    .end local v4    # "_arg2":Landroid/graphics/Insets;
    .end local v5    # "_arg3":Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    :sswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 314
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 315
    invoke-virtual {p0, v2}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->notifyPrioritizedRotation(I)V

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    goto/16 :goto_0

    .line 306
    .end local v2    # "_arg0":I
    :sswitch_a
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->notifySwipeToHomeFinished()V

    .line 307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    goto/16 :goto_0

    .line 298
    :sswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 299
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 300
    invoke-virtual {p0, v2}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->setSplitScreenMinimized(Z)V

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    goto/16 :goto_0

    .line 283
    .end local v2    # "_arg0":Z
    :sswitch_c
    sget-object v2, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 285
    .local v2, "_arg0":Landroid/graphics/Bitmap;
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 287
    .restart local v3    # "_arg1":Landroid/graphics/Rect;
    sget-object v4, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Insets;

    .line 289
    .restart local v4    # "_arg2":Landroid/graphics/Insets;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 290
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->handleImageAsScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Insets;I)V

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    goto/16 :goto_0

    .line 215
    .end local v2    # "_arg0":Landroid/graphics/Bitmap;
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    .end local v4    # "_arg2":Landroid/graphics/Insets;
    .end local v5    # "_arg3":I
    :sswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 217
    .local v2, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 218
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->setNavBarButtonAlpha(FZ)V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    goto/16 :goto_0

    .line 244
    .end local v2    # "_arg0":F
    .end local v3    # "_arg1":Z
    :sswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 245
    .restart local v2    # "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    invoke-virtual {p0, v2}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->onAssistantGestureCompletion(F)V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    goto/16 :goto_0

    .line 276
    .end local v2    # "_arg0":F
    :sswitch_f
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->stopScreenPinning()V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    goto :goto_0

    .line 270
    :sswitch_10
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->notifyAccessibilityButtonLongClicked()V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    goto :goto_0

    .line 262
    :sswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 263
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    invoke-virtual {p0, v2}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->notifyAccessibilityButtonClicked(I)V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    goto :goto_0

    .line 253
    .end local v2    # "_arg0":I
    :sswitch_12
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 254
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    invoke-virtual {p0, v2}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->startAssistant(Landroid/os/Bundle;)V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    goto :goto_0

    .line 235
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :sswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 236
    .local v2, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, v2}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->onAssistantProgress(F)V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    goto :goto_0

    .line 226
    .end local v2    # "_arg0":F
    :sswitch_14
    sget-object v2, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    .line 227
    .local v2, "_arg0":Landroid/view/MotionEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 228
    invoke-virtual {p0, v2}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->onStatusBarMotionEvent(Landroid/view/MotionEvent;)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    goto :goto_0

    .line 207
    .end local v2    # "_arg0":Landroid/view/MotionEvent;
    :sswitch_15
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->getNonMinimizedSplitScreenSecondaryBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 208
    .local v2, "_result":Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 210
    goto :goto_0

    .line 199
    .end local v2    # "_result":Landroid/graphics/Rect;
    :sswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 200
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v2}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->onOverviewShown(Z)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    goto :goto_0

    .line 190
    .end local v2    # "_arg0":Z
    :sswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 191
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {p0, v2}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->startScreenPinning(I)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    nop

    .line 395
    .end local v2    # "_arg0":I
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_17
        0x7 -> :sswitch_16
        0x8 -> :sswitch_15
        0xa -> :sswitch_14
        0xd -> :sswitch_13
        0xe -> :sswitch_12
        0x10 -> :sswitch_11
        0x11 -> :sswitch_10
        0x12 -> :sswitch_f
        0x13 -> :sswitch_e
        0x14 -> :sswitch_d
        0x16 -> :sswitch_c
        0x17 -> :sswitch_b
        0x18 -> :sswitch_a
        0x1a -> :sswitch_9
        0x1d -> :sswitch_8
        0x1e -> :sswitch_7
        0x2d -> :sswitch_6
        0x2e -> :sswitch_5
        0x2f -> :sswitch_4
        0x30 -> :sswitch_3
        0x31 -> :sswitch_2
        0x32 -> :sswitch_1
        0x33 -> :sswitch_0
    .end sparse-switch
.end method
