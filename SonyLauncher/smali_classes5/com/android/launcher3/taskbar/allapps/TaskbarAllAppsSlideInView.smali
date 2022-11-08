.class public Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;
.super Lcom/android/launcher3/views/AbstractSlideInView;
.source "TaskbarAllAppsSlideInView.java"

# interfaces
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/views/AbstractSlideInView<",
        "Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;",
        ">;",
        "Lcom/android/launcher3/Insettable;",
        "Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;"
    }
.end annotation


# instance fields
.field private mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

.field private mOnCloseBeginListener:Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;

.field private mShiftRange:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/views/AbstractSlideInView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method private setShiftRange(F)V
    .locals 0
    .param p1, "shiftRange"    # F

    .line 141
    iput p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->mShiftRange:F

    .line 142
    return-void
.end method


# virtual methods
.method getAppsView()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    return-object v0
.end method

.method protected getIdleInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 90
    sget-object v0, Lcom/android/systemui/animation/Interpolators;->EMPHASIZED_ACCELERATE:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method protected getScrimColor(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 118
    sget v0, Lcom/android/launcher3/R$color;->widgets_picker_scrim:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getShiftRange()F
    .locals 1

    .line 146
    iget v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->mShiftRange:F

    return v0
.end method

.method protected handleClose(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->mOnCloseBeginListener:Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 84
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    .line 85
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/LauncherState;->getTransitionDuration(Landroid/content/Context;Z)I

    move-result v0

    int-to-long v0, v0

    .line 84
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->handleClose(ZJ)V

    .line 86
    return-void
.end method

.method protected isEventOverContent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 151
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;->getVisibleContainerView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected isOfType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 95
    const/high16 v0, 0x20000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->mNoIntercept:Z

    .line 126
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 1
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;

    .line 136
    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->allAppsShiftRange:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->setShiftRange(F)V

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->setTranslationShift(F)V

    .line 138
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 100
    invoke-super {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->onFinishInflate()V

    .line 101
    sget v0, Lcom/android/launcher3/R$id;->apps_view:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    .line 102
    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->mContent:Landroid/view/ViewGroup;

    .line 104
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 105
    .local v0, "dp":Lcom/android/launcher3/DeviceProfile;
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->allAppsShiftRange:I

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->setShiftRange(F)V

    .line 107
    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 108
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 112
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/views/AbstractSlideInView;->onLayout(ZIIII)V

    .line 113
    iget v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->mTranslationShift:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->setTranslationShift(F)V

    .line 114
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 131
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;->setInsets(Landroid/graphics/Rect;)V

    .line 132
    return-void
.end method

.method setOnCloseBeginListener(Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;)V
    .locals 0
    .param p1, "onCloseBeginListener"    # Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;

    .line 78
    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->mOnCloseBeginListener:Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;

    .line 79
    return-void
.end method

.method show(Z)V
    .locals 7
    .param p1, "animate"    # Z

    .line 54
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->mIsOpen:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 57
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->mIsOpen:Z

    .line 58
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->attachToContainer()V

    .line 60
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 61
    iget-object v2, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-array v3, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v4, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->TRANSLATION_SHIFT:Landroid/util/Property;

    new-array v5, v0, [F

    const/4 v6, 0x0

    aput v1, v5, v6

    .line 62
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v3, v6

    .line 61
    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 63
    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->AGGRESSIVE_EASE:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 64
    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    .line 65
    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/LauncherState;->getTransitionDuration(Landroid/content/Context;Z)I

    move-result v0

    int-to-long v2, v0

    .line 64
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 67
    :cond_1
    iput v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->mTranslationShift:F

    .line 69
    :goto_0
    return-void

    .line 55
    :cond_2
    :goto_1
    return-void
.end method
