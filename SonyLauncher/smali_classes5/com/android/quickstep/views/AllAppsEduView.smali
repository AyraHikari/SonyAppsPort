.class public Lcom/android/quickstep/views/AllAppsEduView;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "AllAppsEduView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController;
    }
.end annotation


# instance fields
.field private mAnimation:Landroid/animation/AnimatorSet;

.field private mCanInterceptTouch:Z

.field private mCircle:Landroid/graphics/drawable/GradientDrawable;

.field private mCircleSizePx:I

.field private mGradient:Landroid/graphics/drawable/GradientDrawable;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mMaxHeightPx:I

.field private mPaddingPx:I

.field private mTouchController:Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController;

.field private mWidthPx:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCircle(Lcom/android/quickstep/views/AllAppsEduView;)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/AllAppsEduView;->mCircle:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGradient(Lcom/android/quickstep/views/AllAppsEduView;)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/AllAppsEduView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLauncher(Lcom/android/quickstep/views/AllAppsEduView;)Lcom/android/launcher3/Launcher;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/AllAppsEduView;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAnimation(Lcom/android/quickstep/views/AllAppsEduView;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/views/AllAppsEduView;->mAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    sget v0, Lcom/android/launcher3/R$drawable;->all_apps_edu_circle:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/android/quickstep/views/AllAppsEduView;->mCircle:Landroid/graphics/drawable/GradientDrawable;

    .line 78
    invoke-virtual {p0}, Lcom/android/quickstep/views/AllAppsEduView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->swipe_edu_circle_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/AllAppsEduView;->mCircleSizePx:I

    .line 79
    invoke-virtual {p0}, Lcom/android/quickstep/views/AllAppsEduView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->swipe_edu_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/AllAppsEduView;->mPaddingPx:I

    .line 80
    invoke-virtual {p0}, Lcom/android/quickstep/views/AllAppsEduView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->swipe_edu_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/AllAppsEduView;->mWidthPx:I

    .line 81
    invoke-virtual {p0}, Lcom/android/quickstep/views/AllAppsEduView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->swipe_edu_max_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/AllAppsEduView;->mMaxHeightPx:I

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/AllAppsEduView;->setWillNotDraw(Z)V

    .line 83
    return-void
.end method

.method private init(Lcom/android/launcher3/Launcher;)V
    .locals 10
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 251
    iput-object p1, p0, Lcom/android/quickstep/views/AllAppsEduView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 252
    new-instance v0, Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController;

    iget-object v1, p0, Lcom/android/quickstep/views/AllAppsEduView;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController-IA;)V

    iput-object v0, p0, Lcom/android/quickstep/views/AllAppsEduView;->mTouchController:Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController;

    .line 254
    invoke-static {p1}, Lcom/android/launcher3/util/Themes;->getColorAccent(Landroid/content/Context;)I

    move-result v0

    .line 255
    .local v0, "accentColor":I
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 256
    sget v3, Lcom/android/launcher3/R$attr;->isMainColorDark:I

    invoke-static {p1, v3}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v3, :cond_0

    .line 257
    new-array v3, v6, [I

    fill-array-data v3, :array_0

    goto :goto_0

    .line 258
    :cond_0
    new-array v3, v6, [I

    const/16 v7, 0x7f

    invoke-static {v0, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    aput v7, v3, v5

    .line 259
    invoke-static {v0, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    aput v7, v3, v4

    :goto_0
    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lcom/android/quickstep/views/AllAppsEduView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    .line 260
    iget v2, p0, Lcom/android/quickstep/views/AllAppsEduView;->mWidthPx:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 261
    .local v2, "r":F
    const/16 v3, 0x8

    new-array v3, v3, [F

    aput v2, v3, v5

    aput v2, v3, v4

    aput v2, v3, v6

    const/4 v7, 0x3

    aput v2, v3, v7

    const/4 v7, 0x4

    const/4 v8, 0x0

    aput v8, v3, v7

    const/4 v7, 0x5

    aput v8, v3, v7

    const/4 v7, 0x6

    aput v8, v3, v7

    const/4 v7, 0x7

    aput v8, v3, v7

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 263
    iget v1, p0, Lcom/android/quickstep/views/AllAppsEduView;->mMaxHeightPx:I

    iget v3, p0, Lcom/android/quickstep/views/AllAppsEduView;->mCircleSizePx:I

    sub-int/2addr v1, v3

    iget v7, p0, Lcom/android/quickstep/views/AllAppsEduView;->mPaddingPx:I

    add-int/2addr v1, v7

    .line 264
    .local v1, "top":I
    iget-object v8, p0, Lcom/android/quickstep/views/AllAppsEduView;->mCircle:Landroid/graphics/drawable/GradientDrawable;

    add-int v9, v7, v3

    add-int/2addr v3, v1

    invoke-virtual {v8, v7, v1, v9, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 265
    iget-object v3, p0, Lcom/android/quickstep/views/AllAppsEduView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    iget v7, p0, Lcom/android/quickstep/views/AllAppsEduView;->mMaxHeightPx:I

    iget v8, p0, Lcom/android/quickstep/views/AllAppsEduView;->mCircleSizePx:I

    sub-int v8, v7, v8

    iget v9, p0, Lcom/android/quickstep/views/AllAppsEduView;->mWidthPx:I

    invoke-virtual {v3, v5, v8, v9, v7}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 267
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    .line 268
    .local v3, "grid":Lcom/android/launcher3/DeviceProfile;
    new-instance v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    iget v7, p0, Lcom/android/quickstep/views/AllAppsEduView;->mWidthPx:I

    iget v8, p0, Lcom/android/quickstep/views/AllAppsEduView;->mMaxHeightPx:I

    invoke-direct {v5, v7, v8}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    .line 269
    .local v5, "lp":Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    iput-boolean v4, v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->ignoreInsets:Z

    .line 270
    iget v4, v3, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v7, p0, Lcom/android/quickstep/views/AllAppsEduView;->mWidthPx:I

    sub-int/2addr v4, v7

    div-int/2addr v4, v6

    iput v4, v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->leftMargin:I

    .line 271
    iget v4, v3, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget v6, v3, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    sub-int/2addr v4, v6

    iget v6, p0, Lcom/android/quickstep/views/AllAppsEduView;->mMaxHeightPx:I

    sub-int/2addr v4, v6

    iput v4, v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->topMargin:I

    .line 272
    invoke-virtual {p0, v5}, Lcom/android/quickstep/views/AllAppsEduView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    return-void

    nop

    :array_0
    .array-data 4
        -0x4c000001
        0xffffff
    .end array-data
.end method

.method static synthetic lambda$playAnimation$0(Lcom/android/launcher3/anim/AnimatorPlaybackController;Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p0, "stateAnimationController"    # Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 231
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    .line 232
    return-void
.end method

.method private playAnimation()V
    .locals 20

    .line 171
    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/android/quickstep/views/AllAppsEduView;->mAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 172
    return-void

    .line 174
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, v10, Lcom/android/quickstep/views/AllAppsEduView;->mAnimation:Landroid/animation/AnimatorSet;

    .line 176
    new-instance v6, Landroid/graphics/Rect;

    iget-object v0, v10, Lcom/android/quickstep/views/AllAppsEduView;->mCircle:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 177
    .local v6, "circleBoundsOg":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    iget-object v0, v10, Lcom/android/quickstep/views/AllAppsEduView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 178
    .local v7, "gradientBoundsOg":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 179
    .local v5, "temp":Landroid/graphics/Rect;
    iget v0, v10, Lcom/android/quickstep/views/AllAppsEduView;->mMaxHeightPx:I

    iget v1, v10, Lcom/android/quickstep/views/AllAppsEduView;->mCircleSizePx:I

    sub-int/2addr v0, v1

    iget v1, v10, Lcom/android/quickstep/views/AllAppsEduView;->mPaddingPx:I

    sub-int/2addr v0, v1

    int-to-float v11, v0

    .line 182
    .local v11, "transY":F
    const/16 v12, 0x258

    .line 184
    .local v12, "firstPart":I
    const/16 v13, 0x4b0

    .line 185
    .local v13, "secondPart":I
    add-int v14, v12, v13

    .line 187
    .local v14, "introDuration":I
    iget-object v0, v10, Lcom/android/quickstep/views/AllAppsEduView;->mTouchController:Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController;

    .line 188
    invoke-static {v0}, Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController;->-$$Nest$minitAllAppsAnimation(Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController;)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v15

    .line 189
    .local v15, "stateAnimationController":Lcom/android/launcher3/anim/AnimatorPlaybackController;
    const/high16 v16, 0x3f400000    # 0.75f

    .line 191
    .local v16, "maxAllAppsProgress":F
    const/4 v9, 0x2

    new-array v0, v9, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 192
    .local v8, "intro":Landroid/animation/ValueAnimator;
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 193
    int-to-long v0, v14

    invoke-virtual {v8, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 194
    new-instance v4, Lcom/android/quickstep/views/AllAppsEduView$1;

    move-object v0, v4

    move-object/from16 v1, p0

    move v2, v12

    move v3, v11

    move/from16 v17, v11

    move-object v11, v4

    .end local v11    # "transY":F
    .local v17, "transY":F
    move v4, v13

    move/from16 v18, v12

    move-object v12, v8

    .end local v8    # "intro":Landroid/animation/ValueAnimator;
    .local v12, "intro":Landroid/animation/ValueAnimator;
    .local v18, "firstPart":I
    move/from16 v8, v16

    move/from16 v19, v13

    move v13, v9

    .end local v13    # "secondPart":I
    .local v19, "secondPart":I
    move-object v9, v15

    invoke-direct/range {v0 .. v9}, Lcom/android/quickstep/views/AllAppsEduView$1;-><init>(Lcom/android/quickstep/views/AllAppsEduView;IFILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FLcom/android/launcher3/anim/AnimatorPlaybackController;)V

    invoke-virtual {v12, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 219
    new-instance v0, Lcom/android/quickstep/views/AllAppsEduView$2;

    invoke-direct {v0, v10}, Lcom/android/quickstep/views/AllAppsEduView$2;-><init>(Lcom/android/quickstep/views/AllAppsEduView;)V

    invoke-virtual {v12, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 226
    iget-object v0, v10, Lcom/android/quickstep/views/AllAppsEduView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setVisibility(I)V

    .line 227
    iget-object v0, v10, Lcom/android/quickstep/views/AllAppsEduView;->mAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v12}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 229
    new-array v0, v13, [F

    aput v16, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 230
    .local v0, "closeAllApps":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/quickstep/views/AllAppsEduView$$ExternalSyntheticLambda0;

    invoke-direct {v1, v15}, Lcom/android/quickstep/views/AllAppsEduView$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 233
    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 234
    int-to-long v1, v14

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 235
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 236
    iget-object v1, v10, Lcom/android/quickstep/views/AllAppsEduView;->mAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 238
    iget-object v1, v10, Lcom/android/quickstep/views/AllAppsEduView;->mAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/quickstep/views/AllAppsEduView$3;

    invoke-direct {v2, v10}, Lcom/android/quickstep/views/AllAppsEduView$3;-><init>(Lcom/android/quickstep/views/AllAppsEduView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 247
    iget-object v1, v10, Lcom/android/quickstep/views/AllAppsEduView;->mAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 248
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private shouldInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/quickstep/views/AllAppsEduView;->mCanInterceptTouch:Z

    .line 129
    :cond_1
    iget-boolean v0, p0, Lcom/android/quickstep/views/AllAppsEduView;->mCanInterceptTouch:Z

    return v0
.end method

.method public static show(Lcom/android/launcher3/Launcher;)V
    .locals 4
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 279
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    .line 280
    .local v0, "dragLayer":Lcom/android/launcher3/dragndrop/DragLayer;
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$layout;->all_apps_edu_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/AllAppsEduView;

    .line 282
    .local v1, "view":Lcom/android/quickstep/views/AllAppsEduView;
    invoke-direct {v1, p0}, Lcom/android/quickstep/views/AllAppsEduView;->init(Lcom/android/launcher3/Launcher;)V

    .line 283
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;)V

    .line 284
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALL_APPS_EDU_SHOWN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 286
    invoke-virtual {v1}, Lcom/android/quickstep/views/AllAppsEduView;->requestLayout()V

    .line 287
    invoke-direct {v1}, Lcom/android/quickstep/views/AllAppsEduView;->playAnimation()V

    .line 288
    return-void
.end method

.method private updateAnimationOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 142
    iget-object v0, p0, Lcom/android/quickstep/views/AllAppsEduView;->mAnimation:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 143
    return-void

    .line 145
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 155
    :pswitch_0
    iget-object v0, p0, Lcom/android/quickstep/views/AllAppsEduView;->mTouchController:Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController;

    invoke-static {v0}, Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController;->-$$Nest$misDraggingOrSettling(Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/AllAppsEduView;->mAnimation:Landroid/animation/AnimatorSet;

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/AllAppsEduView;->handleClose(Z)V

    goto :goto_0

    .line 151
    :pswitch_1
    iget-object v0, p0, Lcom/android/quickstep/views/AllAppsEduView;->mAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V

    .line 152
    return-void

    .line 147
    :pswitch_2
    iget-object v0, p0, Lcom/android/quickstep/views/AllAppsEduView;->mAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    .line 148
    return-void

    .line 159
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public canInterceptEventsInSystemGestureRegion()Z
    .locals 1

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method protected handleClose(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 106
    iget-object v0, p0, Lcom/android/quickstep/views/AllAppsEduView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    .line 107
    return-void
.end method

.method protected isOfType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 111
    and-int/lit16 v0, p1, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 94
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onAttachedToWindow()V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/views/AllAppsEduView;->mIsOpen:Z

    .line 96
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 163
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/AllAppsEduView;->shouldInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/quickstep/views/AllAppsEduView;->mTouchController:Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 165
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/AllAppsEduView;->updateAnimationOnTouchEvent(Landroid/view/MotionEvent;)V

    .line 167
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 134
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/AllAppsEduView;->shouldInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/quickstep/views/AllAppsEduView;->mTouchController:Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    .line 136
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/AllAppsEduView;->updateAnimationOnTouchEvent(Landroid/view/MotionEvent;)V

    .line 138
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 100
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onDetachedFromWindow()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/AllAppsEduView;->mIsOpen:Z

    .line 102
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 87
    invoke-super {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->onDraw(Landroid/graphics/Canvas;)V

    .line 88
    iget-object v0, p0, Lcom/android/quickstep/views/AllAppsEduView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 89
    iget-object v0, p0, Lcom/android/quickstep/views/AllAppsEduView;->mCircle:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 90
    return-void
.end method
