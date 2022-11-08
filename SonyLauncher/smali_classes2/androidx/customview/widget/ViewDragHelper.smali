.class public Landroidx/customview/widget/ViewDragHelper;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/customview/widget/ViewDragHelper$Callback;
    }
.end annotation


# static fields
.field private static final BASE_SETTLE_DURATION:I = 0x100

.field private static final DEBUG:Z = false

.field public static final DIRECTION_ALL:I = 0x3

.field public static final DIRECTION_HORIZONTAL:I = 0x1

.field public static final DIRECTION_VERTICAL:I = 0x2

.field public static final EDGE_ALL:I = 0xf

.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field private static final EDGE_SIZE:I = 0x14

.field public static final EDGE_TOP:I = 0x4

.field public static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewDragHelper"

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private final mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

.field private mCapturedView:Landroid/view/View;

.field private final mDefaultEdgeSize:I

.field private mDragState:I

.field private mEdgeDragsInProgress:[I

.field private mEdgeDragsLocked:[I

.field private mEdgeSize:I

.field private mInitialEdgesTouched:[I

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private final mMaxVelocity:F

.field private mMinVelocity:F

.field private final mParentView:Landroid/view/ViewGroup;

.field private mPointersDown:I

.field private mReleaseInProgress:Z

.field private final mScroller:Landroid/widget/OverScroller;

.field private final mSetIdleRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTrackingEdges:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 341
    new-instance v0, Landroidx/customview/widget/ViewDragHelper$1;

    invoke-direct {v0}, Landroidx/customview/widget/ViewDragHelper$1;-><init>()V

    sput-object v0, Landroidx/customview/widget/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forParent"    # Landroid/view/ViewGroup;
    .param p3, "cb"    # Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 349
    new-instance v0, Landroidx/customview/widget/ViewDragHelper$2;

    invoke-direct {v0, p0}, Landroidx/customview/widget/ViewDragHelper$2;-><init>(Landroidx/customview/widget/ViewDragHelper;)V

    iput-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    .line 393
    const-string v0, "Parent view may not be null"

    invoke-static {p2, v0}, Landroidx/customview/widget/ViewDragHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 394
    const-string v0, "Callback may not be null"

    invoke-static {p3, v0}, Landroidx/customview/widget/ViewDragHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 396
    iput-object p2, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 397
    iput-object p3, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 399
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 400
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 401
    .local v1, "density":F
    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroidx/customview/widget/ViewDragHelper;->mDefaultEdgeSize:I

    .line 402
    iput v2, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    .line 404
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    .line 405
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    .line 406
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    .line 407
    new-instance v2, Landroid/widget/OverScroller;

    sget-object v3, Landroidx/customview/widget/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, p1, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    .line 408
    return-void
.end method

.method private checkNewEdgeDrag(FFII)Z
    .locals 5
    .param p1, "delta"    # F
    .param p2, "odelta"    # F
    .param p3, "pointerId"    # I
    .param p4, "edge"    # I

    .line 1317
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1318
    .local v0, "absDelta":F
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1320
    .local v1, "absODelta":F
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v2, v2, p3

    and-int/2addr v2, p4

    const/4 v3, 0x0

    if-ne v2, p4, :cond_3

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v2, p4

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v2, v2, p3

    and-int/2addr v2, p4

    if-eq v2, p4, :cond_3

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v2, v2, p3

    and-int/2addr v2, p4

    if-eq v2, p4, :cond_3

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v4, v2

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_0

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    goto :goto_0

    .line 1326
    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v1

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v2, p4}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeLock(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1327
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v4, v2, p3

    or-int/2addr v4, p4

    aput v4, v2, p3

    .line 1328
    return v3

    .line 1330
    :cond_1
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v2, v2, p3

    and-int/2addr v2, p4

    if-nez v2, :cond_2

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3

    .line 1324
    :cond_3
    :goto_0
    return v3
.end method

.method private checkTouchSlop(Landroid/view/View;FF)Z
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .line 1345
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1346
    return v0

    .line 1349
    :cond_0
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v1, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    .line 1350
    .local v1, "checkHorizontal":Z
    :goto_0
    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v3, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v3

    if-lez v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v0

    .line 1352
    .local v3, "checkVertical":Z
    :goto_1
    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    .line 1353
    mul-float v4, p2, p2

    mul-float v5, p3, p3

    add-float/2addr v4, v5

    iget v5, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr v5, v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    move v0, v2

    :cond_3
    return v0

    .line 1354
    :cond_4
    if-eqz v1, :cond_6

    .line 1355
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    move v0, v2

    :cond_5
    return v0

    .line 1356
    :cond_6
    if-eqz v3, :cond_8

    .line 1357
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_7

    move v0, v2

    :cond_7
    return v0

    .line 1359
    :cond_8
    return v0
.end method

.method private clampMag(FFF)F
    .locals 3
    .param p1, "value"    # F
    .param p2, "absMin"    # F
    .param p3, "absMax"    # F

    .line 719
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 720
    .local v0, "absValue":F
    cmpg-float v1, v0, p2

    const/4 v2, 0x0

    if-gez v1, :cond_0

    return v2

    .line 721
    :cond_0
    cmpl-float v1, v0, p3

    if-lez v1, :cond_2

    cmpl-float v1, p1, v2

    if-lez v1, :cond_1

    move v1, p3

    goto :goto_0

    :cond_1
    neg-float v1, p3

    :goto_0
    return v1

    .line 722
    :cond_2
    return p1
.end method

.method private clampMag(III)I
    .locals 2
    .param p1, "value"    # I
    .param p2, "absMin"    # I
    .param p3, "absMax"    # I

    .line 702
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 703
    .local v0, "absValue":I
    if-ge v0, p2, :cond_0

    const/4 v1, 0x0

    return v1

    .line 704
    :cond_0
    if-le v0, p3, :cond_2

    if-lez p1, :cond_1

    move v1, p3

    goto :goto_0

    :cond_1
    neg-int v1, p3

    :goto_0
    return v1

    .line 705
    :cond_2
    return p1
.end method

.method private clearMotionHistory()V
    .locals 2

    .line 822
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    .line 823
    return-void

    .line 825
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 826
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 827
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 828
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 829
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 830
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 831
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 832
    iput v1, p0, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    .line 833
    return-void
.end method

.method private clearMotionHistory(I)V
    .locals 2
    .param p1, "pointerId"    # I

    .line 836
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 839
    :cond_0
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 840
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    aput v1, v0, p1

    .line 841
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    aput v1, v0, p1

    .line 842
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    aput v1, v0, p1

    .line 843
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 844
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aput v1, v0, p1

    .line 845
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    aput v1, v0, p1

    .line 846
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    .line 847
    return-void

    .line 837
    :cond_1
    :goto_0
    return-void
.end method

.method private computeAxisDuration(III)I
    .locals 7
    .param p1, "delta"    # I
    .param p2, "velocity"    # I
    .param p3, "motionRange"    # I

    .line 670
    if-nez p1, :cond_0

    .line 671
    const/4 v0, 0x0

    return v0

    .line 674
    :cond_0
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 675
    .local v0, "width":I
    div-int/lit8 v1, v0, 0x2

    .line 676
    .local v1, "halfWidth":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 677
    .local v2, "distanceRatio":F
    int-to-float v4, v1

    int-to-float v5, v1

    .line 678
    invoke-direct {p0, v2}, Landroidx/customview/widget/ViewDragHelper;->distanceInfluenceForSnapDuration(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 681
    .local v4, "distance":F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 682
    if-lez p2, :cond_1

    .line 683
    const/high16 v3, 0x447a0000    # 1000.0f

    int-to-float v5, p2

    div-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    .local v3, "duration":I
    goto :goto_0

    .line 685
    .end local v3    # "duration":I
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, p3

    div-float/2addr v5, v6

    .line 686
    .local v5, "range":F
    add-float/2addr v3, v5

    const/high16 v6, 0x43800000    # 256.0f

    mul-float/2addr v3, v6

    float-to-int v3, v3

    .line 688
    .end local v5    # "range":F
    .restart local v3    # "duration":I
    :goto_0
    const/16 v5, 0x258

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    return v5
.end method

.method private computeSettleDuration(Landroid/view/View;IIII)I
    .locals 16
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "xvel"    # I
    .param p5, "yvel"    # I

    .line 649
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    float-to-int v2, v2

    iget v3, v0, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    float-to-int v3, v3

    move/from16 v4, p4

    invoke-direct {v0, v4, v2, v3}, Landroidx/customview/widget/ViewDragHelper;->clampMag(III)I

    move-result v2

    .line 650
    .end local p4    # "xvel":I
    .local v2, "xvel":I
    iget v3, v0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    float-to-int v3, v3

    iget v4, v0, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    float-to-int v4, v4

    move/from16 v5, p5

    invoke-direct {v0, v5, v3, v4}, Landroidx/customview/widget/ViewDragHelper;->clampMag(III)I

    move-result v3

    .line 651
    .end local p5    # "yvel":I
    .local v3, "yvel":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 652
    .local v4, "absDx":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 653
    .local v5, "absDy":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 654
    .local v6, "absXVel":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 655
    .local v7, "absYVel":I
    add-int v8, v6, v7

    .line 656
    .local v8, "addedVel":I
    add-int v9, v4, v5

    .line 658
    .local v9, "addedDistance":I
    if-eqz v2, :cond_0

    int-to-float v10, v6

    int-to-float v11, v8

    div-float/2addr v10, v11

    goto :goto_0

    .line 659
    :cond_0
    int-to-float v10, v4

    int-to-float v11, v9

    div-float/2addr v10, v11

    :goto_0
    nop

    .line 660
    .local v10, "xweight":F
    if-eqz v3, :cond_1

    int-to-float v11, v7

    int-to-float v12, v8

    div-float/2addr v11, v12

    goto :goto_1

    .line 661
    :cond_1
    int-to-float v11, v5

    int-to-float v12, v9

    div-float/2addr v11, v12

    :goto_1
    nop

    .line 663
    .local v11, "yweight":F
    iget-object v12, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v12, v1}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v12

    move/from16 v13, p2

    invoke-direct {v0, v13, v2, v12}, Landroidx/customview/widget/ViewDragHelper;->computeAxisDuration(III)I

    move-result v12

    .line 664
    .local v12, "xduration":I
    iget-object v14, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v14, v1}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v14

    move/from16 v15, p3

    invoke-direct {v0, v15, v3, v14}, Landroidx/customview/widget/ViewDragHelper;->computeAxisDuration(III)I

    move-result v14

    .line 666
    .local v14, "yduration":I
    int-to-float v0, v12

    mul-float/2addr v0, v10

    int-to-float v1, v14

    mul-float/2addr v1, v11

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;
    .locals 3
    .param p0, "forParent"    # Landroid/view/ViewGroup;
    .param p1, "sensitivity"    # F
    .param p2, "cb"    # Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 378
    invoke-static {p0, p2}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v0

    .line 379
    .local v0, "helper":Landroidx/customview/widget/ViewDragHelper;
    iget v1, v0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    .line 380
    return-object v0
.end method

.method public static create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;
    .locals 2
    .param p0, "forParent"    # Landroid/view/ViewGroup;
    .param p1, "cb"    # Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 364
    new-instance v0, Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Landroidx/customview/widget/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)V

    return-object v0
.end method

.method private dispatchViewReleased(FF)V
    .locals 3
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .line 811
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/customview/widget/ViewDragHelper;->mReleaseInProgress:Z

    .line 812
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1, v2, p1, p2}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 813
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/customview/widget/ViewDragHelper;->mReleaseInProgress:Z

    .line 815
    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v2, v0, :cond_0

    .line 817
    invoke-virtual {p0, v1}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    .line 819
    :cond_0
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 2
    .param p1, "f"    # F

    .line 726
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 727
    const v0, 0x3ef1463b

    mul-float/2addr p1, v0

    .line 728
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private dragTo(IIII)V
    .locals 16
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .line 1485
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p1

    .line 1486
    .local v3, "clampedX":I
    move/from16 v4, p2

    .line 1487
    .local v4, "clampedY":I
    iget-object v5, v0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 1488
    .local v5, "oldLeft":I
    iget-object v6, v0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1489
    .local v6, "oldTop":I
    if-eqz v1, :cond_0

    .line 1490
    iget-object v7, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    iget-object v8, v0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move/from16 v9, p1

    invoke-virtual {v7, v8, v9, v1}, Landroidx/customview/widget/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v3

    .line 1491
    iget-object v7, v0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v8, v3, v5

    invoke-static {v7, v8}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    goto :goto_0

    .line 1489
    :cond_0
    move/from16 v9, p1

    .line 1493
    :goto_0
    if-eqz v2, :cond_1

    .line 1494
    iget-object v7, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    iget-object v8, v0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move/from16 v15, p2

    invoke-virtual {v7, v8, v15, v2}, Landroidx/customview/widget/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v4

    .line 1495
    iget-object v7, v0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v8, v4, v6

    invoke-static {v7, v8}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_1

    .line 1493
    :cond_1
    move/from16 v15, p2

    .line 1498
    :goto_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 1499
    :cond_2
    sub-int v7, v3, v5

    .line 1500
    .local v7, "clampedDx":I
    sub-int v8, v4, v6

    .line 1501
    .local v8, "clampedDy":I
    iget-object v10, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    iget-object v11, v0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v12, v3

    move v13, v4

    move v14, v7

    move v15, v8

    invoke-virtual/range {v10 .. v15}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 1504
    .end local v7    # "clampedDx":I
    .end local v8    # "clampedDy":I
    :cond_3
    return-void
.end method

.method private ensureMotionHistorySizeForId(I)V
    .locals 10
    .param p1, "pointerId"    # I

    .line 850
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    .line 851
    :cond_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [F

    .line 852
    .local v1, "imx":[F
    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [F

    .line 853
    .local v2, "imy":[F
    add-int/lit8 v3, p1, 0x1

    new-array v3, v3, [F

    .line 854
    .local v3, "lmx":[F
    add-int/lit8 v4, p1, 0x1

    new-array v4, v4, [F

    .line 855
    .local v4, "lmy":[F
    add-int/lit8 v5, p1, 0x1

    new-array v5, v5, [I

    .line 856
    .local v5, "iit":[I
    add-int/lit8 v6, p1, 0x1

    new-array v6, v6, [I

    .line 857
    .local v6, "edip":[I
    add-int/lit8 v7, p1, 0x1

    new-array v7, v7, [I

    .line 859
    .local v7, "edl":[I
    if-eqz v0, :cond_1

    .line 860
    array-length v8, v0

    const/4 v9, 0x0

    invoke-static {v0, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 861
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    array-length v8, v0

    invoke-static {v0, v9, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 862
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    array-length v8, v0

    invoke-static {v0, v9, v3, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 863
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    array-length v8, v0

    invoke-static {v0, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 864
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v8, v0

    invoke-static {v0, v9, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 865
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    array-length v8, v0

    invoke-static {v0, v9, v6, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 866
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    array-length v8, v0

    invoke-static {v0, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 869
    :cond_1
    iput-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    .line 870
    iput-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    .line 871
    iput-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    .line 872
    iput-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    .line 873
    iput-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    .line 874
    iput-object v6, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    .line 875
    iput-object v7, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    .line 877
    .end local v1    # "imx":[F
    .end local v2    # "imy":[F
    .end local v3    # "lmx":[F
    .end local v4    # "lmy":[F
    .end local v5    # "iit":[I
    .end local v6    # "edip":[I
    .end local v7    # "edl":[I
    :cond_2
    return-void
.end method

.method private forceSettleCapturedViewAt(IIII)Z
    .locals 11
    .param p1, "finalLeft"    # I
    .param p2, "finalTop"    # I
    .param p3, "xvel"    # I
    .param p4, "yvel"    # I

    .line 629
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 630
    .local v0, "startLeft":I
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    .line 631
    .local v7, "startTop":I
    sub-int v8, p1, v0

    .line 632
    .local v8, "dx":I
    sub-int v9, p2, v7

    .line 634
    .local v9, "dy":I
    if-nez v8, :cond_0

    if-nez v9, :cond_0

    .line 636
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 637
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    .line 638
    return v1

    .line 641
    :cond_0
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object v1, p0

    move v3, v8

    move v4, v9

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroidx/customview/widget/ViewDragHelper;->computeSettleDuration(Landroid/view/View;IIII)I

    move-result v10

    .line 642
    .local v10, "duration":I
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    move v2, v0

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 644
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    .line 645
    const/4 v1, 0x1

    return v1
.end method

.method private getEdgesTouched(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1560
    const/4 v0, 0x0

    .line 1562
    .local v0, "result":I
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    .line 1563
    :cond_0
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    .line 1564
    :cond_1
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    .line 1565
    :cond_2
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    .line 1567
    :cond_3
    return v0
.end method

.method private isValidPointerForActionMove(I)Z
    .locals 1
    .param p1, "pointerId"    # I

    .line 1572
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1579
    const/4 v0, 0x0

    return v0

    .line 1581
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private releaseViewForPointerUp()V
    .locals 4

    .line 1474
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1475
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 1476
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    .line 1475
    invoke-direct {p0, v0, v1, v2}, Landroidx/customview/widget/ViewDragHelper;->clampMag(FFF)F

    move-result v0

    .line 1478
    .local v0, "xvel":F
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 1479
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    iget v3, p0, Landroidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    .line 1478
    invoke-direct {p0, v1, v2, v3}, Landroidx/customview/widget/ViewDragHelper;->clampMag(FFF)F

    move-result v1

    .line 1481
    .local v1, "yvel":F
    invoke-direct {p0, v0, v1}, Landroidx/customview/widget/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 1482
    return-void
.end method

.method private reportNewEdgeDrags(FFI)V
    .locals 3
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "pointerId"    # I

    .line 1296
    const/4 v0, 0x0

    .line 1297
    .local v0, "dragsStarted":I
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Landroidx/customview/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1298
    or-int/lit8 v0, v0, 0x1

    .line 1300
    :cond_0
    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Landroidx/customview/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1301
    or-int/lit8 v0, v0, 0x4

    .line 1303
    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Landroidx/customview/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1304
    or-int/lit8 v0, v0, 0x2

    .line 1306
    :cond_2
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Landroidx/customview/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1307
    or-int/lit8 v0, v0, 0x8

    .line 1310
    :cond_3
    if-eqz v0, :cond_4

    .line 1311
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v2, v1, p3

    or-int/2addr v2, v0

    aput v2, v1, p3

    .line 1312
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v1, v0, p3}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    .line 1314
    :cond_4
    return-void
.end method

.method private static requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1587
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 1588
    return-object p0

    .line 1587
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private saveInitialMotion(FFI)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointerId"    # I

    .line 880
    invoke-direct {p0, p3}, Landroidx/customview/widget/ViewDragHelper;->ensureMotionHistorySizeForId(I)V

    .line 881
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    aput p1, v1, p3

    aput p1, v0, p3

    .line 882
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    aput p2, v1, p3

    aput p2, v0, p3

    .line 883
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2}, Landroidx/customview/widget/ViewDragHelper;->getEdgesTouched(II)I

    move-result v1

    aput v1, v0, p3

    .line 884
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p3

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    .line 885
    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 888
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 889
    .local v0, "pointerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 890
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 892
    .local v2, "pointerId":I
    invoke-direct {p0, v2}, Landroidx/customview/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 893
    goto :goto_1

    .line 895
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 896
    .local v3, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 897
    .local v4, "y":F
    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    aput v3, v5, v2

    .line 898
    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    aput v4, v5, v2

    .line 889
    .end local v2    # "pointerId":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 900
    .end local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 10

    .line 557
    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 558
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 559
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    .line 560
    .local v0, "oldX":I
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    .line 561
    .local v1, "oldY":I
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 562
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v2

    .line 563
    .local v2, "newX":I
    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v9

    .line 564
    .local v9, "newY":I
    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v7, v2, v0

    sub-int v8, v9, v1

    move v5, v2

    move v6, v9

    invoke-virtual/range {v3 .. v8}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 566
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "newX":I
    .end local v9    # "newY":I
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    .line 567
    return-void
.end method

.method protected canScroll(Landroid/view/View;ZIIII)Z
    .locals 15
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I

    .line 965
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 966
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 967
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 968
    .local v3, "scrollX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 969
    .local v4, "scrollY":I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 971
    .local v5, "count":I
    add-int/lit8 v6, v5, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_1

    .line 974
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 975
    .local v14, "child":Landroid/view/View;
    add-int v7, p5, v3

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v7, v8, :cond_0

    add-int v7, p5, v3

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v7, v8, :cond_0

    add-int v7, p6, v4

    .line 976
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v8

    if-lt v7, v8, :cond_0

    add-int v7, p6, v4

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v7, v8, :cond_0

    const/4 v9, 0x1

    add-int v7, p5, v3

    .line 977
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v12, v7, v8

    add-int v7, p6, v4

    .line 978
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v13, v7, v8

    .line 977
    move-object v7, p0

    move-object v8, v14

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual/range {v7 .. v13}, Landroidx/customview/widget/ViewDragHelper;->canScroll(Landroid/view/View;ZIIII)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 979
    return v2

    .line 971
    .end local v14    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 984
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v3    # "scrollX":I
    .end local v4    # "scrollY":I
    .end local v5    # "count":I
    .end local v6    # "i":I
    :cond_1
    if-eqz p2, :cond_3

    move/from16 v1, p3

    neg-int v3, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v3

    if-nez v3, :cond_2

    move/from16 v3, p4

    neg-int v4, v3

    invoke-virtual {v0, v4}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_2
    move/from16 v3, p4

    goto :goto_1

    :cond_3
    move/from16 v1, p3

    move/from16 v3, p4

    :cond_4
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public cancel()V
    .locals 1

    .line 543
    const/4 v0, -0x1

    iput v0, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 544
    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper;->clearMotionHistory()V

    .line 546
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 548
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 550
    :cond_0
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .locals 3
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .line 503
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    .line 508
    iput-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 509
    iput p2, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 510
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    .line 511
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    .line 512
    return-void

    .line 504
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkTouchSlop(I)Z
    .locals 4
    .param p1, "directions"    # I

    .line 1377
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1378
    return v1

    .line 1381
    :cond_0
    array-length v0, v0

    .line 1382
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1383
    invoke-virtual {p0, p1, v2}, Landroidx/customview/widget/ViewDragHelper;->checkTouchSlop(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1384
    const/4 v1, 0x1

    return v1

    .line 1382
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1387
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method public checkTouchSlop(II)Z
    .locals 8
    .param p1, "directions"    # I
    .param p2, "pointerId"    # I

    .line 1406
    invoke-virtual {p0, p2}, Landroidx/customview/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1407
    return v1

    .line 1410
    :cond_0
    and-int/lit8 v0, p1, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1411
    .local v0, "checkHorizontal":Z
    :goto_0
    and-int/lit8 v3, p1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    .line 1413
    .local v3, "checkVertical":Z
    :goto_1
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v4, :cond_a

    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    if-eqz v5, :cond_a

    iget-object v6, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    if-eqz v6, :cond_a

    iget-object v7, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    if-nez v7, :cond_3

    goto :goto_2

    .line 1422
    :cond_3
    aget v6, v6, p2

    aget v4, v4, p2

    sub-float/2addr v6, v4

    .line 1423
    .local v6, "dx":F
    aget v4, v7, p2

    aget v5, v5, p2

    sub-float/2addr v4, v5

    .line 1425
    .local v4, "dy":F
    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    .line 1426
    mul-float v5, v6, v6

    mul-float v7, v4, v4

    add-float/2addr v5, v7

    iget v7, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr v7, v7

    int-to-float v7, v7

    cmpl-float v5, v5, v7

    if-lez v5, :cond_4

    move v1, v2

    :cond_4
    return v1

    .line 1427
    :cond_5
    if-eqz v0, :cond_7

    .line 1428
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v7, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v5, v5, v7

    if-lez v5, :cond_6

    move v1, v2

    :cond_6
    return v1

    .line 1429
    :cond_7
    if-eqz v3, :cond_9

    .line 1430
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v7, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v5, v5, v7

    if-lez v5, :cond_8

    move v1, v2

    :cond_8
    return v1

    .line 1432
    :cond_9
    return v1

    .line 1417
    .end local v4    # "dy":F
    .end local v6    # "dx":F
    :cond_a
    :goto_2
    const-string v2, "ViewDragHelper"

    const-string v4, "Inconsistent pointer event stream: pointer is down, but there is no initial motion recorded. Is something intercepting or modifying events?"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    return v1
.end method

.method public continueSettling(Z)Z
    .locals 13
    .param p1, "deferCallbacks"    # Z

    .line 767
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 768
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    .line 769
    .local v0, "keepGoing":Z
    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v3

    .line 770
    .local v3, "x":I
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v10

    .line 771
    .local v10, "y":I
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v11, v3, v4

    .line 772
    .local v11, "dx":I
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v12, v10, v4

    .line 774
    .local v12, "dy":I
    if-eqz v11, :cond_0

    .line 775
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-static {v4, v11}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 777
    :cond_0
    if-eqz v12, :cond_1

    .line 778
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-static {v4, v12}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 781
    :cond_1
    if-nez v11, :cond_2

    if-eqz v12, :cond_3

    .line 782
    :cond_2
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v6, v3

    move v7, v10

    move v8, v11

    move v9, v12

    invoke-virtual/range {v4 .. v9}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 785
    :cond_3
    if-eqz v0, :cond_4

    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v4

    if-ne v3, v4, :cond_4

    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v4

    if-ne v10, v4, :cond_4

    .line 788
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 789
    const/4 v0, 0x0

    .line 792
    :cond_4
    if-nez v0, :cond_6

    .line 793
    if-eqz p1, :cond_5

    .line 794
    iget-object v4, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 796
    :cond_5
    invoke-virtual {p0, v1}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    .line 801
    .end local v0    # "keepGoing":Z
    .end local v3    # "x":I
    .end local v10    # "y":I
    .end local v11    # "dx":I
    .end local v12    # "dy":I
    :cond_6
    :goto_0
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v0, v2, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1548
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1549
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1550
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v3, v1}, Landroidx/customview/widget/ViewDragHelper$Callback;->getOrderedChildIndex(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1551
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 1552
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    .line 1553
    return-object v2

    .line 1549
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1556
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public flingCapturedView(IIII)V
    .locals 10
    .param p1, "minLeft"    # I
    .param p2, "minTop"    # I
    .param p3, "maxLeft"    # I
    .param p4, "maxTop"    # I

    .line 742
    iget-boolean v0, p0, Landroidx/customview/widget/ViewDragHelper;->mReleaseInProgress:Z

    if-eqz v0, :cond_0

    .line 747
    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 748
    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v4, v0

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 749
    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v5, v0

    .line 747
    move v6, p1

    move v7, p3

    move v8, p2

    move v9, p4

    invoke-virtual/range {v1 .. v9}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 752
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    .line 753
    return-void

    .line 743
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot flingCapturedView outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActivePointerId()I
    .locals 1

    .line 527
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    return v0
.end method

.method public getCapturedView()Landroid/view/View;
    .locals 1

    .line 519
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    return-object v0
.end method

.method public getDefaultEdgeSize()I
    .locals 1

    .line 491
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mDefaultEdgeSize:I

    return v0
.end method

.method public getEdgeSize()I
    .locals 1

    .line 465
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    return v0
.end method

.method public getMinVelocity()F
    .locals 1

    .line 428
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    return v0
.end method

.method public getTouchSlop()I
    .locals 1

    .line 535
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    return v0
.end method

.method public getViewDragState()I
    .locals 1

    .line 437
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    return v0
.end method

.method public isCapturedViewUnder(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1516
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/customview/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public isEdgeTouched(I)Z
    .locals 4
    .param p1, "edges"    # I

    .line 1445
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1446
    return v1

    .line 1449
    :cond_0
    array-length v0, v0

    .line 1450
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1451
    invoke-virtual {p0, p1, v2}, Landroidx/customview/widget/ViewDragHelper;->isEdgeTouched(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1452
    const/4 v1, 0x1

    return v1

    .line 1450
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1455
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method public isEdgeTouched(II)Z
    .locals 1
    .param p1, "edges"    # I
    .param p2, "pointerId"    # I

    .line 1469
    invoke-virtual {p0, p2}, Landroidx/customview/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    if-eqz v0, :cond_0

    aget v0, v0, p2

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPointerDown(I)Z
    .locals 3
    .param p1, "pointerId"    # I

    .line 916
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 1529
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1530
    return v0

    .line 1532
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 1533
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 1534
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p3, v1, :cond_1

    .line 1535
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge p3, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1532
    :goto_0
    return v0
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1130
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 1132
    .local v1, "actionIndex":I
    if-nez v0, :cond_0

    .line 1135
    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 1138
    :cond_0
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 1139
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1141
    :cond_1
    iget-object v2, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1143
    const/4 v2, -0x1

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7

    .line 1247
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1248
    .local v4, "pointerId":I
    iget v5, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v5, v3, :cond_5

    iget v3, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    if-ne v4, v3, :cond_5

    .line 1250
    const/4 v3, -0x1

    .line 1251
    .local v3, "newActivePointer":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    .line 1252
    .local v5, "pointerCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_4

    .line 1253
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 1254
    .local v7, "id":I
    iget v8, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    if-ne v7, v8, :cond_2

    .line 1256
    goto :goto_1

    .line 1259
    :cond_2
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 1260
    .local v8, "x":F
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 1261
    .local v9, "y":F
    float-to-int v10, v8

    float-to-int v11, v9

    invoke-virtual {p0, v10, v11}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v10

    iget-object v11, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v10, v11, :cond_3

    .line 1262
    invoke-virtual {p0, v11, v7}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1263
    iget v3, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 1264
    goto :goto_2

    .line 1252
    .end local v7    # "id":I
    .end local v8    # "x":F
    .end local v9    # "y":F
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1268
    .end local v6    # "i":I
    :cond_4
    :goto_2
    if-ne v3, v2, :cond_5

    .line 1270
    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1273
    .end local v3    # "newActivePointer":I
    .end local v5    # "pointerCount":I
    :cond_5
    invoke-direct {p0, v4}, Landroidx/customview/widget/ViewDragHelper;->clearMotionHistory(I)V

    .line 1274
    goto/16 :goto_7

    .line 1165
    .end local v4    # "pointerId":I
    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1166
    .local v2, "pointerId":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1167
    .local v3, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1169
    .local v4, "y":F
    invoke-direct {p0, v3, v4, v2}, Landroidx/customview/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1172
    iget v5, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-nez v5, :cond_6

    .line 1175
    float-to-int v5, v3

    float-to-int v6, v4

    invoke-virtual {p0, v5, v6}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v5

    .line 1176
    .local v5, "toCapture":Landroid/view/View;
    invoke-virtual {p0, v5, v2}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1178
    iget-object v6, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v6, v6, v2

    .line 1179
    .local v6, "edgesTouched":I
    iget v7, p0, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    and-int v8, v6, v7

    if-eqz v8, :cond_7

    .line 1180
    iget-object v8, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    and-int/2addr v7, v6

    invoke-virtual {v8, v7, v2}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_3

    .line 1182
    .end local v5    # "toCapture":Landroid/view/View;
    .end local v6    # "edgesTouched":I
    :cond_6
    float-to-int v5, v3

    float-to-int v6, v4

    invoke-virtual {p0, v5, v6}, Landroidx/customview/widget/ViewDragHelper;->isCapturedViewUnder(II)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1187
    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, v5, v2}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_7

    .line 1182
    :cond_7
    :goto_3
    goto/16 :goto_7

    .line 1286
    .end local v2    # "pointerId":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_3
    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v2, v3, :cond_8

    .line 1287
    const/4 v2, 0x0

    invoke-direct {p0, v2, v2}, Landroidx/customview/widget/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 1289
    :cond_8
    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    goto/16 :goto_7

    .line 1193
    :pswitch_4
    iget v4, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v4, v3, :cond_b

    .line 1195
    iget v3, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    invoke-direct {p0, v3}, Landroidx/customview/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_7

    .line 1198
    :cond_9
    iget v3, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 1199
    .local v3, "index":I
    if-ne v3, v2, :cond_a

    .line 1205
    goto/16 :goto_7

    .line 1208
    :cond_a
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1209
    .local v2, "x":F
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1210
    .restart local v4    # "y":F
    iget-object v5, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    iget v6, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    aget v5, v5, v6

    sub-float v5, v2, v5

    float-to-int v5, v5

    .line 1211
    .local v5, "idx":I
    iget-object v7, p0, Landroidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    aget v6, v7, v6

    sub-float v6, v4, v6

    float-to-int v6, v6

    .line 1213
    .local v6, "idy":I
    iget-object v7, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    add-int/2addr v7, v5

    iget-object v8, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    add-int/2addr v8, v6

    invoke-direct {p0, v7, v8, v5, v6}, Landroidx/customview/widget/ViewDragHelper;->dragTo(IIII)V

    .line 1214
    .end local v2    # "x":F
    .end local v3    # "index":I
    .end local v4    # "y":F
    .end local v5    # "idx":I
    .end local v6    # "idy":I
    goto :goto_6

    .line 1216
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 1217
    .local v2, "pointerCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v2, :cond_f

    .line 1218
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 1221
    .local v5, "pointerId":I
    invoke-direct {p0, v5}, Landroidx/customview/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_5

    .line 1223
    :cond_c
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 1224
    .local v6, "x":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 1225
    .local v7, "y":F
    iget-object v8, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    aget v8, v8, v5

    sub-float v8, v6, v8

    .line 1226
    .local v8, "dx":F
    iget-object v9, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    aget v9, v9, v5

    sub-float v9, v7, v9

    .line 1228
    .local v9, "dy":F
    invoke-direct {p0, v8, v9, v5}, Landroidx/customview/widget/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1229
    iget v10, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v10, v3, :cond_d

    .line 1231
    goto :goto_6

    .line 1234
    :cond_d
    float-to-int v10, v6

    float-to-int v11, v7

    invoke-virtual {p0, v10, v11}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v10

    .line 1235
    .local v10, "toCapture":Landroid/view/View;
    invoke-direct {p0, v10, v8, v9}, Landroidx/customview/widget/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1236
    invoke-virtual {p0, v10, v5}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1237
    goto :goto_6

    .line 1217
    .end local v5    # "pointerId":I
    .end local v6    # "x":F
    .end local v7    # "y":F
    .end local v8    # "dx":F
    .end local v9    # "dy":F
    .end local v10    # "toCapture":Landroid/view/View;
    :cond_e
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1242
    .end local v2    # "pointerCount":I
    .end local v4    # "i":I
    :cond_f
    :goto_6
    invoke-direct {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    .line 1243
    goto :goto_7

    .line 1278
    :pswitch_5
    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v2, v3, :cond_10

    .line 1279
    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1281
    :cond_10
    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 1282
    goto :goto_7

    .line 1145
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1146
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1147
    .local v3, "y":F
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1148
    .local v4, "pointerId":I
    float-to-int v5, v2

    float-to-int v6, v3

    invoke-virtual {p0, v5, v6}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v5

    .line 1150
    .local v5, "toCapture":Landroid/view/View;
    invoke-direct {p0, v2, v3, v4}, Landroidx/customview/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1155
    invoke-virtual {p0, v5, v4}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1157
    iget-object v6, p0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v6, v6, v4

    .line 1158
    .local v6, "edgesTouched":I
    iget v7, p0, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    and-int v8, v6, v7

    if-eqz v8, :cond_11

    .line 1159
    iget-object v8, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    and-int/2addr v7, v6

    invoke-virtual {v8, v7, v4}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    .line 1293
    .end local v2    # "x":F
    .end local v3    # "y":F
    .end local v4    # "pointerId":I
    .end local v5    # "toCapture":Landroid/view/View;
    .end local v6    # "edgesTouched":I
    :cond_11
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method setDragState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 920
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 921
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-eq v0, p1, :cond_0

    .line 922
    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    .line 923
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    .line 924
    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-nez v0, :cond_0

    .line 925
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 928
    :cond_0
    return-void
.end method

.method public setEdgeSize(I)V
    .locals 0
    .param p1, "size"    # I

    .line 478
    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    .line 479
    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .locals 0
    .param p1, "edgeFlags"    # I

    .line 453
    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    .line 454
    return-void
.end method

.method public setMinVelocity(F)V
    .locals 0
    .param p1, "minVel"    # F

    .line 417
    iput p1, p0, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    .line 418
    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .locals 3
    .param p1, "finalLeft"    # I
    .param p2, "finalTop"    # I

    .line 609
    iget-boolean v0, p0, Landroidx/customview/widget/ViewDragHelper;->mReleaseInProgress:Z

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 615
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 616
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    .line 614
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/customview/widget/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    return v0

    .line 610
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 995
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 996
    .local v2, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 998
    .local v3, "actionIndex":I
    if-nez v2, :cond_0

    .line 1001
    invoke-virtual/range {p0 .. p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 1004
    :cond_0
    iget-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1

    .line 1005
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1007
    :cond_1
    iget-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1009
    const/4 v4, 0x2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move/from16 v16, v2

    move/from16 v17, v3

    const/4 v5, 0x0

    .end local v2    # "action":I
    .end local v3    # "actionIndex":I
    .local v16, "action":I
    .local v17, "actionIndex":I
    goto/16 :goto_4

    .line 1107
    .end local v16    # "action":I
    .end local v17    # "actionIndex":I
    .restart local v2    # "action":I
    .restart local v3    # "actionIndex":I
    :pswitch_1
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1108
    .local v4, "pointerId":I
    invoke-direct {v0, v4}, Landroidx/customview/widget/ViewDragHelper;->clearMotionHistory(I)V

    .line 1109
    move/from16 v16, v2

    move/from16 v17, v3

    const/4 v5, 0x0

    goto/16 :goto_4

    .line 1031
    .end local v4    # "pointerId":I
    :pswitch_2
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 1032
    .local v7, "pointerId":I
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 1033
    .local v8, "x":F
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 1035
    .local v9, "y":F
    invoke-direct {v0, v8, v9, v7}, Landroidx/customview/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1038
    iget v10, v0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-nez v10, :cond_2

    .line 1039
    iget-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v4, v4, v7

    .line 1040
    .local v4, "edgesTouched":I
    iget v10, v0, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    and-int v11, v4, v10

    if-eqz v11, :cond_4

    .line 1041
    iget-object v11, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    and-int/2addr v10, v4

    invoke-virtual {v11, v10, v7}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    .line 1043
    .end local v4    # "edgesTouched":I
    :cond_2
    if-ne v10, v4, :cond_4

    .line 1045
    float-to-int v4, v8

    float-to-int v10, v9

    invoke-virtual {v0, v4, v10}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v4

    .line 1046
    .local v4, "toCapture":Landroid/view/View;
    iget-object v10, v0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v4, v10, :cond_3

    .line 1047
    invoke-virtual {v0, v4, v7}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1049
    .end local v4    # "toCapture":Landroid/view/View;
    :cond_3
    move/from16 v16, v2

    move/from16 v17, v3

    const/4 v5, 0x0

    goto/16 :goto_4

    .line 1043
    :cond_4
    :goto_0
    move/from16 v16, v2

    move/from16 v17, v3

    const/4 v5, 0x0

    goto/16 :goto_4

    .line 1054
    .end local v7    # "pointerId":I
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_3
    iget-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v4, :cond_e

    iget-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    if-nez v4, :cond_5

    move/from16 v16, v2

    move/from16 v17, v3

    const/4 v5, 0x0

    goto/16 :goto_4

    .line 1057
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    .line 1058
    .local v4, "pointerCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v4, :cond_c

    .line 1059
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    .line 1062
    .local v8, "pointerId":I
    invoke-direct {v0, v8}, Landroidx/customview/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v9

    if-nez v9, :cond_6

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    goto/16 :goto_2

    .line 1064
    :cond_6
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .line 1065
    .local v9, "x":F
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 1066
    .local v10, "y":F
    iget-object v11, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    aget v11, v11, v8

    sub-float v11, v9, v11

    .line 1067
    .local v11, "dx":F
    iget-object v12, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    aget v12, v12, v8

    sub-float v12, v10, v12

    .line 1069
    .local v12, "dy":F
    float-to-int v13, v9

    float-to-int v14, v10

    invoke-virtual {v0, v13, v14}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v13

    .line 1070
    .local v13, "toCapture":Landroid/view/View;
    invoke-direct {v0, v13, v11, v12}, Landroidx/customview/widget/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v14

    .line 1071
    .local v14, "pastSlop":Z
    if-eqz v14, :cond_8

    .line 1077
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v15

    .line 1078
    .local v15, "oldLeft":I
    float-to-int v5, v11

    add-int/2addr v5, v15

    .line 1079
    .local v5, "targetLeft":I
    iget-object v6, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    move/from16 v16, v2

    .end local v2    # "action":I
    .restart local v16    # "action":I
    float-to-int v2, v11

    invoke-virtual {v6, v13, v5, v2}, Landroidx/customview/widget/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v2

    .line 1081
    .local v2, "newLeft":I
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1082
    .local v6, "oldTop":I
    move/from16 v17, v3

    .end local v3    # "actionIndex":I
    .restart local v17    # "actionIndex":I
    float-to-int v3, v12

    add-int/2addr v3, v6

    .line 1083
    .local v3, "targetTop":I
    move/from16 v18, v4

    .end local v4    # "pointerCount":I
    .local v18, "pointerCount":I
    iget-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    move/from16 v19, v5

    .end local v5    # "targetLeft":I
    .local v19, "targetLeft":I
    float-to-int v5, v12

    invoke-virtual {v4, v13, v3, v5}, Landroidx/customview/widget/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v4

    .line 1085
    .local v4, "newTop":I
    iget-object v5, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v5, v13}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v5

    .line 1086
    .local v5, "hDragRange":I
    move/from16 v20, v3

    .end local v3    # "targetTop":I
    .local v20, "targetTop":I
    iget-object v3, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v3, v13}, Landroidx/customview/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v3

    .line 1087
    .local v3, "vDragRange":I
    if-eqz v5, :cond_7

    if-lez v5, :cond_9

    if-ne v2, v15, :cond_9

    :cond_7
    if-eqz v3, :cond_d

    if-lez v3, :cond_9

    if-ne v4, v6, :cond_9

    .line 1089
    goto :goto_3

    .line 1071
    .end local v5    # "hDragRange":I
    .end local v6    # "oldTop":I
    .end local v15    # "oldLeft":I
    .end local v16    # "action":I
    .end local v17    # "actionIndex":I
    .end local v18    # "pointerCount":I
    .end local v19    # "targetLeft":I
    .end local v20    # "targetTop":I
    .local v2, "action":I
    .local v3, "actionIndex":I
    .local v4, "pointerCount":I
    :cond_8
    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    .line 1092
    .end local v2    # "action":I
    .end local v3    # "actionIndex":I
    .end local v4    # "pointerCount":I
    .restart local v16    # "action":I
    .restart local v17    # "actionIndex":I
    .restart local v18    # "pointerCount":I
    :cond_9
    invoke-direct {v0, v11, v12, v8}, Landroidx/customview/widget/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1093
    iget v2, v0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 1095
    goto :goto_3

    .line 1098
    :cond_a
    if-eqz v14, :cond_b

    invoke-virtual {v0, v13, v8}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1099
    goto :goto_3

    .line 1058
    .end local v8    # "pointerId":I
    .end local v9    # "x":F
    .end local v10    # "y":F
    .end local v11    # "dx":F
    .end local v12    # "dy":F
    .end local v13    # "toCapture":Landroid/view/View;
    .end local v14    # "pastSlop":Z
    :cond_b
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    goto/16 :goto_1

    .end local v16    # "action":I
    .end local v17    # "actionIndex":I
    .end local v18    # "pointerCount":I
    .restart local v2    # "action":I
    .restart local v3    # "actionIndex":I
    .restart local v4    # "pointerCount":I
    :cond_c
    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    .line 1102
    .end local v2    # "action":I
    .end local v3    # "actionIndex":I
    .end local v4    # "pointerCount":I
    .end local v7    # "i":I
    .restart local v16    # "action":I
    .restart local v17    # "actionIndex":I
    .restart local v18    # "pointerCount":I
    :cond_d
    :goto_3
    invoke-direct/range {p0 .. p1}, Landroidx/customview/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    .line 1103
    const/4 v5, 0x0

    goto :goto_4

    .line 1054
    .end local v16    # "action":I
    .end local v17    # "actionIndex":I
    .end local v18    # "pointerCount":I
    .restart local v2    # "action":I
    .restart local v3    # "actionIndex":I
    :cond_e
    move/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "action":I
    .end local v3    # "actionIndex":I
    .restart local v16    # "action":I
    .restart local v17    # "actionIndex":I
    const/4 v5, 0x0

    goto :goto_4

    .line 1114
    .end local v16    # "action":I
    .end local v17    # "actionIndex":I
    .restart local v2    # "action":I
    .restart local v3    # "actionIndex":I
    :pswitch_4
    move/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "action":I
    .end local v3    # "actionIndex":I
    .restart local v16    # "action":I
    .restart local v17    # "actionIndex":I
    invoke-virtual/range {p0 .. p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    const/4 v5, 0x0

    goto :goto_4

    .line 1011
    .end local v16    # "action":I
    .end local v17    # "actionIndex":I
    .restart local v2    # "action":I
    .restart local v3    # "actionIndex":I
    :pswitch_5
    move/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "action":I
    .end local v3    # "actionIndex":I
    .restart local v16    # "action":I
    .restart local v17    # "actionIndex":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1012
    .local v2, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1013
    .local v3, "y":F
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 1014
    .local v6, "pointerId":I
    invoke-direct {v0, v2, v3, v6}, Landroidx/customview/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1016
    float-to-int v7, v2

    float-to-int v8, v3

    invoke-virtual {v0, v7, v8}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v7

    .line 1019
    .local v7, "toCapture":Landroid/view/View;
    iget-object v8, v0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v7, v8, :cond_f

    iget v8, v0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v8, v4, :cond_f

    .line 1020
    invoke-virtual {v0, v7, v6}, Landroidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1023
    :cond_f
    iget-object v4, v0, Landroidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v4, v4, v6

    .line 1024
    .local v4, "edgesTouched":I
    iget v8, v0, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    and-int v9, v4, v8

    if-eqz v9, :cond_10

    .line 1025
    iget-object v9, v0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    and-int/2addr v8, v4

    invoke-virtual {v9, v8, v6}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    .line 1119
    .end local v2    # "x":F
    .end local v3    # "y":F
    .end local v4    # "edgesTouched":I
    .end local v6    # "pointerId":I
    .end local v7    # "toCapture":Landroid/view/View;
    :cond_10
    :goto_4
    iget v2, v0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    move v5, v3

    :cond_11
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "finalLeft"    # I
    .param p3, "finalTop"    # I

    .line 584
    iput-object p1, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 585
    const/4 v0, -0x1

    iput v0, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 587
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, v0}, Landroidx/customview/widget/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    .line 588
    .local v0, "continueSliding":Z
    if-nez v0, :cond_0

    iget v1, p0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 591
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 594
    :cond_0
    return v0
.end method

.method tryCaptureViewForDrag(Landroid/view/View;I)Z
    .locals 2
    .param p1, "toCapture"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .line 940
    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    if-ne v0, p2, :cond_0

    .line 942
    return v1

    .line 944
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/customview/widget/ViewDragHelper;->mCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Landroidx/customview/widget/ViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 945
    iput p2, p0, Landroidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 946
    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 947
    return v1

    .line 949
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
