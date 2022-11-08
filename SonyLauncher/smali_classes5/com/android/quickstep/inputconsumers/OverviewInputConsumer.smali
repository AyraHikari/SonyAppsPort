.class public Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;
.super Ljava/lang/Object;
.source "OverviewInputConsumer.java"

# interfaces
.implements Lcom/android/quickstep/InputConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lcom/android/launcher3/statemanager/BaseState<",
        "TS;>;T:",
        "Lcom/android/launcher3/statemanager/StatefulActivity<",
        "TS;>;>",
        "Ljava/lang/Object;",
        "Lcom/android/quickstep/InputConsumer;"
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/BaseActivityInterface<",
            "*TT;>;"
        }
    .end annotation
.end field

.field private final mInputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

.field private final mLocationOnScreen:[I

.field private final mStartingInActivityBounds:Z

.field private final mTarget:Lcom/android/launcher3/views/BaseDragLayer;

.field private mTargetHandledTouch:Z


# direct methods
.method public constructor <init>(Lcom/android/quickstep/GestureState;Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/systemui/shared/system/InputMonitorCompat;Z)V
    .locals 2
    .param p1, "gestureState"    # Lcom/android/quickstep/GestureState;
    .param p3, "inputMonitor"    # Lcom/android/systemui/shared/system/InputMonitorCompat;
    .param p4, "startingInActivityBounds"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/GestureState;",
            "TT;",
            "Lcom/android/systemui/shared/system/InputMonitorCompat;",
            "Z)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;, "Lcom/android/quickstep/inputconsumers/OverviewInputConsumer<TS;TT;>;"
    .local p2, "activity":Lcom/android/launcher3/statemanager/StatefulActivity;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;->mLocationOnScreen:[I

    .line 59
    iput-object p2, p0, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 60
    iput-object p3, p0, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;->mInputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    .line 61
    iput-boolean p4, p0, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;->mStartingInActivityBounds:Z

    .line 62
    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    .line 64
    invoke-virtual {p2}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;->mTarget:Lcom/android/launcher3/views/BaseDragLayer;

    .line 65
    invoke-virtual {v1, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationOnScreen([I)V

    .line 66
    return-void
.end method


# virtual methods
.method public allowInterceptByParent()Z
    .locals 1

    .line 75
    .local p0, "this":Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;, "Lcom/android/quickstep/inputconsumers/OverviewInputConsumer<TS;TT;>;"
    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;->mTargetHandledTouch:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getType()I
    .locals 1

    .line 70
    .local p0, "this":Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;, "Lcom/android/quickstep/inputconsumers/OverviewInputConsumer<TS;TT;>;"
    const/4 v0, 0x2

    return v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 105
    .local p0, "this":Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;, "Lcom/android/quickstep/inputconsumers/OverviewInputConsumer<TS;TT;>;"
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 108
    :cond_0
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/KeyEvent;

    .line 112
    .local p0, "this":Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;, "Lcom/android/quickstep/inputconsumers/OverviewInputConsumer<TS;TT;>;"
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 117
    :sswitch_0
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const-class v1, Landroid/media/session/MediaSessionManager;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    .line 118
    .local v0, "mgr":Landroid/media/session/MediaSessionManager;
    const/high16 v1, -0x80000000

    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventAsSystemService(Landroid/view/KeyEvent;I)V

    .line 120
    nop

    .line 124
    .end local v0    # "mgr":Landroid/media/session/MediaSessionManager;
    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 126
    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 80
    .local p0, "this":Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;, "Lcom/android/quickstep/inputconsumers/OverviewInputConsumer<TS;TT;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    .line 81
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;->mStartingInActivityBounds:Z

    if-nez v1, :cond_0

    .line 82
    or-int/lit16 v1, v0, 0x100

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;->mLocationOnScreen:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    neg-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v1, v1, v4

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v3, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 85
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;->mTarget:Lcom/android/launcher3/views/BaseDragLayer;

    iget-boolean v3, p0, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;->mStartingInActivityBounds:Z

    invoke-virtual {v1, p1, v3}, Lcom/android/launcher3/views/BaseDragLayer;->proxyTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v1

    .line 86
    .local v1, "handled":Z
    iget-object v3, p0, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;->mLocationOnScreen:[I

    aget v2, v3, v2

    int-to-float v2, v2

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    .line 89
    iget-boolean v2, p0, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;->mTargetHandledTouch:Z

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 90
    iput-boolean v4, p0, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;->mTargetHandledTouch:Z

    .line 91
    iget-boolean v2, p0, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;->mStartingInActivityBounds:Z

    if-nez v2, :cond_1

    .line 92
    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v2}, Lcom/android/quickstep/BaseActivityInterface;->closeOverlay()V

    .line 93
    const-string v2, "recentapps"

    invoke-static {v2}, Lcom/android/quickstep/TaskUtils;->closeSystemWindowsAsync(Ljava/lang/String;)V

    .line 94
    sget-object v2, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    const-string v3, "startQuickstep"

    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;)V

    .line 96
    :cond_1
    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;->mInputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    if-eqz v2, :cond_2

    .line 97
    const-string v2, "Pilfer"

    const-string v3, "pilferPointers"

    invoke-static {v2, v3}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;->mInputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/InputMonitorCompat;->pilferPointers()V

    .line 101
    :cond_2
    return-void
.end method
