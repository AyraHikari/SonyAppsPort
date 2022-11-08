.class public Lcom/android/launcher3/folder/PreviewBackground;
.super Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;
.source "PreviewBackground.java"


# static fields
.field private static final ACCEPT_SCALE_FACTOR:F = 1.2f

.field private static final BG_OPACITY:I = 0xff

.field private static final CONSUMPTION_ANIMATION_DURATION:I = 0x64

.field private static final DRAW_SHADOW:Z = false

.field private static final DRAW_STROKE:Z = false

.field private static final MAX_BG_OPACITY:I = 0xff

.field private static final SHADOW_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/folder/PreviewBackground;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHADOW_OPACITY:I = 0x28

.field private static final STROKE_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/folder/PreviewBackground;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field basePreviewOffsetX:I

.field basePreviewOffsetY:I

.field public isClipping:Z

.field private mAllAppsDrawingDelegate:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

.field private mBgColor:I

.field private mDotColor:I

.field private mInvalidateDelegate:Landroid/view/View;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field mScale:F

.field private mScaleAnimator:Landroid/animation/ValueAnimator;

.field private final mShaderMatrix:Landroid/graphics/Matrix;

.field private mShadowAlpha:I

.field private mShadowAnimator:Landroid/animation/ObjectAnimator;

.field private final mShadowPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

.field private mShadowShader:Landroid/graphics/RadialGradient;

.field private mStrokeAlpha:I

.field private mStrokeAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mStrokeColor:I

.field private mStrokeWidth:F

.field private mWorkspaceDrawingDelegate:Lcom/android/launcher3/CellLayout;

.field previewSize:I


# direct methods
.method public static synthetic $r8$lambda$qPwDiiuGSbKeVVWi_mymX5CRk48(Lcom/android/launcher3/folder/PreviewBackground;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/folder/PreviewBackground;->clearDrawingDelegate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmShadowAlpha(Lcom/android/launcher3/folder/PreviewBackground;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShadowAlpha:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStrokeAlpha(Lcom/android/launcher3/folder/PreviewBackground;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mStrokeAlpha:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmScaleAnimator(Lcom/android/launcher3/folder/PreviewBackground;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShadowAlpha(Lcom/android/launcher3/folder/PreviewBackground;I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShadowAlpha:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShadowAnimator(Lcom/android/launcher3/folder/PreviewBackground;Landroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShadowAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStrokeAlpha(Lcom/android/launcher3/folder/PreviewBackground;I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mStrokeAlpha:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStrokeAlphaAnimator(Lcom/android/launcher3/folder/PreviewBackground;Landroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mStrokeAlphaAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 107
    new-instance v0, Lcom/android/launcher3/folder/PreviewBackground$1;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "strokeAlpha"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/PreviewBackground$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/folder/PreviewBackground;->STROKE_ALPHA:Landroid/util/Property;

    .line 121
    new-instance v0, Lcom/android/launcher3/folder/PreviewBackground$2;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "shadowAlpha"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/PreviewBackground$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/folder/PreviewBackground;->SHADOW_ALPHA:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;-><init>()V

    .line 66
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShadowPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShadowShader:Landroid/graphics/RadialGradient;

    .line 70
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 71
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPath:Landroid/graphics/Path;

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    .line 75
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    .line 80
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mStrokeAlpha:I

    .line 81
    iput v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShadowAlpha:I

    .line 93
    iput-boolean v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->isClipping:Z

    return-void
.end method

.method private animateScale(FLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "finalScale"    # F
    .param p2, "onStart"    # Ljava/lang/Runnable;
    .param p3, "onEnd"    # Ljava/lang/Runnable;

    .line 417
    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    .line 418
    .local v0, "scale0":F
    move v1, p1

    .line 420
    .local v1, "scale1":F
    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    .line 421
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 424
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    .line 426
    new-instance v3, Lcom/android/launcher3/folder/PreviewBackground$5;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/launcher3/folder/PreviewBackground$5;-><init>(Lcom/android/launcher3/folder/PreviewBackground;FF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 434
    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/launcher3/folder/PreviewBackground$6;

    invoke-direct {v3, p0, p2, p3}, Lcom/android/launcher3/folder/PreviewBackground$6;-><init>(Lcom/android/launcher3/folder/PreviewBackground;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 451
    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 452
    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 453
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private clearDrawingDelegate()V
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mWorkspaceDrawingDelegate:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {v0, p0}, Lcom/android/launcher3/CellLayout;->removeDelegatedCellDrawing(Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;)V

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mAllAppsDrawingDelegate:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v0, :cond_1

    .line 399
    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->removeDelegatedCellDrawing(Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;)V

    .line 402
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mWorkspaceDrawingDelegate:Lcom/android/launcher3/CellLayout;

    .line 403
    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mAllAppsDrawingDelegate:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 404
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->isClipping:Z

    .line 405
    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    .line 406
    return-void
.end method

.method private delegateDrawing(Lcom/android/launcher3/CellLayout;II)V
    .locals 1
    .param p1, "delegate"    # Lcom/android/launcher3/CellLayout;
    .param p2, "cellX"    # I
    .param p3, "cellY"    # I

    .line 371
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mWorkspaceDrawingDelegate:Lcom/android/launcher3/CellLayout;

    if-eq v0, p1, :cond_0

    .line 372
    invoke-virtual {p1, p0}, Lcom/android/launcher3/CellLayout;->addDelegatedCellDrawing(Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;)V

    .line 375
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mWorkspaceDrawingDelegate:Lcom/android/launcher3/CellLayout;

    .line 376
    iput p2, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDelegateCellX:I

    .line 377
    iput p3, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDelegateCellY:I

    .line 379
    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    .line 380
    return-void
.end method

.method private delegateDrawing(Lcom/android/launcher3/allapps/AllAppsRecyclerView;II)V
    .locals 1
    .param p1, "delegate"    # Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    .param p2, "cellX"    # I
    .param p3, "cellY"    # I

    .line 383
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mAllAppsDrawingDelegate:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eq v0, p1, :cond_0

    .line 384
    invoke-virtual {p1, p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->addDelegatedCellDrawing(Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;)V

    .line 387
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mAllAppsDrawingDelegate:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 388
    iput p2, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDelegateCellX:I

    .line 389
    iput p3, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDelegateCellY:I

    .line 391
    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    .line 392
    return-void
.end method


# virtual methods
.method public animateBackgroundStroke()V
    .locals 0

    .line 317
    return-void
.end method

.method public animateToAccept(Lcom/android/launcher3/CellLayout;II)V
    .locals 3
    .param p1, "cl"    # Lcom/android/launcher3/CellLayout;
    .param p2, "cellX"    # I
    .param p3, "cellY"    # I

    .line 460
    new-instance v0, Lcom/android/launcher3/folder/PreviewBackground$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher3/folder/PreviewBackground$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/folder/PreviewBackground;Lcom/android/launcher3/CellLayout;II)V

    const v1, 0x3f99999a    # 1.2f

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/launcher3/folder/PreviewBackground;->animateScale(FLjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 461
    return-void
.end method

.method public animateToAccept(Lcom/android/launcher3/allapps/AllAppsRecyclerView;II)V
    .locals 3
    .param p1, "allAppsRecyclerView"    # Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 456
    new-instance v0, Lcom/android/launcher3/folder/PreviewBackground$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher3/folder/PreviewBackground$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/folder/PreviewBackground;Lcom/android/launcher3/allapps/AllAppsRecyclerView;II)V

    const v1, 0x3f99999a    # 1.2f

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/launcher3/folder/PreviewBackground;->animateScale(FLjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 457
    return-void
.end method

.method public animateToRest()V
    .locals 11

    .line 467
    iget-object v6, p0, Lcom/android/launcher3/folder/PreviewBackground;->mWorkspaceDrawingDelegate:Lcom/android/launcher3/CellLayout;

    .line 468
    .local v6, "cl":Lcom/android/launcher3/CellLayout;
    iget-object v7, p0, Lcom/android/launcher3/folder/PreviewBackground;->mAllAppsDrawingDelegate:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 469
    .local v7, "recyclerView":Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    iget v8, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDelegateCellX:I

    .line 470
    .local v8, "cellX":I
    iget v9, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDelegateCellY:I

    .line 471
    .local v9, "cellY":I
    new-instance v10, Lcom/android/launcher3/folder/PreviewBackground$$ExternalSyntheticLambda1;

    move-object v0, v10

    move-object v1, p0

    move-object v2, v6

    move v3, v8

    move v4, v9

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/PreviewBackground$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/folder/PreviewBackground;Lcom/android/launcher3/CellLayout;IILcom/android/launcher3/allapps/AllAppsRecyclerView;)V

    new-instance v0, Lcom/android/launcher3/folder/PreviewBackground$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/PreviewBackground$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/folder/PreviewBackground;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v10, v0}, Lcom/android/launcher3/folder/PreviewBackground;->animateScale(FLjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 473
    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 248
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 249
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getBgColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getShape()Lcom/android/launcher3/graphics/IconShape;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetX()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetY()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/graphics/IconShape;->drawShape(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawShadow(Landroid/graphics/Canvas;)V

    .line 253
    return-void
.end method

.method public drawBackgroundStroke(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 337
    return-void
.end method

.method public drawLeaveBehind(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 349
    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    .line 350
    .local v0, "originalScale":F
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    .line 352
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 353
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xa0

    const/16 v3, 0xf5

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 354
    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getShape()Lcom/android/launcher3/graphics/IconShape;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetX()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetY()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result v1

    int-to-float v7, v1

    iget-object v8, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/graphics/IconShape;->drawShape(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    .line 356
    iput v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    .line 357
    return-void
.end method

.method public drawOverItem(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 151
    iget-boolean v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->isClipping:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawBackgroundStroke(Landroid/graphics/Canvas;)V

    .line 154
    :cond_0
    return-void
.end method

.method public drawShadow(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 257
    return-void
.end method

.method public drawUnderItem(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawBackground(Landroid/graphics/Canvas;)V

    .line 141
    iget-boolean v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->isClipping:Z

    if-nez v0, :cond_0

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawBackgroundStroke(Landroid/graphics/Canvas;)V

    .line 144
    :cond_0
    return-void
.end method

.method drawingDelegatedToAllApps()Z
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mAllAppsDrawingDelegate:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method drawingDelegatedToWorkspace()Z
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mWorkspaceDrawingDelegate:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public fadeInBackgroundShadow()V
    .locals 0

    .line 298
    return-void
.end method

.method public getBgColor()I
    .locals 1

    .line 240
    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mBgColor:I

    return v0
.end method

.method getBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 189
    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    .line 190
    .local v0, "top":I
    iget v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    .line 191
    .local v1, "left":I
    iget v2, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    add-int v3, v1, v2

    .line 192
    .local v3, "right":I
    add-int/2addr v2, v0

    .line 193
    .local v2, "bottom":I
    invoke-virtual {p1, v1, v0, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 194
    return-void
.end method

.method public getClipPath()Landroid/graphics/Path;
    .locals 6

    .line 360
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 361
    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f900000    # 1.125f

    mul-float/2addr v0, v1

    .line 363
    .local v0, "radius":F
    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getRadius()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    .line 364
    .local v1, "radiusDifference":F
    iget v2, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    .line 365
    .local v2, "offsetX":F
    iget v3, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    .line 366
    .local v3, "offsetY":F
    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getShape()Lcom/android/launcher3/graphics/IconShape;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4, v5, v2, v3, v0}, Lcom/android/launcher3/graphics/IconShape;->addToPath(Landroid/graphics/Path;FFF)V

    .line 367
    iget-object v4, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPath:Landroid/graphics/Path;

    return-object v4
.end method

.method public getDotColor()I
    .locals 1

    .line 244
    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDotColor:I

    return v0
.end method

.method getOffsetX()I
    .locals 3

    .line 205
    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getRadius()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method getOffsetY()I
    .locals 3

    .line 209
    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getRadius()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getRadius()I
    .locals 1

    .line 197
    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getScaleProgress()F
    .locals 2

    .line 217
    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    const v1, 0x3e4cccd0    # 0.20000005f

    div-float/2addr v0, v1

    return v0
.end method

.method getScaledRadius()I
    .locals 2

    .line 201
    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getRadius()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 476
    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mStrokeWidth:F

    return v0
.end method

.method invalidate()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mInvalidateDelegate:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mWorkspaceDrawingDelegate:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mAllAppsDrawingDelegate:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v0, :cond_2

    .line 230
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->invalidate()V

    .line 232
    :cond_2
    return-void
.end method

.method synthetic lambda$animateToAccept$0$com-android-launcher3-folder-PreviewBackground(Lcom/android/launcher3/allapps/AllAppsRecyclerView;II)V
    .locals 0
    .param p1, "allAppsRecyclerView"    # Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 456
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/folder/PreviewBackground;->delegateDrawing(Lcom/android/launcher3/allapps/AllAppsRecyclerView;II)V

    return-void
.end method

.method synthetic lambda$animateToAccept$1$com-android-launcher3-folder-PreviewBackground(Lcom/android/launcher3/CellLayout;II)V
    .locals 0
    .param p1, "cl"    # Lcom/android/launcher3/CellLayout;
    .param p2, "cellX"    # I
    .param p3, "cellY"    # I

    .line 460
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/folder/PreviewBackground;->delegateDrawing(Lcom/android/launcher3/CellLayout;II)V

    return-void
.end method

.method synthetic lambda$animateToRest$2$com-android-launcher3-folder-PreviewBackground(Lcom/android/launcher3/CellLayout;IILcom/android/launcher3/allapps/AllAppsRecyclerView;)V
    .locals 0
    .param p1, "cl"    # Lcom/android/launcher3/CellLayout;
    .param p2, "cellX"    # I
    .param p3, "cellY"    # I
    .param p4, "recyclerView"    # Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 471
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/folder/PreviewBackground;->delegateDrawing(Lcom/android/launcher3/CellLayout;II)V

    .line 472
    invoke-direct {p0, p4, p2, p3}, Lcom/android/launcher3/folder/PreviewBackground;->delegateDrawing(Lcom/android/launcher3/allapps/AllAppsRecyclerView;II)V

    return-void
.end method

.method setInvalidateDelegate(Landroid/view/View;)V
    .locals 0
    .param p1, "invalidateDelegate"    # Landroid/view/View;

    .line 235
    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mInvalidateDelegate:Landroid/view/View;

    .line 236
    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    .line 237
    return-void
.end method

.method public setup(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;Landroid/view/View;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Lcom/android/launcher3/views/ActivityContext;
    .param p3, "invalidateDelegate"    # Landroid/view/View;
    .param p4, "availableSpaceX"    # I
    .param p5, "topPadding"    # I

    .line 158
    iput-object p3, p0, Lcom/android/launcher3/folder/PreviewBackground;->mInvalidateDelegate:Landroid/view/View;

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/R$styleable;->FolderIconPreview:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 161
    .local v0, "ta":Landroid/content/res/TypedArray;
    sget v1, Lcom/android/launcher3/R$styleable;->FolderIconPreview_folderDotColor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDotColor:I

    .line 162
    sget v1, Lcom/android/launcher3/R$styleable;->FolderIconPreview_folderIconBorderColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mStrokeColor:I

    .line 163
    sget v1, Lcom/android/launcher3/R$styleable;->FolderIconPreview_folderPreviewColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mBgColor:I

    .line 164
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 166
    invoke-interface {p2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 167
    .local v1, "grid":Lcom/android/launcher3/DeviceProfile;
    iget v2, v1, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    iput v2, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    .line 169
    sub-int v2, p4, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    .line 170
    iget v2, v1, Lcom/android/launcher3/DeviceProfile;->folderIconOffsetYPx:I

    add-int/2addr v2, p5

    iput v2, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/android/launcher3/folder/PreviewBackground;->mStrokeWidth:F

    .line 185
    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    .line 186
    return-void
.end method
