.class public Lcom/android/launcher3/touch/BothAxesSwipeDetector;
.super Lcom/android/launcher3/touch/BaseSwipeDetector;
.source "BothAxesSwipeDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/touch/BothAxesSwipeDetector$Listener;
    }
.end annotation


# static fields
.field public static final DIRECTION_DOWN:I = 0x4

.field public static final DIRECTION_LEFT:I = 0x8

.field public static final DIRECTION_RIGHT:I = 0x2

.field public static final DIRECTION_UP:I = 0x1


# instance fields
.field private final mListener:Lcom/android/launcher3/touch/BothAxesSwipeDetector$Listener;

.field private mScrollDirections:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/touch/BothAxesSwipeDetector$Listener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Lcom/android/launcher3/touch/BothAxesSwipeDetector$Listener;

    .line 45
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/touch/BaseSwipeDetector;-><init>(Landroid/content/Context;Landroid/view/ViewConfiguration;Z)V

    .line 46
    iput-object p2, p0, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->mListener:Lcom/android/launcher3/touch/BothAxesSwipeDetector$Listener;

    .line 47
    return-void
.end method


# virtual methods
.method protected reportDragEndInternal(Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "velocity"    # Landroid/graphics/PointF;

    .line 80
    iget-object v0, p0, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->mListener:Lcom/android/launcher3/touch/BothAxesSwipeDetector$Listener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/touch/BothAxesSwipeDetector$Listener;->onDragEnd(Landroid/graphics/PointF;)V

    .line 81
    return-void
.end method

.method protected reportDragStartInternal(Z)V
    .locals 2
    .param p1, "recatch"    # Z

    .line 70
    iget-object v0, p0, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->mListener:Lcom/android/launcher3/touch/BothAxesSwipeDetector$Listener;

    xor-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Lcom/android/launcher3/touch/BothAxesSwipeDetector$Listener;->onDragStart(Z)V

    .line 71
    return-void
.end method

.method protected reportDraggingInternal(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "displacement"    # Landroid/graphics/PointF;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->mListener:Lcom/android/launcher3/touch/BothAxesSwipeDetector$Listener;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/touch/BothAxesSwipeDetector$Listener;->onDrag(Landroid/graphics/PointF;Landroid/view/MotionEvent;)Z

    .line 76
    return-void
.end method

.method public setDetectableScrollConditions(IZ)V
    .locals 0
    .param p1, "scrollDirectionFlags"    # I
    .param p2, "ignoreSlop"    # Z

    .line 50
    iput p1, p0, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->mScrollDirections:I

    .line 51
    iput-boolean p2, p0, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->mIgnoreSlopWhenSettling:Z

    .line 52
    return-void
.end method

.method protected shouldScrollStart(Landroid/graphics/PointF;)Z
    .locals 7
    .param p1, "displacement"    # Landroid/graphics/PointF;

    .line 57
    iget v0, p0, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->mScrollDirections:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->mTouchSlop:F

    neg-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 59
    .local v0, "canScrollUp":Z
    :goto_0
    iget v3, p0, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->mScrollDirections:I

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_1

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->mTouchSlop:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 61
    .local v3, "canScrollRight":Z
    :goto_1
    iget v4, p0, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->mScrollDirections:I

    and-int/lit8 v4, v4, 0x4

    if-lez v4, :cond_2

    iget v4, p1, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->mTouchSlop:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    .line 63
    .local v4, "canScrollDown":Z
    :goto_2
    iget v5, p0, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->mScrollDirections:I

    and-int/lit8 v5, v5, 0x8

    if-lez v5, :cond_3

    iget v5, p1, Landroid/graphics/PointF;->x:F

    iget v6, p0, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->mTouchSlop:F

    neg-float v6, v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_3

    move v5, v1

    goto :goto_3

    :cond_3
    move v5, v2

    .line 65
    .local v5, "canScrollLeft":Z
    :goto_3
    if-nez v0, :cond_5

    if-nez v3, :cond_5

    if-nez v4, :cond_5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :cond_5
    :goto_4
    return v1
.end method
