.class public abstract Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;
.super Ljava/lang/Object;
.source "SwipeUpAnimationLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/SwipeUpAnimationLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "HomeAnimationFactory"
.end annotation


# instance fields
.field protected mSwipeVelocity:F

.field final synthetic this$0:Lcom/android/quickstep/SwipeUpAnimationLogic;


# direct methods
.method protected constructor <init>(Lcom/android/quickstep/SwipeUpAnimationLogic;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/SwipeUpAnimationLogic;

    .line 145
    iput-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->this$0:Lcom/android/quickstep/SwipeUpAnimationLogic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createActivityAnimationToHome()Lcom/android/launcher3/anim/AnimatorPlaybackController;
.end method

.method public getEndRadius(Landroid/graphics/RectF;)F
    .locals 2
    .param p1, "cropRectF"    # Landroid/graphics/RectF;

    .line 165
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method protected getWindowAlpha(F)F
    .locals 10
    .param p1, "progress"    # F

    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "start":F
    const v1, 0x3f59999a    # 0.85f

    .line 193
    .local v1, "end":F
    const/4 v2, 0x0

    cmpg-float v3, p1, v2

    if-gtz v3, :cond_0

    .line 194
    const/high16 v2, 0x3f800000    # 1.0f

    return v2

    .line 196
    :cond_0
    const v3, 0x3f59999a    # 0.85f

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_1

    .line 197
    return v2

    .line 199
    :cond_1
    const/4 v5, 0x0

    const v6, 0x3f59999a    # 0.85f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    sget-object v9, Lcom/android/launcher3/anim/Interpolators;->ACCEL_1_5:Landroid/view/animation/Interpolator;

    move v4, p1

    invoke-static/range {v4 .. v9}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v2

    return v2
.end method

.method public getWindowTargetRect()Landroid/graphics/RectF;
    .locals 12

    .line 149
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->this$0:Lcom/android/quickstep/SwipeUpAnimationLogic;

    invoke-virtual {v0}, Lcom/android/quickstep/SwipeUpAnimationLogic;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    .line 150
    .local v0, "orientationHandler":Lcom/android/launcher3/touch/PagedOrientationHandler;
    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->this$0:Lcom/android/quickstep/SwipeUpAnimationLogic;

    iget-object v1, v1, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    .line 151
    .local v1, "dp":Lcom/android/launcher3/DeviceProfile;
    iget v2, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    div-int/lit8 v2, v2, 0x2

    .line 152
    .local v2, "halfIconSize":I
    iget v3, v1, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v4, v1, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    .line 153
    invoke-interface {v0, v3, v4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v3

    int-to-float v3, v3

    .line 154
    .local v3, "primaryDimension":F
    iget v4, v1, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v5, v1, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    .line 155
    invoke-interface {v0, v4, v5}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(II)I

    move-result v4

    int-to-float v4, v4

    .line 156
    .local v4, "secondaryDimension":F
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v3, v5

    .line 157
    .local v5, "targetX":F
    iget v6, v1, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    int-to-float v6, v6

    sub-float v6, v4, v6

    .line 159
    .local v6, "targetY":F
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v2

    sub-float v8, v5, v8

    int-to-float v9, v2

    sub-float v9, v6, v9

    int-to-float v10, v2

    add-float/2addr v10, v5

    int-to-float v11, v2

    add-float/2addr v11, v6

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v7
.end method

.method public onCancel()V
    .locals 0

    .line 182
    return-void
.end method

.method public playAtomicAnimation(F)V
    .locals 0
    .param p1, "velocity"    # F

    .line 176
    return-void
.end method

.method public setAnimation(Lcom/android/quickstep/util/RectFSpringAnim;)V
    .locals 0
    .param p1, "anim"    # Lcom/android/quickstep/util/RectFSpringAnim;

    .line 178
    return-void
.end method

.method public setSwipeVelocity(F)V
    .locals 0
    .param p1, "velocity"    # F

    .line 171
    iput p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->mSwipeVelocity:F

    .line 172
    return-void
.end method

.method public update(Landroid/graphics/RectF;FF)V
    .locals 0
    .param p1, "currentRect"    # Landroid/graphics/RectF;
    .param p2, "progress"    # F
    .param p3, "radius"    # F

    .line 180
    return-void
.end method
