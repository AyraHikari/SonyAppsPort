.class public Lcom/android/quickstep/inputconsumers/SysUiOverlayInputConsumer;
.super Ljava/lang/Object;
.source "SysUiOverlayInputConsumer.java"

# interfaces
.implements Lcom/android/quickstep/InputConsumer;
.implements Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker$OnSwipeUpListener;


# static fields
.field private static final SYSTEM_DIALOG_REASON_GESTURE_NAV:Ljava/lang/String; = "gestureNav"

.field private static final TAG:Ljava/lang/String; = "SysUiOverlayInputConsumer"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

.field private final mTriggerSwipeUpTracker:Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;


# direct methods
.method public static synthetic $r8$lambda$twTViC_GmZz-cZuyN339_1BFNb0(Lcom/android/quickstep/inputconsumers/SysUiOverlayInputConsumer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/inputconsumers/SysUiOverlayInputConsumer;->onInterceptTouch()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/systemui/shared/system/InputMonitorCompat;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceState"    # Lcom/android/quickstep/RecentsAnimationDeviceState;
    .param p3, "inputMonitor"    # Lcom/android/systemui/shared/system/InputMonitorCompat;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/SysUiOverlayInputConsumer;->mContext:Landroid/content/Context;

    .line 55
    iput-object p3, p0, Lcom/android/quickstep/inputconsumers/SysUiOverlayInputConsumer;->mInputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    .line 56
    new-instance v6, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;

    .line 57
    invoke-virtual {p2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getNavBarPosition()Lcom/android/quickstep/util/NavBarPosition;

    move-result-object v3

    new-instance v4, Lcom/android/quickstep/inputconsumers/SysUiOverlayInputConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/quickstep/inputconsumers/SysUiOverlayInputConsumer$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/inputconsumers/SysUiOverlayInputConsumer;)V

    const/4 v2, 0x1

    move-object v0, v6

    move-object v1, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;-><init>(Landroid/content/Context;ZLcom/android/quickstep/util/NavBarPosition;Ljava/lang/Runnable;Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker$OnSwipeUpListener;)V

    iput-object v6, p0, Lcom/android/quickstep/inputconsumers/SysUiOverlayInputConsumer;->mTriggerSwipeUpTracker:Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;

    .line 58
    return-void
.end method

.method private onInterceptTouch()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/SysUiOverlayInputConsumer;->mInputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "Pilfer"

    const-string v1, "pilferPointers"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/SysUiOverlayInputConsumer;->mInputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputMonitorCompat;->pilferPointers()V

    .line 80
    :cond_0
    return-void
.end method


# virtual methods
.method public allowInterceptByParent()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/SysUiOverlayInputConsumer;->mTriggerSwipeUpTracker:Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;

    invoke-virtual {v0}, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->interceptedTouch()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getType()I
    .locals 1

    .line 62
    const/16 v0, 0x400

    return v0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 72
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/SysUiOverlayInputConsumer;->mTriggerSwipeUpTracker:Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 73
    return-void
.end method

.method public onSwipeUp(ZLandroid/graphics/PointF;)V
    .locals 3
    .param p1, "wasFling"    # Z
    .param p2, "finalVelocity"    # Landroid/graphics/PointF;

    .line 86
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "gestureNav"

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception calling closeSystemDialogs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SysUiOverlayInputConsumer"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onSwipeUpCancelled()V
    .locals 0

    .line 95
    return-void
.end method
