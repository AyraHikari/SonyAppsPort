.class public Lcom/android/quickstep/RotationTouchHelper;
.super Ljava/lang/Object;
.source "RotationTouchHelper.java"

# interfaces
.implements Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/quickstep/RotationTouchHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentAppRotation:I

.field private mDisplayController:Lcom/android/launcher3/util/DisplayController;

.field private mDisplayId:I

.field private mDisplayRotation:I

.field private mExitOverviewRunnable:Ljava/lang/Runnable;

.field private mFrozenTaskListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private mInOverview:Z

.field private mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

.field private mNeedsInit:Z

.field private final mOnDestroyActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mOnDestroyFrozenTaskRunnable:Ljava/lang/Runnable;

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mOrientationTouchTransformer:Lcom/android/quickstep/OrientationTouchTransformer;

.field private mPrioritizeDeviceRotation:Z

.field private mSensorRotation:I

.field private mTaskListFrozen:Z


# direct methods
.method public static synthetic $r8$lambda$tPFEMsbousNZYQBdRd6mUXtGUyk(Landroid/content/Context;)Lcom/android/quickstep/RotationTouchHelper;
    .locals 1

    new-instance v0, Lcom/android/quickstep/RotationTouchHelper;

    invoke-direct {v0, p0}, Lcom/android/quickstep/RotationTouchHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentAppRotation(Lcom/android/quickstep/RotationTouchHelper;)I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/RotationTouchHelper;->mCurrentAppRotation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayId(Lcom/android/quickstep/RotationTouchHelper;)I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/RotationTouchHelper;->mDisplayId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmExitOverviewRunnable(Lcom/android/quickstep/RotationTouchHelper;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RotationTouchHelper;->mExitOverviewRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInOverview(Lcom/android/quickstep/RotationTouchHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/RotationTouchHelper;->mInOverview:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorRotation(Lcom/android/quickstep/RotationTouchHelper;)I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/RotationTouchHelper;->mSensorRotation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmInOverview(Lcom/android/quickstep/RotationTouchHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/RotationTouchHelper;->mInOverview:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPrioritizeDeviceRotation(Lcom/android/quickstep/RotationTouchHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/RotationTouchHelper;->mPrioritizeDeviceRotation:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSensorRotation(Lcom/android/quickstep/RotationTouchHelper;I)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/RotationTouchHelper;->mSensorRotation:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTaskListFrozen(Lcom/android/quickstep/RotationTouchHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/RotationTouchHelper;->mTaskListFrozen:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$menableMultipleRegions(Lcom/android/quickstep/RotationTouchHelper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/RotationTouchHelper;->enableMultipleRegions(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtoggleSecondaryNavBarsForRotation(Lcom/android/quickstep/RotationTouchHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/RotationTouchHelper;->toggleSecondaryNavBarsForRotation()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/quickstep/RotationTouchHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/quickstep/RotationTouchHelper$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/quickstep/RotationTouchHelper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mOnDestroyActions:Ljava/util/ArrayList;

    .line 63
    sget-object v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    iput-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    .line 65
    new-instance v0, Lcom/android/quickstep/RotationTouchHelper$1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/RotationTouchHelper$1;-><init>(Lcom/android/quickstep/RotationTouchHelper;)V

    iput-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mFrozenTaskListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 92
    new-instance v0, Lcom/android/quickstep/RotationTouchHelper$2;

    invoke-direct {v0, p0}, Lcom/android/quickstep/RotationTouchHelper$2;-><init>(Lcom/android/quickstep/RotationTouchHelper;)V

    iput-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mExitOverviewRunnable:Ljava/lang/Runnable;

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mSensorRotation:I

    .line 112
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/quickstep/RotationTouchHelper;->mCurrentAppRotation:I

    .line 118
    iput-boolean v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mPrioritizeDeviceRotation:Z

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mNeedsInit:Z

    .line 137
    iput-object p1, p0, Lcom/android/quickstep/RotationTouchHelper;->mContext:Landroid/content/Context;

    .line 138
    nop

    .line 139
    invoke-virtual {p0}, Lcom/android/quickstep/RotationTouchHelper;->init()V

    .line 141
    return-void
.end method

.method private destroyOrientationSwipeHandlerCallback()V
    .locals 2

    .line 190
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/RotationTouchHelper;->mFrozenTaskListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 191
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mOnDestroyActions:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/quickstep/RotationTouchHelper;->mOnDestroyFrozenTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method private enableMultipleRegions(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 319
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationTouchTransformer:Lcom/android/quickstep/OrientationTouchTransformer;

    iget-object v1, p0, Lcom/android/quickstep/RotationTouchHelper;->mDisplayController:Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/quickstep/OrientationTouchTransformer;->enableMultipleRegions(ZLcom/android/launcher3/util/DisplayController$Info;)V

    .line 320
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationTouchTransformer:Lcom/android/quickstep/OrientationTouchTransformer;

    invoke-virtual {v0}, Lcom/android/quickstep/OrientationTouchTransformer;->getQuickStepStartingRotation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/RotationTouchHelper;->notifySysuiOfCurrentRotation(I)V

    .line 321
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mInOverview:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/launcher3/testing/TestProtocol;->sDisableSensorRotation:Z

    if-nez v0, :cond_0

    .line 323
    iget v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mCurrentAppRotation:I

    iput v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mSensorRotation:I

    .line 324
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 328
    :goto_0
    return-void
.end method

.method private notifySysuiOfCurrentRotation(I)V
    .locals 2
    .param p1, "rotation"    # I

    .line 373
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/RotationTouchHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/RotationTouchHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/quickstep/RotationTouchHelper;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 375
    return-void
.end method

.method private onDisplayInfoChangedInternal(Lcom/android/launcher3/util/DisplayController$Info;IZ)V
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/util/DisplayController$Info;
    .param p2, "flags"    # I
    .param p3, "forceRegister"    # Z

    .line 253
    and-int/lit8 v0, p2, 0x1b

    if-eqz v0, :cond_1

    .line 255
    iget v0, p1, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    iput v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mDisplayRotation:I

    .line 257
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    iget-boolean v0, v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->hasGestures:Z

    if-eqz v0, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/android/quickstep/RotationTouchHelper;->updateGestureTouchRegions()V

    .line 259
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationTouchTransformer:Lcom/android/quickstep/OrientationTouchTransformer;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/OrientationTouchTransformer;->createOrAddTouchRegion(Lcom/android/launcher3/util/DisplayController$Info;)V

    .line 260
    iget v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mDisplayRotation:I

    iput v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mCurrentAppRotation:I

    .line 269
    iget-boolean v1, p0, Lcom/android/quickstep/RotationTouchHelper;->mPrioritizeDeviceRotation:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/quickstep/RotationTouchHelper;->mSensorRotation:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mInOverview:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mTaskListFrozen:Z

    if-eqz v0, :cond_1

    .line 274
    invoke-direct {p0}, Lcom/android/quickstep/RotationTouchHelper;->toggleSecondaryNavBarsForRotation()V

    .line 279
    :cond_1
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_5

    .line 280
    iget-object v0, p1, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    .line 281
    .local v0, "newMode":Lcom/android/launcher3/util/DisplayController$NavigationMode;
    iget-object v1, p0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationTouchTransformer:Lcom/android/quickstep/OrientationTouchTransformer;

    iget-object v2, p0, Lcom/android/quickstep/RotationTouchHelper;->mDisplayController:Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v2}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/RotationTouchHelper;->mContext:Landroid/content/Context;

    .line 282
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 281
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/quickstep/OrientationTouchTransformer;->setNavigationMode(Lcom/android/launcher3/util/DisplayController$NavigationMode;Lcom/android/launcher3/util/DisplayController$Info;Landroid/content/res/Resources;)V

    .line 284
    if-nez p3, :cond_3

    iget-object v1, p0, Lcom/android/quickstep/RotationTouchHelper;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    iget-boolean v1, v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->hasGestures:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->hasGestures:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 286
    :cond_2
    iget-object v1, p0, Lcom/android/quickstep/RotationTouchHelper;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    iget-boolean v1, v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->hasGestures:Z

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->hasGestures:Z

    if-nez v1, :cond_4

    .line 287
    invoke-direct {p0}, Lcom/android/quickstep/RotationTouchHelper;->destroyOrientationSwipeHandlerCallback()V

    goto :goto_1

    .line 285
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/quickstep/RotationTouchHelper;->setupOrientationSwipeHandler()V

    .line 290
    :cond_4
    :goto_1
    iput-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    .line 292
    .end local v0    # "newMode":Lcom/android/launcher3/util/DisplayController$NavigationMode;
    :cond_5
    return-void
.end method

.method private runOnDestroy(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 195
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mOnDestroyActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    return-void
.end method

.method private setupOrientationSwipeHandler()V
    .locals 2

    .line 183
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/RotationTouchHelper;->mFrozenTaskListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 184
    new-instance v0, Lcom/android/quickstep/RotationTouchHelper$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/quickstep/RotationTouchHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/quickstep/RotationTouchHelper;)V

    iput-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mOnDestroyFrozenTaskRunnable:Ljava/lang/Runnable;

    .line 186
    invoke-direct {p0, v0}, Lcom/android/quickstep/RotationTouchHelper;->runOnDestroy(Ljava/lang/Runnable;)V

    .line 187
    return-void
.end method

.method private toggleSecondaryNavBarsForRotation()V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationTouchTransformer:Lcom/android/quickstep/OrientationTouchTransformer;

    iget-object v1, p0, Lcom/android/quickstep/RotationTouchHelper;->mDisplayController:Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/OrientationTouchTransformer;->setSingleActiveRegion(Lcom/android/launcher3/util/DisplayController$Info;)V

    .line 383
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationTouchTransformer:Lcom/android/quickstep/OrientationTouchTransformer;

    invoke-virtual {v0}, Lcom/android/quickstep/OrientationTouchTransformer;->getCurrentActiveRotation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/RotationTouchHelper;->notifySysuiOfCurrentRotation(I)V

    .line 384
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mOnDestroyActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 203
    .local v1, "r":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 204
    .end local v1    # "r":Ljava/lang/Runnable;
    goto :goto_0

    .line 205
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mNeedsInit:Z

    .line 206
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 395
    const-string v0, "RotationTouchHelper:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  currentActiveRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/RotationTouchHelper;->getCurrentActiveRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  displayRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/RotationTouchHelper;->getDisplayRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationTouchTransformer:Lcom/android/quickstep/OrientationTouchTransformer;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/OrientationTouchTransformer;->dump(Ljava/io/PrintWriter;)V

    .line 399
    return-void
.end method

.method public getCurrentActiveRotation()I
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    iget-boolean v0, v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->hasGestures:Z

    if-nez v0, :cond_0

    .line 389
    iget v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mDisplayRotation:I

    return v0

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationTouchTransformer:Lcom/android/quickstep/OrientationTouchTransformer;

    invoke-virtual {v0}, Lcom/android/quickstep/OrientationTouchTransformer;->getCurrentActiveRotation()I

    move-result v0

    return v0
.end method

.method public getDisplayRotation()I
    .locals 1

    .line 295
    iget v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mDisplayRotation:I

    return v0
.end method

.method public getOrientationTouchTransformer()Lcom/android/quickstep/OrientationTouchTransformer;
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationTouchTransformer:Lcom/android/quickstep/OrientationTouchTransformer;

    return-object v0
.end method

.method public init()V
    .locals 5

    .line 144
    iget-boolean v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mNeedsInit:Z

    if-nez v0, :cond_0

    .line 145
    return-void

    .line 147
    :cond_0
    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/RotationTouchHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    iput-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mDisplayController:Lcom/android/launcher3/util/DisplayController;

    .line 148
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 149
    .local v0, "resources":Landroid/content/res/Resources;
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/quickstep/RotationTouchHelper;->mDisplayId:I

    .line 151
    new-instance v2, Lcom/android/quickstep/OrientationTouchTransformer;

    iget-object v3, p0, Lcom/android/quickstep/RotationTouchHelper;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    new-instance v4, Lcom/android/quickstep/RotationTouchHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/quickstep/RotationTouchHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/RotationTouchHelper;)V

    invoke-direct {v2, v0, v3, v4}, Lcom/android/quickstep/OrientationTouchTransformer;-><init>(Landroid/content/res/Resources;Lcom/android/launcher3/util/DisplayController$NavigationMode;Lcom/android/quickstep/OrientationTouchTransformer$QuickStepContractInfo;)V

    iput-object v2, p0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationTouchTransformer:Lcom/android/quickstep/OrientationTouchTransformer;

    .line 155
    iget-object v2, p0, Lcom/android/quickstep/RotationTouchHelper;->mDisplayController:Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/util/DisplayController;->addChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    .line 156
    iget-object v2, p0, Lcom/android/quickstep/RotationTouchHelper;->mDisplayController:Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v2}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v2

    .line 157
    .local v2, "info":Lcom/android/launcher3/util/DisplayController$Info;
    const/16 v3, 0x1f

    iget-object v4, v2, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    iget-boolean v4, v4, Lcom/android/launcher3/util/DisplayController$NavigationMode;->hasGestures:Z

    invoke-direct {p0, v2, v3, v4}, Lcom/android/quickstep/RotationTouchHelper;->onDisplayInfoChangedInternal(Lcom/android/launcher3/util/DisplayController$Info;IZ)V

    .line 158
    new-instance v3, Lcom/android/quickstep/RotationTouchHelper$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/quickstep/RotationTouchHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/RotationTouchHelper;)V

    invoke-direct {p0, v3}, Lcom/android/quickstep/RotationTouchHelper;->runOnDestroy(Ljava/lang/Runnable;)V

    .line 160
    new-instance v3, Lcom/android/quickstep/RotationTouchHelper$3;

    iget-object v4, p0, Lcom/android/quickstep/RotationTouchHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/android/quickstep/RotationTouchHelper$3;-><init>(Lcom/android/quickstep/RotationTouchHelper;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 179
    iput-boolean v1, p0, Lcom/android/quickstep/RotationTouchHelper;->mNeedsInit:Z

    .line 180
    return-void
.end method

.method public isInSwipeUpTouchRegion(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 235
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationTouchTransformer:Lcom/android/quickstep/OrientationTouchTransformer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/OrientationTouchTransformer;->touchInValidSwipeRegions(FF)Z

    move-result v0

    return v0
.end method

.method public isInSwipeUpTouchRegion(Landroid/view/MotionEvent;I)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 243
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationTouchTransformer:Lcom/android/quickstep/OrientationTouchTransformer;

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 244
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 243
    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/OrientationTouchTransformer;->touchInValidSwipeRegions(FF)Z

    move-result v0

    return v0
.end method

.method public isTaskListFrozen()Z
    .locals 1

    .line 209
    iget-boolean v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mTaskListFrozen:Z

    return v0
.end method

.method synthetic lambda$init$0$com-android-quickstep-RotationTouchHelper()F
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method synthetic lambda$init$1$com-android-quickstep-RotationTouchHelper()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mDisplayController:Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/DisplayController;->removeChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    return-void
.end method

.method synthetic lambda$notifySysuiOfCurrentRotation$3$com-android-quickstep-RotationTouchHelper(I)V
    .locals 2
    .param p1, "rotation"    # I

    .line 373
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/RotationTouchHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    .line 374
    invoke-virtual {v0, p1}, Lcom/android/quickstep/SystemUiProxy;->notifyPrioritizedRotation(I)V

    .line 373
    return-void
.end method

.method synthetic lambda$setupOrientationSwipeHandler$2$com-android-quickstep-RotationTouchHelper()V
    .locals 2

    .line 184
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/RotationTouchHelper;->mFrozenTaskListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 185
    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 184
    return-void
.end method

.method public onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/launcher3/util/DisplayController$Info;
    .param p3, "flags"    # I

    .line 249
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/android/quickstep/RotationTouchHelper;->onDisplayInfoChangedInternal(Lcom/android/launcher3/util/DisplayController$Info;IZ)V

    .line 250
    return-void
.end method

.method onEndTargetCalculated(Lcom/android/quickstep/GestureState$GestureEndTarget;Lcom/android/quickstep/BaseActivityInterface;)V
    .locals 4
    .param p1, "endTarget"    # Lcom/android/quickstep/GestureState$GestureEndTarget;
    .param p2, "activityInterface"    # Lcom/android/quickstep/BaseActivityInterface;

    .line 341
    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 342
    iput-boolean v1, p0, Lcom/android/quickstep/RotationTouchHelper;->mInOverview:Z

    .line 343
    iget-boolean v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mTaskListFrozen:Z

    if-nez v0, :cond_0

    .line 345
    invoke-direct {p0, v1}, Lcom/android/quickstep/RotationTouchHelper;->enableMultipleRegions(Z)V

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mExitOverviewRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, p0, v0}, Lcom/android/quickstep/BaseActivityInterface;->onExitOverview(Lcom/android/quickstep/RotationTouchHelper;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 348
    :cond_1
    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    .line 349
    invoke-direct {p0, v2}, Lcom/android/quickstep/RotationTouchHelper;->enableMultipleRegions(Z)V

    goto :goto_1

    .line 350
    :cond_2
    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne p1, v0, :cond_4

    .line 351
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationTouchTransformer:Lcom/android/quickstep/OrientationTouchTransformer;

    invoke-virtual {v0}, Lcom/android/quickstep/OrientationTouchTransformer;->getQuickStepStartingRotation()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    .line 353
    invoke-direct {p0, v1}, Lcom/android/quickstep/RotationTouchHelper;->enableMultipleRegions(Z)V

    goto :goto_0

    .line 355
    :cond_3
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationTouchTransformer:Lcom/android/quickstep/OrientationTouchTransformer;

    .line 356
    invoke-virtual {v0}, Lcom/android/quickstep/OrientationTouchTransformer;->getCurrentActiveRotation()I

    move-result v0

    .line 355
    invoke-direct {p0, v0}, Lcom/android/quickstep/RotationTouchHelper;->notifySysuiOfCurrentRotation(I)V

    .line 362
    :goto_0
    iput-boolean v2, p0, Lcom/android/quickstep/RotationTouchHelper;->mPrioritizeDeviceRotation:Z

    goto :goto_1

    .line 363
    :cond_4
    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne p1, v0, :cond_6

    .line 364
    iget-boolean v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mTaskListFrozen:Z

    if-nez v0, :cond_5

    .line 366
    return-void

    .line 368
    :cond_5
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationTouchTransformer:Lcom/android/quickstep/OrientationTouchTransformer;

    invoke-virtual {v0}, Lcom/android/quickstep/OrientationTouchTransformer;->getCurrentActiveRotation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/RotationTouchHelper;->notifySysuiOfCurrentRotation(I)V

    .line 370
    :cond_6
    :goto_1
    return-void
.end method

.method public onStartGesture()V
    .locals 1

    .line 331
    iget-boolean v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mTaskListFrozen:Z

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationTouchTransformer:Lcom/android/quickstep/OrientationTouchTransformer;

    invoke-virtual {v0}, Lcom/android/quickstep/OrientationTouchTransformer;->getCurrentActiveRotation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/RotationTouchHelper;->notifySysuiOfCurrentRotation(I)V

    .line 337
    :cond_0
    return-void
.end method

.method setGesturalHeight(I)V
    .locals 3
    .param p1, "newGesturalHeight"    # I

    .line 302
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationTouchTransformer:Lcom/android/quickstep/OrientationTouchTransformer;

    iget-object v1, p0, Lcom/android/quickstep/RotationTouchHelper;->mDisplayController:Lcom/android/launcher3/util/DisplayController;

    .line 303
    invoke-virtual {v1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/RotationTouchHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 302
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/quickstep/OrientationTouchTransformer;->setGesturalHeight(ILcom/android/launcher3/util/DisplayController$Info;Landroid/content/res/Resources;)V

    .line 304
    return-void
.end method

.method setOrientationTransformIfNeeded(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 312
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 313
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationTouchTransformer:Lcom/android/quickstep/OrientationTouchTransformer;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/OrientationTouchTransformer;->transform(Landroid/view/MotionEvent;)V

    .line 316
    return-void
.end method

.method public touchInAssistantRegion(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 213
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationTouchTransformer:Lcom/android/quickstep/OrientationTouchTransformer;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/OrientationTouchTransformer;->touchInAssistantRegion(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public touchInOneHandedModeRegion(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 217
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationTouchTransformer:Lcom/android/quickstep/OrientationTouchTransformer;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/OrientationTouchTransformer;->touchInOneHandedModeRegion(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public updateGestureTouchRegions()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    iget-boolean v0, v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->hasGestures:Z

    if-nez v0, :cond_0

    .line 225
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationTouchTransformer:Lcom/android/quickstep/OrientationTouchTransformer;

    iget-object v1, p0, Lcom/android/quickstep/RotationTouchHelper;->mDisplayController:Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/OrientationTouchTransformer;->createOrAddTouchRegion(Lcom/android/launcher3/util/DisplayController$Info;)V

    .line 229
    return-void
.end method
