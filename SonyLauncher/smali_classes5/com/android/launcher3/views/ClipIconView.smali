.class public Lcom/android/launcher3/views/ClipIconView;
.super Landroid/view/View;
.source "ClipIconView.java"

# interfaces
.implements Lcom/android/launcher3/views/ClipPathView;


# static fields
.field private static final FG_TRANS_X_FACTOR:I = 0x3c

.field private static final FG_TRANS_Y_FACTOR:I = 0x4b

.field private static final mFgTransXProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/android/launcher3/views/ClipIconView;",
            ">;"
        }
    .end annotation
.end field

.field private static final mFgTransYProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/android/launcher3/views/ClipIconView;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTmpRect:Landroid/graphics/Rect;


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private final mBlurSizeOutline:I

.field private mClipPath:Landroid/graphics/Path;

.field private final mEndRevealRect:Landroid/graphics/Rect;

.field private final mFgSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final mFgSpringY:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mFgTransX:F

.field private mFgTransY:F

.field private final mFinalDrawableBounds:Landroid/graphics/Rect;

.field private mForeground:Landroid/graphics/drawable/Drawable;

.field private mIsAdaptiveIcon:Z

.field private final mIsRtl:Z

.field private final mOutline:Landroid/graphics/Rect;

.field private mRevealAnimator:Landroid/animation/ValueAnimator;

.field private final mStartRevealRect:Landroid/graphics/Rect;

.field private mTaskCornerRadius:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmFgTransX(Lcom/android/launcher3/views/ClipIconView;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/views/ClipIconView;->mFgTransX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFgTransY(Lcom/android/launcher3/views/ClipIconView;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/views/ClipIconView;->mFgTransY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOutline(Lcom/android/launcher3/views/ClipIconView;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTaskCornerRadius(Lcom/android/launcher3/views/ClipIconView;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/views/ClipIconView;->mTaskCornerRadius:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmFgTransX(Lcom/android/launcher3/views/ClipIconView;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/views/ClipIconView;->mFgTransX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFgTransY(Lcom/android/launcher3/views/ClipIconView;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/views/ClipIconView;->mFgTransY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRevealAnimator(Lcom/android/launcher3/views/ClipIconView;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/views/ClipIconView;->mRevealAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/views/ClipIconView;->sTmpRect:Landroid/graphics/Rect;

    .line 71
    new-instance v0, Lcom/android/launcher3/views/ClipIconView$1;

    const-string v1, "ClipIconViewFgTransY"

    invoke-direct {v0, v1}, Lcom/android/launcher3/views/ClipIconView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/views/ClipIconView;->mFgTransYProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 85
    new-instance v0, Lcom/android/launcher3/views/ClipIconView$2;

    const-string v1, "ClipIconViewFgTransX"

    invoke-direct {v0, v1}, Lcom/android/launcher3/views/ClipIconView$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/views/ClipIconView;->mFgTransXProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/views/ClipIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/ClipIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 131
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/views/ClipIconView;->mIsAdaptiveIcon:Z

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/views/ClipIconView;->mStartRevealRect:Landroid/graphics/Rect;

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/views/ClipIconView;->mEndRevealRect:Landroid/graphics/Rect;

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    .line 132
    invoke-virtual {p0}, Lcom/android/launcher3/views/ClipIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->blur_size_medium_outline:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/views/ClipIconView;->mBlurSizeOutline:I

    .line 134
    invoke-virtual {p0}, Lcom/android/launcher3/views/ClipIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/views/ClipIconView;->mIsRtl:Z

    .line 136
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Lcom/android/launcher3/views/ClipIconView;->mFgTransXProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 138
    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 139
    const/high16 v3, 0x43480000    # 200.0f

    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/views/ClipIconView;->mFgSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 140
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Lcom/android/launcher3/views/ClipIconView;->mFgTransYProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 142
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 143
    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/views/ClipIconView;->mFgSpringY:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 144
    return-void
.end method

.method private setBackgroundDrawableBounds(FZ)V
    .locals 3
    .param p1, "scale"    # F
    .param p2, "isLandscape"    # Z

    .line 250
    sget-object v0, Lcom/android/launcher3/views/ClipIconView;->sTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 251
    invoke-static {v0, p1}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 253
    if-eqz p2, :cond_0

    .line 254
    iget-object v1, p0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    .line 256
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 258
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/views/ClipIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 259
    return-void
.end method

.method private update(Landroid/graphics/RectF;FFFIZFFLandroid/view/ViewGroup$MarginLayoutParams;Lcom/android/launcher3/DeviceProfile;)V
    .locals 18
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "progress"    # F
    .param p3, "shapeProgressStart"    # F
    .param p4, "cornerRadius"    # F
    .param p5, "fgIconAlpha"    # I
    .param p6, "isOpening"    # Z
    .param p7, "scale"    # F
    .param p8, "minSize"    # F
    .param p9, "parentLp"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p10, "dp"    # Lcom/android/launcher3/DeviceProfile;

    .line 184
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v15, p3

    move-object/from16 v5, p9

    move-object/from16 v4, p10

    iget-boolean v0, v6, Lcom/android/launcher3/views/ClipIconView;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 185
    iget v0, v7, Landroid/graphics/RectF;->left:F

    iget v1, v4, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual/range {p9 .. p9}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_0

    .line 186
    :cond_0
    iget v0, v7, Landroid/graphics/RectF;->left:F

    invoke-virtual/range {p9 .. p9}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_0
    move/from16 v16, v0

    .line 187
    .local v16, "dX":F
    iget v0, v7, Landroid/graphics/RectF;->top:F

    iget v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v1, v1

    sub-float v17, v0, v1

    .line 190
    .local v17, "dY":F
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p6, :cond_1

    const/high16 v1, 0x41200000    # 10.0f

    move v13, v1

    goto :goto_1

    :cond_1
    move v13, v0

    .line 192
    .local v13, "toMax":F
    :goto_1
    invoke-static {v15, v8}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    sget-object v14, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move/from16 v10, p3

    invoke-static/range {v9 .. v14}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v9

    .line 195
    .local v9, "shapeRevealProgress":F
    iget-boolean v0, v4, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, v6, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float v1, v1, p7

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 198
    :cond_2
    iget-object v0, v6, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float v1, v1, p7

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 201
    :goto_2
    div-float v0, p4, p7

    iput v0, v6, Lcom/android/launcher3/views/ClipIconView;->mTaskCornerRadius:F

    .line 202
    iget-boolean v0, v6, Lcom/android/launcher3/views/ClipIconView;->mIsAdaptiveIcon:Z

    if-eqz v0, :cond_9

    .line 203
    if-nez p6, :cond_4

    cmpl-float v0, v8, v15

    if-ltz v0, :cond_4

    .line 204
    iget-object v0, v6, Lcom/android/launcher3/views/ClipIconView;->mRevealAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_3

    .line 205
    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getShape()Lcom/android/launcher3/graphics/IconShape;

    move-result-object v0

    iget-object v2, v6, Lcom/android/launcher3/views/ClipIconView;->mStartRevealRect:Landroid/graphics/Rect;

    iget-object v3, v6, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    iget v10, v6, Lcom/android/launcher3/views/ClipIconView;->mTaskCornerRadius:F

    xor-int/lit8 v11, p6, 0x1

    move-object/from16 v1, p0

    move-object v12, v4

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/graphics/IconShape;->createRevealAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FZ)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    iput-object v0, v6, Lcom/android/launcher3/views/ClipIconView;->mRevealAnimator:Landroid/animation/ValueAnimator;

    .line 207
    new-instance v1, Lcom/android/launcher3/views/ClipIconView$3;

    invoke-direct {v1, v6}, Lcom/android/launcher3/views/ClipIconView$3;-><init>(Lcom/android/launcher3/views/ClipIconView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 213
    iget-object v0, v6, Lcom/android/launcher3/views/ClipIconView;->mRevealAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 215
    iget-object v0, v6, Lcom/android/launcher3/views/ClipIconView;->mRevealAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    goto :goto_3

    .line 204
    :cond_3
    move-object v12, v4

    .line 217
    :goto_3
    iget-object v0, v6, Lcom/android/launcher3/views/ClipIconView;->mRevealAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    goto :goto_4

    .line 203
    :cond_4
    move-object v12, v4

    .line 220
    :goto_4
    iget-boolean v0, v12, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_5

    iget-object v0, v6, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_5

    :cond_5
    iget-object v0, v6, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_5
    int-to-float v0, v0

    div-float v0, v0, p8

    .line 222
    .local v0, "drawableScale":F
    iget-boolean v1, v12, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    invoke-direct {v6, v0, v1}, Lcom/android/launcher3/views/ClipIconView;->setBackgroundDrawableBounds(FZ)V

    .line 223
    if-eqz p6, :cond_8

    .line 225
    iget-object v1, v6, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 226
    .local v1, "height":I
    iget-object v2, v6, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 227
    .local v2, "width":I
    iget-boolean v3, v12, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v3, :cond_6

    move v3, v4

    goto :goto_6

    .line 228
    :cond_6
    int-to-float v3, v1

    mul-float/2addr v3, v0

    int-to-float v10, v1

    sub-float/2addr v3, v10

    div-float/2addr v3, v5

    float-to-int v3, v3

    :goto_6
    nop

    .line 229
    .local v3, "diffY":I
    iget-boolean v10, v12, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v10, :cond_7

    int-to-float v4, v2

    mul-float/2addr v4, v0

    int-to-float v10, v2

    sub-float/2addr v4, v10

    div-float/2addr v4, v5

    float-to-int v4, v4

    goto :goto_7

    .line 230
    :cond_7
    nop

    :goto_7
    nop

    .line 231
    .local v4, "diffX":I
    sget-object v5, Lcom/android/launcher3/views/ClipIconView;->sTmpRect:Landroid/graphics/Rect;

    iget-object v10, v6, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 232
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 233
    iget-object v10, v6, Lcom/android/launcher3/views/ClipIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 234
    .end local v1    # "height":I
    .end local v2    # "width":I
    .end local v3    # "diffY":I
    .end local v4    # "diffX":I
    move/from16 v2, p5

    goto :goto_8

    .line 235
    :cond_8
    iget-object v1, v6, Lcom/android/launcher3/views/ClipIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    move/from16 v2, p5

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 238
    iget v1, v12, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    int-to-float v1, v1

    div-float v1, v16, v1

    const/high16 v3, 0x42700000    # 60.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 239
    .local v1, "diffX":I
    iget v3, v12, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    int-to-float v3, v3

    div-float v3, v17, v3

    const/high16 v4, 0x42960000    # 75.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 241
    .restart local v3    # "diffY":I
    iget-object v4, v6, Lcom/android/launcher3/views/ClipIconView;->mFgSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    int-to-float v5, v1

    invoke-virtual {v4, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 242
    iget-object v4, v6, Lcom/android/launcher3/views/ClipIconView;->mFgSpringY:Landroidx/dynamicanimation/animation/SpringAnimation;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    goto :goto_8

    .line 202
    .end local v0    # "drawableScale":F
    .end local v1    # "diffX":I
    .end local v3    # "diffY":I
    :cond_9
    move/from16 v2, p5

    move-object v12, v4

    .line 245
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/views/ClipIconView;->invalidate()V

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/views/ClipIconView;->invalidateOutline()V

    .line 247
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 353
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 354
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/launcher3/views/ClipIconView;->mClipPath:Landroid/graphics/Path;

    if-eqz v1, :cond_0

    .line 355
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 357
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 358
    iget-object v1, p0, Lcom/android/launcher3/views/ClipIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 359
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 361
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/views/ClipIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 362
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 363
    .local v1, "count2":I
    iget v2, p0, Lcom/android/launcher3/views/ClipIconView;->mFgTransX:F

    iget v3, p0, Lcom/android/launcher3/views/ClipIconView;->mFgTransY:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 364
    iget-object v2, p0, Lcom/android/launcher3/views/ClipIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 365
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 367
    .end local v1    # "count2":I
    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 368
    return-void
.end method

.method protected endReveal()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/android/launcher3/views/ClipIconView;->mRevealAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 265
    :cond_0
    return-void
.end method

.method recycle()V
    .locals 2

    .line 371
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/ClipIconView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 372
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/views/ClipIconView;->mIsAdaptiveIcon:Z

    .line 373
    iput-object v0, p0, Lcom/android/launcher3/views/ClipIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 374
    iput-object v0, p0, Lcom/android/launcher3/views/ClipIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 375
    iput-object v0, p0, Lcom/android/launcher3/views/ClipIconView;->mClipPath:Landroid/graphics/Path;

    .line 376
    iget-object v1, p0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 377
    iget-object v1, p0, Lcom/android/launcher3/views/ClipIconView;->mRevealAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 378
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 380
    :cond_0
    iput-object v0, p0, Lcom/android/launcher3/views/ClipIconView;->mRevealAnimator:Landroid/animation/ValueAnimator;

    .line 381
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/views/ClipIconView;->mTaskCornerRadius:F

    .line 382
    iget-object v1, p0, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 383
    iput v0, p0, Lcom/android/launcher3/views/ClipIconView;->mFgTransY:F

    .line 384
    iget-object v1, p0, Lcom/android/launcher3/views/ClipIconView;->mFgSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 385
    iput v0, p0, Lcom/android/launcher3/views/ClipIconView;->mFgTransX:F

    .line 386
    iget-object v0, p0, Lcom/android/launcher3/views/ClipIconView;->mFgSpringY:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 387
    return-void
.end method

.method public setClipPath(Landroid/graphics/Path;)V
    .locals 0
    .param p1, "clipPath"    # Landroid/graphics/Path;

    .line 347
    iput-object p1, p0, Lcom/android/launcher3/views/ClipIconView;->mClipPath:Landroid/graphics/Path;

    .line 348
    invoke-virtual {p0}, Lcom/android/launcher3/views/ClipIconView;->invalidate()V

    .line 349
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;ILandroid/view/ViewGroup$MarginLayoutParams;ZLcom/android/launcher3/DeviceProfile;)V
    .locals 17
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "iconOffset"    # I
    .param p3, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p4, "isOpening"    # Z
    .param p5, "dp"    # Lcom/android/launcher3/DeviceProfile;

    .line 272
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    instance-of v4, v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    iput-boolean v4, v0, Lcom/android/launcher3/views/ClipIconView;->mIsAdaptiveIcon:Z

    .line 273
    const/4 v5, 0x0

    if-eqz v4, :cond_7

    .line 274
    instance-of v4, v1, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;

    .line 276
    .local v4, "isFolderIcon":Z
    move-object v6, v1

    check-cast v6, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 277
    .local v6, "adaptiveIcon":Landroid/graphics/drawable/AdaptiveIconDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 278
    .local v7, "background":Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_0

    .line 279
    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object v7, v8

    .line 281
    :cond_0
    iput-object v7, v0, Lcom/android/launcher3/views/ClipIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 282
    invoke-virtual {v6}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 283
    .local v8, "foreground":Landroid/graphics/drawable/Drawable;
    if-nez v8, :cond_1

    .line 284
    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v9, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object v8, v9

    .line 286
    :cond_1
    iput-object v8, v0, Lcom/android/launcher3/views/ClipIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 288
    iget v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 289
    .local v9, "originalHeight":I
    iget v10, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 291
    .local v10, "originalWidth":I
    iget v11, v0, Lcom/android/launcher3/views/ClipIconView;->mBlurSizeOutline:I

    div-int/lit8 v11, v11, 0x2

    .line 292
    .local v11, "blurMargin":I
    iget-object v12, v0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v12, v5, v5, v10, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 294
    if-nez v4, :cond_2

    .line 295
    iget-object v12, v0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    sub-int v13, p2, v11

    sub-int v14, p2, v11

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Rect;->inset(II)V

    .line 297
    :cond_2
    iget-object v12, v0, Lcom/android/launcher3/views/ClipIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    iget-object v13, v0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 298
    iget-object v12, v0, Lcom/android/launcher3/views/ClipIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v13, v0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 300
    iget-object v12, v0, Lcom/android/launcher3/views/ClipIconView;->mStartRevealRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v5, v5, v10, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 302
    if-nez v4, :cond_3

    .line 303
    iget-object v12, v0, Lcom/android/launcher3/views/ClipIconView;->mStartRevealRect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getNormalizationScale()F

    move-result v13

    invoke-static {v12, v13}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 306
    :cond_3
    iget-boolean v12, v3, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v12, :cond_4

    .line 307
    iget v12, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v12, v12

    iget v13, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-float v13, v13

    iget v14, v3, Lcom/android/launcher3/DeviceProfile;->aspectRatio:F

    mul-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    float-to-int v12, v12

    iput v12, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_0

    .line 309
    :cond_4
    iget v12, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-float v12, v12

    iget v13, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v13, v13

    iget v14, v3, Lcom/android/launcher3/DeviceProfile;->aspectRatio:F

    mul-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    float-to-int v12, v12

    iput v12, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 312
    :goto_0
    iget-boolean v12, v0, Lcom/android/launcher3/views/ClipIconView;->mIsRtl:Z

    if-eqz v12, :cond_5

    .line 313
    iget v12, v3, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v13

    sub-int/2addr v12, v13

    iget v13, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sub-int/2addr v12, v13

    goto :goto_1

    .line 314
    :cond_5
    iget v12, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_1
    nop

    .line 315
    .local v12, "left":I
    iget v13, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v14, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int/2addr v14, v12

    iget v15, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr v15, v5

    invoke-virtual {v0, v12, v13, v14, v15}, Lcom/android/launcher3/views/ClipIconView;->layout(IIII)V

    .line 317
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-float v5, v5

    int-to-float v13, v9

    div-float/2addr v5, v13

    iget v13, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v13, v13

    int-to-float v14, v10

    div-float/2addr v13, v14

    invoke-static {v5, v13}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 320
    .local v5, "scale":F
    if-eqz p4, :cond_6

    .line 321
    const/high16 v13, 0x3f800000    # 1.0f

    .line 322
    .local v13, "bgDrawableStartScale":F
    iget-object v14, v0, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v15, v10, v9}, Landroid/graphics/Rect;->set(IIII)V

    move/from16 v16, v4

    goto :goto_2

    .line 324
    .end local v13    # "bgDrawableStartScale":F
    :cond_6
    const/4 v15, 0x0

    move v13, v5

    .line 325
    .restart local v13    # "bgDrawableStartScale":F
    iget-object v14, v0, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v16, v4

    .end local v4    # "isFolderIcon":Z
    .local v16, "isFolderIcon":Z
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v14, v15, v15, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 327
    :goto_2
    iget-boolean v1, v3, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    invoke-direct {v0, v13, v1}, Lcom/android/launcher3/views/ClipIconView;->setBackgroundDrawableBounds(FZ)V

    .line 328
    iget-object v1, v0, Lcom/android/launcher3/views/ClipIconView;->mEndRevealRect:Landroid/graphics/Rect;

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v14, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v1, v15, v15, v4, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 329
    new-instance v1, Lcom/android/launcher3/views/ClipIconView$4;

    invoke-direct {v1, v0}, Lcom/android/launcher3/views/ClipIconView$4;-><init>(Lcom/android/launcher3/views/ClipIconView;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/ClipIconView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 335
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/ClipIconView;->setClipToOutline(Z)V

    .line 336
    .end local v5    # "scale":F
    .end local v6    # "adaptiveIcon":Landroid/graphics/drawable/AdaptiveIconDrawable;
    .end local v7    # "background":Landroid/graphics/drawable/Drawable;
    .end local v8    # "foreground":Landroid/graphics/drawable/Drawable;
    .end local v9    # "originalHeight":I
    .end local v10    # "originalWidth":I
    .end local v11    # "blurMargin":I
    .end local v12    # "left":I
    .end local v13    # "bgDrawableStartScale":F
    .end local v16    # "isFolderIcon":Z
    goto :goto_3

    .line 337
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/views/ClipIconView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 338
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/ClipIconView;->setClipToOutline(Z)V

    .line 341
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/views/ClipIconView;->invalidate()V

    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/views/ClipIconView;->invalidateOutline()V

    .line 343
    return-void
.end method

.method public update(Landroid/graphics/RectF;FFFIZLandroid/view/View;Lcom/android/launcher3/DeviceProfile;)V
    .locals 22
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "progress"    # F
    .param p3, "shapeProgressStart"    # F
    .param p4, "cornerRadius"    # F
    .param p5, "fgIconAlpha"    # I
    .param p6, "isOpening"    # Z
    .param p7, "container"    # Landroid/view/View;
    .param p8, "dp"    # Lcom/android/launcher3/DeviceProfile;

    .line 151
    move-object/from16 v11, p1

    move-object/from16 v12, p7

    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 153
    .local v13, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v14, p0

    iget-boolean v0, v14, Lcom/android/launcher3/views/ClipIconView;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 154
    iget v0, v11, Landroid/graphics/RectF;->left:F

    move-object/from16 v15, p8

    iget v1, v15, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual {v13}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_0

    .line 155
    :cond_0
    move-object/from16 v15, p8

    iget v0, v11, Landroid/graphics/RectF;->left:F

    invoke-virtual {v13}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_0
    move v10, v0

    .line 156
    .local v10, "dX":F
    iget v0, v11, Landroid/graphics/RectF;->top:F

    iget v1, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v1, v1

    sub-float v9, v0, v1

    .line 157
    .local v9, "dY":F
    invoke-virtual {v12, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 158
    invoke-virtual {v12, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 160
    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v1, v13, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v8, v0

    .line 161
    .local v8, "minSize":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float v7, v0, v8

    .line 162
    .local v7, "scaleX":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float v6, v0, v8

    .line 163
    .local v6, "scaleY":F
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 165
    .local v5, "scale":F
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    return-void

    .line 170
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v16, v5

    .end local v5    # "scale":F
    .local v16, "scale":F
    move/from16 v5, p5

    move/from16 v17, v6

    .end local v6    # "scaleY":F
    .local v17, "scaleY":F
    move/from16 v6, p6

    move/from16 v18, v7

    .end local v7    # "scaleX":F
    .local v18, "scaleX":F
    move/from16 v7, v16

    move/from16 v19, v8

    .end local v8    # "minSize":F
    .local v19, "minSize":F
    move/from16 v20, v9

    .end local v9    # "dY":F
    .local v20, "dY":F
    move-object v9, v13

    move/from16 v21, v10

    .end local v10    # "dX":F
    .local v21, "dX":F
    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/android/launcher3/views/ClipIconView;->update(Landroid/graphics/RectF;FFFIZFFLandroid/view/ViewGroup$MarginLayoutParams;Lcom/android/launcher3/DeviceProfile;)V

    .line 173
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroid/view/View;->setPivotX(F)V

    .line 174
    invoke-virtual {v12, v0}, Landroid/view/View;->setPivotY(F)V

    .line 175
    move/from16 v0, v16

    .end local v16    # "scale":F
    .local v0, "scale":F
    invoke-virtual {v12, v0}, Landroid/view/View;->setScaleX(F)V

    .line 176
    invoke-virtual {v12, v0}, Landroid/view/View;->setScaleY(F)V

    .line 178
    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->invalidate()V

    .line 179
    return-void
.end method
