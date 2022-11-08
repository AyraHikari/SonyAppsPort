.class public Lcom/android/quickstep/fallback/FallbackNavBarTouchController;
.super Ljava/lang/Object;
.source "FallbackNavBarTouchController.java"

# interfaces
.implements Lcom/android/launcher3/util/TouchController;
.implements Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker$OnSwipeUpListener;


# instance fields
.field private final mActivity:Lcom/android/quickstep/RecentsActivity;

.field private final mTriggerSwipeUpTracker:Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/RecentsActivity;)V
    .locals 8
    .param p1, "activity"    # Lcom/android/quickstep/RecentsActivity;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/quickstep/fallback/FallbackNavBarTouchController;->mActivity:Lcom/android/quickstep/RecentsActivity;

    .line 43
    invoke-static {p1}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    .line 44
    .local v0, "sysUINavigationMode":Lcom/android/launcher3/util/DisplayController$NavigationMode;
    sget-object v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne v0, v1, :cond_0

    .line 45
    new-instance v5, Lcom/android/quickstep/util/NavBarPosition;

    sget-object v1, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 46
    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Lcom/android/quickstep/util/NavBarPosition;-><init>(Lcom/android/launcher3/util/DisplayController$NavigationMode;Lcom/android/launcher3/util/DisplayController$Info;)V

    .line 47
    .local v5, "navBarPosition":Lcom/android/quickstep/util/NavBarPosition;
    new-instance v1, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v2, v1

    move-object v3, p1

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;-><init>(Landroid/content/Context;ZLcom/android/quickstep/util/NavBarPosition;Ljava/lang/Runnable;Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker$OnSwipeUpListener;)V

    iput-object v1, p0, Lcom/android/quickstep/fallback/FallbackNavBarTouchController;->mTriggerSwipeUpTracker:Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;

    .line 50
    .end local v5    # "navBarPosition":Lcom/android/quickstep/util/NavBarPosition;
    goto :goto_0

    .line 51
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/quickstep/fallback/FallbackNavBarTouchController;->mTriggerSwipeUpTracker:Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;

    .line 53
    :goto_0
    return-void
.end method


# virtual methods
.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 58
    .local v0, "cameFromNavBar":Z
    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/quickstep/fallback/FallbackNavBarTouchController;->mTriggerSwipeUpTracker:Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;

    if-eqz v2, :cond_2

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/android/quickstep/fallback/FallbackNavBarTouchController;->mTriggerSwipeUpTracker:Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;

    invoke-virtual {v1}, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->init()V

    .line 62
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/quickstep/fallback/FallbackNavBarTouchController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    .line 63
    iget-object v1, p0, Lcom/android/quickstep/fallback/FallbackNavBarTouchController;->mTriggerSwipeUpTracker:Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;

    invoke-virtual {v1}, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->interceptedTouch()Z

    move-result v1

    return v1

    .line 65
    :cond_2
    return v1
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 70
    iget-object v0, p0, Lcom/android/quickstep/fallback/FallbackNavBarTouchController;->mTriggerSwipeUpTracker:Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, p1}, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 72
    const/4 v0, 0x1

    return v0

    .line 74
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSwipeUp(ZLandroid/graphics/PointF;)V
    .locals 1
    .param p1, "wasFling"    # Z
    .param p2, "finalVelocity"    # Landroid/graphics/PointF;

    .line 79
    iget-object v0, p0, Lcom/android/quickstep/fallback/FallbackNavBarTouchController;->mActivity:Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/fallback/FallbackRecentsView;->startHome()V

    .line 80
    return-void
.end method

.method public onSwipeUpCancelled()V
    .locals 0

    .line 83
    return-void
.end method
