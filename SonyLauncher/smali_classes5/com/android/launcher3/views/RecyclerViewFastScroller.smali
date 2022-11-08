.class public Lcom/android/launcher3/views/RecyclerViewFastScroller;
.super Landroid/view/View;
.source "RecyclerViewFastScroller.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final FASTSCROLL_THRESHOLD_MILLIS:I = 0x28

.field private static final MAX_TRACK_ALPHA:I = 0x1e

.field private static final SCROLLBAR_LEFT_OFFSET_TOUCH_DELEGATE_DP:I = 0x5

.field private static final SCROLL_BAR_VIS_DURATION:I = 0x96

.field private static final SCROLL_DELTA_THRESHOLD_DP:I = 0x4

.field private static final SYSTEM_GESTURE_EXCLUSION_RECT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RecyclerViewFastScroller"

.field private static final TRACK_WIDTH:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/views/RecyclerViewFastScroller;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private final mCanThumbDetach:Z

.field private final mConfig:Landroid/view/ViewConfiguration;

.field private final mDeltaThreshold:F

.field private mDownTimeStampMillis:J

.field private mDownX:I

.field private mDownY:I

.field private mDy:I

.field private mIgnoreDragGesture:Z

.field private mIsDragging:Z

.field private mIsThumbDetached:Z

.field private mLastTouchY:F

.field private mLastY:I

.field private final mMaxWidth:I

.field private final mMinWidth:I

.field private mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mPopupSectionName:Ljava/lang/String;

.field private mPopupView:Landroid/widget/TextView;

.field private mPopupVisible:Z

.field protected mRv:Lcom/android/launcher3/FastScrollRecyclerView;

.field protected mRvOffsetY:I

.field private final mScrollbarLeftOffsetTouchDelegate:F

.field private mSystemGestureInsets:Landroid/graphics/Insets;

.field private final mThumbBounds:Landroid/graphics/RectF;

.field private final mThumbDrawOffset:Landroid/graphics/Point;

.field protected final mThumbHeight:I

.field protected mThumbOffsetY:I

.field private final mThumbPadding:I

.field private final mThumbPaint:Landroid/graphics/Paint;

.field protected mTouchOffsetY:I

.field private final mTrackPaint:Landroid/graphics/Paint;

.field private mWidth:I

.field private mWidthAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method static bridge synthetic -$$Nest$fgetmWidth(Lcom/android/launcher3/views/RecyclerViewFastScroller;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmDy(Lcom/android/launcher3/views/RecyclerViewFastScroller;I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDy:I

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTrackWidth(Lcom/android/launcher3/views/RecyclerViewFastScroller;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setTrackWidth(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->sTempRect:Landroid/graphics/Rect;

    .line 71
    new-instance v0, Lcom/android/launcher3/views/RecyclerViewFastScroller$1;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "width"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/views/RecyclerViewFastScroller$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->TRACK_WIDTH:Landroid/util/Property;

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 89
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->SYSTEM_GESTURE_EXCLUSION_RECT:Ljava/util/List;

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 148
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDy:I

    .line 108
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbBounds:Landroid/graphics/RectF;

    .line 109
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbDrawOffset:Landroid/graphics/Point;

    .line 150
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mTrackPaint:Landroid/graphics/Paint;

    .line 151
    const v2, 0x1010036

    invoke-static {p1, v2}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 154
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbPaint:Landroid/graphics/Paint;

    .line 155
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 156
    invoke-static {p1}, Lcom/android/launcher3/util/Themes;->getColorAccent(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 160
    .local v1, "res":Landroid/content/res/Resources;
    sget v2, Lcom/android/launcher3/R$dimen;->fastscroll_track_min_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mMinWidth:I

    iput v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mWidth:I

    .line 161
    sget v2, Lcom/android/launcher3/R$dimen;->fastscroll_track_max_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mMaxWidth:I

    .line 163
    sget v2, Lcom/android/launcher3/R$dimen;->fastscroll_thumb_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbPadding:I

    .line 164
    sget v2, Lcom/android/launcher3/R$dimen;->fastscroll_thumb_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbHeight:I

    .line 166
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mConfig:Landroid/view/ViewConfiguration;

    .line 167
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDeltaThreshold:F

    .line 168
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mScrollbarLeftOffsetTouchDelegate:F

    .line 171
    sget-object v2, Lcom/android/launcher3/R$styleable;->RecyclerViewFastScroller:[I

    .line 172
    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 173
    .local v2, "ta":Landroid/content/res/TypedArray;
    sget v3, Lcom/android/launcher3/R$styleable;->RecyclerViewFastScroller_canThumbDetach:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mCanThumbDetach:Z

    .line 174
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 175
    return-void
.end method

.method private animatePopupVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .line 421
    iget-boolean v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mPopupVisible:Z

    if-eq v0, p1, :cond_2

    .line 422
    iput-boolean p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mPopupVisible:Z

    .line 423
    iget-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 424
    iget-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_1

    const-wide/16 v1, 0xc8

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x96

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 426
    :cond_2
    return-void
.end method

.method private calcTouchOffsetAndPrepToFastScroll(II)V
    .locals 3
    .param p1, "downY"    # I
    .param p2, "lastY"    # I

    .line 311
    invoke-virtual {p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/util/UiThreadHelper;->hideKeyboardAsync(Lcom/android/launcher3/views/ActivityContext;Landroid/os/IBinder;)V

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIsDragging:Z

    .line 313
    iget-boolean v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mCanThumbDetach:Z

    if-eqz v1, :cond_0

    .line 314
    iput-boolean v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIsThumbDetached:Z

    .line 316
    :cond_0
    iget v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mTouchOffsetY:I

    sub-int v2, p2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mTouchOffsetY:I

    .line 317
    invoke-direct {p0, v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->animatePopupVisibility(Z)V

    .line 318
    invoke-direct {p0, v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->showActiveScrollbar(Z)V

    .line 319
    return-void
.end method

.method private getScrollThumbRadius()F
    .locals 2

    .line 378
    iget v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mWidth:I

    iget v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbPadding:I

    add-int/2addr v0, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method private isNearThumb(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 399
    iget v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    sub-int v0, p2, v0

    .line 401
    .local v0, "offset":I
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getWidth()I

    move-result v1

    if-ge p1, v1, :cond_0

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbHeight:I

    if-gt v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setTrackWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .line 224
    iget v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mWidth:I

    if-ne v0, p1, :cond_0

    .line 225
    return-void

    .line 227
    :cond_0
    iput p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mWidth:I

    .line 228
    invoke-virtual {p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->invalidate()V

    .line 229
    return-void
.end method

.method private showActiveScrollbar(Z)V
    .locals 4
    .param p1, "isScrolling"    # Z

    .line 385
    iget-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mWidthAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 389
    :cond_0
    sget-object v0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->TRACK_WIDTH:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 390
    if-eqz p1, :cond_1

    iget v3, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mMaxWidth:I

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mMinWidth:I

    :goto_0
    aput v3, v1, v2

    .line 389
    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mWidthAnimator:Landroid/animation/ObjectAnimator;

    .line 391
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 392
    iget-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mWidthAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 393
    return-void
.end method

.method private updateFastScrollSectionNameAndThumbOffset(I)V
    .locals 4
    .param p1, "y"    # I

    .line 323
    iget-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollbarTrackHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbHeight:I

    sub-int/2addr v0, v1

    .line 324
    .local v0, "bottom":I
    iget v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mTouchOffsetY:I

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    .line 325
    .local v1, "boundedY":F
    iget-object v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    int-to-float v3, v0

    div-float v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/FastScrollRecyclerView;->scrollToPositionAtProgress(F)Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, "sectionName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mPopupSectionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 327
    iput-object v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mPopupSectionName:Ljava/lang/String;

    .line 328
    iget-object v3, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->performHapticFeedback(I)Z

    .line 331
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->animatePopupVisibility(Z)V

    .line 332
    iput v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mLastTouchY:F

    .line 333
    float-to-int v3, v1

    invoke-virtual {p0, v3}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    .line 334
    return-void
.end method

.method private updatePopupY(I)V
    .locals 4
    .param p1, "lastTouchY"    # I

    .line 429
    iget-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    .line 431
    .local v0, "height":I
    iget-object v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    invoke-virtual {v1}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollBarTop()I

    move-result v1

    add-int/2addr v1, p1

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getScrollThumbRadius()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    int-to-float v2, v0

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 433
    .local v1, "top":F
    nop

    .line 434
    invoke-virtual {p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    invoke-virtual {v3}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollBarTop()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    invoke-virtual {v3}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollbarTrackHeight()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    int-to-float v2, v2

    .line 433
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v1

    .line 435
    iget-object v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 436
    return-void
.end method


# virtual methods
.method public getThumbHeight()I
    .locals 1

    .line 232
    iget v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbHeight:I

    return v0
.end method

.method public getThumbOffsetY()I
    .locals 1

    .line 220
    iget v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    return v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "offset"    # Landroid/graphics/Point;

    .line 248
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    .line 249
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    .line 251
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 269
    :pswitch_0
    iput v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mLastY:I

    .line 270
    iget v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDownY:I

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 271
    .local v2, "absDeltaY":I
    iget v4, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDownX:I

    sub-int v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 275
    .local v4, "absDeltaX":I
    iget-boolean v5, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIgnoreDragGesture:Z

    iget-object v6, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mConfig:Landroid/view/ViewConfiguration;

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v6

    if-le v2, v6, :cond_0

    const/4 v3, 0x1

    :cond_0
    or-int/2addr v3, v5

    iput-boolean v3, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIgnoreDragGesture:Z

    .line 277
    iget-boolean v5, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIsDragging:Z

    if-nez v5, :cond_1

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    invoke-virtual {v3}, Lcom/android/launcher3/FastScrollRecyclerView;->supportsFastScrolling()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 278
    iget v3, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDownX:I

    iget v5, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mLastY:I

    invoke-direct {p0, v3, v5}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->isNearThumb(II)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDownTimeStampMillis:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x28

    cmp-long v3, v5, v7

    if-lez v3, :cond_1

    .line 280
    iget v3, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDownY:I

    iget v5, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mLastY:I

    invoke-direct {p0, v3, v5}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->calcTouchOffsetAndPrepToFastScroll(II)V

    .line 283
    :cond_1
    iget-boolean v3, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIsDragging:Z

    if-eqz v3, :cond_3

    .line 284
    invoke-direct {p0, v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->updateFastScrollSectionNameAndThumbOffset(I)V

    goto :goto_0

    .line 289
    .end local v2    # "absDeltaY":I
    .end local v4    # "absDeltaX":I
    :pswitch_1
    iget-object v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    invoke-virtual {v2}, Lcom/android/launcher3/FastScrollRecyclerView;->onFastScrollCompleted()V

    .line 290
    iput v3, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mTouchOffsetY:I

    .line 291
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mLastTouchY:F

    .line 292
    iput-boolean v3, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIgnoreDragGesture:Z

    .line 293
    iget-boolean v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIsDragging:Z

    if-eqz v2, :cond_3

    .line 294
    iput-boolean v3, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIsDragging:Z

    .line 295
    invoke-direct {p0, v3}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->animatePopupVisibility(Z)V

    .line 296
    invoke-direct {p0, v3}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->showActiveScrollbar(Z)V

    goto :goto_0

    .line 254
    :pswitch_2
    iput v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDownX:I

    .line 255
    iput v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mLastY:I

    iput v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDownY:I

    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDownTimeStampMillis:J

    .line 258
    iget v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDy:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDeltaThreshold:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    .line 259
    invoke-virtual {v2}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollState()I

    move-result v2

    if-eqz v2, :cond_2

    .line 262
    iget-object v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    invoke-virtual {v2}, Lcom/android/launcher3/FastScrollRecyclerView;->stopScroll()V

    .line 264
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->isNearThumb(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 265
    iget v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDownY:I

    iget v3, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mTouchOffsetY:I

    .line 307
    :cond_3
    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIsDragging:Z

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 454
    const/4 v0, 0x0

    return v0
.end method

.method public isDraggingThumb()Z
    .locals 1

    .line 236
    iget-boolean v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIsDragging:Z

    return v0
.end method

.method public isHitInParent(FFLandroid/graphics/Point;)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "outOffset"    # Landroid/graphics/Point;

    .line 439
    iget v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    if-gez v0, :cond_0

    .line 440
    const/4 v0, 0x0

    return v0

    .line 442
    :cond_0
    sget-object v0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getHitRect(Landroid/graphics/Rect;)V

    .line 443
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    invoke-virtual {v2}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollBarTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 444
    if-eqz p3, :cond_1

    .line 445
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 447
    :cond_1
    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isNearScrollBar(I)Z
    .locals 3
    .param p1, "x"    # I

    .line 416
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mMaxWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mScrollbarLeftOffsetTouchDelegate:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mMaxWidth:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 416
    :goto_0
    return v0
.end method

.method public isThumbDetached()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIsThumbDetached:Z

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 371
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mSystemGestureInsets:Landroid/graphics/Insets;

    .line 374
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 337
    iget v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    if-gez v0, :cond_0

    .line 338
    return-void

    .line 340
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 341
    .local v0, "saveCount":I
    invoke-virtual {p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    invoke-virtual {v2}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollBarTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 342
    iget-object v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbDrawOffset:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    invoke-virtual {v3}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollBarTop()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 344
    iget v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 345
    .local v1, "halfW":F
    neg-float v3, v1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    invoke-virtual {v2}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollbarTrackHeight()I

    move-result v2

    int-to-float v6, v2

    iget v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mWidth:I

    int-to-float v7, v2

    int-to-float v8, v2

    iget-object v9, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mTrackPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v5, v1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 348
    iget v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 349
    iget-object v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbDrawOffset:Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Point;->y:I

    .line 350
    iget v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbPadding:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 351
    invoke-direct {p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getScrollThumbRadius()F

    move-result v2

    .line 352
    .local v2, "r":F
    iget-object v4, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbBounds:Landroid/graphics/RectF;

    neg-float v5, v1

    iget v6, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbHeight:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v3, v1, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 353
    iget-object v3, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbBounds:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 354
    sget-boolean v3, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    if-eqz v3, :cond_2

    .line 355
    iget-object v3, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbBounds:Landroid/graphics/RectF;

    sget-object v4, Lcom/android/launcher3/views/RecyclerViewFastScroller;->SYSTEM_GESTURE_EXCLUSION_RECT:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 358
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbDrawOffset:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbDrawOffset:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 359
    sget-boolean v3, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mSystemGestureInsets:Landroid/graphics/Insets;

    if-eqz v3, :cond_1

    .line 360
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 361
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mSystemGestureInsets:Landroid/graphics/Insets;

    iget v6, v6, Landroid/graphics/Insets;->right:I

    sub-int/2addr v5, v6

    iput v5, v3, Landroid/graphics/Rect;->left:I

    .line 363
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setSystemGestureExclusionRects(Ljava/util/List;)V

    .line 365
    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 366
    return-void
.end method

.method public reattachThumbToScroll()V
    .locals 1

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIsThumbDetached:Z

    .line 203
    return-void
.end method

.method public setRecyclerView(Lcom/android/launcher3/FastScrollRecyclerView;Landroid/widget/TextView;)V
    .locals 3
    .param p1, "rv"    # Lcom/android/launcher3/FastScrollRecyclerView;
    .param p2, "popupView"    # Landroid/widget/TextView;

    .line 178
    iget-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {v0, v1}, Lcom/android/launcher3/FastScrollRecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 181
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    .line 183
    new-instance v0, Lcom/android/launcher3/views/RecyclerViewFastScroller$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller$2;-><init>(Lcom/android/launcher3/views/RecyclerViewFastScroller;)V

    iput-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/FastScrollRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 196
    iput-object p2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    .line 197
    new-instance v0, Lcom/android/launcher3/graphics/FastScrollThumbDrawable;

    iget-object v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbPaint:Landroid/graphics/Paint;

    .line 198
    invoke-virtual {p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/graphics/FastScrollThumbDrawable;-><init>(Landroid/graphics/Paint;Z)V

    .line 197
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 199
    return-void
.end method

.method public setThumbOffsetY(I)V
    .locals 2
    .param p1, "y"    # I

    .line 206
    iget v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    if-ne v0, p1, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/FastScrollRecyclerView;->getCurrentScrollY()I

    move-result v0

    .line 208
    .local v0, "rvCurrentOffsetY":I
    iget v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRvOffsetY:I

    if-eq v1, v0, :cond_0

    .line 209
    iget-object v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    invoke-virtual {v1}, Lcom/android/launcher3/FastScrollRecyclerView;->getCurrentScrollY()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRvOffsetY:I

    .line 211
    :cond_0
    return-void

    .line 213
    .end local v0    # "rvCurrentOffsetY":I
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->updatePopupY(I)V

    .line 214
    iput p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    .line 215
    invoke-virtual {p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->invalidate()V

    .line 216
    iget-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/FastScrollRecyclerView;->getCurrentScrollY()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRvOffsetY:I

    .line 217
    return-void
.end method

.method public shouldBlockIntercept(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 409
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->isNearThumb(II)Z

    move-result v0

    return v0
.end method
