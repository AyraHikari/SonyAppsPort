.class public Lcom/android/quickstep/views/FloatingTaskView;
.super Landroid/widget/FrameLayout;
.source "FloatingTaskView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;,
        Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

.field private final mFullscreenParams:Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;

.field private final mIsRtl:Z

.field private mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

.field private mSplitPlaceholderView:Lcom/android/quickstep/views/SplitPlaceholderView;

.field private mStagePosition:I

.field private mStartingPosition:Landroid/graphics/RectF;

.field private mThumbnailView:Lcom/android/quickstep/views/FloatingTaskThumbnailView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/views/FloatingTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/quickstep/views/FloatingTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/statemanager/StatefulActivity;

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingTaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 71
    invoke-virtual {p0}, Lcom/android/quickstep/views/FloatingTaskView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/quickstep/views/FloatingTaskView;->mIsRtl:Z

    .line 72
    new-instance v0, Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;

    invoke-direct {v0, p1}, Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingTaskView;->mFullscreenParams:Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;

    .line 73
    return-void
.end method

.method public static getFloatingTaskView(Lcom/android/launcher3/statemanager/StatefulActivity;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)Lcom/android/quickstep/views/FloatingTaskView;
    .locals 9
    .param p0, "launcher"    # Lcom/android/launcher3/statemanager/StatefulActivity;
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "positionOut"    # Landroid/graphics/RectF;

    .line 113
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    .line 114
    .local v0, "dragLayer":Lcom/android/launcher3/views/BaseDragLayer;
    invoke-virtual {v0}, Lcom/android/launcher3/views/BaseDragLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 115
    .local v1, "parent":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$layout;->floating_split_select_view:I

    .line 116
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/views/FloatingTaskView;

    .line 118
    .local v2, "floatingView":Lcom/android/quickstep/views/FloatingTaskView;
    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/quickstep/views/FloatingTaskView;->init(Lcom/android/launcher3/statemanager/StatefulActivity;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)V

    .line 119
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 120
    return-object v2
.end method

.method private init(Lcom/android/launcher3/statemanager/StatefulActivity;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)V
    .locals 5
    .param p1, "launcher"    # Lcom/android/launcher3/statemanager/StatefulActivity;
    .param p2, "originalView"    # Landroid/view/View;
    .param p3, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "positionOut"    # Landroid/graphics/RectF;

    .line 85
    iput-object p5, p0, Lcom/android/quickstep/views/FloatingTaskView;->mStartingPosition:Landroid/graphics/RectF;

    .line 86
    invoke-virtual {p0, p2}, Lcom/android/quickstep/views/FloatingTaskView;->updateInitialPositionForView(Landroid/view/View;)V

    .line 87
    nop

    .line 88
    invoke-virtual {p0}, Lcom/android/quickstep/views/FloatingTaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    .line 90
    .local v0, "lp":Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/quickstep/views/FloatingTaskView;->mSplitPlaceholderView:Lcom/android/quickstep/views/SplitPlaceholderView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->width:I

    iget v4, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->height:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/SplitPlaceholderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/FloatingTaskView;->setPivotX(F)V

    .line 92
    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/FloatingTaskView;->setPivotY(F)V

    .line 95
    iget-object v1, p0, Lcom/android/quickstep/views/FloatingTaskView;->mThumbnailView:Lcom/android/quickstep/views/FloatingTaskThumbnailView;

    invoke-virtual {v1, p3}, Lcom/android/quickstep/views/FloatingTaskThumbnailView;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 97
    iget-object v1, p0, Lcom/android/quickstep/views/FloatingTaskView;->mThumbnailView:Lcom/android/quickstep/views/FloatingTaskThumbnailView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/FloatingTaskThumbnailView;->setVisibility(I)V

    .line 99
    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/RecentsView;

    .line 100
    .local v1, "recentsView":Lcom/android/quickstep/views/RecentsView;
    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/quickstep/views/FloatingTaskView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 101
    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getSplitPlaceholder()Lcom/android/quickstep/util/SplitSelectStateController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/util/SplitSelectStateController;->getActiveSplitStagePosition()I

    move-result v2

    iput v2, p0, Lcom/android/quickstep/views/FloatingTaskView;->mStagePosition:I

    .line 102
    iget-object v2, p0, Lcom/android/quickstep/views/FloatingTaskView;->mSplitPlaceholderView:Lcom/android/quickstep/views/SplitPlaceholderView;

    iget-object v3, p0, Lcom/android/quickstep/views/FloatingTaskView;->mContext:Landroid/content/Context;

    .line 103
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/launcher3/R$dimen;->split_placeholder_icon_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 102
    invoke-virtual {v2, p4, v3}, Lcom/android/quickstep/views/SplitPlaceholderView;->setIcon(Landroid/graphics/drawable/Drawable;I)V

    .line 104
    iget-object v2, p0, Lcom/android/quickstep/views/FloatingTaskView;->mSplitPlaceholderView:Lcom/android/quickstep/views/SplitPlaceholderView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/SplitPlaceholderView;->getIconView()Lcom/android/quickstep/views/IconView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/views/FloatingTaskView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getDegreesRotated()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/quickstep/views/IconView;->setRotation(F)V

    .line 105
    return-void
.end method


# virtual methods
.method public addAnimation(Lcom/android/launcher3/anim/PendingAnimation;Landroid/graphics/RectF;Landroid/graphics/Rect;ZZ)V
    .locals 22
    .param p1, "animation"    # Lcom/android/launcher3/anim/PendingAnimation;
    .param p2, "startingBounds"    # Landroid/graphics/RectF;
    .param p3, "endBounds"    # Landroid/graphics/Rect;
    .param p4, "fadeWithThumbnail"    # Z
    .param p5, "isStagedTask"    # Z

    .line 182
    move-object/from16 v7, p0

    move/from16 v8, p5

    iget-object v0, v7, Lcom/android/quickstep/views/FloatingTaskView;->mFullscreenParams:Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;

    invoke-virtual {v0, v8}, Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;->setIsStagedTask(Z)V

    .line 183
    iget-object v0, v7, Lcom/android/quickstep/views/FloatingTaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v9

    .line 184
    .local v9, "dragLayer":Lcom/android/launcher3/views/BaseDragLayer;
    const/4 v0, 0x2

    new-array v10, v0, [I

    .line 185
    .local v10, "dragLayerBounds":[I
    invoke-virtual {v9, v10}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationOnScreen([I)V

    .line 186
    new-instance v2, Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;

    const/4 v1, 0x0

    aget v1, v10, v1

    const/4 v3, 0x1

    aget v3, v10, v3

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-direct {v2, v12, v11, v1, v3}, Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;-><init>(Landroid/graphics/Rect;Landroid/graphics/RectF;II)V

    .line 189
    .local v2, "prop":Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v13

    .line 190
    .local v13, "transitionAnimator":Landroid/animation/ValueAnimator;
    move-object/from16 v6, p1

    invoke-virtual {v6, v13}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    .line 191
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/anim/PendingAnimation;->getDuration()J

    move-result-wide v20

    .line 192
    .local v20, "animDuration":J
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 194
    .local v5, "floatingTaskViewBounds":Landroid/graphics/RectF;
    if-eqz p4, :cond_0

    .line 195
    iget-object v15, v7, Lcom/android/quickstep/views/FloatingTaskView;->mSplitPlaceholderView:Lcom/android/quickstep/views/SplitPlaceholderView;

    sget-object v16, Lcom/android/quickstep/views/SplitPlaceholderView;->ALPHA_FLOAT:Landroid/util/FloatProperty;

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    sget-object v19, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    move-object/from16 v14, p1

    invoke-virtual/range {v14 .. v19}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    .line 197
    iget-object v15, v7, Lcom/android/quickstep/views/FloatingTaskView;->mThumbnailView:Lcom/android/quickstep/views/FloatingTaskThumbnailView;

    sget-object v16, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    sget-object v19, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_3:Landroid/view/animation/Interpolator;

    invoke-virtual/range {v14 .. v19}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 199
    :cond_0
    if-eqz v8, :cond_1

    .line 202
    iget-object v0, v7, Lcom/android/quickstep/views/FloatingTaskView;->mSplitPlaceholderView:Lcom/android/quickstep/views/SplitPlaceholderView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/SplitPlaceholderView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 203
    iget-object v15, v7, Lcom/android/quickstep/views/FloatingTaskView;->mSplitPlaceholderView:Lcom/android/quickstep/views/SplitPlaceholderView;

    sget-object v16, Lcom/android/quickstep/views/SplitPlaceholderView;->ALPHA_FLOAT:Landroid/util/FloatProperty;

    const v17, 0x3e99999a    # 0.3f

    const/high16 v18, 0x3f800000    # 1.0f

    sget-object v19, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    move-object/from16 v14, p1

    invoke-virtual/range {v14 .. v19}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    .line 208
    :cond_1
    :goto_0
    new-instance v14, Lcom/android/quickstep/views/FloatingTaskView$1;

    move-object v0, v14

    move-object/from16 v1, p0

    move-wide/from16 v3, v20

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/views/FloatingTaskView$1;-><init>(Lcom/android/quickstep/views/FloatingTaskView;Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;JLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 226
    .local v0, "listener":Lcom/android/quickstep/util/MultiValueUpdateListener;
    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 227
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method centerIconView(Lcom/android/quickstep/views/IconView;FF)V
    .locals 10
    .param p1, "iconView"    # Lcom/android/quickstep/views/IconView;
    .param p2, "onScreenRectCenterX"    # F
    .param p3, "onScreenRectCenterY"    # F

    .line 249
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingTaskView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v1, p0, Lcom/android/quickstep/views/FloatingTaskView;->mFullscreenParams:Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;

    iget v4, v1, Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;->mScaleX:F

    iget-object v1, p0, Lcom/android/quickstep/views/FloatingTaskView;->mFullscreenParams:Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;

    iget v5, v1, Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;->mScaleY:F

    .line 251
    invoke-virtual {p1}, Lcom/android/quickstep/views/IconView;->getDrawableWidth()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/quickstep/views/IconView;->getDrawableHeight()I

    move-result v7

    iget-object v1, p0, Lcom/android/quickstep/views/FloatingTaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 252
    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v8

    iget v9, p0, Lcom/android/quickstep/views/FloatingTaskView;->mStagePosition:I

    .line 249
    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v9}, Lcom/android/launcher3/touch/PagedOrientationHandler;->updateStagedSplitIconParams(Landroid/view/View;FFFFIILcom/android/launcher3/DeviceProfile;I)V

    .line 253
    return-void
.end method

.method drawRoundedRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 230
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingTaskView;->mFullscreenParams:Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;

    if-nez v0, :cond_0

    .line 231
    return-void

    .line 234
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/quickstep/views/FloatingTaskView;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/FloatingTaskView;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lcom/android/quickstep/views/FloatingTaskView;->mFullscreenParams:Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;

    iget v0, v0, Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;->mCurrentDrawnCornerRadius:F

    iget-object v1, p0, Lcom/android/quickstep/views/FloatingTaskView;->mFullscreenParams:Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;

    iget v1, v1, Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;->mScaleX:F

    div-float v6, v0, v1

    iget-object v0, p0, Lcom/android/quickstep/views/FloatingTaskView;->mFullscreenParams:Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;

    iget v0, v0, Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;->mCurrentDrawnCornerRadius:F

    iget-object v1, p0, Lcom/android/quickstep/views/FloatingTaskView;->mFullscreenParams:Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;

    iget v1, v1, Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;->mScaleY:F

    div-float v7, v0, v1

    move-object v1, p1

    move-object v8, p2

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 238
    return-void
.end method

.method protected initPosition(Landroid/graphics/RectF;Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;)V
    .locals 5
    .param p1, "pos"    # Landroid/graphics/RectF;
    .param p2, "lp"    # Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    .line 164
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingTaskView;->mStartingPosition:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    .line 167
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p2, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->topMargin:I

    .line 168
    iget-boolean v0, p0, Lcom/android/quickstep/views/FloatingTaskView;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingTaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v1, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_0

    .line 171
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->setMarginStart(I)V

    .line 176
    :goto_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    .line 177
    .local v0, "left":I
    iget v1, p2, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->topMargin:I

    iget v2, p2, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->width:I

    add-int/2addr v2, v0

    iget v3, p2, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->topMargin:I

    iget v4, p2, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->height:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/quickstep/views/FloatingTaskView;->layout(IIII)V

    .line 178
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 77
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 78
    sget v0, Lcom/android/launcher3/R$id;->thumbnail:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/FloatingTaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/FloatingTaskThumbnailView;

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingTaskView;->mThumbnailView:Lcom/android/quickstep/views/FloatingTaskThumbnailView;

    .line 79
    sget v0, Lcom/android/launcher3/R$id;->split_placeholder:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/FloatingTaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/SplitPlaceholderView;

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingTaskView;->mSplitPlaceholderView:Lcom/android/quickstep/views/SplitPlaceholderView;

    .line 80
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/SplitPlaceholderView;->setAlpha(F)V

    .line 81
    return-void
.end method

.method public update(Landroid/graphics/RectF;F)V
    .locals 9
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "progress"    # F

    .line 136
    invoke-virtual {p0}, Lcom/android/quickstep/views/FloatingTaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 138
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/android/quickstep/views/FloatingTaskView;->mStartingPosition:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    .line 139
    .local v1, "dX":F
    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 140
    .local v2, "dY":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 141
    .local v3, "scaleX":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 143
    .local v4, "scaleY":F
    iget-object v5, p0, Lcom/android/quickstep/views/FloatingTaskView;->mFullscreenParams:Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;

    invoke-virtual {v5, p1, p2, v3, v4}, Lcom/android/quickstep/views/FloatingTaskView$FullscreenDrawParams;->updateParams(Landroid/graphics/RectF;FFF)V

    .line 145
    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/FloatingTaskView;->setTranslationX(F)V

    .line 146
    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/FloatingTaskView;->setTranslationY(F)V

    .line 147
    invoke-virtual {p0, v3}, Lcom/android/quickstep/views/FloatingTaskView;->setScaleX(F)V

    .line 148
    invoke-virtual {p0, v4}, Lcom/android/quickstep/views/FloatingTaskView;->setScaleY(F)V

    .line 149
    iget-object v5, p0, Lcom/android/quickstep/views/FloatingTaskView;->mSplitPlaceholderView:Lcom/android/quickstep/views/SplitPlaceholderView;

    invoke-virtual {v5}, Lcom/android/quickstep/views/SplitPlaceholderView;->invalidate()V

    .line 150
    iget-object v5, p0, Lcom/android/quickstep/views/FloatingTaskView;->mThumbnailView:Lcom/android/quickstep/views/FloatingTaskThumbnailView;

    invoke-virtual {v5}, Lcom/android/quickstep/views/FloatingTaskThumbnailView;->invalidate()V

    .line 152
    const/high16 v5, 0x3f800000    # 1.0f

    div-float v6, v5, v3

    .line 153
    .local v6, "childScaleX":F
    div-float/2addr v5, v4

    .line 154
    .local v5, "childScaleY":F
    iget-object v7, p0, Lcom/android/quickstep/views/FloatingTaskView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v8, p0, Lcom/android/quickstep/views/FloatingTaskView;->mSplitPlaceholderView:Lcom/android/quickstep/views/SplitPlaceholderView;

    invoke-virtual {v8}, Lcom/android/quickstep/views/SplitPlaceholderView;->getIconView()Lcom/android/quickstep/views/IconView;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimaryScale(Landroid/view/View;F)V

    .line 155
    iget-object v7, p0, Lcom/android/quickstep/views/FloatingTaskView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v8, p0, Lcom/android/quickstep/views/FloatingTaskView;->mSplitPlaceholderView:Lcom/android/quickstep/views/SplitPlaceholderView;

    invoke-virtual {v8}, Lcom/android/quickstep/views/SplitPlaceholderView;->getIconView()Lcom/android/quickstep/views/IconView;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setSecondaryScale(Landroid/view/View;F)V

    .line 156
    return-void
.end method

.method public updateInitialPositionForView(Landroid/view/View;)V
    .locals 6
    .param p1, "originalView"    # Landroid/view/View;

    .line 124
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 125
    .local v2, "viewBounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingTaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v5, p0, Lcom/android/quickstep/views/FloatingTaskView;->mStartingPosition:Landroid/graphics/RectF;

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->getBoundsForViewInDragLayer(Lcom/android/launcher3/views/BaseDragLayer;Landroid/view/View;Landroid/graphics/Rect;Z[FLandroid/graphics/RectF;)V

    .line 128
    new-instance v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/quickstep/views/FloatingTaskView;->mStartingPosition:Landroid/graphics/RectF;

    .line 129
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v3, p0, Lcom/android/quickstep/views/FloatingTaskView;->mStartingPosition:Landroid/graphics/RectF;

    .line 130
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {v0, v1, v3}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;-><init>(II)V

    .line 131
    .local v0, "lp":Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/quickstep/views/FloatingTaskView;->mStartingPosition:Landroid/graphics/RectF;

    invoke-virtual {p0, v1, v0}, Lcom/android/quickstep/views/FloatingTaskView;->initPosition(Landroid/graphics/RectF;Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;)V

    .line 132
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/FloatingTaskView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    return-void
.end method

.method public updateOrientationHandler(Lcom/android/launcher3/touch/PagedOrientationHandler;)V
    .locals 2
    .param p1, "orientationHandler"    # Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 159
    iput-object p1, p0, Lcom/android/quickstep/views/FloatingTaskView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 160
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingTaskView;->mSplitPlaceholderView:Lcom/android/quickstep/views/SplitPlaceholderView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/SplitPlaceholderView;->getIconView()Lcom/android/quickstep/views/IconView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/FloatingTaskView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getDegreesRotated()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/IconView;->setRotation(F)V

    .line 161
    return-void
.end method
