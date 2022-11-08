.class public Lcom/android/launcher3/taskbar/TaskbarEduView;
.super Lcom/android/launcher3/views/AbstractSlideInView;
.source "TaskbarEduView.java"

# interfaces
.implements Lcom/android/launcher3/Insettable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/views/AbstractSlideInView<",
        "Lcom/android/launcher3/taskbar/TaskbarActivityContext;",
        ">;",
        "Lcom/android/launcher3/Insettable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CLOSE_DURATION:I = 0xc8

.field private static final DEFAULT_OPEN_DURATION:I = 0x1f4


# instance fields
.field private mEndButton:Landroid/widget/Button;

.field private final mInsets:Landroid/graphics/Rect;

.field private mPagedView:Lcom/android/launcher3/taskbar/TaskbarEduPagedView;

.field private mStartButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/taskbar/TaskbarEduView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/views/AbstractSlideInView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduView;->mInsets:Landroid/graphics/Rect;

    .line 53
    return-void
.end method

.method private animateOpen()V
    .locals 6

    .line 136
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduView;->mIsOpen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduView;->mIsOpen:Z

    .line 140
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarEduView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-array v2, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v3, Lcom/android/launcher3/taskbar/TaskbarEduView;->TRANSLATION_SHIFT:Landroid/util/Property;

    new-array v0, v0, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v0, v5

    .line 141
    invoke-static {v3, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v2, v5

    .line 140
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 142
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->AGGRESSIVE_EASE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 143
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 144
    return-void

    .line 137
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected attachToContainer()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduView;->mColorScrim:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarEduView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarEduView;->mColorScrim:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/views/BaseDragLayer;->addView(Landroid/view/View;I)V

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarEduView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->addView(Landroid/view/View;I)V

    .line 94
    return-void
.end method

.method protected getAccessibilityTarget()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduView;->mContent:Landroid/view/ViewGroup;

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarEduView;->mIsOpen:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarEduView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->taskbar_edu_opened:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarEduView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->taskbar_edu_closed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    :goto_0
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected getScrimColor(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$color;->widgets_picker_scrim:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected handleClose(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 63
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarEduView;->handleClose(ZJ)V

    .line 64
    return-void
.end method

.method protected init(Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;)V
    .locals 1
    .param p1, "callbacks"    # Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;

    .line 56
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduView;->mPagedView:Lcom/android/launcher3/taskbar/TaskbarEduPagedView;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarEduPagedView;->setControllerCallbacks(Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;)V

    .line 59
    :cond_0
    return-void
.end method

.method protected isOfType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 68
    const/high16 v0, 0x10000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 98
    invoke-super {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->onDetachedFromWindow()V

    .line 100
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_taskbar_education_showing"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 102
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 73
    invoke-super {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->onFinishInflate()V

    .line 74
    sget v0, Lcom/android/launcher3/R$id;->edu_view:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarEduView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduView;->mContent:Landroid/view/ViewGroup;

    .line 75
    sget v0, Lcom/android/launcher3/R$id;->edu_start_button:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarEduView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduView;->mStartButton:Landroid/widget/Button;

    .line 76
    sget v0, Lcom/android/launcher3/R$id;->edu_end_button:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarEduView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduView;->mEndButton:Landroid/widget/Button;

    .line 77
    sget v0, Lcom/android/launcher3/R$id;->content:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarEduView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/taskbar/TaskbarEduPagedView;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduView;->mPagedView:Lcom/android/launcher3/taskbar/TaskbarEduPagedView;

    .line 78
    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarEduPagedView;->setTaskbarEduView(Lcom/android/launcher3/taskbar/TaskbarEduView;)V

    .line 79
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 123
    sub-int v0, p4, p2

    .line 124
    .local v0, "width":I
    sub-int v1, p5, p3

    .line 127
    .local v1, "height":I
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarEduView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    .line 128
    .local v2, "contentWidth":I
    sub-int v3, v0, v2

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarEduView;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarEduView;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarEduView;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    .line 129
    .local v3, "contentLeft":I
    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarEduView;->mContent:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/launcher3/taskbar/TaskbarEduView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    sub-int v5, v1, v5

    add-int v6, v3, v2

    invoke-virtual {v4, v3, v5, v6, v1}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 132
    iget v4, p0, Lcom/android/launcher3/taskbar/TaskbarEduView;->mTranslationShift:F

    invoke-virtual {p0, v4}, Lcom/android/launcher3/taskbar/TaskbarEduView;->setTranslationShift(F)V

    .line 133
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 84
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduView;->mContent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarEduView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarEduView;->mContent:Landroid/view/ViewGroup;

    .line 85
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarEduView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 84
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 86
    return-void
.end method

.method public show()V
    .locals 0

    .line 106
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarEduView;->attachToContainer()V

    .line 107
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarEduView;->animateOpen()V

    .line 108
    return-void
.end method

.method snapToPage(I)V
    .locals 1
    .param p1, "page"    # I

    .line 147
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduView;->mPagedView:Lcom/android/launcher3/taskbar/TaskbarEduPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarEduPagedView;->snapToPage(I)Z

    .line 148
    return-void
.end method

.method updateEndButton(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "textResId"    # I
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 156
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 157
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    return-void
.end method

.method updateStartButton(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "textResId"    # I
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 151
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduView;->mStartButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduView;->mStartButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    return-void
.end method
