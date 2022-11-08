.class public Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;
.super Ljava/lang/Object;
.source "StatusBarTouchController.java"

# interfaces
.implements Lcom/android/launcher3/util/TouchController;


# static fields
.field public static final IGNORE_TOUCH_EVENT_RANGE:F = 30.0f

.field private static final TAG:Ljava/lang/String; = "StatusBarController"


# instance fields
.field private mCanIntercept:Z

.field private final mDownEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mLastAction:I

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

.field private final mTouchSlop:F


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "l"    # Lcom/android/launcher3/Launcher;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 69
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    .line 71
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mTouchSlop:F

    .line 72
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mDownEvents:Landroid/util/SparseArray;

    .line 73
    return-void
.end method

.method private canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 161
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/16 v2, 0xc7c

    .line 162
    invoke-static {v0, v2}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 168
    .local v0, "dp":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/dragndrop/DragLayer;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 169
    return v1

    .line 171
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p1, v2}, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->isTouchFromBothEdge(Landroid/view/MotionEvent;Lcom/android/launcher3/Launcher;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 172
    return v1

    .line 175
    .end local v0    # "dp":Lcom/android/launcher3/DeviceProfile;
    :cond_2
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/SystemUiProxy;->isActive()Z

    move-result v0

    return v0

    .line 164
    :cond_3
    :goto_0
    return v1
.end method

.method private dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 84
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/SystemUiProxy;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mLastAction:I

    .line 86
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/SystemUiProxy;->onStatusBarMotionEvent(Landroid/view/MotionEvent;)V

    .line 88
    :cond_0
    return-void
.end method

.method public static isTouchFromBothEdge(Landroid/view/MotionEvent;Lcom/android/launcher3/Launcher;)Z
    .locals 3
    .param p0, "ev"    # Landroid/view/MotionEvent;
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 179
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 180
    .local v0, "x":F
    const/high16 v1, 0x41f00000    # 30.0f

    cmpg-float v2, v0, v1

    if-ltz v2, :cond_1

    .line 181
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    cmpg-float v1, v2, v0

    if-gez v1, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 182
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private setWindowSlippery(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .line 150
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 151
    .local v0, "w":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 152
    .local v1, "wlp":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    .line 153
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 155
    :cond_0
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x20000001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 157
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 158
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mCanIntercept:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mCanIntercept:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mLastAction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mLastAction:I

    invoke-static {v1}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mSysUiProxy available:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 80
    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v1}, Lcom/android/quickstep/SystemUiProxy;->isActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public final onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 93
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 94
    .local v1, "idx":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 95
    .local v2, "pid":I
    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 96
    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->canInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mCanIntercept:Z

    .line 97
    if-nez v4, :cond_0

    .line 98
    return v3

    .line 100
    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mDownEvents:Landroid/util/SparseArray;

    new-instance v5, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 103
    iget-object v4, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mDownEvents:Landroid/util/SparseArray;

    new-instance v5, Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    :cond_2
    :goto_0
    iget-boolean v4, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mCanIntercept:Z

    if-nez v4, :cond_3

    .line 106
    return v3

    .line 108
    :cond_3
    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    .line 109
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mDownEvents:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    .line 110
    .local v4, "dy":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mDownEvents:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    .line 114
    .local v5, "dx":F
    iget v6, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mTouchSlop:F

    cmpl-float v6, v4, v6

    if-lez v6, :cond_4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 115
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 116
    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 117
    invoke-direct {p0, v7}, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->setWindowSlippery(Z)V

    .line 118
    return v7

    .line 120
    :cond_4
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mTouchSlop:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    .line 121
    iput-boolean v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mCanIntercept:Z

    .line 124
    .end local v4    # "dy":F
    .end local v5    # "dx":F
    :cond_5
    return v3
.end method

.method public final onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 130
    .local v0, "action":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    return v1

    .line 131
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 132
    iget-object v2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SWIPE_DOWN_WORKSPACE_NOTISHADE_OPEN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 133
    invoke-interface {v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 134
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->setWindowSlippery(Z)V

    .line 135
    return v1
.end method
