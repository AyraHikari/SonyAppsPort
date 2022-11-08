.class public Lcom/android/launcher3/taskbar/RecentsHitboxExtender;
.super Ljava/lang/Object;
.source "RecentsHitboxExtender.java"

# interfaces
.implements Lcom/android/launcher3/util/TouchController;


# static fields
.field private static final RECENTS_HITBOX_TIMEOUT_MS:I = 0x1f4


# instance fields
.field private mAnimatingFromTaskbarToOverview:Z

.field private mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field private mHandler:Landroid/os/Handler;

.field private mLastIconAlignment:F

.field private mParentCoordSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "[F>;"
        }
    .end annotation
.end field

.field private mRecentsButton:Landroid/view/View;

.field private mRecentsButtonClicked:Z

.field private final mRecentsHitBox:Landroid/graphics/Rect;

.field private final mRecentsHitboxResetRunnable:Ljava/lang/Runnable;

.field private mRecentsParent:Landroid/view/View;

.field private mRecentsTouchDelegate:Landroid/view/TouchDelegate;


# direct methods
.method public static synthetic $r8$lambda$KNB17KDZh8Drf04DWoN6U4pAR94(Lcom/android/launcher3/taskbar/RecentsHitboxExtender;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->reset()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsHitBox:Landroid/graphics/Rect;

    .line 56
    new-instance v0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/RecentsHitboxExtender$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/taskbar/RecentsHitboxExtender;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsHitboxResetRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private reset()V
    .locals 3

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mAnimatingFromTaskbarToOverview:Z

    .line 113
    iget-object v1, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 114
    iget-object v1, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsHitBox:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 115
    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsButtonClicked:Z

    .line 116
    return-void
.end method


# virtual methods
.method public extendedHitboxEnabled()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mAnimatingFromTaskbarToOverview:Z

    return v0
.end method

.method public init(Landroid/view/View;Landroid/view/View;Lcom/android/launcher3/DeviceProfile;Ljava/util/function/Supplier;Landroid/os/Handler;)V
    .locals 0
    .param p1, "recentsButton"    # Landroid/view/View;
    .param p2, "recentsParent"    # Landroid/view/View;
    .param p3, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Lcom/android/launcher3/DeviceProfile;",
            "Ljava/util/function/Supplier<",
            "[F>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 60
    .local p4, "parentCoordSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<[F>;"
    iput-object p1, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsButton:Landroid/view/View;

    .line 61
    iput-object p2, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsParent:Landroid/view/View;

    .line 62
    iput-object p3, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 63
    iput-object p4, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mParentCoordSupplier:Ljava/util/function/Supplier;

    .line 64
    iput-object p5, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mHandler:Landroid/os/Handler;

    .line 65
    return-void
.end method

.method public onAnimationProgressToOverview(F)V
    .locals 7
    .param p1, "progress"    # F

    .line 75
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    cmpl-float v1, p1, v2

    if-nez v1, :cond_2

    .line 77
    :cond_0
    iput p1, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mLastIconAlignment:F

    .line 78
    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mAnimatingFromTaskbarToOverview:Z

    if-eqz v1, :cond_2

    .line 79
    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsHitboxResetRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 82
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsHitboxResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->reset()V

    .line 91
    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mAnimatingFromTaskbarToOverview:Z

    if-eqz v0, :cond_3

    .line 92
    return-void

    .line 95
    :cond_3
    cmpl-float v0, p1, v2

    if-lez v0, :cond_4

    iget v0, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mLastIconAlignment:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsButtonClicked:Z

    if-eqz v0, :cond_4

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mAnimatingFromTaskbarToOverview:Z

    .line 98
    iget-object v1, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mParentCoordSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 99
    .local v1, "recentsCoords":[F
    const/4 v2, 0x0

    aget v2, v1, v2

    float-to-int v2, v2

    .line 100
    .local v2, "x":I
    aget v0, v1, v0

    float-to-int v0, v0

    .line 102
    .local v0, "y":I
    iget-object v3, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsHitBox:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsButton:Landroid/view/View;

    .line 103
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsButton:Landroid/view/View;

    .line 104
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v6}, Lcom/android/launcher3/DeviceProfile;->getTaskbarOffsetY()I

    move-result v6

    add-int/2addr v5, v6

    .line 102
    invoke-virtual {v3, v2, v0, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 106
    new-instance v3, Landroid/view/TouchDelegate;

    iget-object v4, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsHitBox:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsButton:Landroid/view/View;

    invoke-direct {v3, v4, v5}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsTouchDelegate:Landroid/view/TouchDelegate;

    .line 107
    iget-object v4, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsParent:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 109
    .end local v0    # "y":I
    .end local v1    # "recentsCoords":[F
    .end local v2    # "x":I
    :cond_4
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsHitBox:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 127
    iget-object v0, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsTouchDelegate:Landroid/view/TouchDelegate;

    invoke-virtual {v0, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onRecentsButtonClicked()V
    .locals 1

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->mRecentsButtonClicked:Z

    .line 69
    return-void
.end method
