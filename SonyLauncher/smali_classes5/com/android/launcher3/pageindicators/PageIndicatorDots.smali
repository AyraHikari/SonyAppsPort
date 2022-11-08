.class public Lcom/android/launcher3/pageindicators/PageIndicatorDots;
.super Landroid/view/View;
.source "PageIndicatorDots.java"

# interfaces
.implements Lcom/android/launcher3/pageindicators/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;,
        Lcom/android/launcher3/pageindicators/PageIndicatorDots$MyOutlineProver;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:J = 0x96L

.field private static final CURRENT_POSITION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/pageindicators/PageIndicatorDots;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOT_ACTIVE_ALPHA:I = 0xff

.field private static final DOT_INACTIVE_ALPHA:I = 0x80

.field private static final ENTER_ANIMATION_DURATION:I = 0x190

.field private static final ENTER_ANIMATION_OVERSHOOT_TENSION:F = 4.9f

.field private static final ENTER_ANIMATION_STAGGERED_DELAY:I = 0x96

.field private static final ENTER_ANIMATION_START_DELAY:I = 0x12c

.field private static final SHIFT_PER_ANIMATION:F = 0.5f

.field private static final SHIFT_THRESHOLD:F = 0.1f

.field private static final sTempRect:Landroid/graphics/RectF;


# instance fields
.field private mActivePage:I

.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private mCurrentPosition:F

.field private final mDotRadius:F

.field private mEntryAnimationRadiusFactors:[F

.field private mFinalPosition:F

.field private final mIsRtl:Z

.field private mNumPages:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentPosition(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDotRadius(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEntryAnimationRadiusFactors(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFinalPosition(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mFinalPosition:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAnimator(Lcom/android/launcher3/pageindicators/PageIndicatorDots;Landroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentPosition(Lcom/android/launcher3/pageindicators/PageIndicatorDots;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEntryAnimationRadiusFactors(Lcom/android/launcher3/pageindicators/PageIndicatorDots;[F)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    return-void
.end method

.method static bridge synthetic -$$Nest$manimateToPosition(Lcom/android/launcher3/pageindicators/PageIndicatorDots;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->animateToPosition(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetActiveRect(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)Landroid/graphics/RectF;
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getActiveRect()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 62
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    .line 64
    new-instance v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$1;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "current_position"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->CURRENT_POSITION:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCirclePaint:Landroid/graphics/Paint;

    .line 113
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    sget v1, Lcom/android/launcher3/R$attr;->folderPaginationColor:I

    invoke-static {p1, v1}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->page_indicator_dot_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    .line 116
    new-instance v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$MyOutlineProver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$MyOutlineProver;-><init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;Lcom/android/launcher3/pageindicators/PageIndicatorDots$MyOutlineProver-IA;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mIsRtl:Z

    .line 119
    return-void
.end method

.method private animateToPosition(F)V
    .locals 4
    .param p1, "position"    # F

    .line 147
    iput p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mFinalPosition:F

    .line 148
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 149
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mFinalPosition:F

    iput v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    iget v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mFinalPosition:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    iget v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mFinalPosition:F

    cmpl-float v1, v0, v1

    const/high16 v2, 0x3f000000    # 0.5f

    if-lez v1, :cond_1

    .line 153
    sub-float/2addr v0, v2

    goto :goto_0

    :cond_1
    add-float/2addr v0, v2

    .line 154
    .local v0, "positionForThisAnim":F
    :goto_0
    sget-object v1, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->CURRENT_POSITION:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 155
    new-instance v2, Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;-><init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener-IA;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 156
    iget-object v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 157
    iget-object v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 159
    .end local v0    # "positionForThisAnim":F
    :cond_2
    return-void
.end method

.method private getActiveRect()Landroid/graphics/RectF;
    .locals 10

    .line 272
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    float-to-int v1, v0

    int-to-float v1, v1

    .line 273
    .local v1, "startCircle":F
    sub-float/2addr v0, v1

    .line 274
    .local v0, "delta":F
    iget v2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v2, v3

    .line 275
    .local v4, "diameter":F
    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v2, v5

    .line 276
    .local v2, "circleGap":F
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    add-float/2addr v5, v6

    div-float/2addr v5, v3

    .line 278
    .local v5, "startX":F
    sget-object v6, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    iget v9, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    sub-float/2addr v7, v9

    iput v7, v6, Landroid/graphics/RectF;->top:F

    .line 279
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    iget v9, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    add-float/2addr v7, v9

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    .line 280
    mul-float v7, v1, v2

    add-float/2addr v7, v5

    iput v7, v6, Landroid/graphics/RectF;->left:F

    .line 281
    iget v7, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v4

    iput v7, v6, Landroid/graphics/RectF;->right:F

    .line 283
    cmpg-float v7, v0, v8

    if-gez v7, :cond_0

    .line 285
    iget v7, v6, Landroid/graphics/RectF;->right:F

    mul-float v8, v0, v2

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 288
    :cond_0
    iget v7, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, v2

    iput v7, v6, Landroid/graphics/RectF;->right:F

    .line 290
    sub-float/2addr v0, v8

    .line 291
    iget v7, v6, Landroid/graphics/RectF;->left:F

    mul-float v8, v0, v2

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->left:F

    .line 294
    :goto_0
    iget-boolean v3, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mIsRtl:Z

    if-eqz v3, :cond_1

    .line 295
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 296
    .local v3, "rectWidth":F
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->right:F

    .line 297
    iget v7, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v7, v3

    iput v7, v6, Landroid/graphics/RectF;->left:F

    .line 299
    .end local v3    # "rectWidth":F
    :cond_1
    return-object v6
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 242
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    .line 243
    .local v0, "circleGap":F
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    add-float/2addr v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    .line 245
    .local v1, "startX":F
    add-float/2addr v2, v1

    .line 246
    .local v2, "x":F
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 248
    .local v3, "y":F
    iget-object v4, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    const/16 v5, 0xff

    const/16 v6, 0x80

    if-eqz v4, :cond_3

    .line 250
    iget-boolean v4, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mIsRtl:Z

    if-eqz v4, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v2, v4, v2

    .line 252
    neg-float v0, v0

    .line 254
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    array-length v7, v7

    if-ge v4, v7, :cond_2

    .line 255
    iget-object v7, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCirclePaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mActivePage:I

    if-ne v4, v8, :cond_1

    move v8, v5

    goto :goto_1

    :cond_1
    move v8, v6

    :goto_1
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 256
    iget v7, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    iget-object v8, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    aget v8, v8, v4

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 257
    add-float/2addr v2, v0

    .line 254
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v4    # "i":I
    :cond_2
    goto :goto_3

    .line 260
    :cond_3
    iget-object v4, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 261
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    iget v6, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    if-ge v4, v6, :cond_4

    .line 262
    iget v6, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    iget-object v7, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 263
    add-float/2addr v2, v0

    .line 261
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 266
    .end local v4    # "i":I
    :cond_4
    iget-object v4, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 267
    invoke-direct {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getActiveRect()Landroid/graphics/RectF;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    iget-object v6, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 269
    :goto_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 232
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 233
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 234
    .local v0, "width":I
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 235
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    goto :goto_1

    :cond_1
    const/high16 v1, 0x40800000    # 4.0f

    iget v2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 236
    .local v1, "height":I
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->setMeasuredDimension(II)V

    .line 237
    return-void
.end method

.method public playEntryAnimation()V
    .locals 8

    .line 180
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    array-length v0, v0

    .line 181
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 182
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    .line 183
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->invalidate()V

    .line 184
    return-void

    .line 187
    :cond_0
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x409ccccd    # 4.9f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 188
    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 189
    .local v2, "animSet":Landroid/animation/AnimatorSet;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 190
    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v5, 0x190

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 191
    .local v4, "anim":Landroid/animation/ValueAnimator;
    move v5, v3

    .line 192
    .local v5, "index":I
    new-instance v6, Lcom/android/launcher3/pageindicators/PageIndicatorDots$2;

    invoke-direct {v6, p0, v5}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$2;-><init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;I)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 199
    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 200
    mul-int/lit16 v6, v3, 0x96

    add-int/lit16 v6, v6, 0x12c

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 201
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 189
    .end local v4    # "anim":Landroid/animation/ValueAnimator;
    .end local v5    # "index":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 204
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;

    invoke-direct {v3, p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;-><init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 213
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 214
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public prepareEntryAnimation()V
    .locals 1

    .line 175
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    .line 176
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->invalidate()V

    .line 177
    return-void
.end method

.method public setActiveMarker(I)V
    .locals 1
    .param p1, "activePage"    # I

    .line 218
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mActivePage:I

    if-eq v0, p1, :cond_0

    .line 219
    iput p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mActivePage:I

    .line 221
    :cond_0
    return-void
.end method

.method public setMarkersCount(I)V
    .locals 0
    .param p1, "numMarkers"    # I

    .line 225
    iput p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    .line 226
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->requestLayout()V

    .line 227
    return-void
.end method

.method public setScroll(II)V
    .locals 7
    .param p1, "currentScroll"    # I
    .param p2, "totalScroll"    # I

    .line 123
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 124
    iget-boolean v2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mIsRtl:Z

    if-eqz v2, :cond_0

    .line 125
    sub-int p1, p2, p1

    .line 127
    :cond_0
    sub-int/2addr v0, v1

    div-int v0, p2, v0

    .line 128
    .local v0, "scrollPerPage":I
    div-int v1, p1, v0

    .line 129
    .local v1, "pageToLeft":I
    mul-int v2, v1, v0

    .line 130
    .local v2, "pageToLeftScroll":I
    add-int v3, v2, v0

    .line 132
    .local v3, "pageToRightScroll":I
    const v4, 0x3dcccccd    # 0.1f

    int-to-float v5, v0

    mul-float/2addr v5, v4

    .line 133
    .local v5, "scrollThreshold":F
    int-to-float v4, p1

    int-to-float v6, v2

    add-float/2addr v6, v5

    cmpg-float v4, v4, v6

    if-gez v4, :cond_1

    .line 135
    int-to-float v4, v1

    invoke-direct {p0, v4}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->animateToPosition(F)V

    goto :goto_0

    .line 136
    :cond_1
    int-to-float v4, p1

    int-to-float v6, v3

    sub-float/2addr v6, v5

    cmpl-float v4, v4, v6

    if-lez v4, :cond_2

    .line 138
    add-int/lit8 v4, v1, 0x1

    int-to-float v4, v4

    invoke-direct {p0, v4}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->animateToPosition(F)V

    goto :goto_0

    .line 141
    :cond_2
    int-to-float v4, v1

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v4, v6

    invoke-direct {p0, v4}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->animateToPosition(F)V

    .line 144
    .end local v0    # "scrollPerPage":I
    .end local v1    # "pageToLeft":I
    .end local v2    # "pageToLeftScroll":I
    .end local v3    # "pageToRightScroll":I
    .end local v5    # "scrollThreshold":F
    :cond_3
    :goto_0
    return-void
.end method

.method public stopAllAnimations()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 166
    :cond_0
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mActivePage:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mFinalPosition:F

    .line 167
    sget-object v1, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->CURRENT_POSITION:Landroid/util/Property;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    return-void
.end method
