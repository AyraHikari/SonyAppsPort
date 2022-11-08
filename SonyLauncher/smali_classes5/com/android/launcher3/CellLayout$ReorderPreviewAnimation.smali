.class Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReorderPreviewAnimation"
.end annotation


# static fields
.field private static final CHILD_DIVIDEND:F = 4.0f

.field private static final HINT_DURATION:I = 0x28a

.field public static final MODE_HINT:I = 0x0

.field public static final MODE_PREVIEW:I = 0x1

.field private static final PREVIEW_DURATION:I = 0x12c


# instance fields
.field a:Landroid/animation/ValueAnimator;

.field animationProgress:F

.field final child:Lcom/android/launcher3/Reorderable;

.field finalDeltaX:F

.field finalDeltaY:F

.field final finalScale:F

.field initDeltaX:F

.field initDeltaY:F

.field initScale:F

.field final mode:I

.field repeating:Z

.field final synthetic this$0:Lcom/android/launcher3/CellLayout;


# direct methods
.method static bridge synthetic -$$Nest$msetAnimationProgress(Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->setAnimationProgress(F)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/Reorderable;IIIIIII)V
    .locals 18
    .param p1, "this$0"    # Lcom/android/launcher3/CellLayout;
    .param p2, "child"    # Lcom/android/launcher3/Reorderable;
    .param p3, "mode"    # I
    .param p4, "cellX0"    # I
    .param p5, "cellY0"    # I
    .param p6, "cellX1"    # I
    .param p7, "cellY1"    # I
    .param p8, "spanX"    # I
    .param p9, "spanY"    # I

    .line 2139
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    iput-object v7, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->this$0:Lcom/android/launcher3/CellLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2126
    const/4 v10, 0x0

    iput-boolean v10, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->repeating:Z

    .line 2135
    const/4 v11, 0x0

    iput v11, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->animationProgress:F

    .line 2140
    iget-object v6, v7, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p8

    move/from16 v5, p9

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 2141
    iget-object v1, v7, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    aget v12, v1, v10

    .line 2142
    .local v12, "x0":I
    iget-object v1, v7, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    const/4 v13, 0x1

    aget v14, v1, v13

    .line 2143
    .local v14, "y0":I
    iget-object v6, v7, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    move-object/from16 v1, p1

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 2144
    iget-object v1, v7, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    aget v1, v1, v10

    .line 2145
    .local v1, "x1":I
    iget-object v2, v7, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    aget v2, v2, v13

    .line 2146
    .local v2, "y1":I
    sub-int v3, v1, v12

    .line 2147
    .local v3, "dX":I
    sub-int v4, v2, v14

    .line 2149
    .local v4, "dY":I
    iput-object v8, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Lcom/android/launcher3/Reorderable;

    .line 2150
    iput v9, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->mode:I

    .line 2151
    iput v11, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    .line 2152
    iput v11, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    .line 2154
    iget-object v5, v7, Lcom/android/launcher3/CellLayout;->mTmpPointF:Landroid/graphics/PointF;

    invoke-interface {v8, v5}, Lcom/android/launcher3/Reorderable;->getReorderBounceOffset(Landroid/graphics/PointF;)V

    .line 2155
    iget-object v5, v7, Lcom/android/launcher3/CellLayout;->mTmpPointF:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iput v5, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaX:F

    .line 2156
    iget-object v5, v7, Lcom/android/launcher3/CellLayout;->mTmpPointF:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iput v5, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaY:F

    .line 2157
    invoke-interface/range {p2 .. p2}, Lcom/android/launcher3/Reorderable;->getReorderBounceScale()F

    move-result v5

    iput v5, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initScale:F

    .line 2158
    invoke-interface/range {p2 .. p2}, Lcom/android/launcher3/Reorderable;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v6, v5

    iget v5, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initScale:F

    mul-float/2addr v6, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    iput v5, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalScale:F

    .line 2160
    if-nez v9, :cond_0

    const/4 v13, -0x1

    :cond_0
    move v5, v13

    .line 2161
    .local v5, "dir":I
    if-ne v3, v4, :cond_1

    if-nez v3, :cond_1

    move v13, v1

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    goto/16 :goto_0

    .line 2163
    :cond_1
    if-nez v4, :cond_2

    .line 2164
    neg-int v6, v5

    int-to-float v6, v6

    int-to-float v10, v3

    invoke-static {v10}, Ljava/lang/Math;->signum(F)F

    move-result v10

    mul-float/2addr v6, v10

    iget v10, v7, Lcom/android/launcher3/CellLayout;->mReorderPreviewAnimationMagnitude:F

    mul-float/2addr v6, v10

    iput v6, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    move v13, v1

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    goto :goto_0

    .line 2165
    :cond_2
    if-nez v3, :cond_3

    .line 2166
    neg-int v6, v5

    int-to-float v6, v6

    int-to-float v10, v4

    invoke-static {v10}, Ljava/lang/Math;->signum(F)F

    move-result v10

    mul-float/2addr v6, v10

    iget v10, v7, Lcom/android/launcher3/CellLayout;->mReorderPreviewAnimationMagnitude:F

    mul-float/2addr v6, v10

    iput v6, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    move v13, v1

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    goto :goto_0

    .line 2168
    :cond_3
    int-to-float v6, v4

    int-to-float v10, v3

    div-float/2addr v6, v10

    float-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10

    .line 2169
    .local v10, "angle":D
    neg-int v6, v5

    int-to-float v6, v6

    int-to-float v13, v3

    invoke-static {v13}, Ljava/lang/Math;->signum(F)F

    move-result v13

    mul-float/2addr v6, v13

    move v13, v1

    move v15, v2

    .end local v1    # "x1":I
    .end local v2    # "y1":I
    .local v13, "x1":I
    .local v15, "y1":I
    float-to-double v1, v6

    .line 2170
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    iget v6, v7, Lcom/android/launcher3/CellLayout;->mReorderPreviewAnimationMagnitude:F

    float-to-double v8, v6

    mul-double v16, v16, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    mul-double/2addr v1, v8

    double-to-int v1, v1

    int-to-float v1, v1

    iput v1, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    .line 2171
    neg-int v1, v5

    int-to-float v1, v1

    int-to-float v2, v4

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-double v1, v1

    .line 2172
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    iget v6, v7, Lcom/android/launcher3/CellLayout;->mReorderPreviewAnimationMagnitude:F

    move/from16 v16, v3

    move/from16 v17, v4

    .end local v3    # "dX":I
    .end local v4    # "dY":I
    .local v16, "dX":I
    .local v17, "dY":I
    float-to-double v3, v6

    mul-double/2addr v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    int-to-float v1, v1

    iput v1, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    .line 2175
    .end local v10    # "angle":D
    :goto_0
    return-void
.end method

.method private cancel()V
    .locals 1

    .line 2240
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2241
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2243
    :cond_0
    return-void
.end method

.method private setAnimationProgress(F)V
    .locals 6
    .param p1, "progress"    # F

    .line 2230
    iput p1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->animationProgress:F

    .line 2231
    iget v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->mode:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->repeating:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p1

    .line 2232
    .local v0, "r1":F
    :goto_0
    iget v2, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    mul-float/2addr v2, v0

    sub-float v3, v1, v0

    iget v4, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaX:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 2233
    .local v2, "x":F
    iget v3, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    mul-float/2addr v3, v0

    sub-float v4, v1, v0

    iget v5, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaY:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 2234
    .local v3, "y":F
    iget-object v4, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Lcom/android/launcher3/Reorderable;

    invoke-interface {v4, v2, v3}, Lcom/android/launcher3/Reorderable;->setReorderBounceOffset(FF)V

    .line 2235
    iget v4, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->animationProgress:F

    iget v5, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalScale:F

    mul-float/2addr v5, v4

    sub-float/2addr v1, v4

    iget v4, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initScale:F

    mul-float/2addr v1, v4

    add-float/2addr v5, v1

    .line 2236
    .local v5, "s":F
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Lcom/android/launcher3/Reorderable;

    invoke-interface {v1, v5}, Lcom/android/launcher3/Reorderable;->setReorderBounceScale(F)V

    .line 2237
    return-void
.end method


# virtual methods
.method animate()V
    .locals 6

    .line 2184
    iget v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2186
    .local v0, "noMovement":Z
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->this$0:Lcom/android/launcher3/CellLayout;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Lcom/android/launcher3/Reorderable;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2187
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->this$0:Lcom/android/launcher3/CellLayout;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Lcom/android/launcher3/Reorderable;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    .line 2188
    .local v1, "oldAnimation":Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;
    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->this$0:Lcom/android/launcher3/CellLayout;

    iget-object v2, v2, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Lcom/android/launcher3/Reorderable;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2190
    if-eqz v0, :cond_1

    .line 2193
    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finishAnimation()V

    .line 2194
    return-void

    .line 2198
    :cond_1
    invoke-direct {v1}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->cancel()V

    .line 2201
    .end local v1    # "oldAnimation":Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;
    :cond_2
    if-eqz v0, :cond_3

    .line 2202
    return-void

    .line 2205
    :cond_3
    invoke-static {}, Lcom/android/launcher3/CellLayout;->-$$Nest$sfgetANIMATION_PROGRESS()Landroid/util/Property;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2206
    .local v1, "va":Landroid/animation/ValueAnimator;
    iput-object v1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/ValueAnimator;

    .line 2211
    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2212
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 2213
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 2216
    :cond_4
    iget v2, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->mode:I

    if-nez v2, :cond_5

    const-wide/16 v2, 0x28a

    goto :goto_1

    :cond_5
    const-wide/16 v2, 0x12c

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2217
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2218
    new-instance v2, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;-><init>(Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2225
    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->this$0:Lcom/android/launcher3/CellLayout;

    iget-object v2, v2, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Lcom/android/launcher3/Reorderable;

    invoke-virtual {v2, v3, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2226
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 2227
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method finishAnimation()V
    .locals 4

    .line 2249
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2250
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2253
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->setInitialAnimationValuesToBaseline()V

    .line 2254
    invoke-static {}, Lcom/android/launcher3/CellLayout;->-$$Nest$sfgetANIMATION_PROGRESS()Landroid/util/Property;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->animationProgress:F

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2256
    .local v0, "va":Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/ValueAnimator;

    .line 2257
    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_1_5:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2258
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2259
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 2260
    return-void
.end method

.method setInitialAnimationValuesToBaseline()V
    .locals 1

    .line 2178
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initScale:F

    .line 2179
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaX:F

    .line 2180
    iput v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaY:F

    .line 2181
    return-void
.end method
