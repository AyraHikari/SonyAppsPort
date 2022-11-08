.class public Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;
.super Lcom/android/launcher3/views/AbstractSlideInView;
.source "AddItemWidgetsBottomSheet.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/views/AbstractSlideInView<",
        "Lcom/android/launcher3/dragndrop/AddItemActivity;",
        ">;",
        "Landroid/view/View$OnApplyWindowInsetsListener;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CLOSE_DURATION:I = 0xc8


# instance fields
.field private mContentHorizontalMarginInPx:I

.field private final mInsets:Landroid/graphics/Rect;

.field private mWidgetPreviewScrollView:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/views/AbstractSlideInView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    .line 60
    invoke-virtual {p0}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->widget_list_horizontal_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mContentHorizontalMarginInPx:I

    .line 62
    return-void
.end method

.method private animateOpen()V
    .locals 6

    .line 133
    iget-boolean v0, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mIsOpen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mIsOpen:Z

    .line 137
    iget-object v1, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-array v2, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v3, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->TRANSLATION_SHIFT:Landroid/util/Property;

    new-array v0, v0, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v0, v5

    .line 138
    invoke-static {v3, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v2, v5

    .line 137
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 139
    iget-object v0, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 140
    iget-object v0, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 141
    return-void

    .line 134
    :cond_1
    :goto_0
    return-void
.end method

.method private static setContentHorizontalMargin(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "contentHorizontalMargin"    # I

    .line 189
    nop

    .line 190
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 191
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 192
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 193
    return-void
.end method


# virtual methods
.method protected getScrimColor(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 155
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

    .line 145
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->handleClose(ZJ)V

    .line 146
    return-void
.end method

.method protected isOfType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 150
    and-int/lit16 v0, p1, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "windowInsets"    # Landroid/view/WindowInsets;

    .line 161
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-eqz v0, :cond_0

    .line 162
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 163
    .local v0, "insets":Landroid/graphics/Insets;
    iget-object v1, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Insets;->left:I

    iget v3, v0, Landroid/graphics/Insets;->top:I

    iget v4, v0, Landroid/graphics/Insets;->right:I

    iget v5, v0, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 164
    .end local v0    # "insets":Landroid/graphics/Insets;
    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    .line 166
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 167
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    .line 168
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    .line 165
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 170
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mContent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mContent:Landroid/view/ViewGroup;

    .line 171
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 170
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 173
    invoke-virtual {p0}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->widget_list_horizontal_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 175
    .local v0, "contentHorizontalMarginInPx":I
    iget v1, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mContentHorizontalMarginInPx:I

    if-eq v0, v1, :cond_1

    .line 176
    sget v1, Lcom/android/launcher3/R$id;->widget_appName:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->setContentHorizontalMargin(Landroid/view/View;I)V

    .line 178
    sget v1, Lcom/android/launcher3/R$id;->widget_drag_instruction:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->setContentHorizontalMargin(Landroid/view/View;I)V

    .line 180
    sget v1, Lcom/android/launcher3/R$id;->widget_cell:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->setContentHorizontalMargin(Landroid/view/View;I)V

    .line 181
    sget v1, Lcom/android/launcher3/R$id;->actions_container:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->setContentHorizontalMargin(Landroid/view/View;I)V

    .line 183
    iput v0, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mContentHorizontalMarginInPx:I

    .line 185
    :cond_1
    return-object p2
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mNoIntercept:Z

    .line 82
    invoke-virtual {p0}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mWidgetPreviewScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mWidgetPreviewScrollView:Landroid/widget/ScrollView;

    .line 83
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-lez v0, :cond_0

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mNoIntercept:Z

    .line 87
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 127
    invoke-super {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->onFinishInflate()V

    .line 128
    sget v0, Lcom/android/launcher3/R$id;->add_item_bottom_sheet_content:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mContent:Landroid/view/ViewGroup;

    .line 129
    sget v0, Lcom/android/launcher3/R$id;->widget_preview_scroll_view:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mWidgetPreviewScrollView:Landroid/widget/ScrollView;

    .line 130
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 92
    sub-int v0, p4, p2

    .line 93
    .local v0, "width":I
    sub-int v1, p5, p3

    .line 96
    .local v1, "height":I
    iget-object v2, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    .line 97
    .local v2, "contentWidth":I
    sub-int v3, v0, v2

    iget-object v4, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    .line 98
    .local v3, "contentLeft":I
    iget-object v4, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mContent:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    sub-int v5, v1, v5

    add-int v6, v3, v2

    invoke-virtual {v4, v3, v5, v6, v1}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 101
    iget v4, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mTranslationShift:F

    invoke-virtual {p0, v4}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->setTranslationShift(F)V

    .line 102
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 106
    iget-object v0, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/dragndrop/AddItemActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 108
    .local v0, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v1, :cond_0

    .line 109
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightMargin:I

    .line 110
    .local v1, "margin":I
    mul-int/lit8 v2, v1, 0x2

    iget-object v3, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 111
    .local v1, "widthUsed":I
    goto :goto_0

    .end local v1    # "widthUsed":I
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-lez v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    .restart local v1    # "widthUsed":I
    goto :goto_0

    .line 114
    .end local v1    # "widthUsed":I
    :cond_1
    iget-object v1, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    .line 115
    .local v1, "padding":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v1, v2

    .line 119
    .local v1, "widthUsed":I
    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mContent:Landroid/view/ViewGroup;

    iget v8, v0, Lcom/android/launcher3/DeviceProfile;->bottomSheetTopPadding:I

    move-object v3, p0

    move v5, p1

    move v6, v1

    move v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 121
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 122
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 121
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->setMeasuredDimension(II)V

    .line 123
    return-void
.end method

.method public show()V
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 69
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 70
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->attachToContainer()V

    .line 73
    invoke-virtual {p0, p0}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 74
    invoke-direct {p0}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->animateOpen()V

    .line 75
    return-void
.end method
