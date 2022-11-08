.class public Lcom/android/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;
.super Ljava/lang/Object;
.source "OverviewWithoutFocusInputConsumer.java"

# interfaces
.implements Lcom/android/quickstep/InputConsumer;
.implements Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker$OnSwipeUpListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGestureState:Lcom/android/quickstep/GestureState;

.field private final mInputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

.field private final mTriggerSwipeUpTracker:Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;


# direct methods
.method public static synthetic $r8$lambda$kZETER4dHOB1cTpC9FREdzxtBhw(Lcom/android/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->onInterceptTouch()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/GestureState;Lcom/android/systemui/shared/system/InputMonitorCompat;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceState"    # Lcom/android/quickstep/RecentsAnimationDeviceState;
    .param p3, "gestureState"    # Lcom/android/quickstep/GestureState;
    .param p4, "inputMonitor"    # Lcom/android/systemui/shared/system/InputMonitorCompat;
    .param p5, "disableHorizontalSwipe"    # Z

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->mContext:Landroid/content/Context;

    .line 52
    iput-object p3, p0, Lcom/android/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    .line 53
    iput-object p4, p0, Lcom/android/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->mInputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    .line 54
    new-instance v6, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;

    .line 55
    invoke-virtual {p2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getNavBarPosition()Lcom/android/quickstep/util/NavBarPosition;

    move-result-object v3

    new-instance v4, Lcom/android/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;)V

    move-object v0, v6

    move-object v1, p1

    move v2, p5

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;-><init>(Landroid/content/Context;ZLcom/android/quickstep/util/NavBarPosition;Ljava/lang/Runnable;Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker$OnSwipeUpListener;)V

    iput-object v6, p0, Lcom/android/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->mTriggerSwipeUpTracker:Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;

    .line 56
    return-void
.end method

.method private onInterceptTouch()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->mInputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "Pilfer"

    const-string v1, "pilferPointers"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->mInputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputMonitorCompat;->pilferPointers()V

    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method public allowInterceptByParent()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->mTriggerSwipeUpTracker:Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;

    invoke-virtual {v0}, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->interceptedTouch()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getType()I
    .locals 1

    .line 60
    const/16 v0, 0x80

    return v0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 70
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->mTriggerSwipeUpTracker:Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 71
    return-void
.end method

.method public onSwipeUp(ZLandroid/graphics/PointF;)V
    .locals 6
    .param p1, "wasFling"    # Z
    .param p2, "finalVelocity"    # Landroid/graphics/PointF;

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getHomeIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher3/Utilities;->createHomeIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 87
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    sget-object v0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    const-string v1, "startQuickstep"

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/BaseDraggingActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    .line 89
    .local v0, "activity":Lcom/android/launcher3/BaseActivity;
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->containerType:I

    goto :goto_1

    .line 91
    :cond_0
    const/4 v1, 0x2

    :goto_1
    nop

    .line 92
    .local v1, "state":I
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    const/4 v3, 0x1

    .line 93
    invoke-interface {v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withSrcState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    .line 94
    invoke-interface {v2, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withDstState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    .line 95
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v3

    .line 97
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v4

    const/4 v5, -0x1

    .line 98
    invoke-virtual {v4, v5}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->setPageIndex(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v4

    .line 96
    invoke-virtual {v3, v4}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v3

    .line 99
    invoke-virtual {v3}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 95
    invoke-interface {v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_HOME_GESTURE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 100
    invoke-interface {v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 101
    return-void
.end method

.method public onSwipeUpCancelled()V
    .locals 0

    .line 104
    return-void
.end method
