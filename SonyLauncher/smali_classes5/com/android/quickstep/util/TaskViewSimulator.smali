.class public Lcom/android/quickstep/util/TaskViewSimulator;
.super Ljava/lang/Object;
.source "TaskViewSimulator.java"

# interfaces
.implements Lcom/android/quickstep/util/TransformParams$BuilderProxy;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "TaskViewSimulator"


# instance fields
.field public final fullScreenProgress:Lcom/android/quickstep/AnimatedFloat;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

.field private mDp:Lcom/android/launcher3/DeviceProfile;

.field private mDrawsBelowRecents:Z

.field private final mInversePositionMatrix:Landroid/graphics/Matrix;

.field private mIsGridTask:Z

.field private final mIsRecentsRtl:Z

.field private mLayoutValid:Z

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mMatrixTmp:Landroid/graphics/Matrix;

.field private mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

.field private mOrientationStateId:I

.field private final mPivot:Landroid/graphics/PointF;

.field private final mPositionHelper:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

.field private final mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

.field private mStagePosition:I

.field private mStagedSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

.field private final mTaskRect:Landroid/graphics/Rect;

.field private mTaskRectTranslationX:I

.field private mTaskRectTranslationY:I

.field private final mTempPoint:[F

.field private final mTempRectF:Landroid/graphics/RectF;

.field private final mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

.field private final mThumbnailPosition:Landroid/graphics/Rect;

.field private final mTmpCropRect:Landroid/graphics/Rect;

.field public final recentsViewPrimaryTranslation:Lcom/android/quickstep/AnimatedFloat;

.field public final recentsViewScale:Lcom/android/quickstep/AnimatedFloat;

.field public final recentsViewScroll:Lcom/android/quickstep/AnimatedFloat;

.field public final recentsViewSecondaryTranslation:Lcom/android/quickstep/AnimatedFloat;

.field public final taskPrimaryTranslation:Lcom/android/quickstep/AnimatedFloat;

.field public final taskSecondaryTranslation:Lcom/android/quickstep/AnimatedFloat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sizeStrategy"    # Lcom/android/quickstep/BaseActivityInterface;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTmpCropRect:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTempRectF:Landroid/graphics/RectF;

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTempPoint:[F

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    .line 78
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mPivot:Landroid/graphics/PointF;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mStagePosition:I

    .line 83
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    .line 84
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrixTmp:Landroid/graphics/Matrix;

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mThumbnailPosition:Landroid/graphics/Rect;

    .line 88
    new-instance v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 89
    new-instance v0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-direct {v0}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mPositionHelper:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    .line 90
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mInversePositionMatrix:Landroid/graphics/Matrix;

    .line 94
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    invoke-direct {v0}, Lcom/android/quickstep/AnimatedFloat;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->taskPrimaryTranslation:Lcom/android/quickstep/AnimatedFloat;

    .line 95
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    invoke-direct {v0}, Lcom/android/quickstep/AnimatedFloat;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->taskSecondaryTranslation:Lcom/android/quickstep/AnimatedFloat;

    .line 98
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    invoke-direct {v0}, Lcom/android/quickstep/AnimatedFloat;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/android/quickstep/AnimatedFloat;

    .line 99
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    invoke-direct {v0}, Lcom/android/quickstep/AnimatedFloat;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->fullScreenProgress:Lcom/android/quickstep/AnimatedFloat;

    .line 100
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    invoke-direct {v0}, Lcom/android/quickstep/AnimatedFloat;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewSecondaryTranslation:Lcom/android/quickstep/AnimatedFloat;

    .line 101
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    invoke-direct {v0}, Lcom/android/quickstep/AnimatedFloat;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewPrimaryTranslation:Lcom/android/quickstep/AnimatedFloat;

    .line 102
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    invoke-direct {v0}, Lcom/android/quickstep/AnimatedFloat;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScroll:Lcom/android/quickstep/AnimatedFloat;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mLayoutValid:Z

    .line 114
    iput-object p1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    .line 118
    new-instance v0, Lcom/android/quickstep/util/TaskViewSimulator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/quickstep/util/TaskViewSimulator$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;)V

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/android/launcher3/util/TraceHelper;->allowIpcs(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/RecentsOrientedState;

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    .line 120
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/RecentsOrientedState;->setGestureActive(Z)Z

    .line 121
    new-instance v0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    invoke-direct {v0, p1}, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    .line 122
    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->getStateId()I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationStateId:I

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 124
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRecentsRtlSetting(Landroid/content/res/Resources;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mIsRecentsRtl:Z

    .line 125
    return-void
.end method

.method static synthetic lambda$new$0(I)V
    .locals 0
    .param p0, "i"    # I

    .line 119
    return-void
.end method

.method static synthetic lambda$new$1(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;)Lcom/android/quickstep/util/RecentsOrientedState;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sizeStrategy"    # Lcom/android/quickstep/BaseActivityInterface;

    .line 119
    new-instance v0, Lcom/android/quickstep/util/RecentsOrientedState;

    new-instance v1, Lcom/android/quickstep/util/TaskViewSimulator$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/quickstep/util/TaskViewSimulator$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, p0, p1, v1}, Lcom/android/quickstep/util/RecentsOrientedState;-><init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;Ljava/util/function/IntConsumer;)V

    return-object v0
.end method


# virtual methods
.method public addAppToOverviewAnim(Lcom/android/launcher3/anim/PendingAnimation;Landroid/animation/TimeInterpolator;)V
    .locals 11
    .param p1, "pa"    # Lcom/android/launcher3/anim/PendingAnimation;
    .param p2, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 244
    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->fullScreenProgress:Lcom/android/quickstep/AnimatedFloat;

    sget-object v2, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    .line 245
    iget-object v6, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/android/quickstep/AnimatedFloat;

    sget-object v7, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    invoke-virtual {p0}, Lcom/android/quickstep/util/TaskViewSimulator;->getFullScreenScale()F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v5, p1

    move-object v10, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    .line 246
    return-void
.end method

.method public addOverviewToAppAnim(Lcom/android/launcher3/anim/PendingAnimation;Landroid/animation/TimeInterpolator;)V
    .locals 11
    .param p1, "pa"    # Lcom/android/launcher3/anim/PendingAnimation;
    .param p2, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 252
    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->fullScreenProgress:Lcom/android/quickstep/AnimatedFloat;

    sget-object v2, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    .line 253
    iget-object v6, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/android/quickstep/AnimatedFloat;

    sget-object v7, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    invoke-virtual {p0}, Lcom/android/quickstep/util/TaskViewSimulator;->getFullScreenScale()F

    move-result v9

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v5, p1

    move-object v10, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    .line 254
    return-void
.end method

.method public apply(Lcom/android/quickstep/util/TransformParams;)V
    .locals 10
    .param p1, "params"    # Lcom/android/quickstep/util/TransformParams;

    .line 307
    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mThumbnailPosition:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 310
    :cond_0
    iget-boolean v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mLayoutValid:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationStateId:I

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getStateId()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 311
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mLayoutValid:Z

    .line 312
    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getStateId()I

    move-result v1

    iput v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationStateId:I

    .line 314
    invoke-virtual {p0}, Lcom/android/quickstep/util/TaskViewSimulator;->getFullScreenScale()F

    .line 315
    sget-boolean v1, Lcom/android/quickstep/TaskAnimationManager;->SHELL_TRANSITIONS_ROTATION:Z

    if-eqz v1, :cond_2

    .line 318
    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v2}, Lcom/android/quickstep/util/RecentsOrientedState;->getTouchRotation()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->rotation:I

    goto :goto_0

    .line 320
    :cond_2
    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v2}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->rotation:I

    .line 324
    :goto_0
    iget-boolean v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mIsRecentsRtl:Z

    xor-int/lit8 v9, v1, 0x1

    .line 325
    .local v9, "isRtlEnabled":Z
    iget-object v2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mPositionHelper:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    iget-object v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mThumbnailPosition:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    .line 327
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v7, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    .line 328
    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result v8

    .line 325
    invoke-virtual/range {v2 .. v9}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->updateThumbnailMatrix(Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/model/ThumbnailData;IILcom/android/launcher3/DeviceProfile;IZ)V

    .line 329
    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mPositionHelper:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mInversePositionMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 335
    .end local v9    # "isRtlEnabled":Z
    :cond_3
    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->fullScreenProgress:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v0

    .line 336
    .local v0, "fullScreenProgress":F
    iget-object v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/android/quickstep/AnimatedFloat;

    iget v5, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    .line 337
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-object v9, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mPositionHelper:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    .line 336
    move v4, v0

    invoke-virtual/range {v3 .. v9}, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->setProgress(FFFILcom/android/launcher3/DeviceProfile;Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)V

    .line 340
    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget-object v1, v1, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnInsets:Landroid/graphics/RectF;

    .line 341
    .local v1, "insets":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget v2, v2, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mScale:F

    .line 342
    .local v2, "scale":F
    iget-object v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    .line 343
    .local v3, "taskWidth":F
    iget-object v4, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    .line 345
    .local v4, "taskHeight":F
    iget-object v5, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mPositionHelper:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-virtual {v6}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 346
    iget-object v5, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    iget v6, v1, Landroid/graphics/RectF;->left:F

    iget v7, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 347
    iget-object v5, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 350
    iget-object v5, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 351
    iget-object v5, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v5}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    sget-object v7, Lcom/android/launcher3/touch/PagedOrientationHandler;->MATRIX_POST_TRANSLATE:Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;

    iget-object v8, p0, Lcom/android/quickstep/util/TaskViewSimulator;->taskPrimaryTranslation:Lcom/android/quickstep/AnimatedFloat;

    iget v8, v8, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-interface {v5, v6, v7, v8}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;F)V

    .line 353
    iget-object v5, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v5}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    sget-object v7, Lcom/android/launcher3/touch/PagedOrientationHandler;->MATRIX_POST_TRANSLATE:Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;

    iget-object v8, p0, Lcom/android/quickstep/util/TaskViewSimulator;->taskSecondaryTranslation:Lcom/android/quickstep/AnimatedFloat;

    iget v8, v8, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-interface {v5, v6, v7, v8}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setSecondary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;F)V

    .line 355
    iget-object v5, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v5}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    sget-object v7, Lcom/android/launcher3/touch/PagedOrientationHandler;->MATRIX_POST_TRANSLATE:Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;

    iget-object v8, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScroll:Lcom/android/quickstep/AnimatedFloat;

    iget v8, v8, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-interface {v5, v6, v7, v8}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;F)V

    .line 359
    iget-object v5, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/android/quickstep/AnimatedFloat;

    iget v6, v6, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget-object v7, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/android/quickstep/AnimatedFloat;

    iget v7, v7, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget-object v8, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mPivot:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mPivot:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 360
    iget-object v5, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v5}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    sget-object v7, Lcom/android/launcher3/touch/PagedOrientationHandler;->MATRIX_POST_TRANSLATE:Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;

    iget-object v8, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewSecondaryTranslation:Lcom/android/quickstep/AnimatedFloat;

    iget v8, v8, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-interface {v5, v6, v7, v8}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setSecondary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;F)V

    .line 362
    iget-object v5, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v5}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    sget-object v7, Lcom/android/launcher3/touch/PagedOrientationHandler;->MATRIX_POST_TRANSLATE:Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;

    iget-object v8, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewPrimaryTranslation:Lcom/android/quickstep/AnimatedFloat;

    iget v8, v8, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-interface {v5, v6, v7, v8}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;F)V

    .line 364
    iget-object v5, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v5}, Lcom/android/quickstep/util/TaskViewSimulator;->applyWindowToHomeRotation(Landroid/graphics/Matrix;)V

    .line 367
    iget-object v5, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTempRectF:Landroid/graphics/RectF;

    iget v6, v1, Landroid/graphics/RectF;->left:F

    neg-float v6, v6

    iget v7, v1, Landroid/graphics/RectF;->top:F

    neg-float v7, v7

    iget v8, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v3

    iget v9, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 369
    iget-object v5, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mInversePositionMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 370
    iget-object v5, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTempRectF:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTmpCropRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 372
    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/TransformParams;->createSurfaceParams(Lcom/android/quickstep/util/TransformParams$BuilderProxy;)[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/quickstep/util/TransformParams;->applySurfaceParams([Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    .line 375
    return-void

    .line 308
    .end local v0    # "fullScreenProgress":F
    .end local v1    # "insets":Landroid/graphics/RectF;
    .end local v2    # "scale":F
    .end local v3    # "taskWidth":F
    .end local v4    # "taskHeight":F
    :cond_4
    :goto_1
    return-void
.end method

.method public applyWindowToHomeRotation(Landroid/graphics/Matrix;)V
    .locals 3
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 296
    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->windowX:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->windowY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 297
    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    .line 298
    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    .line 299
    invoke-virtual {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v1

    .line 297
    invoke-static {v0, v1}, Lcom/android/launcher3/states/RotationHelper;->deltaRotation(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v2, v2

    invoke-static {v0, v1, v2, p1}, Lcom/android/quickstep/util/RecentsOrientedState;->postDisplayRotation(IFFLandroid/graphics/Matrix;)V

    .line 301
    return-void
.end method

.method public getCurrentCornerRadius()F
    .locals 5

    .line 412
    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget v0, v0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnCornerRadius:F

    .line 413
    .local v0, "visibleRadius":F
    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTempPoint:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 414
    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v3, v1, v4

    .line 415
    iget-object v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mInversePositionMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 418
    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTempPoint:[F

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTempPoint:[F

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1
.end method

.method public getCurrentCropRect()Landroid/graphics/RectF;
    .locals 7

    .line 261
    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget-object v0, v0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnInsets:Landroid/graphics/RectF;

    .line 262
    .local v0, "insets":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTempRectF:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    iget-object v4, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    .line 263
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v6

    .line 262
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 264
    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mInversePositionMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 265
    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTempRectF:Landroid/graphics/RectF;

    return-object v1
.end method

.method public getCurrentMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getCurrentRect()Landroid/graphics/RectF;
    .locals 5

    .line 272
    invoke-virtual {p0}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCropRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 273
    .local v0, "result":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrixTmp:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 274
    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrixTmp:Landroid/graphics/Matrix;

    invoke-static {v1, v2, v3, v4}, Lcom/android/quickstep/util/RecentsOrientedState;->preDisplayRotation(IFFLandroid/graphics/Matrix;)V

    .line 276
    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrixTmp:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 277
    return-object v0
.end method

.method public getFullScreenScale()F
    .locals 6

    .line 148
    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    if-nez v0, :cond_0

    .line 149
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 151
    :cond_0
    iget-boolean v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mIsGridTask:Z

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    .line 153
    invoke-virtual {v4}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v4

    .line 152
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/quickstep/BaseActivityInterface;->calculateGridTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Lcom/android/launcher3/touch/PagedOrientationHandler;)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/quickstep/BaseActivityInterface;->calculateTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    .line 159
    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mStagedSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    if-eqz v0, :cond_2

    .line 163
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 164
    .local v0, "fullTaskSize":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-object v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mStagedSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    iget v5, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mStagePosition:I

    .line 165
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setSplitTaskSwipeRect(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;I)V

    .line 166
    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRectTranslationX:I

    iget v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRectTranslationY:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    .line 168
    .end local v0    # "fullTaskSize":Landroid/graphics/Rect;
    :cond_2
    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRect:Landroid/graphics/Rect;

    .line 170
    .restart local v0    # "fullTaskSize":Landroid/graphics/Rect;
    :goto_1
    iget v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRectTranslationX:I

    iget v2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRectTranslationY:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 171
    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    iget-object v2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-object v3, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mPivot:Landroid/graphics/PointF;

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/quickstep/util/RecentsOrientedState;->getFullScreenScaleAndPivot(Landroid/graphics/Rect;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/PointF;)F

    move-result v1

    return v1
.end method

.method public getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    return-object v0
.end method

.method public onBuildTargetParams(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V
    .locals 2
    .param p1, "builder"    # Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    .param p2, "app"    # Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p3, "params"    # Lcom/android/quickstep/util/TransformParams;

    .line 396
    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTmpCropRect:Landroid/graphics/Rect;

    .line 397
    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v0

    .line 398
    invoke-virtual {p0}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCornerRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withCornerRadius(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    .line 400
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/android/quickstep/util/TransformParams;->getRecentsSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 402
    invoke-virtual {p3}, Lcom/android/quickstep/util/TransformParams;->getRecentsSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 403
    iget-boolean v1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mDrawsBelowRecents:Z

    if-eqz v1, :cond_0

    const/high16 v1, -0x80000000

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 402
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withRelativeLayerTo(Landroid/view/SurfaceControl;I)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    .line 405
    :cond_1
    return-void
.end method

.method public setDp(Lcom/android/launcher3/DeviceProfile;)V
    .locals 1
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;

    .line 131
    iput-object p1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mLayoutValid:Z

    .line 133
    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/util/RecentsOrientedState;->setDeviceProfile(Lcom/android/launcher3/DeviceProfile;)V

    .line 134
    return-void
.end method

.method public setDrawsBelowRecents(Z)V
    .locals 0
    .param p1, "drawsBelowRecents"    # Z

    .line 222
    iput-boolean p1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mDrawsBelowRecents:Z

    .line 223
    return-void
.end method

.method public setIsGridTask(Z)V
    .locals 0
    .param p1, "isGridTask"    # Z

    .line 229
    iput-boolean p1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mIsGridTask:Z

    .line 230
    return-void
.end method

.method public setOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V
    .locals 1
    .param p1, "orientationState"    # Lcom/android/quickstep/util/RecentsOrientedState;

    .line 140
    iput-object p1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mLayoutValid:Z

    .line 142
    return-void
.end method

.method public setPreview(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 2
    .param p1, "runningTarget"    # Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 178
    if-nez p1, :cond_0

    .line 179
    return-void

    .line 181
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->startScreenSpaceBounds:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/util/TaskViewSimulator;->setPreviewBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 182
    return-void
.end method

.method public setPreview(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;)V
    .locals 2
    .param p1, "runningTarget"    # Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p2, "splitInfo"    # Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/TaskViewSimulator;->setPreview(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    .line 192
    iput-object p2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mStagedSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    .line 193
    if-nez p2, :cond_0

    .line 194
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mStagePosition:I

    .line 195
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mThumbnailPosition:Landroid/graphics/Rect;

    iget-object v1, p2, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->leftTopBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    const/4 v0, 0x0

    goto :goto_0

    .line 199
    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mStagePosition:I

    .line 200
    return-void
.end method

.method public setPreviewBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "insets"    # Landroid/graphics/Rect;

    .line 206
    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 208
    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->windowingMode:I

    .line 210
    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mThumbnailPosition:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mLayoutValid:Z

    .line 212
    return-void
.end method

.method public setScroll(F)V
    .locals 1
    .param p1, "scroll"    # F

    .line 218
    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScroll:Lcom/android/quickstep/AnimatedFloat;

    iput p1, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 219
    return-void
.end method

.method public setTaskRectTranslation(II)V
    .locals 0
    .param p1, "taskRectTranslationX"    # I
    .param p2, "taskRectTranslationY"    # I

    .line 236
    iput p1, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRectTranslationX:I

    .line 237
    iput p2, p0, Lcom/android/quickstep/util/TaskViewSimulator;->mTaskRectTranslationY:I

    .line 238
    return-void
.end method
