.class Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;
.super Landroidx/constraintlayout/motion/widget/MotionInterpolator;
.source "MotionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DecelerateInterpolator"
.end annotation


# instance fields
.field currentP:F

.field initalV:F

.field maxA:F

.field final synthetic this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 1
    .param p1, "this$0"    # Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1465
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;-><init>()V

    .line 1466
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->initalV:F

    .line 1467
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->currentP:F

    return-void
.end method


# virtual methods
.method public config(FFF)V
    .locals 0
    .param p1, "velocity"    # F
    .param p2, "position"    # F
    .param p3, "maxAcceleration"    # F

    .line 1471
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->initalV:F

    .line 1472
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->currentP:F

    .line 1473
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->maxA:F

    .line 1474
    return-void
.end method

.method public getInterpolation(F)F
    .locals 4
    .param p1, "time"    # F

    .line 1478
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->initalV:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    if-lez v1, :cond_1

    .line 1479
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->maxA:F

    div-float v3, v0, v1

    cmpg-float v3, v3, p1

    if-gez v3, :cond_0

    .line 1480
    div-float p1, v0, v1

    .line 1482
    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    iput v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 1483
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->initalV:F

    mul-float/2addr v0, p1

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->maxA:F

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 1484
    .local v0, "pos":F
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->currentP:F

    add-float/2addr v1, v0

    return v1

    .line 1487
    .end local v0    # "pos":F
    :cond_1
    neg-float v1, v0

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->maxA:F

    div-float/2addr v1, v3

    cmpg-float v1, v1, p1

    if-gez v1, :cond_2

    .line 1488
    neg-float v1, v0

    div-float p1, v1, v3

    .line 1490
    :cond_2
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    mul-float/2addr v3, p1

    add-float/2addr v0, v3

    iput v0, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 1491
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->initalV:F

    mul-float/2addr v0, p1

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->maxA:F

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 1492
    .restart local v0    # "pos":F
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->currentP:F

    add-float/2addr v1, v0

    return v1
.end method

.method public getVelocity()F
    .locals 1

    .line 1498
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    return v0
.end method
