.class public Lcom/android/launcher3/workprofile/PersonalWorkPagedView;
.super Lcom/android/launcher3/PagedView;
.source "PersonalWorkPagedView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/PagedView<",
        "Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;",
        ">;"
    }
.end annotation


# static fields
.field static final MAX_SWIPE_ANGLE:F = 1.0471976f

.field static final START_DAMPING_TOUCH_SLOP_ANGLE:F = 0.5235988f

.field static final TOUCH_SLOP_DAMPING_FACTOR:F = 4.0f


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method


# virtual methods
.method protected canScroll(FF)Z
    .locals 1
    .param p1, "absVScroll"    # F
    .param p2, "absHScroll"    # F

    .line 90
    cmpl-float v0, p2, p1

    if-lez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->canScroll(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->getDownMotionX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 60
    .local v0, "absDeltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->getDownMotionY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 62
    .local v1, "absDeltaY":F
    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 64
    :cond_0
    div-float v2, v1, v0

    .line 65
    .local v2, "slope":F
    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 67
    .local v3, "theta":F
    iget v4, p0, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-gtz v4, :cond_1

    iget v4, p0, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_2

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->cancelCurrentPageLongPress()V

    .line 71
    :cond_2
    const v4, 0x3f860a92

    cmpl-float v4, v3, v4

    if-lez v4, :cond_3

    .line 72
    return-void

    .line 73
    :cond_3
    const v4, 0x3f060a92

    cmpl-float v5, v3, v4

    if-lez v5, :cond_4

    .line 74
    sub-float/2addr v3, v4

    .line 75
    div-float v4, v3, v4

    float-to-double v4, v4

    .line 76
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 77
    .local v4, "extraRatio":F
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v6, v4

    add-float/2addr v6, v5

    invoke-super {p0, p1, v6}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 78
    .end local v4    # "extraRatio":F
    goto :goto_0

    .line 79
    :cond_4
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    .line 81
    :goto_0
    return-void
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 1

    .line 48
    const-string v0, ""

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .line 53
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/PagedView;->onScrollChanged(IIII)V

    .line 54
    iget-object v0, p0, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->mPageIndicator:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;

    iget v1, p0, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->mMaxScroll:I

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->setScroll(II)V

    .line 55
    return-void
.end method
