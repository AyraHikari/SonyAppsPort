.class public Lcom/android/quickstep/OrientationRectF;
.super Landroid/graphics/RectF;
.source "OrientationRectF.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "OrientationRectF"


# instance fields
.field private final mHeight:F

.field private final mRotation:I

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field private final mTmpPoint:[F

.field private final mWidth:F


# direct methods
.method public constructor <init>(FFFFI)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "rotation"    # I

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 35
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/OrientationRectF;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/quickstep/OrientationRectF;->mTmpPoint:[F

    .line 40
    iput p5, p0, Lcom/android/quickstep/OrientationRectF;->mRotation:I

    .line 41
    iput p4, p0, Lcom/android/quickstep/OrientationRectF;->mHeight:F

    .line 42
    iput p3, p0, Lcom/android/quickstep/OrientationRectF;->mWidth:F

    .line 43
    return-void
.end method


# virtual methods
.method public applyTransform(Landroid/view/MotionEvent;IZ)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "deltaRotation"    # I
    .param p3, "forceTransform"    # Z

    .line 70
    iget-object v0, p0, Lcom/android/quickstep/OrientationRectF;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 71
    iget v0, p0, Lcom/android/quickstep/OrientationRectF;->mHeight:F

    iget v1, p0, Lcom/android/quickstep/OrientationRectF;->mWidth:F

    iget-object v2, p0, Lcom/android/quickstep/OrientationRectF;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {p2, v0, v1, v2}, Lcom/android/quickstep/util/RecentsOrientedState;->postDisplayRotation(IFFLandroid/graphics/Matrix;)V

    .line 72
    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/quickstep/OrientationRectF;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->applyTransform(Landroid/graphics/Matrix;)V

    .line 80
    return v0

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/OrientationRectF;->mTmpPoint:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 83
    iget-object v1, p0, Lcom/android/quickstep/OrientationRectF;->mTmpPoint:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    aput v2, v1, v0

    .line 84
    iget-object v1, p0, Lcom/android/quickstep/OrientationRectF;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/quickstep/OrientationRectF;->mTmpPoint:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 94
    iget-object v1, p0, Lcom/android/quickstep/OrientationRectF;->mTmpPoint:[F

    aget v2, v1, v3

    aget v1, v1, v0

    invoke-virtual {p0, v2, v1}, Lcom/android/quickstep/OrientationRectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/android/quickstep/OrientationRectF;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->applyTransform(Landroid/graphics/Matrix;)V

    .line 96
    return v0

    .line 98
    :cond_1
    return v3
.end method

.method public applyTransformFromRotation(Landroid/view/MotionEvent;IZ)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "currentRotation"    # I
    .param p3, "forceTransform"    # Z

    .line 61
    iget v0, p0, Lcom/android/quickstep/OrientationRectF;->mRotation:I

    invoke-static {p2, v0}, Lcom/android/launcher3/states/RotationHelper;->deltaRotation(II)I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/quickstep/OrientationRectF;->applyTransform(Landroid/view/MotionEvent;IZ)Z

    move-result v0

    return v0
.end method

.method public applyTransformToRotation(Landroid/view/MotionEvent;IZ)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "currentRotation"    # I
    .param p3, "forceTransform"    # Z

    .line 66
    iget v0, p0, Lcom/android/quickstep/OrientationRectF;->mRotation:I

    invoke-static {v0, p2}, Lcom/android/launcher3/states/RotationHelper;->deltaRotation(II)I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/quickstep/OrientationRectF;->applyTransform(Landroid/view/MotionEvent;IZ)Z

    move-result v0

    return v0
.end method

.method public contains(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 55
    iget v0, p0, Lcom/android/quickstep/OrientationRectF;->left:F

    iget v1, p0, Lcom/android/quickstep/OrientationRectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/quickstep/OrientationRectF;->top:F

    iget v1, p0, Lcom/android/quickstep/OrientationRectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/quickstep/OrientationRectF;->left:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/quickstep/OrientationRectF;->right:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/quickstep/OrientationRectF;->top:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/quickstep/OrientationRectF;->bottom:F

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getRotation()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/android/quickstep/OrientationRectF;->mRotation:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 47
    invoke-super {p0}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/quickstep/OrientationRectF;->mRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    return-object v0
.end method
