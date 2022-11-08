.class public Lcom/android/launcher3/widget/WidgetsBottomSheet;
.super Lcom/android/launcher3/widget/BaseWidgetSheet;
.source "WidgetsBottomSheet.java"


# static fields
.field private static final DEFAULT_CLOSE_DURATION:I = 0xc8

.field private static final EDUCATION_TIP_DELAY_MS:J = 0x12cL

.field private static final PADDING_BOTTOM:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WidgetsBottomSheet"


# instance fields
.field private final mLayoutChangeListenerToShowTips:Landroid/view/View$OnLayoutChangeListener;

.field private mMaxHorizontalSpan:I

.field private mOriginalItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

.field private final mShowEducationTipTask:Ljava/lang/Runnable;

.field private final mWidgetCellHorizontalPadding:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmShowEducationTipTask(Lcom/android/launcher3/widget/WidgetsBottomSheet;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mShowEducationTipTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Lcom/android/launcher3/widget/WidgetsBottomSheet$1;

    const-string v1, "paddingBottom"

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/WidgetsBottomSheet$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->PADDING_BOTTOM:Landroid/util/IntProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/widget/BaseWidgetSheet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mMaxHorizontalSpan:I

    .line 75
    new-instance v0, Lcom/android/launcher3/widget/WidgetsBottomSheet$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet$2;-><init>(Lcom/android/launcher3/widget/WidgetsBottomSheet;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mLayoutChangeListenerToShowTips:Landroid/view/View$OnLayoutChangeListener;

    .line 92
    new-instance v1, Lcom/android/launcher3/widget/WidgetsBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/widget/WidgetsBottomSheet;)V

    iput-object v1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mShowEducationTipTask:Ljava/lang/Runnable;

    .line 110
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->setWillNotDraw(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->hasSeenEducationTip()Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->widget_cell_horizontal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mWidgetCellHorizontalPadding:I

    .line 116
    return-void
.end method

.method private animateOpen()V
    .locals 6

    .line 226
    iget-boolean v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mIsOpen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mIsOpen:Z

    .line 230
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->setupNavBarColor()V

    .line 231
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-array v2, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v3, Lcom/android/launcher3/widget/WidgetsBottomSheet;->TRANSLATION_SHIFT:Landroid/util/Property;

    new-array v0, v0, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v0, v5

    .line 232
    invoke-static {v3, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v2, v5

    .line 231
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 233
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 234
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 235
    return-void

    .line 227
    :cond_1
    :goto_0
    return-void
.end method

.method private updateMaxSpansPerRow()Z
    .locals 3

    .line 134
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getMeasuredWidth()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mContent:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mWidgetCellHorizontalPadding:I

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->computeMaxHorizontalSpans(Landroid/view/View;I)I

    move-result v0

    .line 137
    .local v0, "maxHorizontalSpan":I
    iget v2, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mMaxHorizontalSpan:I

    if-eq v2, v0, :cond_1

    .line 139
    iput v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mMaxHorizontalSpan:I

    .line 140
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->onWidgetsBound()V

    .line 141
    const/4 v1, 0x1

    return v1

    .line 143
    :cond_1
    return v1
.end method


# virtual methods
.method public addHintCloseAnim(FLandroid/view/animation/Interpolator;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 2
    .param p1, "distanceToMove"    # F
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "target"    # Lcom/android/launcher3/anim/PendingAnimation;

    .line 279
    sget-object v0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->PADDING_BOTTOM:Landroid/util/IntProperty;

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {p3, p0, v0, v1, p2}, Lcom/android/launcher3/anim/PendingAnimation;->setInt(Ljava/lang/Object;Landroid/util/IntProperty;ILandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 280
    return-void
.end method

.method protected addItemCell(Landroid/view/ViewGroup;)Lcom/android/launcher3/widget/WidgetCell;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 212
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$layout;->widget_cell:I

    .line 213
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetCell;

    .line 215
    .local v0, "widget":Lcom/android/launcher3/widget/WidgetCell;
    sget v1, Lcom/android/launcher3/R$id;->widget_preview_container:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 216
    .local v1, "previewContainer":Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 218
    invoke-virtual {v0, v2}, Lcom/android/launcher3/widget/WidgetCell;->setAnimatePreview(Z)V

    .line 219
    const/16 v2, -0x70

    invoke-virtual {v0, v2}, Lcom/android/launcher3/widget/WidgetCell;->setSourceContainer(I)V

    .line 221
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 222
    return-object v0
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

    .line 272
    sget v0, Lcom/android/launcher3/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 273
    iget-boolean v2, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mIsOpen:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/android/launcher3/R$string;->widgets_list:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/android/launcher3/R$string;->widgets_list_closed:I

    .line 272
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected handleClose(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 239
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->handleClose(ZJ)V

    .line 240
    return-void
.end method

.method protected isOfType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 244
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$new$0$com-android-launcher3-widget-WidgetsBottomSheet()V
    .locals 2

    .line 93
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->hasSeenEducationTip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mLayoutChangeListenerToShowTips:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 95
    return-void

    .line 97
    :cond_0
    sget v0, Lcom/android/launcher3/R$id;->widgets_table:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 98
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, "viewForTip":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->showEducationTipOnViewIfPossible(Landroid/view/View;)Lcom/android/launcher3/views/ArrowTipView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mLayoutChangeListenerToShowTips:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 102
    :cond_1
    return-void
.end method

.method synthetic lambda$onWidgetsBound$1$com-android-launcher3-widget-WidgetsBottomSheet(Landroid/widget/TableRow;Lcom/android/launcher3/model/WidgetItem;)V
    .locals 1
    .param p1, "tableRow"    # Landroid/widget/TableRow;
    .param p2, "widgetItem"    # Lcom/android/launcher3/model/WidgetItem;

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->addItemCell(Landroid/view/ViewGroup;)Lcom/android/launcher3/widget/WidgetCell;

    move-result-object v0

    .line 192
    .local v0, "widget":Lcom/android/launcher3/widget/WidgetCell;
    invoke-virtual {v0, p2}, Lcom/android/launcher3/widget/WidgetCell;->applyFromCellItem(Lcom/android/launcher3/model/WidgetItem;)V

    .line 193
    return-void
.end method

.method synthetic lambda$onWidgetsBound$2$com-android-launcher3-widget-WidgetsBottomSheet(Landroid/widget/TableLayout;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "widgetsTable"    # Landroid/widget/TableLayout;
    .param p2, "row"    # Ljava/util/ArrayList;

    .line 188
    new-instance v0, Landroid/widget/TableRow;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 189
    .local v0, "tableRow":Landroid/widget/TableRow;
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setGravity(I)V

    .line 190
    new-instance v1, Lcom/android/launcher3/widget/WidgetsBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/widget/WidgetsBottomSheet;Landroid/widget/TableRow;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 194
    invoke-virtual {p1, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 195
    return-void
.end method

.method protected onContentHorizontalMarginChanged(I)V
    .locals 1
    .param p1, "contentHorizontalMarginInPx"    # I

    .line 264
    sget v0, Lcom/android/launcher3/R$id;->widgets_table:I

    .line 265
    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 266
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 267
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 268
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mNoIntercept:Z

    .line 202
    sget v0, Lcom/android/launcher3/R$id;->widgets_table_scroll_view:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 203
    .local v0, "scrollView":Landroid/widget/ScrollView;
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-lez v1, :cond_0

    .line 205
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mNoIntercept:Z

    .line 208
    .end local v0    # "scrollView":Landroid/widget/ScrollView;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/widget/BaseWidgetSheet;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->onFinishInflate()V

    .line 121
    sget v0, Lcom/android/launcher3/R$id;->widgets_bottom_sheet:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mContent:Landroid/view/ViewGroup;

    .line 122
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 148
    sub-int v0, p4, p2

    .line 149
    .local v0, "width":I
    sub-int v1, p5, p3

    .line 152
    .local v1, "height":I
    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    .line 153
    .local v2, "contentWidth":I
    sub-int v3, v0, v2

    iget-object v4, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    .line 154
    .local v3, "contentLeft":I
    iget-object v4, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mContent:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    sub-int v5, v1, v5

    add-int v6, v3, v2

    invoke-virtual {v4, v3, v5, v6, v1}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 157
    iget v4, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationShift:F

    invoke-virtual {p0, v4}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->setTranslationShift(F)V

    .line 159
    sget v4, Lcom/android/launcher3/R$id;->widgets_table_scroll_view:I

    invoke-virtual {p0, v4}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    .line 160
    .local v4, "widgetsTableScrollView":Landroid/widget/ScrollView;
    sget v5, Lcom/android/launcher3/R$id;->widgets_table:I

    invoke-virtual {p0, v5}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TableLayout;

    .line 161
    .local v5, "widgetsTable":Landroid/widget/TableLayout;
    invoke-virtual {v5}, Landroid/widget/TableLayout;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v7

    if-le v6, v7, :cond_0

    .line 162
    sget v6, Lcom/android/launcher3/R$id;->collapse_handle:I

    invoke-virtual {p0, v6}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 164
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 126
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->doMeasure(II)V

    .line 127
    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->updateMaxSpansPerRow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->doMeasure(II)V

    .line 130
    :cond_0
    return-void
.end method

.method public onWidgetsBound()V
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/util/PackageUserKey;

    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOriginalItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 180
    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOriginalItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 178
    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/PopupDataProvider;->getWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object v0

    .line 183
    .local v0, "widgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    sget v1, Lcom/android/launcher3/R$id;->widgets_table:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    .line 184
    .local v1, "widgetsTable":Landroid/widget/TableLayout;
    invoke-virtual {v1}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 186
    iget v2, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mMaxHorizontalSpan:I

    invoke-static {v0, v2}, Lcom/android/launcher3/widget/util/WidgetsTableUtils;->groupWidgetItemsIntoTableWithReordering(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/widget/WidgetsBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1}, Lcom/android/launcher3/widget/WidgetsBottomSheet$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/widget/WidgetsBottomSheet;Landroid/widget/TableLayout;)V

    .line 187
    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 196
    return-void
.end method

.method public populateAndShow(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 2
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 167
    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOriginalItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 168
    sget v0, Lcom/android/launcher3/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOriginalItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->onWidgetsBound()V

    .line 171
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->attachToContainer()V

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mIsOpen:Z

    .line 173
    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->animateOpen()V

    .line 174
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 249
    invoke-super {p0, p1}, Lcom/android/launcher3/widget/BaseWidgetSheet;->setInsets(Landroid/graphics/Rect;)V

    .line 250
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mNavBarScrimHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 252
    .local v0, "bottomPadding":I
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mContent:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mContent:Landroid/view/ViewGroup;

    .line 253
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v4

    .line 252
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 255
    if-lez v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->setupNavBarColor()V

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->clearNavBarColor()V

    .line 260
    :goto_0
    return-void
.end method
