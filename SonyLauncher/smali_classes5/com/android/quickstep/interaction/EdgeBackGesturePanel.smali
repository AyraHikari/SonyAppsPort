.class public Lcom/android/quickstep/interaction/EdgeBackGesturePanel;
.super Landroid/view/View;
.source "EdgeBackGesturePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/interaction/EdgeBackGesturePanel$BackCallback;
    }
.end annotation


# static fields
.field private static final ARROW_ANGLE_ADDED_PER_1000_SPEED:I = 0x4

.field private static final ARROW_ANGLE_WHEN_EXTENDED_DEGREES:I = 0x38

.field private static final ARROW_LENGTH_DP:I = 0x12

.field private static final ARROW_MAX_ANGLE_SPEED_OFFSET_DEGREES:I = 0x4

.field private static final ARROW_THICKNESS_DP:F = 2.5f

.field private static final BASE_TRANSLATION_DP:I = 0x20

.field private static final CURRENT_ANGLE:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/android/quickstep/interaction/EdgeBackGesturePanel;",
            ">;"
        }
    .end annotation
.end field

.field private static final CURRENT_TRANSLATION:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/android/quickstep/interaction/EdgeBackGesturePanel;",
            ">;"
        }
    .end annotation
.end field

.field private static final CURRENT_VERTICAL_TRANSLATION:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/android/quickstep/interaction/EdgeBackGesturePanel;",
            ">;"
        }
    .end annotation
.end field

.field private static final DISAPPEAR_ARROW_ANIMATION_DURATION_MS:J = 0x64L

.field private static final DISAPPEAR_FADE_ANIMATION_DURATION_MS:J = 0x50L

.field private static final GESTURE_DURATION_FOR_CLICK_MS:I = 0x190

.field private static final LOG_TAG:Ljava/lang/String; = "EdgeBackGesturePanel"

.field private static final RUBBER_BAND_AMOUNT:I = 0xf

.field private static final RUBBER_BAND_AMOUNT_APPEAR:I = 0x4

.field private static final RUBBER_BAND_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final RUBBER_BAND_INTERPOLATOR_APPEAR:Landroid/view/animation/Interpolator;


# instance fields
.field private final mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final mAngleAppearForce:Landroidx/dynamicanimation/animation/SpringForce;

.field private final mAngleDisappearForce:Landroidx/dynamicanimation/animation/SpringForce;

.field private mAngleOffset:F

.field private final mArrowDisappearAnimation:Landroid/animation/ValueAnimator;

.field private final mArrowLength:F

.field private mArrowPaddingEnd:I

.field private final mArrowPath:Landroid/graphics/Path;

.field private final mArrowThickness:F

.field private mArrowsPointLeft:Z

.field private mBackCallback:Lcom/android/quickstep/interaction/EdgeBackGesturePanel$BackCallback;

.field private final mBaseTranslation:F

.field private mCurrentAngle:F

.field private mCurrentTranslation:F

.field private final mDensity:F

.field private mDesiredAngle:F

.field private mDesiredTranslation:F

.field private mDesiredVerticalTranslation:F

.field private mDisappearAmount:F

.field private final mDisplaySize:Landroid/graphics/Point;

.field private mDragSlopPassed:Z

.field private mFingerOffset:I

.field private mIsLeftPanel:Z

.field private mMaxTranslation:F

.field private mMinArrowPosition:I

.field private final mMinDeltaForSwitch:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mPreviousTouchTranslation:F

.field private final mRegularTranslationSpring:Landroidx/dynamicanimation/animation/SpringForce;

.field private mScreenSize:I

.field private final mSetGoneEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

.field private mStartX:F

.field private mStartY:F

.field private final mSwipeThreshold:F

.field private mTotalTouchDelta:F

.field private final mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mTriggerBack:Z

.field private final mTriggerBackSpring:Landroidx/dynamicanimation/animation/SpringForce;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalTranslation:F

.field private final mVerticalTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mVibrationTime:J


# direct methods
.method static bridge synthetic -$$Nest$mgetCurrentAngle(Lcom/android/quickstep/interaction/EdgeBackGesturePanel;)F
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->getCurrentAngle()F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetCurrentTranslation(Lcom/android/quickstep/interaction/EdgeBackGesturePanel;)F
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->getCurrentTranslation()F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetVerticalTranslation(Lcom/android/quickstep/interaction/EdgeBackGesturePanel;)F
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->getVerticalTranslation()F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetCurrentAngle(Lcom/android/quickstep/interaction/EdgeBackGesturePanel;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->setCurrentAngle(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetCurrentTranslation(Lcom/android/quickstep/interaction/EdgeBackGesturePanel;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->setCurrentTranslation(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetVerticalTranslation(Lcom/android/quickstep/interaction/EdgeBackGesturePanel;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->setVerticalTranslation(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 99
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->RUBBER_BAND_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 110
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->RUBBER_BAND_INTERPOLATOR_APPEAR:Landroid/view/animation/Interpolator;

    .line 193
    new-instance v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel$2;

    const-string v1, "currentAngle"

    invoke-direct {v0, v1}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->CURRENT_ANGLE:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 206
    new-instance v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel$3;

    const-string v1, "currentTranslation"

    invoke-direct {v0, v1}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->CURRENT_TRANSLATION:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 219
    new-instance v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel$4;

    const-string v1, "verticalTranslation"

    invoke-direct {v0, v1}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->CURRENT_VERTICAL_TRANSLATION:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .line 234
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 118
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mPaint:Landroid/graphics/Paint;

    .line 135
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mArrowPath:Landroid/graphics/Path;

    .line 136
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mDisplaySize:Landroid/graphics/Point;

    .line 181
    new-instance v1, Lcom/android/quickstep/interaction/EdgeBackGesturePanel$1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel$1;-><init>(Lcom/android/quickstep/interaction/EdgeBackGesturePanel;)V

    iput-object v1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mSetGoneEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    .line 236
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mDensity:F

    .line 238
    const/high16 v1, 0x42000000    # 32.0f

    invoke-direct {p0, v1}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->dp(F)F

    move-result v2

    iput v2, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mBaseTranslation:F

    .line 239
    const/high16 v2, 0x41900000    # 18.0f

    invoke-direct {p0, v2}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->dp(F)F

    move-result v2

    iput v2, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mArrowLength:F

    .line 240
    const/high16 v2, 0x40200000    # 2.5f

    invoke-direct {p0, v2}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->dp(F)F

    move-result v2

    iput v2, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mArrowThickness:F

    .line 241
    invoke-direct {p0, v1}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->dp(F)F

    move-result v1

    iput v1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mMinDeltaForSwitch:F

    .line 243
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 244
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 245
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 246
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 247
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 249
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mArrowDisappearAnimation:Landroid/animation/ValueAnimator;

    .line 250
    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 251
    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 252
    new-instance v2, Lcom/android/quickstep/interaction/EdgeBackGesturePanel$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/interaction/EdgeBackGesturePanel;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 257
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->CURRENT_ANGLE:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v1, p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 259
    new-instance v2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 260
    const/high16 v3, 0x43fa0000    # 500.0f

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v2

    .line 261
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v2

    iput-object v2, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mAngleAppearForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 262
    new-instance v4, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v4}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 263
    const v5, 0x44bb8000    # 1500.0f

    invoke-virtual {v4, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v4

    .line 264
    invoke-virtual {v4, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    .line 265
    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    iput-object v3, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mAngleDisappearForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 266
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 268
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->CURRENT_TRANSLATION:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v1, p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 270
    new-instance v2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 271
    invoke-virtual {v2, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v2

    .line 272
    const/high16 v3, 0x3f400000    # 0.75f

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v2

    iput-object v2, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mRegularTranslationSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 273
    new-instance v4, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v4}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 274
    const/high16 v6, 0x43e10000    # 450.0f

    invoke-virtual {v4, v6}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v4

    .line 275
    invoke-virtual {v4, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v4

    iput-object v4, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mTriggerBackSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 276
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 277
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->CURRENT_VERTICAL_TRANSLATION:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v1, p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mVerticalTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 279
    new-instance v2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 281
    invoke-virtual {v2, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v2

    .line 282
    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v2

    .line 279
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 283
    nop

    .line 284
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    .line 285
    .local v1, "currentNightMode":I
    sget v2, Lcom/android/launcher3/R$color;->gesture_tutorial_back_arrow_color:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 286
    invoke-direct {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->loadDimens()V

    .line 287
    invoke-direct {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->updateArrowDirection()V

    .line 289
    nop

    .line 290
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 289
    const-string v2, "navigation_edge_action_drag_threshold"

    const/16 v3, 0x10

    invoke-static {v2, v0, v3}, Lcom/android/launcher3/ResourceUtils;->getDimenByName(Ljava/lang/String;Landroid/content/res/Resources;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mSwipeThreshold:F

    .line 291
    invoke-virtual {p2, p0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->setVisibility(I)V

    .line 293
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private calculatePath(FF)Landroid/graphics/Path;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 423
    iget-boolean v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mArrowsPointLeft:Z

    if-nez v0, :cond_0

    .line 424
    neg-float p1, p1

    .line 426
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f400000    # 0.75f

    iget v2, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mDisappearAmount:F

    invoke-static {v0, v1, v2}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->lerp(FFF)F

    move-result v0

    .line 427
    .local v0, "extent":F
    mul-float/2addr p1, v0

    .line 428
    mul-float/2addr p2, v0

    .line 429
    iget-object v1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mArrowPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 430
    iget-object v1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mArrowPath:Landroid/graphics/Path;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 431
    iget-object v1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mArrowPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 432
    iget-object v1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mArrowPath:Landroid/graphics/Path;

    neg-float v2, p2

    invoke-virtual {v1, p1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 433
    iget-object v1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mArrowPath:Landroid/graphics/Path;

    return-object v1
.end method

.method private cancelBack()V
    .locals 2

    .line 493
    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mBackCallback:Lcom/android/quickstep/interaction/EdgeBackGesturePanel$BackCallback;

    if-eqz v0, :cond_0

    .line 494
    invoke-interface {v0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel$BackCallback;->cancelBack()V

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mSetGoneEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    goto :goto_0

    .line 500
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->setVisibility(I)V

    .line 502
    :goto_0
    return-void
.end method

.method private dp(F)F
    .locals 1
    .param p1, "dp"    # F

    .line 684
    iget v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mDensity:F

    mul-float/2addr v0, p1

    return v0
.end method

.method private getCurrentAngle()F
    .locals 1

    .line 326
    iget v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mCurrentAngle:F

    return v0
.end method

.method private getCurrentTranslation()F
    .locals 1

    .line 330
    iget v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mCurrentTranslation:F

    return v0
.end method

.method private getStaticArrowWidth()F
    .locals 2

    .line 411
    const/high16 v0, 0x42600000    # 56.0f

    invoke-direct {p0, v0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->polarToCartX(F)F

    move-result v0

    iget v1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mArrowLength:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private getVerticalTranslation()F
    .locals 1

    .line 635
    iget v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mVerticalTranslation:F

    return v0
.end method

.method private handleMoveEvent(Landroid/view/MotionEvent;)V
    .locals 15
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 524
    move-object v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 525
    .local v1, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 526
    .local v2, "y":F
    iget v3, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mStartX:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 527
    .local v3, "touchTranslation":F
    iget v4, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mStartY:F

    sub-float v4, v2, v4

    .line 528
    .local v4, "yOffset":F
    iget v5, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mPreviousTouchTranslation:F

    sub-float v5, v3, v5

    .line 529
    .local v5, "delta":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 530
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v6

    iget v8, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mTotalTouchDelta:F

    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    move-result v8

    cmpl-float v6, v6, v8

    if-nez v6, :cond_0

    .line 531
    iget v6, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mTotalTouchDelta:F

    add-float/2addr v6, v5

    iput v6, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mTotalTouchDelta:F

    goto :goto_0

    .line 533
    :cond_0
    iput v5, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mTotalTouchDelta:F

    .line 536
    :cond_1
    :goto_0
    iput v3, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mPreviousTouchTranslation:F

    .line 539
    iget-boolean v6, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mDragSlopPassed:Z

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    if-nez v6, :cond_2

    iget v6, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mSwipeThreshold:F

    cmpl-float v6, v3, v6

    if-lez v6, :cond_2

    .line 540
    iput-boolean v9, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mDragSlopPassed:Z

    .line 541
    sget-object v6, Lcom/android/quickstep/util/VibratorWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/quickstep/util/VibratorWrapper;

    sget-object v10, Lcom/android/quickstep/util/VibratorWrapper;->EFFECT_CLICK:Landroid/os/VibrationEffect;

    invoke-virtual {v6, v10}, Lcom/android/quickstep/util/VibratorWrapper;->vibrate(Landroid/os/VibrationEffect;)V

    .line 542
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mVibrationTime:J

    .line 545
    iput v7, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mDisappearAmount:F

    .line 546
    invoke-virtual {p0, v8}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->setAlpha(F)V

    .line 548
    invoke-direct {p0, v9, v9}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->setTriggerBack(ZZ)V

    .line 552
    :cond_2
    iget v6, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mBaseTranslation:F

    cmpl-float v10, v3, v6

    const/high16 v11, 0x40800000    # 4.0f

    if-lez v10, :cond_3

    .line 553
    sub-float v10, v3, v6

    .line 554
    .local v10, "diff":F
    iget v12, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mScreenSize:I

    int-to-float v12, v12

    sub-float/2addr v12, v6

    div-float v6, v10, v12

    invoke-static {v6, v7, v8}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v6

    .line 555
    .local v6, "progress":F
    sget-object v12, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->RUBBER_BAND_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v12, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v12

    iget v13, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mMaxTranslation:F

    iget v14, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mBaseTranslation:F

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    .line 557
    .end local v6    # "progress":F
    .local v12, "progress":F
    add-float/2addr v14, v12

    .line 558
    .end local v3    # "touchTranslation":F
    .end local v10    # "diff":F
    .end local v12    # "progress":F
    .local v14, "touchTranslation":F
    goto :goto_1

    .line 559
    .end local v14    # "touchTranslation":F
    .restart local v3    # "touchTranslation":F
    :cond_3
    sub-float v10, v6, v3

    .line 560
    .restart local v10    # "diff":F
    div-float v6, v10, v6

    invoke-static {v6, v7, v8}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v6

    .line 561
    .restart local v6    # "progress":F
    sget-object v12, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->RUBBER_BAND_INTERPOLATOR_APPEAR:Landroid/view/animation/Interpolator;

    invoke-interface {v12, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v12

    iget v13, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mBaseTranslation:F

    div-float v14, v13, v11

    mul-float/2addr v12, v14

    .line 563
    .end local v6    # "progress":F
    .restart local v12    # "progress":F
    sub-float v14, v13, v12

    .line 566
    .end local v3    # "touchTranslation":F
    .end local v10    # "diff":F
    .end local v12    # "progress":F
    .restart local v14    # "touchTranslation":F
    :goto_1
    iget-boolean v3, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mTriggerBack:Z

    .line 569
    .local v3, "triggerBack":Z
    iget v6, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mTotalTouchDelta:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v10, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mMinDeltaForSwitch:F

    cmpl-float v6, v6, v10

    if-lez v6, :cond_5

    .line 570
    iget v6, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mTotalTouchDelta:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    move v6, v9

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    move v3, v6

    .line 574
    :cond_5
    iget-object v6, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v10, 0x3e8

    invoke-virtual {v6, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 575
    iget-object v6, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v6

    .line 576
    .local v6, "xVelocity":F
    iget-object v10, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    .line 577
    .local v10, "yVelocity":F
    float-to-double v12, v6

    float-to-double v7, v10

    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v7, v7

    .line 578
    .local v7, "velocity":F
    const/high16 v8, 0x447a0000    # 1000.0f

    div-float v8, v7, v8

    mul-float/2addr v8, v11

    invoke-static {v8, v11}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 579
    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v11

    mul-float/2addr v8, v11

    iput v8, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mAngleOffset:F

    .line 580
    iget-boolean v11, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mIsLeftPanel:Z

    if-eqz v11, :cond_6

    iget-boolean v12, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mArrowsPointLeft:Z

    if-nez v12, :cond_7

    :cond_6
    if-nez v11, :cond_8

    iget-boolean v11, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mArrowsPointLeft:Z

    if-nez v11, :cond_8

    .line 581
    :cond_7
    const/high16 v11, -0x40800000    # -1.0f

    mul-float/2addr v8, v11

    iput v8, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mAngleOffset:F

    .line 585
    :cond_8
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v11, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mStartX:F

    sub-float v11, v1, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v11, v12

    cmpl-float v8, v8, v11

    if-lez v8, :cond_9

    .line 586
    const/4 v3, 0x0

    .line 588
    :cond_9
    invoke-direct {p0, v3, v9}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->setTriggerBack(ZZ)V

    .line 590
    iget-boolean v8, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mTriggerBack:Z

    if-nez v8, :cond_a

    .line 591
    const/4 v14, 0x0

    goto :goto_3

    .line 592
    :cond_a
    iget-boolean v8, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mIsLeftPanel:Z

    if-eqz v8, :cond_b

    iget-boolean v11, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mArrowsPointLeft:Z

    if-nez v11, :cond_c

    :cond_b
    if-nez v8, :cond_d

    iget-boolean v8, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mArrowsPointLeft:Z

    if-nez v8, :cond_d

    .line 596
    :cond_c
    invoke-direct {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->getStaticArrowWidth()F

    move-result v8

    sub-float/2addr v14, v8

    .line 598
    :cond_d
    :goto_3
    invoke-direct {p0, v14, v9}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->setDesiredTranslation(FZ)V

    .line 599
    invoke-direct {p0, v9}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->updateAngle(Z)V

    .line 601
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v12

    iget v11, v0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mArrowLength:F

    sub-float/2addr v8, v11

    .line 602
    .local v8, "maxYOffset":F
    nop

    .line 603
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const/high16 v12, 0x41700000    # 15.0f

    mul-float/2addr v12, v8

    div-float/2addr v11, v12

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    invoke-static {v11, v13, v12}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v11

    .line 604
    .local v11, "progress":F
    sget-object v12, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->RUBBER_BAND_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v12, v11}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v12

    mul-float/2addr v12, v8

    .line 605
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v13

    mul-float/2addr v12, v13

    .line 606
    .local v12, "verticalTranslation":F
    invoke-direct {p0, v12, v9}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->setDesiredVerticalTransition(FZ)V

    .line 607
    return-void
.end method

.method private static lerp(FFF)F
    .locals 1
    .param p0, "start"    # F
    .param p1, "stop"    # F
    .param p2, "amount"    # F

    .line 437
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private loadDimens()V
    .locals 3

    .line 398
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 399
    .local v0, "res":Landroid/content/res/Resources;
    const-string v1, "navigation_edge_panel_padding"

    const/16 v2, 0x8

    invoke-static {v1, v0, v2}, Lcom/android/launcher3/ResourceUtils;->getDimenByName(Ljava/lang/String;Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mArrowPaddingEnd:I

    .line 400
    const-string v1, "navigation_edge_arrow_min_y"

    const/16 v2, 0x40

    invoke-static {v1, v0, v2}, Lcom/android/launcher3/ResourceUtils;->getDimenByName(Ljava/lang/String;Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mMinArrowPosition:I

    .line 401
    const-string v1, "navigation_edge_finger_offset"

    const/16 v2, 0x30

    invoke-static {v1, v0, v2}, Lcom/android/launcher3/ResourceUtils;->getDimenByName(Ljava/lang/String;Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mFingerOffset:I

    .line 402
    return-void
.end method

.method private polarToCartX(F)F
    .locals 2
    .param p1, "angleInDegrees"    # F

    .line 415
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private polarToCartY(F)F
    .locals 2
    .param p1, "angleInDegrees"    # F

    .line 419
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private resetOnDown()V
    .locals 4

    .line 505
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 506
    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 507
    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 508
    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mVerticalTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 509
    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mArrowDisappearAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 510
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mAngleOffset:F

    .line 511
    iget-object v1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v2, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mRegularTranslationSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 513
    const/4 v1, 0x0

    invoke-direct {p0, v1, v1}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->setTriggerBack(ZZ)V

    .line 514
    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->setDesiredTranslation(FZ)V

    .line 515
    invoke-direct {p0, v0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->setCurrentTranslation(F)V

    .line 516
    invoke-direct {p0, v1}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->updateAngle(Z)V

    .line 517
    iput v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mPreviousTouchTranslation:F

    .line 518
    iput v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mTotalTouchDelta:F

    .line 519
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mVibrationTime:J

    .line 520
    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->setDesiredVerticalTransition(FZ)V

    .line 521
    return-void
.end method

.method private setCurrentAngle(F)V
    .locals 0
    .param p1, "currentAngle"    # F

    .line 679
    iput p1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mCurrentAngle:F

    .line 680
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->invalidate()V

    .line 681
    return-void
.end method

.method private setCurrentTranslation(F)V
    .locals 0
    .param p1, "currentTranslation"    # F

    .line 650
    iput p1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mCurrentTranslation:F

    .line 651
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->invalidate()V

    .line 652
    return-void
.end method

.method private setDesiredTranslation(FZ)V
    .locals 1
    .param p1, "desiredTranslation"    # F
    .param p2, "animated"    # Z

    .line 639
    iget v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mDesiredTranslation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 640
    iput p1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mDesiredTranslation:F

    .line 641
    if-nez p2, :cond_0

    .line 642
    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->setCurrentTranslation(F)V

    goto :goto_0

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 647
    :cond_1
    :goto_0
    return-void
.end method

.method private setDesiredVerticalTransition(FZ)V
    .locals 1
    .param p1, "verticalTranslation"    # F
    .param p2, "animated"    # Z

    .line 618
    iget v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mDesiredVerticalTranslation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 619
    iput p1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mDesiredVerticalTranslation:F

    .line 620
    if-nez p2, :cond_0

    .line 621
    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->setVerticalTranslation(F)V

    goto :goto_0

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mVerticalTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 625
    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->invalidate()V

    .line 627
    :cond_1
    return-void
.end method

.method private setTriggerBack(ZZ)V
    .locals 1
    .param p1, "triggerBack"    # Z
    .param p2, "animated"    # Z

    .line 655
    iget-boolean v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mTriggerBack:Z

    if-eq v0, p1, :cond_0

    .line 656
    iput-boolean p1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mTriggerBack:Z

    .line 657
    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 658
    invoke-direct {p0, p2}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->updateAngle(Z)V

    .line 661
    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 663
    :cond_0
    return-void
.end method

.method private setVerticalTranslation(F)V
    .locals 0
    .param p1, "verticalTranslation"    # F

    .line 630
    iput p1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mVerticalTranslation:F

    .line 631
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->invalidate()V

    .line 632
    return-void
.end method

.method private triggerBack()V
    .locals 6

    .line 441
    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mBackCallback:Lcom/android/quickstep/interaction/EdgeBackGesturePanel$BackCallback;

    if-eqz v0, :cond_0

    .line 442
    invoke-interface {v0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel$BackCallback;->triggerBack()V

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 446
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 450
    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43fa0000    # 500.0f

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    if-gez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 451
    .local v0, "isSlow":Z
    :goto_0
    if-nez v0, :cond_3

    .line 452
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mVibrationTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x190

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    .line 453
    :cond_3
    sget-object v2, Lcom/android/quickstep/util/VibratorWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/util/VibratorWrapper;

    sget-object v3, Lcom/android/quickstep/util/VibratorWrapper;->EFFECT_CLICK:Landroid/os/VibrationEffect;

    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/VibratorWrapper;->vibrate(Landroid/os/VibrationEffect;)V

    .line 457
    :cond_4
    iget v2, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mAngleOffset:F

    const/high16 v3, -0x3f800000    # -4.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_5

    .line 458
    const/high16 v3, -0x3f000000    # -8.0f

    const/high16 v4, 0x41000000    # 8.0f

    sub-float/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mAngleOffset:F

    .line 459
    invoke-direct {p0, v1}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->updateAngle(Z)V

    .line 463
    :cond_5
    new-instance v1, Lcom/android/quickstep/interaction/EdgeBackGesturePanel$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel$$ExternalSyntheticLambda2;-><init>(Lcom/android/quickstep/interaction/EdgeBackGesturePanel;)V

    .line 475
    .local v1, "translationEnd":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 476
    iget-object v2, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v3, Lcom/android/quickstep/interaction/EdgeBackGesturePanel$5;

    invoke-direct {v3, p0, v1}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel$5;-><init>(Lcom/android/quickstep/interaction/EdgeBackGesturePanel;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    goto :goto_1

    .line 488
    :cond_6
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 490
    :goto_1
    return-void
.end method

.method private updateAngle(Z)V
    .locals 3
    .param p1, "animated"    # Z

    .line 666
    iget-boolean v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mTriggerBack:Z

    if-eqz v0, :cond_0

    const/high16 v1, 0x42600000    # 56.0f

    iget v2, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mAngleOffset:F

    add-float/2addr v2, v1

    goto :goto_0

    :cond_0
    const/high16 v2, 0x42b40000    # 90.0f

    :goto_0
    move v1, v2

    .line 667
    .local v1, "newAngle":F
    iget v2, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mDesiredAngle:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_3

    .line 668
    if-nez p1, :cond_1

    .line 669
    invoke-direct {p0, v1}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->setCurrentAngle(F)V

    goto :goto_2

    .line 671
    :cond_1
    iget-object v2, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mAngleAppearForce:Landroidx/dynamicanimation/animation/SpringForce;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mAngleDisappearForce:Landroidx/dynamicanimation/animation/SpringForce;

    :goto_1
    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 672
    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 674
    :goto_2
    iput v1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mDesiredAngle:F

    .line 676
    :cond_3
    return-void
.end method

.method private updateArrowDirection()V
    .locals 1

    .line 406
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mArrowsPointLeft:Z

    .line 407
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->invalidate()V

    .line 408
    return-void
.end method

.method private updatePosition(F)V
    .locals 4
    .param p1, "touchY"    # F

    .line 610
    iget v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mFingerOffset:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    .line 611
    .local v0, "positionY":F
    iget v1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mMinArrowPosition:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 612
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 613
    iget-boolean v1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mIsLeftPanel:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->setX(F)V

    .line 614
    float-to-int v1, v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2, v3}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->setY(F)V

    .line 615
    return-void
.end method


# virtual methods
.method getIsLeftPanel()Z
    .locals 1

    .line 313
    iget-boolean v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mIsLeftPanel:Z

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$new$0$com-android-quickstep-interaction-EdgeBackGesturePanel(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 253
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mDisappearAmount:F

    .line 254
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->invalidate()V

    .line 255
    return-void
.end method

.method synthetic lambda$triggerBack$1$com-android-quickstep-interaction-EdgeBackGesturePanel()V
    .locals 1

    .line 472
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$triggerBack$2$com-android-quickstep-interaction-EdgeBackGesturePanel()V
    .locals 4

    .line 465
    iget v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mAngleOffset:F

    const/high16 v1, 0x41000000    # 8.0f

    add-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mAngleOffset:F

    .line 466
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->updateAngle(Z)V

    .line 468
    iget-object v2, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v3, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mTriggerBackSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 470
    iget v2, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mDesiredTranslation:F

    const/high16 v3, 0x42000000    # 32.0f

    invoke-direct {p0, v3}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->dp(F)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-direct {p0, v2, v0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->setDesiredTranslation(FZ)V

    .line 471
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/interaction/EdgeBackGesturePanel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/interaction/EdgeBackGesturePanel;)V

    .line 472
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 473
    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mArrowDisappearAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 474
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 369
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 370
    invoke-direct {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->updateArrowDirection()V

    .line 371
    invoke-direct {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->loadDimens()V

    .line 372
    return-void
.end method

.method onDestroy()V
    .locals 1

    .line 296
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 297
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 300
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 376
    iget v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mCurrentTranslation:F

    iget v1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mArrowThickness:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 377
    .local v0, "pointerPosition":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 378
    nop

    .line 379
    iget-boolean v1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mIsLeftPanel:Z

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    .line 380
    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mVerticalTranslation:F

    add-float/2addr v2, v3

    .line 378
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 383
    iget v1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mCurrentAngle:F

    invoke-direct {p0, v1}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->polarToCartX(F)F

    move-result v1

    iget v2, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mArrowLength:F

    mul-float/2addr v1, v2

    .line 384
    .local v1, "x":F
    iget v2, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mCurrentAngle:F

    invoke-direct {p0, v2}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->polarToCartY(F)F

    move-result v2

    iget v3, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mArrowLength:F

    mul-float/2addr v2, v3

    .line 385
    .local v2, "y":F
    invoke-direct {p0, v1, v2}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->calculatePath(FF)Landroid/graphics/Path;

    move-result-object v3

    .line 387
    .local v3, "arrowPath":Landroid/graphics/Path;
    iget-object v4, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 388
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 389
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 393
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 394
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mArrowPaddingEnd:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mMaxTranslation:F

    .line 395
    return-void
.end method

.method onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 334
    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 335
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 338
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 360
    :pswitch_0
    invoke-direct {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->cancelBack()V

    .line 361
    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 362
    iput-object v1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 348
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->handleMoveEvent(Landroid/view/MotionEvent;)V

    .line 349
    goto :goto_1

    .line 351
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mTriggerBack:Z

    if-eqz v0, :cond_1

    .line 352
    invoke-direct {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->triggerBack()V

    goto :goto_0

    .line 354
    :cond_1
    invoke-direct {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->cancelBack()V

    .line 356
    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 357
    iput-object v1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 358
    goto :goto_1

    .line 340
    :pswitch_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mDragSlopPassed:Z

    .line 341
    invoke-direct {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->resetOnDown()V

    .line 342
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mStartX:F

    .line 343
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mStartY:F

    .line 344
    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->setVisibility(I)V

    .line 345
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->updatePosition(F)V

    .line 346
    nop

    .line 365
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setBackCallback(Lcom/android/quickstep/interaction/EdgeBackGesturePanel$BackCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/quickstep/interaction/EdgeBackGesturePanel$BackCallback;

    .line 322
    iput-object p1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mBackCallback:Lcom/android/quickstep/interaction/EdgeBackGesturePanel$BackCallback;

    .line 323
    return-void
.end method

.method setDisplaySize(Landroid/graphics/Point;)V
    .locals 3
    .param p1, "displaySize"    # Landroid/graphics/Point;

    .line 317
    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mDisplaySize:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 318
    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mScreenSize:I

    .line 319
    return-void
.end method

.method setIsLeftPanel(Z)V
    .locals 0
    .param p1, "isLeftPanel"    # Z

    .line 309
    iput-boolean p1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->mIsLeftPanel:Z

    .line 310
    return-void
.end method
