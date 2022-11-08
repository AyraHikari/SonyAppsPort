.class public Lcom/android/quickstep/TouchInteractionService;
.super Landroid/app/Service;
.source "TouchInteractionService.java"

# interfaces
.implements Lcom/android/systemui/shared/tracing/ProtoTraceable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/TouchInteractionService$TISBinder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Service;",
        "Lcom/android/systemui/shared/tracing/ProtoTraceable<",
        "Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;",
        ">;"
    }
.end annotation


# static fields
.field private static final HAS_ENABLED_QUICKSTEP_ONCE:Ljava/lang/String; = "launcher.has_enabled_quickstep_once"

.field private static final KEY_BACK_NOTIFICATION_COUNT:Ljava/lang/String; = "backNotificationCount"

.field private static final MAX_BACK_NOTIFICATION_COUNT:I = 0x3

.field private static final NOTIFY_ACTION_BACK:Ljava/lang/String; = "com.android.quickstep.action.BACK_GESTURE"

.field private static final SYSTEM_ACTION_ID_ALL_APPS:I = 0xe

.field private static final TAG:Ljava/lang/String; = "TouchInteractionService"

.field private static sConnected:Z

.field private static sIsInitialized:Z


# instance fields
.field private mAM:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

.field private mBackGestureNotificationCounter:I

.field private mConsumer:Lcom/android/quickstep/InputConsumer;

.field private mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

.field private final mFallbackSwipeHandlerFactory:Lcom/android/quickstep/AbsSwipeUpHandler$Factory;

.field private mGestureState:Lcom/android/quickstep/GestureState;

.field private mInputConsumer:Lcom/android/systemui/shared/system/InputConsumerController;

.field private mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

.field private mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

.field private final mLauncherSwipeHandlerFactory:Lcom/android/quickstep/AbsSwipeUpHandler$Factory;

.field private mMainChoreographer:Landroid/view/Choreographer;

.field private mOverviewCommandHelper:Lcom/android/quickstep/OverviewCommandHelper;

.field private mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

.field private mResetGestureInputConsumer:Lcom/android/quickstep/inputconsumers/ResetGestureInputConsumer;

.field private mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

.field private mSwipeUpProxyProvider:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/android/quickstep/GestureState;",
            "Lcom/android/quickstep/AnimatedFloat;",
            ">;"
        }
    .end annotation
.end field

.field private final mTISBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

.field private mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

.field private mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

.field private mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;


# direct methods
.method public static synthetic $r8$lambda$6SV6jUVhcWpcJBPhyJT8MfA9I4s(Lcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/TouchInteractionService;->onNavigationModeChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$QnySfMPM3HQvC_OREg1W70p37mY(Lcom/android/quickstep/TouchInteractionService;Landroid/view/InputEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService;->onInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TwIcrpd6Tu9jVYanBMLopiX1dc0(Lcom/android/quickstep/TouchInteractionService;Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/TouchInteractionService;->createFallbackSwipeHandler(Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nIalosRb7rTJlm_Cfw9B_R5rQ8E(Lcom/android/quickstep/TouchInteractionService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService;->onOverviewTargetChange(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$qEYihW-6vlnBKqYCx47rCxOt1AA(Lcom/android/quickstep/TouchInteractionService;Lcom/android/quickstep/InputConsumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService;->onConsumerInactive(Lcom/android/quickstep/InputConsumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wbHAvvAUyJ491efmIeRiWUak21M(Lcom/android/quickstep/TouchInteractionService;Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/TouchInteractionService;->createLauncherSwipeHandler(Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceState(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/RecentsAnimationDeviceState;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOverviewCommandHelper(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/OverviewCommandHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewCommandHelper:Lcom/android/quickstep/OverviewCommandHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTaskbarManager(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/launcher3/taskbar/TaskbarManager;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSwipeUpProxyProvider(Lcom/android/quickstep/TouchInteractionService;Ljava/util/function/Function;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/TouchInteractionService;->mSwipeUpProxyProvider:Ljava/util/function/Function;

    return-void
.end method

.method static bridge synthetic -$$Nest$minitInputMonitor(Lcom/android/quickstep/TouchInteractionService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService;->initInputMonitor(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monAssistantVisibilityChanged(Lcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/TouchInteractionService;->onAssistantVisibilityChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSystemUiFlagsChanged(Lcom/android/quickstep/TouchInteractionService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService;->onSystemUiFlagsChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpreloadOverview(Lcom/android/quickstep/TouchInteractionService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService;->preloadOverview(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpreloadOverview(Lcom/android/quickstep/TouchInteractionService;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/TouchInteractionService;->preloadOverview(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputsIsInitialized(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/quickstep/TouchInteractionService;->sIsInitialized:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 346
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/quickstep/TouchInteractionService;->sConnected:Z

    .line 347
    sput-boolean v0, Lcom/android/quickstep/TouchInteractionService;->sIsInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 125
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/TouchInteractionService;->mBackGestureNotificationCounter:I

    .line 143
    new-instance v0, Lcom/android/quickstep/TouchInteractionService$TISBinder;

    invoke-direct {v0, p0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;-><init>(Lcom/android/quickstep/TouchInteractionService;)V

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mTISBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    .line 358
    new-instance v0, Lcom/android/quickstep/TouchInteractionService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/TouchInteractionService$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/TouchInteractionService;)V

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mLauncherSwipeHandlerFactory:Lcom/android/quickstep/AbsSwipeUpHandler$Factory;

    .line 360
    new-instance v0, Lcom/android/quickstep/TouchInteractionService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/quickstep/TouchInteractionService$$ExternalSyntheticLambda2;-><init>(Lcom/android/quickstep/TouchInteractionService;)V

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mFallbackSwipeHandlerFactory:Lcom/android/quickstep/AbsSwipeUpHandler$Factory;

    .line 370
    sget-object v0, Lcom/android/quickstep/InputConsumer;->NO_OP:Lcom/android/quickstep/InputConsumer;

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    .line 371
    sget-object v0, Lcom/android/quickstep/InputConsumer;->NO_OP:Lcom/android/quickstep/InputConsumer;

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    .line 374
    sget-object v0, Lcom/android/quickstep/GestureState;->DEFAULT_STATE:Lcom/android/quickstep/GestureState;

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    .line 380
    new-instance v0, Lcom/android/quickstep/TouchInteractionService$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/quickstep/TouchInteractionService$$ExternalSyntheticLambda3;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mSwipeUpProxyProvider:Ljava/util/function/Function;

    return-void
.end method

.method private createDeviceLockedInputConsumer(Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/InputConsumer;
    .locals 7
    .param p1, "gestureState"    # Lcom/android/quickstep/GestureState;

    .line 827
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 828
    new-instance v0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;

    iget-object v3, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    iget-object v6, p0, Lcom/android/quickstep/TouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    return-object v0

    .line 831
    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/TouchInteractionService;->getDefaultInputConsumer()Lcom/android/quickstep/InputConsumer;

    move-result-object v0

    return-object v0
.end method

.method private createFallbackSwipeHandler(Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;
    .locals 10
    .param p1, "gestureState"    # Lcom/android/quickstep/GestureState;
    .param p2, "touchTimeMs"    # J

    .line 1028
    new-instance v9, Lcom/android/quickstep/FallbackSwipeHandler;

    iget-object v2, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    iget-object v3, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    .line 1029
    invoke-virtual {v3}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v7

    iget-object v8, p0, Lcom/android/quickstep/TouchInteractionService;->mInputConsumer:Lcom/android/systemui/shared/system/InputConsumerController;

    move-object v0, v9

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/quickstep/FallbackSwipeHandler;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;JZLcom/android/systemui/shared/system/InputConsumerController;)V

    .line 1028
    return-object v9
.end method

.method private createLauncherSwipeHandler(Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;
    .locals 10
    .param p1, "gestureState"    # Lcom/android/quickstep/GestureState;
    .param p2, "touchTimeMs"    # J

    .line 1021
    new-instance v9, Lcom/android/quickstep/LauncherSwipeHandlerV2;

    iget-object v2, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    iget-object v3, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    .line 1022
    invoke-virtual {v3}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v7

    iget-object v8, p0, Lcom/android/quickstep/TouchInteractionService;->mInputConsumer:Lcom/android/systemui/shared/system/InputConsumerController;

    move-object v0, v9

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/quickstep/LauncherSwipeHandlerV2;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;JZLcom/android/systemui/shared/system/InputConsumerController;)V

    .line 1021
    return-object v9
.end method

.method private createOtherActivityInputConsumer(Lcom/android/quickstep/GestureState;Landroid/view/MotionEvent;)Lcom/android/quickstep/InputConsumer;
    .locals 16
    .param p1, "gestureState"    # Lcom/android/quickstep/GestureState;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 817
    move-object/from16 v11, p0

    move-object/from16 v12, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/TouchInteractionService;->getSwipeUpHandlerFactory()Lcom/android/quickstep/AbsSwipeUpHandler$Factory;

    move-result-object v13

    .line 818
    .local v13, "factory":Lcom/android/quickstep/AbsSwipeUpHandler$Factory;
    iget-object v0, v11, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 819
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    iget-object v1, v11, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0, v1, v12}, Lcom/android/quickstep/BaseActivityInterface;->deferStartingActivity(Lcom/android/quickstep/RecentsAnimationDeviceState;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v5, v0

    .line 820
    .local v5, "shouldDefer":Z
    iget-object v0, v11, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0, v12}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isInExclusionRegion(Landroid/view/MotionEvent;)Z

    move-result v14

    .line 821
    .local v14, "disableHorizontalSwipe":Z
    new-instance v15, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;

    iget-object v2, v11, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    iget-object v3, v11, Lcom/android/quickstep/TouchInteractionService;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    new-instance v6, Lcom/android/quickstep/TouchInteractionService$$ExternalSyntheticLambda0;

    invoke-direct {v6, v11}, Lcom/android/quickstep/TouchInteractionService$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/TouchInteractionService;)V

    iget-object v7, v11, Lcom/android/quickstep/TouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    iget-object v8, v11, Lcom/android/quickstep/TouchInteractionService;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move v9, v14

    move-object v10, v13

    invoke-direct/range {v0 .. v10}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;ZLjava/util/function/Consumer;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;ZLcom/android/quickstep/AbsSwipeUpHandler$Factory;)V

    return-object v15
.end method

.method private disposeEventHandlers(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disposeEventHandlers: Reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TouchInteractionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->dispose()V

    .line 406
    iput-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    if-eqz v0, :cond_1

    .line 409
    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputMonitorCompat;->dispose()V

    .line 410
    iput-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    .line 412
    :cond_1
    return-void
.end method

.method private getDefaultInputConsumer()Lcom/android/quickstep/InputConsumer;
    .locals 1

    .line 883
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mResetGestureInputConsumer:Lcom/android/quickstep/inputconsumers/ResetGestureInputConsumer;

    if-eqz v0, :cond_0

    .line 884
    return-object v0

    .line 888
    :cond_0
    sget-object v0, Lcom/android/quickstep/InputConsumer;->NO_OP:Lcom/android/quickstep/InputConsumer;

    return-object v0
.end method

.method private handleOrientationSetup(Lcom/android/quickstep/InputConsumer;)V
    .locals 0
    .param p1, "baseInputConsumer"    # Lcom/android/quickstep/InputConsumer;

    .line 765
    invoke-interface {p1}, Lcom/android/quickstep/InputConsumer;->notifyOrientationSetup()V

    .line 766
    return-void
.end method

.method private initInputMonitor(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initializing input monitor due to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService;->disposeEventHandlers(Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isButtonNavMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    return-void

    .line 421
    :cond_0
    new-instance v0, Lcom/android/systemui/shared/system/InputMonitorCompat;

    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getDisplayId()I

    move-result v1

    const-string v2, "swipe-up"

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/shared/system/InputMonitorCompat;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    .line 422
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/TouchInteractionService;->mMainChoreographer:Landroid/view/Choreographer;

    new-instance v3, Lcom/android/quickstep/TouchInteractionService$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lcom/android/quickstep/TouchInteractionService$$ExternalSyntheticLambda8;-><init>(Lcom/android/quickstep/TouchInteractionService;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/shared/system/InputMonitorCompat;->getInputReceiver(Landroid/os/Looper;Landroid/view/Choreographer;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;)Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    .line 425
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

    invoke-virtual {v0}, Lcom/android/quickstep/RotationTouchHelper;->updateGestureTouchRegions()V

    .line 426
    return-void
.end method

.method public static isConnected()Z
    .locals 1

    .line 351
    sget-boolean v0, Lcom/android/quickstep/TouchInteractionService;->sConnected:Z

    return v0
.end method

.method public static isInitialized()Z
    .locals 1

    .line 355
    sget-boolean v0, Lcom/android/quickstep/TouchInteractionService;->sIsInitialized:Z

    return v0
.end method

.method static synthetic lambda$new$0(Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/AnimatedFloat;
    .locals 1
    .param p0, "i"    # Lcom/android/quickstep/GestureState;

    .line 380
    const/4 v0, 0x0

    return-object v0
.end method

.method private newBaseConsumer(Lcom/android/quickstep/GestureState;Lcom/android/quickstep/GestureState;Landroid/view/MotionEvent;)Lcom/android/quickstep/InputConsumer;
    .locals 3
    .param p1, "previousGestureState"    # Lcom/android/quickstep/GestureState;
    .param p2, "gestureState"    # Lcom/android/quickstep/GestureState;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .line 770
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isKeyguardShowingOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    invoke-direct {p0, p2}, Lcom/android/quickstep/TouchInteractionService;->createDeviceLockedInputConsumer(Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/InputConsumer;

    move-result-object v0

    return-object v0

    .line 776
    :cond_0
    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->isStarted()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 777
    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 778
    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->isRootChooseActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 779
    .local v0, "forceOverviewInputConsumer":Z
    :goto_0
    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 780
    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->isExcludedAssistant()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 783
    sget-object v2, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/TopTaskTracker;

    .line 784
    invoke-virtual {v2, v1}, Lcom/android/quickstep/TopTaskTracker;->getCachedTopTask(Z)Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v1

    .line 783
    invoke-virtual {p2, v1}, Lcom/android/quickstep/GestureState;->updateRunningTask(Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;)V

    .line 785
    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->isHomeTask()Z

    move-result v0

    .line 788
    :cond_2
    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 789
    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/BaseActivityInterface;->isInLiveTileMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 790
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/quickstep/TouchInteractionService;->createOverviewInputConsumer(Lcom/android/quickstep/GestureState;Lcom/android/quickstep/GestureState;Landroid/view/MotionEvent;Z)Lcom/android/quickstep/InputConsumer;

    move-result-object v1

    return-object v1

    .line 792
    :cond_3
    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v1

    if-nez v1, :cond_4

    .line 793
    invoke-direct {p0}, Lcom/android/quickstep/TouchInteractionService;->getDefaultInputConsumer()Lcom/android/quickstep/InputConsumer;

    move-result-object v1

    return-object v1

    .line 794
    :cond_4
    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->isRunningAnimationToLauncher()Z

    move-result v1

    if-nez v1, :cond_9

    .line 795
    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/BaseActivityInterface;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 798
    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->isRecentsAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    if-eqz v0, :cond_7

    :cond_6
    goto :goto_1

    .line 802
    :cond_7
    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isGestureBlockedTask(Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 803
    invoke-direct {p0}, Lcom/android/quickstep/TouchInteractionService;->getDefaultInputConsumer()Lcom/android/quickstep/InputConsumer;

    move-result-object v1

    return-object v1

    .line 805
    :cond_8
    invoke-direct {p0, p2, p3}, Lcom/android/quickstep/TouchInteractionService;->createOtherActivityInputConsumer(Lcom/android/quickstep/GestureState;Landroid/view/MotionEvent;)Lcom/android/quickstep/InputConsumer;

    move-result-object v1

    return-object v1

    .line 800
    :cond_9
    :goto_1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/quickstep/TouchInteractionService;->createOverviewInputConsumer(Lcom/android/quickstep/GestureState;Lcom/android/quickstep/GestureState;Landroid/view/MotionEvent;Z)Lcom/android/quickstep/InputConsumer;

    move-result-object v1

    return-object v1
.end method

.method private newConsumer(Lcom/android/quickstep/GestureState;Lcom/android/quickstep/GestureState;Landroid/view/MotionEvent;)Lcom/android/quickstep/InputConsumer;
    .locals 8
    .param p1, "previousGestureState"    # Lcom/android/quickstep/GestureState;
    .param p2, "newGestureState"    # Lcom/android/quickstep/GestureState;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .line 688
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mSwipeUpProxyProvider:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/AnimatedFloat;

    .line 689
    .local v0, "progressProxy":Lcom/android/quickstep/AnimatedFloat;
    if-eqz v0, :cond_0

    .line 690
    new-instance v7, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;

    iget-object v3, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    iget-object v5, p0, Lcom/android/quickstep/TouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    move-object v1, v7

    move-object v2, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/quickstep/AnimatedFloat;)V

    return-object v7

    .line 694
    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->canStartSystemGesture()Z

    move-result v1

    .line 696
    .local v1, "canStartSystemGesture":Z
    iget-object v2, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v2

    if-nez v2, :cond_2

    .line 697
    if-eqz v1, :cond_1

    .line 700
    invoke-direct {p0, p2}, Lcom/android/quickstep/TouchInteractionService;->createDeviceLockedInputConsumer(Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/InputConsumer;

    move-result-object v2

    return-object v2

    .line 702
    :cond_1
    invoke-direct {p0}, Lcom/android/quickstep/TouchInteractionService;->getDefaultInputConsumer()Lcom/android/quickstep/InputConsumer;

    move-result-object v2

    return-object v2

    .line 709
    :cond_2
    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->isRecentsAnimationRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 711
    :cond_3
    invoke-direct {p0}, Lcom/android/quickstep/TouchInteractionService;->getDefaultInputConsumer()Lcom/android/quickstep/InputConsumer;

    move-result-object v2

    goto :goto_1

    .line 710
    :cond_4
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/TouchInteractionService;->newBaseConsumer(Lcom/android/quickstep/GestureState;Lcom/android/quickstep/GestureState;Landroid/view/MotionEvent;)Lcom/android/quickstep/InputConsumer;

    move-result-object v2

    .line 711
    :goto_1
    nop

    .line 712
    .local v2, "base":Lcom/android/quickstep/InputConsumer;
    iget-object v3, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v3}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isGesturalNavMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 713
    invoke-direct {p0, v2}, Lcom/android/quickstep/TouchInteractionService;->handleOrientationSetup(Lcom/android/quickstep/InputConsumer;)V

    .line 715
    :cond_5
    iget-object v3, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v3}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 716
    iget-object v3, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v3, p3}, Lcom/android/quickstep/RecentsAnimationDeviceState;->canTriggerAssistantAction(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 717
    invoke-direct {p0, v2, p2, p3}, Lcom/android/quickstep/TouchInteractionService;->tryCreateAssistantInputConsumer(Lcom/android/quickstep/InputConsumer;Lcom/android/quickstep/GestureState;Landroid/view/MotionEvent;)Lcom/android/quickstep/InputConsumer;

    move-result-object v2

    .line 721
    :cond_6
    iget-object v3, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarManager;->getCurrentActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v3

    .line 722
    .local v3, "tac":Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    if-eqz v3, :cond_7

    .line 723
    new-instance v4, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;

    iget-object v5, p0, Lcom/android/quickstep/TouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-direct {v4, p0, v2, v5, v3}, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    move-object v2, v4

    .line 730
    :cond_7
    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v4}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isBubblesExpanded()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v4}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isNotificationPanelExpanded()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    .line 731
    invoke-virtual {v4}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isSystemUiDialogShowing()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 732
    :cond_9
    new-instance v4, Lcom/android/quickstep/inputconsumers/SysUiOverlayInputConsumer;

    .line 733
    invoke-virtual {p0}, Lcom/android/quickstep/TouchInteractionService;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    iget-object v7, p0, Lcom/android/quickstep/TouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-direct {v4, v5, v6, v7}, Lcom/android/quickstep/inputconsumers/SysUiOverlayInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    move-object v2, v4

    .line 736
    :cond_a
    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v4}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isScreenPinningActive()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 739
    new-instance v4, Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer;

    invoke-direct {v4, p0, p2}, Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/GestureState;)V

    move-object v2, v4

    .line 742
    :cond_b
    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v4, p3}, Lcom/android/quickstep/RecentsAnimationDeviceState;->canTriggerOneHandedAction(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 743
    new-instance v4, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;

    iget-object v5, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    iget-object v6, p0, Lcom/android/quickstep/TouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-direct {v4, p0, v5, v2, v6}, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    move-object v2, v4

    .line 747
    :cond_c
    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v4}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isAccessibilityMenuAvailable()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 748
    new-instance v4, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;

    iget-object v5, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    iget-object v6, p0, Lcom/android/quickstep/TouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-direct {v4, p0, v5, v2, v6}, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    move-object v2, v4

    .line 751
    .end local v3    # "tac":Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    :cond_d
    goto :goto_2

    .line 752
    :cond_e
    iget-object v3, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v3}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isScreenPinningActive()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 753
    invoke-direct {p0}, Lcom/android/quickstep/TouchInteractionService;->getDefaultInputConsumer()Lcom/android/quickstep/InputConsumer;

    move-result-object v2

    .line 756
    :cond_f
    iget-object v3, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v3, p3}, Lcom/android/quickstep/RecentsAnimationDeviceState;->canTriggerOneHandedAction(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 757
    new-instance v3, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;

    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    iget-object v5, p0, Lcom/android/quickstep/TouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-direct {v3, p0, v4, v2, v5}, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    move-object v2, v3

    .line 761
    :cond_10
    :goto_2
    return-object v2
.end method

.method private onAssistantVisibilityChanged()V
    .locals 2

    .line 541
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    .line 543
    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getAssistantVisibility()F

    move-result v1

    .line 542
    invoke-virtual {v0, v1}, Lcom/android/quickstep/BaseActivityInterface;->onAssistantVisibilityChanged(F)V

    .line 545
    :cond_0
    return-void
.end method

.method private onCommand(Ljava/io/PrintWriter;Ljava/util/LinkedList;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1012
    .local p2, "args":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string v1, "clear-touch-log"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    .line 1014
    :pswitch_1
    sget-object v0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    invoke-virtual {v0}, Lcom/android/quickstep/util/ActiveGestureLog;->clear()V

    .line 1017
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x61ca1c36
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private onConsumerInactive(Lcom/android/quickstep/InputConsumer;)V
    .locals 1
    .param p1, "caller"    # Lcom/android/quickstep/InputConsumer;

    .line 864
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/quickstep/InputConsumer;->getActiveConsumerInHierarchy()Lcom/android/quickstep/InputConsumer;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 865
    invoke-direct {p0}, Lcom/android/quickstep/TouchInteractionService;->reset()V

    .line 867
    :cond_0
    return-void
.end method

.method private onInputEvent(Landroid/view/InputEvent;)V
    .locals 9
    .param p1, "ev"    # Landroid/view/InputEvent;

    .line 576
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TouchInteractionService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    return-void

    .line 580
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 582
    .local v0, "event":Landroid/view/MotionEvent;
    const-string v1, "TIS"

    const-string v2, "TouchInteractionService.onInputEvent"

    invoke-static {v1, v2, v0}, Lcom/android/launcher3/testing/TestLogging;->recordMotionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/view/MotionEvent;)V

    .line 585
    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 586
    return-void

    .line 589
    :cond_1
    sget-object v1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/TraceHelper;->beginFlagsOverride(I)Ljava/lang/Object;

    move-result-object v1

    .line 592
    .local v1, "traceToken":Ljava/lang/Object;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 593
    .local v3, "action":I
    if-nez v3, :cond_5

    .line 594
    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

    invoke-virtual {v4, v0}, Lcom/android/quickstep/RotationTouchHelper;->setOrientationTransformIfNeeded(Landroid/view/MotionEvent;)V

    .line 596
    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v4}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isOneHandedModeActive()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

    .line 597
    invoke-virtual {v4, v0}, Lcom/android/quickstep/RotationTouchHelper;->isInSwipeUpTouchRegion(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 600
    new-instance v4, Lcom/android/quickstep/GestureState;

    iget-object v5, p0, Lcom/android/quickstep/TouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-direct {v4, v5}, Lcom/android/quickstep/GestureState;-><init>(Lcom/android/quickstep/GestureState;)V

    .line 601
    .local v4, "prevGestureState":Lcom/android/quickstep/GestureState;
    iget-object v5, p0, Lcom/android/quickstep/TouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0, v5}, Lcom/android/quickstep/TouchInteractionService;->createGestureState(Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/GestureState;

    move-result-object v5

    .line 602
    .local v5, "newGestureState":Lcom/android/quickstep/GestureState;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/quickstep/GestureState;->setSwipeUpStartTimeMs(J)V

    .line 603
    iget-object v6, p0, Lcom/android/quickstep/TouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    invoke-interface {v6}, Lcom/android/quickstep/InputConsumer;->onConsumerAboutToBeSwitched()V

    .line 604
    iput-object v5, p0, Lcom/android/quickstep/TouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    .line 605
    invoke-direct {p0, v4, v5, v0}, Lcom/android/quickstep/TouchInteractionService;->newConsumer(Lcom/android/quickstep/GestureState;Lcom/android/quickstep/GestureState;Landroid/view/MotionEvent;)Lcom/android/quickstep/InputConsumer;

    move-result-object v6

    iput-object v6, p0, Lcom/android/quickstep/TouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    .line 607
    sget-object v6, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setInputConsumer: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/quickstep/TouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    invoke-interface {v8}, Lcom/android/quickstep/InputConsumer;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;)V

    .line 608
    iget-object v6, p0, Lcom/android/quickstep/TouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    iput-object v6, p0, Lcom/android/quickstep/TouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    .line 609
    .end local v4    # "prevGestureState":Lcom/android/quickstep/GestureState;
    .end local v5    # "newGestureState":Lcom/android/quickstep/GestureState;
    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v4}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v4}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    .line 610
    invoke-virtual {v4, v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->canTriggerAssistantAction(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 611
    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0, v4}, Lcom/android/quickstep/TouchInteractionService;->createGestureState(Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/GestureState;

    move-result-object v4

    iput-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    .line 615
    sget-object v4, Lcom/android/quickstep/InputConsumer;->NO_OP:Lcom/android/quickstep/InputConsumer;

    iget-object v5, p0, Lcom/android/quickstep/TouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-direct {p0, v4, v5, v0}, Lcom/android/quickstep/TouchInteractionService;->tryCreateAssistantInputConsumer(Lcom/android/quickstep/InputConsumer;Lcom/android/quickstep/GestureState;Landroid/view/MotionEvent;)Lcom/android/quickstep/InputConsumer;

    move-result-object v4

    iput-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    goto :goto_0

    .line 617
    :cond_3
    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v4, v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->canTriggerOneHandedAction(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 619
    new-instance v4, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;

    iget-object v5, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    sget-object v6, Lcom/android/quickstep/InputConsumer;->NO_OP:Lcom/android/quickstep/InputConsumer;

    iget-object v7, p0, Lcom/android/quickstep/TouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    iput-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    goto :goto_0

    .line 622
    :cond_4
    sget-object v4, Lcom/android/quickstep/InputConsumer;->NO_OP:Lcom/android/quickstep/InputConsumer;

    iput-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    goto :goto_0

    .line 626
    :cond_5
    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    sget-object v5, Lcom/android/quickstep/InputConsumer;->NO_OP:Lcom/android/quickstep/InputConsumer;

    if-eq v4, v5, :cond_6

    .line 628
    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

    invoke-virtual {v4, v0}, Lcom/android/quickstep/RotationTouchHelper;->setOrientationTransformIfNeeded(Landroid/view/MotionEvent;)V

    .line 632
    :cond_6
    :goto_0
    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    sget-object v5, Lcom/android/quickstep/InputConsumer;->NO_OP:Lcom/android/quickstep/InputConsumer;

    if-eq v4, v5, :cond_7

    .line 633
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 641
    sget-object v4, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const-string v6, "onMotionEvent"

    invoke-virtual {v4, v6, v5}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;I)V

    goto :goto_1

    .line 636
    :pswitch_0
    sget-object v4, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMotionEvent("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 637
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 638
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    .line 636
    invoke-virtual {v4, v5, v6}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;I)V

    .line 646
    :cond_7
    :goto_1
    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v4}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    .line 647
    invoke-virtual {v4}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/BaseActivityInterface;->shouldCancelCurrentGesture()Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v2

    goto :goto_2

    :cond_8
    move v4, v5

    .line 648
    .local v4, "cancelGesture":Z
    :goto_2
    const/4 v6, 0x3

    if-eq v3, v2, :cond_9

    if-eq v3, v6, :cond_9

    if-eqz v4, :cond_a

    :cond_9
    iget-object v7, p0, Lcom/android/quickstep/TouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    if-eqz v7, :cond_a

    .line 650
    invoke-interface {v7}, Lcom/android/quickstep/InputConsumer;->getActiveConsumerInHierarchy()Lcom/android/quickstep/InputConsumer;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/quickstep/InputConsumer;->isConsumerDetachedFromGesture()Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_3

    :cond_a
    move v2, v5

    .line 651
    .local v2, "cleanUpConsumer":Z
    :goto_3
    if-eqz v4, :cond_b

    .line 652
    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 654
    :cond_b
    iget-object v5, p0, Lcom/android/quickstep/TouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    invoke-interface {v5, v0}, Lcom/android/quickstep/InputConsumer;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 656
    if-eqz v2, :cond_c

    .line 657
    invoke-direct {p0}, Lcom/android/quickstep/TouchInteractionService;->reset()V

    .line 659
    :cond_c
    sget-object v5, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v5, v1}, Lcom/android/launcher3/util/TraceHelper;->endFlagsOverride(Ljava/lang/Object;)V

    .line 660
    sget-object v5, Lcom/android/quickstep/util/ProtoTracer;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v5, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/quickstep/util/ProtoTracer;

    invoke-virtual {v5}, Lcom/android/quickstep/util/ProtoTracer;->scheduleFrameUpdate()V

    .line 661
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onNavigationModeChanged()V
    .locals 1

    .line 432
    const-string v0, "onNavigationModeChanged()"

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService;->initInputMonitor(Ljava/lang/String;)V

    .line 433
    invoke-direct {p0}, Lcom/android/quickstep/TouchInteractionService;->resetHomeBounceSeenOnQuickstepEnabledFirstTime()V

    .line 434
    return-void
.end method

.method private onOverviewTargetChange(Z)V
    .locals 8
    .param p1, "isHomeAndOverviewSame"    # Z

    .line 483
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/TouchInteractionService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 485
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    const/16 v1, 0xe

    if-eqz p1, :cond_0

    .line 486
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {v3}, Lcom/android/quickstep/OverviewComponentObserver;->getHomeIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 487
    const-string v3, "android.intent.action.ALL_APPS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 488
    .local v2, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/app/RemoteAction;

    sget v4, Lcom/android/launcher3/R$drawable;->ic_apps:I

    .line 489
    invoke-static {p0, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    sget v5, Lcom/android/launcher3/R$string;->all_apps_label:I

    .line 490
    invoke-virtual {p0, v5}, Lcom/android/quickstep/TouchInteractionService;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/android/launcher3/R$string;->all_apps_label:I

    .line 491
    invoke-virtual {p0, v6}, Lcom/android/quickstep/TouchInteractionService;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0xc000000

    .line 492
    invoke-static {p0, v1, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 494
    .local v3, "allAppsAction":Landroid/app/RemoteAction;
    invoke-virtual {v0, v3, v1}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    .line 495
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "allAppsAction":Landroid/app/RemoteAction;
    goto :goto_0

    .line 496
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->unregisterSystemAction(I)V

    .line 499
    :goto_0
    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {v1}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v1

    .line 500
    invoke-virtual {v1}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v1

    .line 501
    .local v1, "newOverviewActivity":Lcom/android/launcher3/statemanager/StatefulActivity;
    if-eqz v1, :cond_1

    .line 502
    iget-object v2, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/taskbar/TaskbarManager;->setActivity(Lcom/android/launcher3/statemanager/StatefulActivity;)V

    .line 504
    :cond_1
    iget-object v2, p0, Lcom/android/quickstep/TouchInteractionService;->mTISBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    invoke-virtual {v2}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->onOverviewTargetChange()V

    .line 505
    return-void
.end method

.method private onSystemUiFlagsChanged(I)V
    .locals 6
    .param p1, "lastSysUIFlags"    # I

    .line 509
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 510
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getSystemUiStateFlags()I

    move-result v0

    .line 511
    .local v0, "systemUiStateFlags":I
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/SystemUiProxy;->setLastSystemUiStateFlags(I)V

    .line 512
    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {v1}, Lcom/android/quickstep/OverviewComponentObserver;->onSystemUiStateChanged()V

    .line 513
    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->onSystemUiFlagsChanged(I)V

    .line 515
    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 516
    .local v1, "wasExpanded":Z
    :goto_0
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 518
    .local v2, "isExpanded":Z
    :goto_1
    if-eq v1, v2, :cond_2

    if-eqz v2, :cond_2

    .line 521
    iget-object v3, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v3}, Lcom/android/quickstep/TaskAnimationManager;->endLiveTile()V

    .line 524
    :cond_2
    and-int/lit16 v3, p1, 0x1000

    and-int/lit16 v4, v0, 0x1000

    if-eq v3, v4, :cond_4

    .line 527
    and-int/lit16 v3, v0, 0x1000

    const-string v4, "TouchInteractionService"

    if-eqz v3, :cond_3

    .line 528
    const-string v3, "Starting tracing."

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    sget-object v3, Lcom/android/quickstep/util/ProtoTracer;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v3, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/util/ProtoTracer;

    invoke-virtual {v3}, Lcom/android/quickstep/util/ProtoTracer;->start()V

    goto :goto_2

    .line 531
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stopping tracing. Dumping to file="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/android/quickstep/util/ProtoTracer;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 532
    invoke-virtual {v5, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/quickstep/util/ProtoTracer;

    invoke-virtual {v5}, Lcom/android/quickstep/util/ProtoTracer;->getTraceFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 531
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    sget-object v3, Lcom/android/quickstep/util/ProtoTracer;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v3, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/util/ProtoTracer;

    invoke-virtual {v3}, Lcom/android/quickstep/util/ProtoTracer;->stop()V

    .line 537
    .end local v0    # "systemUiStateFlags":I
    .end local v1    # "wasExpanded":Z
    .end local v2    # "isExpanded":Z
    :cond_4
    :goto_2
    return-void
.end method

.method private preloadOverview(Z)V
    .locals 1
    .param p1, "fromInit"    # Z

    .line 893
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/TouchInteractionService;->preloadOverview(ZZ)V

    .line 894
    return-void
.end method

.method private preloadOverview(ZZ)V
    .locals 3
    .param p1, "fromInit"    # Z
    .param p2, "forSUWAllSet"    # Z

    .line 897
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 898
    return-void

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isButtonNavMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result v0

    if-nez v0, :cond_1

    .line 903
    return-void

    .line 906
    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/provider/RestoreDbTask;->isPending(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    .line 907
    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_4

    .line 910
    :cond_3
    return-void

    .line 913
    :cond_4
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    .line 914
    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    .line 915
    .local v0, "activityInterface":Lcom/android/quickstep/BaseActivityInterface;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    .line 916
    invoke-virtual {v2}, Lcom/android/quickstep/OverviewComponentObserver;->getOverviewIntentIgnoreSysUiState()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 917
    .local v1, "overviewIntent":Landroid/content/Intent;
    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v2

    if-eqz v2, :cond_5

    if-eqz p1, :cond_5

    .line 921
    return-void

    .line 924
    :cond_5
    iget-object v2, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v2, v1}, Lcom/android/quickstep/TaskAnimationManager;->preloadRecentsAnimation(Landroid/content/Intent;)V

    .line 925
    return-void
.end method

.method private printAvailableCommands(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1007
    const-string v0, "Available commands:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1008
    const-string v0, "  clear-touch-log: Clears the touch interaction log"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1009
    return-void
.end method

.method private reset()V
    .locals 2

    .line 870
    invoke-direct {p0}, Lcom/android/quickstep/TouchInteractionService;->getDefaultInputConsumer()Lcom/android/quickstep/InputConsumer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    .line 871
    sget-object v0, Lcom/android/quickstep/GestureState;->DEFAULT_STATE:Lcom/android/quickstep/GestureState;

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    .line 874
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    if-eqz v0, :cond_0

    .line 875
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->setBatchingEnabled(Z)V

    .line 877
    :cond_0
    return-void
.end method

.method private resetHomeBounceSeenOnQuickstepEnabledFirstTime()V
    .locals 4

    .line 466
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isButtonNavMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 473
    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 474
    .local v0, "sharedPrefs":Landroid/content/SharedPreferences;
    const-string v1, "launcher.has_enabled_quickstep_once"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 475
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 476
    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x0

    .line 477
    const-string v3, "launcher.apps_view_shown"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 478
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 480
    :cond_1
    return-void

    .line 469
    .end local v0    # "sharedPrefs":Landroid/content/SharedPreferences;
    :cond_2
    :goto_0
    return-void
.end method

.method private tryCreateAssistantInputConsumer(Lcom/android/quickstep/InputConsumer;Lcom/android/quickstep/GestureState;Landroid/view/MotionEvent;)Lcom/android/quickstep/InputConsumer;
    .locals 8
    .param p1, "base"    # Lcom/android/quickstep/InputConsumer;
    .param p2, "gestureState"    # Lcom/android/quickstep/GestureState;
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;

    .line 665
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isGestureBlockedTask(Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    move-object v0, p1

    goto :goto_0

    .line 667
    :cond_0
    new-instance v0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;

    iget-object v5, p0, Lcom/android/quickstep/TouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    iget-object v6, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/GestureState;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/quickstep/RecentsAnimationDeviceState;Landroid/view/MotionEvent;)V

    .line 665
    :goto_0
    return-object v0
.end method


# virtual methods
.method public createGestureState(Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/GestureState;
    .locals 3
    .param p1, "previousGestureState"    # Lcom/android/quickstep/GestureState;

    .line 672
    new-instance v0, Lcom/android/quickstep/GestureState;

    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    .line 673
    invoke-virtual {v2}, Lcom/android/quickstep/util/ActiveGestureLog;->generateAndSetLogId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/GestureState;-><init>(Lcom/android/quickstep/OverviewComponentObserver;I)V

    .line 674
    .local v0, "gestureState":Lcom/android/quickstep/GestureState;
    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v1}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 675
    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/GestureState;->updateRunningTask(Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;)V

    .line 676
    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getLastStartedTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/GestureState;->updateLastStartedTaskId(I)V

    .line 677
    nop

    .line 678
    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getPreviouslyAppearedTaskIds()Ljava/util/Set;

    move-result-object v1

    .line 677
    invoke-virtual {v0, v1}, Lcom/android/quickstep/GestureState;->updatePreviouslyAppearedTaskIds(Ljava/util/Set;)V

    goto :goto_0

    .line 680
    :cond_0
    sget-object v1, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 681
    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/TopTaskTracker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/quickstep/TopTaskTracker;->getCachedTopTask(Z)Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v1

    .line 680
    invoke-virtual {v0, v1}, Lcom/android/quickstep/GestureState;->updateRunningTask(Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;)V

    .line 683
    :goto_0
    return-object v0
.end method

.method public createOverviewInputConsumer(Lcom/android/quickstep/GestureState;Lcom/android/quickstep/GestureState;Landroid/view/MotionEvent;Z)Lcom/android/quickstep/InputConsumer;
    .locals 9
    .param p1, "previousGestureState"    # Lcom/android/quickstep/GestureState;
    .param p2, "gestureState"    # Lcom/android/quickstep/GestureState;
    .param p3, "event"    # Landroid/view/MotionEvent;
    .param p4, "forceOverviewInputConsumer"    # Z

    .line 838
    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    .line 839
    .local v0, "activity":Lcom/android/launcher3/statemanager/StatefulActivity;
    if-nez v0, :cond_0

    .line 840
    invoke-direct {p0}, Lcom/android/quickstep/TouchInteractionService;->getDefaultInputConsumer()Lcom/android/quickstep/InputConsumer;

    move-result-object v1

    return-object v1

    .line 843
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherRootView;->hasWindowFocus()Z

    move-result v1

    if-nez v1, :cond_3

    .line 844
    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->isRunningAnimationToLauncher()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ASSISTANT_GIVES_LAUNCHER_FOCUS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    .line 845
    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p4, :cond_3

    :cond_1
    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    .line 847
    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 848
    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/BaseActivityInterface;->isInLiveTileMode()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 852
    :cond_2
    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v1, p3}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isInExclusionRegion(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 853
    .local v7, "disableHorizontalSwipe":Z
    new-instance v8, Lcom/android/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;

    iget-object v3, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    iget-object v5, p0, Lcom/android/quickstep/TouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    move-object v1, v8

    move-object v2, v0

    move-object v4, p2

    move v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/GestureState;Lcom/android/systemui/shared/system/InputMonitorCompat;Z)V

    return-object v8

    .line 849
    .end local v7    # "disableHorizontalSwipe":Z
    :cond_3
    :goto_0
    new-instance v1, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;

    iget-object v2, p0, Lcom/android/quickstep/TouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    const/4 v3, 0x0

    invoke-direct {v1, p2, v0, v2, v3}, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;-><init>(Lcom/android/quickstep/GestureState;Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/systemui/shared/system/InputMonitorCompat;Z)V

    return-object v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "rawArgs"    # [Ljava/lang/String;

    .line 956
    array-length v0, p3

    const/4 v1, 0x0

    if-lez v0, :cond_2

    sget-boolean v0, Lcom/android/launcher3/Utilities;->IS_DEBUG_DEVICE:Z

    if-eqz v0, :cond_2

    .line 957
    new-instance v0, Ljava/util/LinkedList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 958
    .local v0, "args":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string v4, "cmd"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :goto_0
    move v1, v3

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    .line 960
    :pswitch_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 961
    invoke-direct {p0, p2}, Lcom/android/quickstep/TouchInteractionService;->printAvailableCommands(Ljava/io/PrintWriter;)V

    goto :goto_2

    .line 963
    :cond_1
    invoke-direct {p0, p2, v0}, Lcom/android/quickstep/TouchInteractionService;->onCommand(Ljava/io/PrintWriter;Ljava/util/LinkedList;)V

    .line 967
    .end local v0    # "args":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_2
    goto/16 :goto_5

    .line 969
    :cond_2
    invoke-static {p2}, Lcom/android/launcher3/config/FeatureFlags;->dump(Ljava/io/PrintWriter;)V

    .line 970
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 971
    sget-object v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Lcom/android/quickstep/TouchInteractionService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->dump(Ljava/io/PrintWriter;)V

    .line 973
    :cond_3
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0, p2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->dump(Ljava/io/PrintWriter;)V

    .line 974
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    if-eqz v0, :cond_4

    .line 975
    invoke-virtual {v0, p2}, Lcom/android/quickstep/OverviewComponentObserver;->dump(Ljava/io/PrintWriter;)V

    .line 977
    :cond_4
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewCommandHelper:Lcom/android/quickstep/OverviewCommandHelper;

    if-eqz v0, :cond_5

    .line 978
    invoke-virtual {v0, p2}, Lcom/android/quickstep/OverviewCommandHelper;->dump(Ljava/io/PrintWriter;)V

    .line 980
    :cond_5
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    if-eqz v0, :cond_6

    .line 981
    invoke-virtual {v0, p2}, Lcom/android/quickstep/GestureState;->dump(Ljava/io/PrintWriter;)V

    .line 983
    :cond_6
    const-string v0, "Input state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInputMonitorCompat="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/quickstep/TouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInputEventReceiver="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/quickstep/TouchInteractionService;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 986
    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/util/DisplayController;->dump(Ljava/io/PrintWriter;)V

    .line 987
    const-string v0, "TouchState:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 988
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_3

    .line 989
    :cond_7
    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    :goto_3
    nop

    .line 990
    .local v0, "createdOverviewActivity":Lcom/android/launcher3/BaseDraggingActivity;
    iget-object v2, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    if-eqz v2, :cond_8

    .line 991
    invoke-virtual {v2}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/BaseActivityInterface;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    nop

    .line 992
    .local v1, "resumed":Z
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  createdOverviewActivity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 993
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  resumed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 994
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mConsumer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/TouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    invoke-interface {v3}, Lcom/android/quickstep/InputConsumer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 995
    sget-object v2, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    const-string v3, ""

    invoke-virtual {v2, v3, p2}, Lcom/android/quickstep/util/ActiveGestureLog;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 996
    sget-object v2, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {v2, v3, p2}, Lcom/android/quickstep/RecentsModel;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 997
    const-string v2, "ProtoTrace:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 998
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  file="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/android/quickstep/util/ProtoTracer;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v4, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/quickstep/util/ProtoTracer;

    invoke-virtual {v4}, Lcom/android/quickstep/util/ProtoTracer;->getTraceFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 999
    if-eqz v0, :cond_9

    .line 1000
    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    invoke-virtual {v2, v3, p2}, Lcom/android/launcher3/DeviceProfile;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1002
    :cond_9
    iget-object v2, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-virtual {v2, v3, p2}, Lcom/android/launcher3/taskbar/TaskbarManager;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1004
    .end local v0    # "createdOverviewActivity":Lcom/android/launcher3/BaseDraggingActivity;
    .end local v1    # "resumed":Z
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1813a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public getOverviewCommandHelper()Lcom/android/quickstep/OverviewCommandHelper;
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewCommandHelper:Lcom/android/quickstep/OverviewCommandHelper;

    return-object v0
.end method

.method public getSwipeUpHandlerFactory()Lcom/android/quickstep/AbsSwipeUpHandler$Factory;
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result v0

    if-nez v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mFallbackSwipeHandlerFactory:Lcom/android/quickstep/AbsSwipeUpHandler$Factory;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mLauncherSwipeHandlerFactory:Lcom/android/quickstep/AbsSwipeUpHandler$Factory;

    .line 810
    :goto_0
    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Touch service connected: user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/TouchInteractionService;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TouchInteractionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mTISBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 929
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 930
    return-void

    .line 932
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    .line 933
    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    .line 934
    .local v0, "activityInterface":Lcom/android/quickstep/BaseActivityInterface;
    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v1

    .line 935
    .local v1, "activity":Lcom/android/launcher3/BaseDraggingActivity;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/launcher3/BaseDraggingActivity;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 939
    :cond_1
    iget-object v2, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseDraggingActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 940
    invoke-virtual {v1}, Lcom/android/launcher3/BaseDraggingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    .line 939
    invoke-virtual {v2, v3, v4}, Lcom/android/quickstep/OverviewComponentObserver;->canHandleConfigChanges(Landroid/content/ComponentName;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 944
    nop

    .line 946
    invoke-virtual {p0}, Lcom/android/quickstep/TouchInteractionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 944
    const-string v3, "navigation_bar_gesture_height"

    invoke-static {v3, v2}, Lcom/android/launcher3/ResourceUtils;->getNavbarSize(Ljava/lang/String;Landroid/content/res/Resources;)I

    move-result v2

    .line 947
    .local v2, "newGesturalHeight":I
    iget-object v3, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v3, v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->onOneHandedModeChanged(I)V

    .line 948
    return-void

    .line 951
    .end local v2    # "newGesturalHeight":I
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/quickstep/TouchInteractionService;->preloadOverview(Z)V

    .line 952
    return-void

    .line 937
    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 384
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 387
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mMainChoreographer:Landroid/view/Choreographer;

    .line 388
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mAM:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    .line 389
    new-instance v0, Lcom/android/quickstep/RecentsAnimationDeviceState;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    .line 390
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarManager;-><init>(Lcom/android/quickstep/TouchInteractionService;)V

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

    .line 391
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

    .line 394
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    new-instance v2, Lcom/android/quickstep/TouchInteractionService$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/quickstep/TouchInteractionService$$ExternalSyntheticLambda5;-><init>(Lcom/android/quickstep/TouchInteractionService;)V

    invoke-virtual {v0, v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->runOnUserUnlocked(Ljava/lang/Runnable;)V

    .line 395
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    iget-object v2, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/quickstep/TouchInteractionService$$ExternalSyntheticLambda6;

    invoke-direct {v3, v2}, Lcom/android/quickstep/TouchInteractionService$$ExternalSyntheticLambda6;-><init>(Lcom/android/launcher3/taskbar/TaskbarManager;)V

    invoke-virtual {v0, v3}, Lcom/android/quickstep/RecentsAnimationDeviceState;->runOnUserUnlocked(Ljava/lang/Runnable;)V

    .line 396
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    new-instance v2, Lcom/android/quickstep/TouchInteractionService$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/android/quickstep/TouchInteractionService$$ExternalSyntheticLambda7;-><init>(Lcom/android/quickstep/TouchInteractionService;)V

    invoke-virtual {v0, v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->addNavigationModeChangedCallback(Ljava/lang/Runnable;)V

    .line 398
    sget-object v0, Lcom/android/quickstep/util/ProtoTracer;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/ProtoTracer;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/util/ProtoTracer;->add(Lcom/android/systemui/shared/tracing/ProtoTraceable;)V

    .line 399
    sput-boolean v1, Lcom/android/quickstep/TouchInteractionService;->sConnected:Z

    .line 400
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Touch service destroyed: user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/TouchInteractionService;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TouchInteractionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/quickstep/TouchInteractionService;->sIsInitialized:Z

    .line 551
    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mInputConsumer:Lcom/android/systemui/shared/system/InputConsumerController;

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/InputConsumerController;->unregisterInputConsumer()V

    .line 553
    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {v1}, Lcom/android/quickstep/OverviewComponentObserver;->onDestroy()V

    .line 555
    :cond_0
    const-string v1, "TouchInteractionService onDestroy()"

    invoke-direct {p0, v1}, Lcom/android/quickstep/TouchInteractionService;->disposeEventHandlers(Ljava/lang/String;)V

    .line 556
    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->destroy()V

    .line 557
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v1}, Lcom/android/quickstep/SystemUiProxy;->clearProxy()V

    .line 558
    sget-object v1, Lcom/android/quickstep/util/ProtoTracer;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/util/ProtoTracer;

    invoke-virtual {v1}, Lcom/android/quickstep/util/ProtoTracer;->stop()V

    .line 559
    sget-object v1, Lcom/android/quickstep/util/ProtoTracer;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/util/ProtoTracer;

    invoke-virtual {v1, p0}, Lcom/android/quickstep/util/ProtoTracer;->remove(Lcom/android/systemui/shared/tracing/ProtoTraceable;)V

    .line 561
    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v1}, Lcom/android/quickstep/TouchInteractionService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    const/16 v2, 0xe

    .line 562
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->unregisterSystemAction(I)V

    .line 564
    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarManager;->destroy()V

    .line 565
    sput-boolean v0, Lcom/android/quickstep/TouchInteractionService;->sConnected:Z

    .line 566
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 567
    return-void
.end method

.method public onUserUnlocked()V
    .locals 3

    .line 438
    new-instance v0, Lcom/android/quickstep/TaskAnimationManager;

    invoke-direct {v0, p0}, Lcom/android/quickstep/TaskAnimationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    .line 439
    new-instance v0, Lcom/android/quickstep/OverviewComponentObserver;

    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-direct {v0, p0, v1}, Lcom/android/quickstep/OverviewComponentObserver;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    .line 440
    new-instance v1, Lcom/android/quickstep/OverviewCommandHelper;

    iget-object v2, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/quickstep/OverviewCommandHelper;-><init>(Lcom/android/quickstep/TouchInteractionService;Lcom/android/quickstep/OverviewComponentObserver;Lcom/android/quickstep/TaskAnimationManager;)V

    iput-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewCommandHelper:Lcom/android/quickstep/OverviewCommandHelper;

    .line 442
    new-instance v0, Lcom/android/quickstep/inputconsumers/ResetGestureInputConsumer;

    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-direct {v0, v1}, Lcom/android/quickstep/inputconsumers/ResetGestureInputConsumer;-><init>(Lcom/android/quickstep/TaskAnimationManager;)V

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mResetGestureInputConsumer:Lcom/android/quickstep/inputconsumers/ResetGestureInputConsumer;

    .line 443
    invoke-static {}, Lcom/android/systemui/shared/system/InputConsumerController;->getRecentsAnimationInputConsumer()Lcom/android/systemui/shared/system/InputConsumerController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mInputConsumer:Lcom/android/systemui/shared/system/InputConsumerController;

    .line 444
    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputConsumerController;->registerInputConsumer()V

    .line 445
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getSystemUiStateFlags()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService;->onSystemUiFlagsChanged(I)V

    .line 446
    invoke-direct {p0}, Lcom/android/quickstep/TouchInteractionService;->onAssistantVisibilityChanged()V

    .line 449
    sget-object v0, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    .line 453
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 454
    const-string v1, "backNotificationCount"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 453
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/TouchInteractionService;->mBackGestureNotificationCounter:I

    .line 455
    invoke-direct {p0}, Lcom/android/quickstep/TouchInteractionService;->resetHomeBounceSeenOnQuickstepEnabledFirstTime()V

    .line 457
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    new-instance v1, Lcom/android/quickstep/TouchInteractionService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/quickstep/TouchInteractionService$$ExternalSyntheticLambda4;-><init>(Lcom/android/quickstep/TouchInteractionService;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/OverviewComponentObserver;->setOverviewChangeListener(Ljava/util/function/Consumer;)V

    .line 458
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService;->onOverviewTargetChange(Z)V

    .line 459
    return-void
.end method

.method public writeToProto(Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;)V
    .locals 2
    .param p1, "proto"    # Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;

    .line 1036
    invoke-static {}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->newBuilder()Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;

    move-result-object v0

    .line 1037
    .local v0, "serviceProto":Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;->setServiceConnected(Z)Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;

    .line 1039
    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    if-eqz v1, :cond_0

    .line 1040
    invoke-virtual {v1, v0}, Lcom/android/quickstep/OverviewComponentObserver;->writeToProto(Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;)V

    .line 1042
    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    invoke-interface {v1, v0}, Lcom/android/quickstep/InputConsumer;->writeToProto(Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;)V

    .line 1044
    invoke-virtual {p1, v0}, Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;->setTouchInteractionService(Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;)Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;

    .line 1045
    return-void
.end method

.method public bridge synthetic writeToProto(Ljava/lang/Object;)V
    .locals 0

    .line 124
    check-cast p1, Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/TouchInteractionService;->writeToProto(Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;)V

    return-void
.end method
