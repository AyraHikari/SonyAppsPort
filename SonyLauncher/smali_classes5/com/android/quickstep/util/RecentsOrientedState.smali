.class public Lcom/android/quickstep/util/RecentsOrientedState;
.super Ljava/lang/Object;
.source "RecentsOrientedState.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/util/RecentsOrientedState$SurfaceRotation;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FLAG_HOME_ROTATION_ALLOWED_IN_PREFS:I = 0x4

.field private static final FLAG_HOME_ROTATION_FORCE_ENABLED_FOR_TESTING:I = 0x80

.field private static final FLAG_IGNORE_ALLOW_HOME_ROTATION_PREF:I = 0x200

.field private static final FLAG_MULTIPLE_ORIENTATION_SUPPORTED_BY_ACTIVITY:I = 0x1

.field private static final FLAG_MULTIPLE_ORIENTATION_SUPPORTED_BY_DENSITY:I = 0x2

.field private static final FLAG_MULTIWINDOW_ROTATION_ALLOWED:I = 0x10

.field private static final FLAG_ROTATION_WATCHER_ENABLED:I = 0x40

.field private static final FLAG_ROTATION_WATCHER_SUPPORTED:I = 0x20

.field private static final FLAG_SWIPE_UP_NOT_RUNNING:I = 0x100

.field private static final FLAG_SYSTEM_ROTATION_ALLOWED:I = 0x8

.field private static final MASK_MULTIPLE_ORIENTATION_SUPPORTED_BY_DEVICE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "RecentsOrientedState"

.field private static final VALUE_ROTATION_WATCHER_ENABLED:I = 0x16b


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDisplayRotation:I

.field private mFlags:I

.field private mListenersInitialized:Z

.field private mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

.field private final mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPreviousRotation:I

.field private mRecentsActivityRotation:I

.field private mRecentsRotation:I

.field private final mRotationChangeListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

.field private final mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

.field private final mSharedPrefs:Landroid/content/SharedPreferences;

.field private mStateId:I

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field private mTouchRotation:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreviousRotation(Lcom/android/quickstep/util/RecentsOrientedState;)I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mPreviousRotation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmPreviousRotation(Lcom/android/quickstep/util/RecentsOrientedState;I)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mPreviousRotation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;Ljava/util/function/IntConsumer;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sizeStrategy"    # Lcom/android/quickstep/BaseActivityInterface;
    .param p3, "rotationChangeListener"    # Ljava/util/function/IntConsumer;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-object v0, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iput-object v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mTouchRotation:I

    .line 82
    iput v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mDisplayRotation:I

    .line 83
    iput v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mRecentsActivityRotation:I

    .line 84
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mRecentsRotation:I

    .line 123
    new-instance v1, Lcom/android/quickstep/util/RecentsOrientedState$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/util/RecentsOrientedState$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/util/RecentsOrientedState;)V

    iput-object v1, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mRotationChangeListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    .line 126
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 129
    iput v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mPreviousRotation:I

    .line 130
    iput-boolean v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mListenersInitialized:Z

    .line 133
    iput v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mStateId:I

    .line 142
    iput-object p1, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mContext:Landroid/content/Context;

    .line 143
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 144
    new-instance v1, Lcom/android/quickstep/util/RecentsOrientedState$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/quickstep/util/RecentsOrientedState$1;-><init>(Lcom/android/quickstep/util/RecentsOrientedState;Landroid/content/Context;Ljava/util/function/IntConsumer;)V

    iput-object v1, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 155
    iget-boolean v1, p2, Lcom/android/quickstep/BaseActivityInterface;->rotationSupportedByActivity:Z

    if-eqz v1, :cond_0

    .line 156
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    iput v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mFlags:I

    .line 158
    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mFlags:I

    .line 159
    sget-object v0, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/SettingsCache;

    iput-object v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    .line 160
    invoke-direct {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->initFlags()V

    .line 161
    return-void
.end method

.method private destroyMultipleOrientationListeners()V
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 315
    iget-object v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    sget-object v1, Lcom/android/launcher3/util/SettingsCache;->ROTATION_SETTING_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mRotationChangeListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    .line 316
    return-void
.end method

.method public static getRotationForUserDegreesRotated(FI)I
    .locals 7
    .param p0, "degrees"    # F
    .param p1, "currentRotation"    # I

    .line 474
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    .line 475
    return p1

    .line 478
    :cond_0
    const/16 v0, 0x46

    .line 479
    .local v0, "threshold":I
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/high16 v6, 0x43340000    # 180.0f

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 489
    :pswitch_0
    rsub-int/lit8 v5, v0, 0x5a

    int-to-float v5, v5

    cmpg-float v5, p0, v5

    if-ltz v5, :cond_3

    add-int/lit16 v5, v0, 0x10e

    int-to-float v5, v5

    cmpl-float v5, p0, v5

    if-lez v5, :cond_1

    cmpg-float v5, p0, v3

    if-gez v5, :cond_1

    goto :goto_0

    .line 493
    :cond_1
    add-int/lit8 v2, v0, 0x5a

    int-to-float v2, v2

    cmpl-float v2, p0, v2

    if-lez v2, :cond_2

    cmpg-float v2, p0, v6

    if-gez v2, :cond_2

    .line 494
    return v1

    .line 497
    :cond_2
    add-int/lit16 v1, v0, 0xb4

    int-to-float v1, v1

    cmpl-float v1, p0, v1

    if-lez v1, :cond_a

    cmpg-float v1, p0, v3

    if-gez v1, :cond_a

    .line 498
    return v4

    .line 491
    :cond_3
    :goto_0
    return v2

    .line 502
    :pswitch_1
    rsub-int v1, v0, 0xb4

    int-to-float v1, v1

    cmpg-float v1, p0, v1

    if-gez v1, :cond_4

    .line 503
    return v5

    .line 505
    :cond_4
    add-int/lit16 v1, v0, 0xb4

    int-to-float v1, v1

    cmpl-float v1, p0, v1

    if-lez v1, :cond_a

    .line 506
    return v4

    .line 510
    :pswitch_2
    rsub-int v4, v0, 0x10e

    int-to-float v4, v4

    cmpg-float v4, p0, v4

    if-gez v4, :cond_5

    const/high16 v4, 0x42b40000    # 90.0f

    cmpl-float v4, p0, v4

    if-lez v4, :cond_5

    .line 511
    return v1

    .line 513
    :cond_5
    add-int/lit16 v1, v0, 0x10e

    int-to-float v1, v1

    cmpl-float v1, p0, v1

    if-lez v1, :cond_6

    cmpg-float v1, p0, v3

    if-ltz v1, :cond_7

    :cond_6
    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_8

    int-to-float v1, v0

    cmpg-float v1, p0, v1

    if-gez v1, :cond_8

    .line 515
    :cond_7
    return v2

    .line 518
    :cond_8
    int-to-float v1, v0

    cmpl-float v1, p0, v1

    if-lez v1, :cond_a

    cmpg-float v1, p0, v6

    if-gez v1, :cond_a

    .line 519
    return v5

    .line 481
    :pswitch_3
    cmpl-float v1, p0, v6

    if-lez v1, :cond_9

    rsub-int v1, v0, 0x168

    int-to-float v1, v1

    cmpg-float v1, p0, v1

    if-gez v1, :cond_9

    .line 482
    return v4

    .line 484
    :cond_9
    cmpg-float v1, p0, v6

    if-gez v1, :cond_a

    int-to-float v1, v0

    cmpl-float v1, p0, v1

    if-lez v1, :cond_a

    .line 485
    return v5

    .line 524
    :cond_a
    :goto_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private inferRecentsActivityRotation(I)I
    .locals 1
    .param p1, "displayRotation"    # I

    .line 249
    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->isRecentsActivityRotationAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    iget v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mRecentsRotation:I

    if-gez v0, :cond_0

    move v0, p1

    :cond_0
    return v0

    .line 252
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private initFlags()V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    const/16 v1, 0x20

    invoke-direct {p0, v1, v0}, Lcom/android/quickstep/util/RecentsOrientedState;->setFlag(IZ)Z

    .line 303
    invoke-direct {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->updateAutoRotateSetting()V

    .line 304
    invoke-direct {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->updateHomeRotationSetting()V

    .line 305
    return-void
.end method

.method private initMultipleOrientationListeners()V
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 309
    iget-object v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    sget-object v1, Lcom/android/launcher3/util/SettingsCache;->ROTATION_SETTING_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mRotationChangeListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    .line 310
    invoke-direct {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->updateAutoRotateSetting()V

    .line 311
    return-void
.end method

.method private static nameAndAddress(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static postDisplayRotation(IFFLandroid/graphics/Matrix;)V
    .locals 2
    .param p0, "displayRotation"    # I
    .param p1, "screenWidth"    # F
    .param p2, "screenHeight"    # F
    .param p3, "out"    # Landroid/graphics/Matrix;

    .line 536
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 548
    :pswitch_0
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 549
    invoke-virtual {p3, p2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 544
    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 545
    invoke-virtual {p3, p2, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 546
    goto :goto_0

    .line 540
    :pswitch_2
    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 541
    invoke-virtual {p3, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 542
    goto :goto_0

    .line 538
    :pswitch_3
    return-void

    .line 552
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static preDisplayRotation(IFFLandroid/graphics/Matrix;)V
    .locals 2
    .param p0, "displayRotation"    # I
    .param p1, "screenWidth"    # F
    .param p2, "screenHeight"    # F
    .param p3, "out"    # Landroid/graphics/Matrix;

    .line 559
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 571
    :pswitch_0
    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 572
    invoke-virtual {p3, v0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 567
    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 568
    invoke-virtual {p3, p2, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 569
    goto :goto_0

    .line 563
    :pswitch_2
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 564
    invoke-virtual {p3, p1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 565
    goto :goto_0

    .line 561
    :pswitch_3
    return-void

    .line 575
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setFlag(IZ)Z
    .locals 6
    .param p1, "mask"    # I
    .param p2, "enabled"    # Z

    .line 257
    sget-boolean v0, Lcom/android/launcher3/testing/TestProtocol;->sDisableSensorRotation:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x16b

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mFlags:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->isRecentsActivityRotationAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 260
    .local v0, "wasRotationEnabled":Z
    :goto_0
    if-eqz p2, :cond_1

    .line 261
    iget v4, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mFlags:I

    or-int/2addr v4, p1

    iput v4, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mFlags:I

    goto :goto_1

    .line 263
    :cond_1
    iget v4, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mFlags:I

    not-int v5, p1

    and-int/2addr v4, v5

    iput v4, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mFlags:I

    .line 266
    :goto_1
    sget-boolean v4, Lcom/android/launcher3/testing/TestProtocol;->sDisableSensorRotation:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mFlags:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_2

    .line 268
    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->isRecentsActivityRotationAllowed()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 269
    .local v1, "isRotationEnabled":Z
    :goto_2
    if-eq v0, v1, :cond_3

    .line 270
    sget-object v2, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/android/quickstep/util/RecentsOrientedState$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1}, Lcom/android/quickstep/util/RecentsOrientedState$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/util/RecentsOrientedState;Z)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 278
    :cond_3
    invoke-direct {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->updateHandler()Z

    move-result v2

    return v2
.end method

.method private updateAutoRotateSetting()V
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    sget-object v1, Lcom/android/launcher3/util/SettingsCache;->ROTATION_SETTING_URI:Landroid/net/Uri;

    .line 290
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;I)Z

    move-result v0

    .line 289
    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Lcom/android/quickstep/util/RecentsOrientedState;->setFlag(IZ)Z

    .line 291
    return-void
.end method

.method private updateHandler()Z
    .locals 5

    .line 223
    iget v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mDisplayRotation:I

    invoke-direct {p0, v0}, Lcom/android/quickstep/util/RecentsOrientedState;->inferRecentsActivityRotation(I)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mRecentsActivityRotation:I

    .line 224
    iget v1, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mTouchRotation:I

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->isRecentsActivityRotationAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    iget v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mTouchRotation:I

    if-ne v0, v2, :cond_1

    .line 228
    sget-object v0, Lcom/android/launcher3/touch/PagedOrientationHandler;->LANDSCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iput-object v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    goto :goto_1

    .line 229
    :cond_1
    if-ne v0, v3, :cond_2

    .line 230
    sget-object v0, Lcom/android/launcher3/touch/PagedOrientationHandler;->SEASCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iput-object v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    goto :goto_1

    .line 232
    :cond_2
    sget-object v0, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iput-object v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    goto :goto_1

    .line 226
    :cond_3
    :goto_0
    sget-object v0, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iput-object v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 238
    :goto_1
    iget v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mStateId:I

    .line 240
    .local v0, "oldStateId":I
    iget v1, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mFlags:I

    shl-int/lit8 v1, v1, 0x2

    iget v4, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mDisplayRotation:I

    or-int/2addr v1, v4

    shl-int/lit8 v1, v1, 0x2

    iget v4, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mTouchRotation:I

    or-int/2addr v1, v4

    shl-int/2addr v1, v3

    .line 243
    iget v3, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mRecentsRotation:I

    if-gez v3, :cond_4

    const/4 v3, 0x7

    :cond_4
    or-int/2addr v1, v3

    iput v1, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mStateId:I

    .line 244
    if-eq v1, v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method private updateHomeRotationSetting()V
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_allowRotation"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 295
    .local v0, "homeRotationEnabled":Z
    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/android/quickstep/util/RecentsOrientedState;->setFlag(IZ)Z

    .line 296
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/SystemUiProxy;->setHomeRotationEnabled(Z)V

    .line 297
    return-void
.end method


# virtual methods
.method public destroyListeners()V
    .locals 2

    .line 334
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mListenersInitialized:Z

    .line 335
    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->isMultipleOrientationSupportedByDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    invoke-direct {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->destroyMultipleOrientationListeners()V

    .line 338
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/quickstep/util/RecentsOrientedState;->setRotationWatcherEnabled(Z)V

    .line 339
    return-void
.end method

.method public flipVertical(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 451
    iget-object v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 452
    iget-object v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 453
    return-void
.end method

.method public forceAllowRotationForTesting(Z)V
    .locals 1
    .param p1, "forceAllow"    # Z

    .line 342
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Lcom/android/quickstep/util/RecentsOrientedState;->setFlag(IZ)Z

    .line 343
    return-void
.end method

.method public getDisplayRotation()I
    .locals 1

    .line 347
    sget-boolean v0, Lcom/android/quickstep/TaskAnimationManager;->SHELL_TRANSITIONS_ROTATION:Z

    if-eqz v0, :cond_0

    .line 350
    iget v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mRecentsActivityRotation:I

    return v0

    .line 352
    :cond_0
    iget v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mDisplayRotation:I

    return v0
.end method

.method public getFullScreenScaleAndPivot(Landroid/graphics/Rect;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/PointF;)F
    .locals 7
    .param p1, "taskView"    # Landroid/graphics/Rect;
    .param p2, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p3, "outPivot"    # Landroid/graphics/PointF;

    .line 403
    invoke-virtual {p2}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    .line 404
    .local v0, "insets":Landroid/graphics/Rect;
    iget v1, p2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v1, v1

    .line 405
    .local v1, "fullWidth":F
    iget v2, p2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v2, v2

    .line 406
    .local v2, "fullHeight":F
    invoke-static {p2}, Lcom/android/quickstep/views/TaskView;->clipLeft(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 407
    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    .line 409
    :cond_0
    invoke-static {p2}, Lcom/android/quickstep/views/TaskView;->clipRight(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 410
    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    .line 412
    :cond_1
    invoke-static {p2}, Lcom/android/quickstep/views/TaskView;->clipTop(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 413
    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 415
    :cond_2
    invoke-static {p2}, Lcom/android/quickstep/views/TaskView;->clipBottom(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 416
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 419
    :cond_3
    iget-object v3, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mContext:Landroid/content/Context;

    invoke-static {v3, p2, p3}, Lcom/android/quickstep/BaseActivityInterface;->getTaskDimension(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/PointF;)V

    .line 420
    iget v3, p3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 422
    .local v3, "scale":F
    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-lez v4, :cond_4

    .line 423
    iget v4, p2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    div-float v3, v4, v1

    .line 426
    :cond_4
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v3, v4

    if-nez v5, :cond_5

    .line 427
    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v1, v4

    div-float v4, v2, v4

    invoke-virtual {p3, v5, v4}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 428
    :cond_5
    iget-boolean v5, p2, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v5, :cond_6

    .line 429
    sub-float v5, v3, v4

    div-float/2addr v4, v5

    .line 431
    .local v4, "denominator":F
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float/2addr v5, v2

    mul-float/2addr v5, v4

    .line 432
    .local v5, "y":F
    iget v6, p1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    sub-float/2addr v6, v1

    mul-float/2addr v6, v4

    .line 433
    .local v6, "x":F
    invoke-virtual {p3, v6, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 434
    .end local v4    # "denominator":F
    .end local v5    # "y":F
    .end local v6    # "x":F
    goto :goto_0

    .line 435
    :cond_6
    sub-float v4, v3, v4

    div-float v4, v3, v4

    .line 436
    .local v4, "factor":F
    iget v5, p1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    iget v6, p1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    invoke-virtual {p3, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 438
    .end local v4    # "factor":F
    :goto_0
    return v3
.end method

.method public getLauncherDeviceProfile()Lcom/android/launcher3/DeviceProfile;
    .locals 7

    .line 599
    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    .line 600
    .local v0, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    sget-object v1, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    .line 603
    .local v1, "currentSize":Landroid/graphics/Point;
    iget v2, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mRecentsActivityRotation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 607
    :cond_0
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 608
    .local v2, "width":I
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .local v3, "height":I
    goto :goto_1

    .line 604
    .end local v2    # "width":I
    .end local v3    # "height":I
    :cond_1
    :goto_0
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 605
    .restart local v2    # "width":I
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 610
    .restart local v3    # "height":I
    :goto_1
    int-to-float v4, v2

    int-to-float v5, v3

    iget v6, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mRecentsActivityRotation:I

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/launcher3/InvariantDeviceProfile;->getBestMatch(FFI)Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    return-object v4
.end method

.method public getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    return-object v0
.end method

.method public getRecentsActivityRotation()I
    .locals 1

    .line 362
    iget v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mRecentsActivityRotation:I

    return v0
.end method

.method public getStateId()I
    .locals 1

    .line 369
    iget v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mStateId:I

    return v0
.end method

.method public getTouchRotation()I
    .locals 1

    .line 357
    iget v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mTouchRotation:I

    return v0
.end method

.method public ignoreAllowHomeRotationPreference()V
    .locals 2

    .line 378
    const/16 v0, 0x200

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/util/RecentsOrientedState;->setFlag(IZ)Z

    .line 379
    return-void
.end method

.method public initListeners()V
    .locals 1

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mListenersInitialized:Z

    .line 324
    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->isMultipleOrientationSupportedByDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-direct {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->initMultipleOrientationListeners()V

    .line 327
    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->initFlags()V

    .line 328
    return-void
.end method

.method public isDisplayPhoneNatural()Z
    .locals 2

    .line 528
    iget v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mDisplayRotation:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isMultipleOrientationSupportedByDevice()Z
    .locals 2

    .line 373
    iget v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mFlags:I

    const/4 v1, 0x3

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRecentsActivityRotationAllowed()Z
    .locals 3

    .line 384
    iget v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mFlags:I

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    and-int/lit16 v0, v0, 0x294

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method synthetic lambda$new$0$com-android-quickstep-util-RecentsOrientedState(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .line 124
    invoke-direct {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->updateAutoRotateSetting()V

    return-void
.end method

.method synthetic lambda$setFlag$1$com-android-quickstep-util-RecentsOrientedState(Z)V
    .locals 1
    .param p1, "isRotationEnabled"    # Z

    .line 271
    if-eqz p1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 276
    :goto_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "s"    # Ljava/lang/String;

    .line 283
    const-string v0, "pref_allowRotation"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-direct {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->updateHomeRotationSetting()V

    .line 286
    :cond_0
    return-void
.end method

.method public setDeviceProfile(Lcom/android/launcher3/DeviceProfile;)V
    .locals 3
    .param p1, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 167
    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->isMultipleOrientationSupportedByDevice()Z

    move-result v0

    .line 168
    .local v0, "oldMultipleOrientationsSupported":Z
    iget-boolean v1, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, v2, v1}, Lcom/android/quickstep/util/RecentsOrientedState;->setFlag(IZ)Z

    .line 169
    iget-boolean v1, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mListenersInitialized:Z

    if-eqz v1, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->isMultipleOrientationSupportedByDevice()Z

    move-result v1

    .line 173
    .local v1, "newMultipleOrientationsSupported":Z
    if-eq v1, v0, :cond_1

    .line 174
    if-eqz v1, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->initMultipleOrientationListeners()V

    goto :goto_0

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->destroyMultipleOrientationListeners()V

    .line 181
    .end local v1    # "newMultipleOrientationsSupported":Z
    :cond_1
    :goto_0
    return-void
.end method

.method public setGestureActive(Z)Z
    .locals 2
    .param p1, "isGestureActive"    # Z

    .line 203
    xor-int/lit8 v0, p1, 0x1

    const/16 v1, 0x100

    invoke-direct {p0, v1, v0}, Lcom/android/quickstep/util/RecentsOrientedState;->setFlag(IZ)Z

    move-result v0

    return v0
.end method

.method public setMultiWindowMode(Z)V
    .locals 1
    .param p1, "isMultiWindow"    # Z

    .line 196
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/android/quickstep/util/RecentsOrientedState;->setFlag(IZ)Z

    .line 197
    return-void
.end method

.method public setRecentsRotation(I)Z
    .locals 1
    .param p1, "recentsRotation"    # I

    .line 188
    iput p1, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mRecentsRotation:I

    .line 189
    invoke-direct {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->updateHandler()Z

    move-result v0

    return v0
.end method

.method public setRotationWatcherEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .line 396
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Lcom/android/quickstep/util/RecentsOrientedState;->setFlag(IZ)Z

    .line 397
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 580
    iget v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 581
    .local v0, "systemRotationOn":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 582
    invoke-static {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->nameAndAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mOrientationHandler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 583
    invoke-static {v2}, Lcom/android/quickstep/util/RecentsOrientedState;->nameAndAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDisplayRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mDisplayRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTouchRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mTouchRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRecentsActivityRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mRecentsActivityRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRecentsRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mRecentsRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isRecentsActivityRotationAllowed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 588
    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->isRecentsActivityRotationAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSystemRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mStateId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mStateId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFlags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 581
    return-object v1
.end method

.method public transformEvent(FLandroid/view/MotionEvent;Z)V
    .locals 2
    .param p1, "degrees"    # F
    .param p2, "ev"    # Landroid/view/MotionEvent;
    .param p3, "inverse"    # Z

    .line 460
    iget-object v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mTmpMatrix:Landroid/graphics/Matrix;

    if-eqz p3, :cond_0

    neg-float v1, p1

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 461
    iget-object v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 470
    return-void
.end method

.method public update(II)Z
    .locals 1
    .param p1, "touchRotation"    # I
    .param p2, "displayRotation"    # I

    .line 216
    iput p2, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mDisplayRotation:I

    .line 217
    iput p1, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mTouchRotation:I

    .line 218
    iput p1, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mPreviousRotation:I

    .line 219
    invoke-direct {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->updateHandler()Z

    move-result v0

    return v0
.end method
