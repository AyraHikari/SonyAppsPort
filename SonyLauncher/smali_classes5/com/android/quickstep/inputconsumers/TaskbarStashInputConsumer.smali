.class public Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;
.super Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;
.source "TaskbarStashInputConsumer.java"


# instance fields
.field private mCanceledUnstashHint:Z

.field private mDownX:F

.field private mDownY:F

.field private final mLongPressDetector:Landroid/view/GestureDetector;

.field private final mScreenWidth:F

.field private final mSquaredTouchSlop:F

.field private final mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private final mUnstashArea:F


# direct methods
.method static bridge synthetic -$$Nest$monLongPressDetected(Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->onLongPressDetected(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delegate"    # Lcom/android/quickstep/InputConsumer;
    .param p3, "inputMonitor"    # Lcom/android/systemui/shared/system/InputMonitorCompat;
    .param p4, "taskbarActivityContext"    # Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 48
    invoke-direct {p0, p2, p3}, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;-><init>(Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    .line 49
    iput-object p4, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 50
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->squaredTouchSlop(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mSquaredTouchSlop:F

    .line 51
    invoke-virtual {p4}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mScreenWidth:F

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->taskbar_unstash_input_area:I

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mUnstashArea:F

    .line 55
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer$1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer$1;-><init>(Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mLongPressDetector:Landroid/view/GestureDetector;

    .line 61
    return-void
.end method

.method private isInArea(F)Z
    .locals 3
    .param p1, "x"    # F

    .line 108
    iget v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mUnstashArea:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 109
    .local v0, "areaFromMiddle":F
    iget v2, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mScreenWidth:F

    div-float/2addr v2, v1

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 110
    .local v1, "distFromMiddle":F
    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private onLongPressDetected(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 114
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->isInArea(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onLongPressToUnstashTaskbar()Z

    move-result v0

    .line 116
    .local v0, "taskBarPressed":Z
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->setActive(Landroid/view/MotionEvent;)V

    .line 120
    .end local v0    # "taskBarPressed":Z
    :cond_0
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mDelegate:Lcom/android/quickstep/InputConsumer;

    invoke-interface {v0}, Lcom/android/quickstep/InputConsumer;->getType()I

    move-result v0

    or-int/lit16 v0, v0, 0x1000

    return v0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 70
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mLongPressDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 71
    iget v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mDelegate:Lcom/android/quickstep/InputConsumer;

    invoke-interface {v0, p1}, Lcom/android/quickstep/InputConsumer;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 74
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 76
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 77
    .local v2, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 88
    :pswitch_0
    iget-boolean v3, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mCanceledUnstashHint:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mDownX:F

    sub-float/2addr v3, v0

    iget v5, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mDownY:F

    sub-float/2addr v5, v2

    .line 89
    invoke-static {v3, v5}, Lcom/android/launcher3/Utilities;->squaredHypot(FF)F

    move-result v3

    iget v5, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mSquaredTouchSlop:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    .line 90
    iget-object v3, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->startTaskbarUnstashHint(Z)V

    .line 92
    iput-boolean v1, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mCanceledUnstashHint:Z

    goto :goto_0

    .line 97
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mCanceledUnstashHint:Z

    if-nez v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->startTaskbarUnstashHint(Z)V

    goto :goto_0

    .line 79
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->isInArea(F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    iput v0, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mDownX:F

    .line 81
    iput v2, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mDownY:F

    .line 82
    iget-object v3, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->startTaskbarUnstashHint(Z)V

    .line 84
    iput-boolean v4, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->mCanceledUnstashHint:Z

    .line 105
    .end local v0    # "x":F
    .end local v2    # "y":F
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
