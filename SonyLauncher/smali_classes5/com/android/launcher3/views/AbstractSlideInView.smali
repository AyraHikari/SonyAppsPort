.class public abstract Lcom/android/launcher3/views/AbstractSlideInView;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "AbstractSlideInView.java"

# interfaces
.implements Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Lcom/android/launcher3/AbstractFloatingView;",
        "Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;"
    }
.end annotation


# static fields
.field protected static final TRANSLATION_SHIFT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/views/AbstractSlideInView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected static final TRANSLATION_SHIFT_CLOSED:F = 1.0f

.field protected static final TRANSLATION_SHIFT_OPENED:F


# instance fields
.field protected final mActivityContext:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mColorScrim:Landroid/view/View;

.field protected mContent:Landroid/view/ViewGroup;

.field protected mNoIntercept:Z

.field protected mOnCloseListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

.field protected mScrollInterpolator:Landroid/view/animation/Interpolator;

.field protected final mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

.field protected mTranslationShift:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 53
    new-instance v0, Lcom/android/launcher3/views/AbstractSlideInView$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "translationShift"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/views/AbstractSlideInView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/views/AbstractSlideInView;->TRANSLATION_SHIFT:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 85
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOnCloseListeners:Ljava/util/List;

    .line 86
    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    .line 88
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->SCROLL_CUBIC:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 89
    new-instance v0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    sget-object v1, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->VERTICAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-direct {v0, p1, p0, v1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;-><init>(Landroid/content/Context;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V

    iput-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    .line 92
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    .line 93
    new-instance v1, Lcom/android/launcher3/views/AbstractSlideInView$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/views/AbstractSlideInView$2;-><init>(Lcom/android/launcher3/views/AbstractSlideInView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->getScrimColor(Landroid/content/Context;)I

    move-result v0

    .line 101
    .local v0, "scrimColor":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/views/AbstractSlideInView;->createColorScrim(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mColorScrim:Landroid/view/View;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/views/AbstractSlideInView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/views/AbstractSlideInView;

    .line 50
    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->announceAccessibilityChanges()V

    return-void
.end method

.method private isOpeningAnimationRunning()Z
    .locals 1

    .line 171
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mIsOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addOnCloseListener(Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;

    .line 209
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOnCloseListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    return-void
.end method

.method protected attachToContainer()V
    .locals 2

    .line 105
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mColorScrim:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mColorScrim:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->addView(Landroid/view/View;)V

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->addView(Landroid/view/View;)V

    .line 109
    return-void
.end method

.method protected createColorScrim(Landroid/content/Context;I)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bgColor"    # I

    .line 259
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 260
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->forceHasOverlappingRendering(Z)V

    .line 261
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 263
    new-instance v1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    .line 264
    .local v1, "lp":Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->ignoreInsets:Z

    .line 265
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    return-object v0
.end method

.method protected getIdleInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 242
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method protected getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;
    .locals 1

    .line 255
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    return-object v0
.end method

.method protected getScrimColor(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 115
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    const/4 v0, -0x1

    return v0
.end method

.method protected getShiftRange()F
    .locals 1

    .line 122
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method protected handleClose(ZJ)V
    .locals 6
    .param p1, "animate"    # Z
    .param p2, "defaultDuration"    # J

    .line 213
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mIsOpen:Z

    if-nez v0, :cond_0

    .line 214
    return-void

    .line 216
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_1

    .line 217
    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 218
    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/AbstractSlideInView;->setTranslationShift(F)V

    .line 219
    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->onCloseComplete()V

    .line 220
    return-void

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v4, Lcom/android/launcher3/views/AbstractSlideInView;->TRANSLATION_SHIFT:Landroid/util/Property;

    new-array v2, v2, [F

    const/4 v5, 0x0

    aput v0, v2, v5

    .line 223
    invoke-static {v4, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v3, v5

    .line 222
    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 224
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher3/views/AbstractSlideInView$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/views/AbstractSlideInView$3;-><init>(Lcom/android/launcher3/views/AbstractSlideInView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 231
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->isIdleState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    .line 233
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 234
    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getIdleInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 238
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 239
    return-void
.end method

.method protected isEventOverContent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 167
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onCloseComplete()V
    .locals 2

    .line 246
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mIsOpen:Z

    .line 247
    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->removeView(Landroid/view/View;)V

    .line 248
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mColorScrim:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mColorScrim:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->removeView(Landroid/view/View;)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOnCloseListeners:Ljava/util/List;

    new-instance v1, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 252
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 135
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mNoIntercept:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 136
    return v1

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->isIdleState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 141
    .local v0, "directionsToDetectScroll":I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->setDetectableScrollConditions(IZ)V

    .line 143
    iget-object v2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 144
    iget-object v2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v2}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->isDraggingOrSettling()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->isEventOverContent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 149
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->isIdleState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->isOpeningAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->isEventOverContent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0, v1}, Lcom/android/launcher3/views/AbstractSlideInView;->close(Z)V

    .line 157
    :cond_0
    return v1
.end method

.method public onDrag(F)Z
    .locals 2
    .param p1, "displacement"    # F

    .line 181
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getShiftRange()F

    move-result v0

    .line 182
    .local v0, "range":F
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    .line 183
    div-float v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/views/AbstractSlideInView;->setTranslationShift(F)V

    .line 184
    const/4 v1, 0x1

    return v1
.end method

.method public onDragEnd(F)V
    .locals 7
    .param p1, "velocity"    # F

    .line 189
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_0

    .line 190
    const v0, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    .line 191
    .local v0, "successfulShiftThreshold":F
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->isFling(F)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    cmpl-float v1, p1, v2

    if-gtz v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_3

    .line 193
    :cond_2
    invoke-static {p1}, Lcom/android/launcher3/anim/Interpolators;->scrollInterpolatorForVelocity(F)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 194
    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    const/high16 v2, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    sub-float/2addr v2, v4

    invoke-static {p1, v2}, Lcom/android/launcher3/touch/BaseSwipeDetector;->calculateDuration(FF)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 196
    invoke-virtual {p0, v3}, Lcom/android/launcher3/views/AbstractSlideInView;->close(Z)V

    goto :goto_1

    .line 198
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-array v4, v3, [Landroid/animation/PropertyValuesHolder;

    sget-object v5, Lcom/android/launcher3/views/AbstractSlideInView;->TRANSLATION_SHIFT:Landroid/util/Property;

    new-array v3, v3, [F

    const/4 v6, 0x0

    aput v2, v3, v6

    invoke-static {v5, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 200
    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    iget v2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    .line 201
    invoke-static {p1, v2}, Lcom/android/launcher3/touch/BaseSwipeDetector;->calculateDuration(FF)J

    move-result-wide v2

    .line 200
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    .line 202
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 203
    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 205
    :goto_1
    return-void
.end method

.method public onDragStart(ZF)V
    .locals 0
    .param p1, "start"    # Z
    .param p2, "startDisplacement"    # F

    .line 177
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    return-void
.end method

.method protected setTranslationShift(F)V
    .locals 3
    .param p1, "translationShift"    # F

    .line 126
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    iput p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    .line 127
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getShiftRange()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 128
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mColorScrim:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 129
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 131
    :cond_0
    return-void
.end method
