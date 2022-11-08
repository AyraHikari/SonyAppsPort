.class Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;
.super Ljava/lang/Object;
.source "QuickstepTransitionManager.java"

# interfaces
.implements Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/QuickstepTransitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpringAnimRunner"
.end annotation


# instance fields
.field private final mAppTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field private final mCurrentRect:Landroid/graphics/Rect;

.field private final mEndRadius:F

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mStartRadius:F

.field private final mSurfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

.field private final mTmpPos:Landroid/graphics/Point;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mWindowTargetBounds:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/launcher3/QuickstepTransitionManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/RectF;Landroid/graphics/Rect;F)V
    .locals 3
    .param p2, "appTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p3, "targetRect"    # Landroid/graphics/RectF;
    .param p4, "windowTargetBounds"    # Landroid/graphics/Rect;
    .param p5, "startWindowCornerRadius"    # F

    .line 1872
    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1861
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mMatrix:Landroid/graphics/Matrix;

    .line 1862
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mTmpPos:Landroid/graphics/Point;

    .line 1863
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mCurrentRect:Landroid/graphics/Rect;

    .line 1867
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mWindowTargetBounds:Landroid/graphics/Rect;

    .line 1869
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mTmpRect:Landroid/graphics/Rect;

    .line 1873
    iput-object p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mAppTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 1874
    iput p5, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mStartRadius:F

    .line 1875
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mEndRadius:F

    .line 1876
    new-instance v1, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$fgetmDragLayer(Lcom/android/launcher3/QuickstepTransitionManager;)Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mSurfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    .line 1877
    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1878
    return-void
.end method


# virtual methods
.method public getCornerRadius(F)F
    .locals 2
    .param p1, "progress"    # F

    .line 1881
    iget v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mStartRadius:F

    iget v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mEndRadius:F

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    return v0
.end method

.method protected getWindowAlpha(F)F
    .locals 10
    .param p1, "progress"    # F

    .line 1940
    const/4 v0, 0x0

    .line 1941
    .local v0, "start":F
    const v1, 0x3f59999a    # 0.85f

    .line 1943
    .local v1, "end":F
    const/4 v2, 0x0

    cmpg-float v3, p1, v2

    if-gtz v3, :cond_0

    .line 1944
    const/high16 v2, 0x3f800000    # 1.0f

    return v2

    .line 1946
    :cond_0
    const v3, 0x3f59999a    # 0.85f

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_1

    .line 1947
    return v2

    .line 1949
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

.method public onUpdate(Landroid/graphics/RectF;F)V
    .locals 12
    .param p1, "currentRectF"    # Landroid/graphics/RectF;
    .param p2, "progress"    # F

    .line 1886
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mAppTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v1, v0

    new-array v1, v1, [Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    .line 1887
    .local v1, "params":[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;
    array-length v0, v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 1888
    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mAppTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aget-object v3, v3, v0

    .line 1889
    .local v3, "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    new-instance v4, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    iget-object v5, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v4, v5}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 1891
    .local v4, "builder":Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    iget-object v5, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz v5, :cond_0

    .line 1892
    iget-object v5, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mTmpPos:Landroid/graphics/Point;

    iget-object v6, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Point;->set(II)V

    goto :goto_1

    .line 1894
    :cond_0
    iget-object v5, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mTmpPos:Landroid/graphics/Point;

    iget-object v6, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Point;->set(II)V

    .line 1897
    :goto_1
    iget v5, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v5, v2, :cond_2

    .line 1898
    iget-object v5, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v5}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 1904
    iget-object v5, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mWindowTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v7, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mWindowTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    const/4 v8, 0x0

    if-le v5, v7, :cond_1

    .line 1905
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v7, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mWindowTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1907
    .local v5, "scale":F
    iget-object v7, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v5

    mul-float/2addr v7, v6

    float-to-int v6, v7

    .line 1908
    .local v6, "unscaledHeight":I
    iget-object v7, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mWindowTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v7, v6

    .line 1909
    .local v7, "croppedHeight":I
    iget-object v9, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mWindowTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget-object v11, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mWindowTargetBounds:Landroid/graphics/Rect;

    .line 1910
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    sub-int/2addr v11, v7

    .line 1909
    invoke-virtual {v9, v8, v8, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 1911
    .end local v6    # "unscaledHeight":I
    .end local v7    # "croppedHeight":I
    goto :goto_2

    .line 1912
    .end local v5    # "scale":F
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget-object v7, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mWindowTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1914
    .restart local v5    # "scale":F
    iget-object v7, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v5

    mul-float/2addr v7, v6

    float-to-int v6, v7

    .line 1915
    .local v6, "unscaledWidth":I
    iget-object v7, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mWindowTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v7, v6

    .line 1916
    .local v7, "croppedWidth":I
    iget-object v9, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mWindowTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    sub-int/2addr v10, v7

    iget-object v11, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mWindowTargetBounds:Landroid/graphics/Rect;

    .line 1917
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 1916
    invoke-virtual {v9, v8, v8, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 1921
    .end local v6    # "unscaledWidth":I
    .end local v7    # "croppedWidth":I
    :goto_2
    iget-object v6, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1922
    iget-object v6, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mMatrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mCurrentRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mCurrentRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1924
    iget-object v6, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v6}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mTmpRect:Landroid/graphics/Rect;

    .line 1925
    invoke-virtual {v6, v7}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v6

    .line 1926
    invoke-virtual {p0, p2}, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->getWindowAlpha(F)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v6

    .line 1927
    invoke-virtual {p0, p2}, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->getCornerRadius(F)F

    move-result v7

    div-float/2addr v7, v5

    invoke-virtual {v6, v7}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withCornerRadius(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    .end local v5    # "scale":F
    goto :goto_3

    .line 1928
    :cond_2
    iget v5, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-nez v5, :cond_3

    .line 1929
    iget-object v5, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mMatrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mTmpPos:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mTmpPos:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1930
    iget-object v5, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v5

    .line 1931
    invoke-virtual {v5, v6}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    goto :goto_4

    .line 1928
    :cond_3
    :goto_3
    nop

    .line 1933
    :goto_4
    invoke-virtual {v4}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->build()Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v5

    aput-object v5, v1, v0

    .line 1887
    .end local v3    # "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .end local v4    # "builder":Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 1935
    .end local v0    # "i":I
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->mSurfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply([Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    .line 1936
    return-void
.end method
