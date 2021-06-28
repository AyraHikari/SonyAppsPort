.class public Lcom/sonyericsson/music/ui/BlurredDrawerContainer;
.super Landroid/widget/FrameLayout;
.source "BlurredDrawerContainer.java"

# interfaces
.implements Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/ui/BlurredDrawerContainer$SourceChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_BLUR_RADIUS:F = 10.0f

.field private static final DEFAULT_DOWN_SAMPLE_FACTOR:F = 8.0f

.field private static final DEFAULT_OVERLAY_COLOR:I = 0x0

.field private static final INVALIDATE_BLOCK_DURATION_DURING_DRAG:J = 0xc8L


# instance fields
.field private final mAttachSourceListener:Ljava/lang/Runnable;

.field private mBlurCache:Landroid/graphics/Bitmap;

.field private mBlurRadius:F

.field private mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

.field private mCacheDirty:Z

.field private mConfigurationChanged:Z

.field private mDownSampleFactor:F

.field private mInput:Landroid/renderscript/Allocation;

.field private mInvalidatedByChild:Z

.field private mIsAutoUpdateEnabled:Z

.field private mLastUpdateDuringDrag:J

.field private mOutput:Landroid/renderscript/Allocation;

.field private mOverlayColor:I

.field private mRenderScript:Landroid/renderscript/RenderScript;

.field private mSlideOffset:F

.field private mSlideRtlModifier:F

.field private mSourceBitmap:Landroid/graphics/Bitmap;

.field private mSourceCanvas:Landroid/graphics/Canvas;

.field private final mSourceChangedListener:Lcom/sonyericsson/music/ui/BlurredDrawerContainer$SourceChangedListener;

.field private mSourceHeight:I

.field private mSourceView:Landroid/view/View;

.field private mSourceWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 87
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer$SourceChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer$SourceChangedListener;-><init>(Lcom/sonyericsson/music/ui/BlurredDrawerContainer;Lcom/sonyericsson/music/ui/BlurredDrawerContainer$1;)V

    iput-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceChangedListener:Lcom/sonyericsson/music/ui/BlurredDrawerContainer$SourceChangedListener;

    .line 50
    new-instance v0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer$1;-><init>(Lcom/sonyericsson/music/ui/BlurredDrawerContainer;)V

    iput-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mAttachSourceListener:Ljava/lang/Runnable;

    .line 88
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer$SourceChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer$SourceChangedListener;-><init>(Lcom/sonyericsson/music/ui/BlurredDrawerContainer;Lcom/sonyericsson/music/ui/BlurredDrawerContainer$1;)V

    iput-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceChangedListener:Lcom/sonyericsson/music/ui/BlurredDrawerContainer$SourceChangedListener;

    .line 50
    new-instance v0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer$1;-><init>(Lcom/sonyericsson/music/ui/BlurredDrawerContainer;)V

    iput-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mAttachSourceListener:Ljava/lang/Runnable;

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance p3, Lcom/sonyericsson/music/ui/BlurredDrawerContainer$SourceChangedListener;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer$SourceChangedListener;-><init>(Lcom/sonyericsson/music/ui/BlurredDrawerContainer;Lcom/sonyericsson/music/ui/BlurredDrawerContainer$1;)V

    iput-object p3, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceChangedListener:Lcom/sonyericsson/music/ui/BlurredDrawerContainer$SourceChangedListener;

    .line 50
    new-instance p3, Lcom/sonyericsson/music/ui/BlurredDrawerContainer$1;

    invoke-direct {p3, p0}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer$1;-><init>(Lcom/sonyericsson/music/ui/BlurredDrawerContainer;)V

    iput-object p3, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mAttachSourceListener:Ljava/lang/Runnable;

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/ui/BlurredDrawerContainer;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->attachSourceListener()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/ui/BlurredDrawerContainer;)Landroid/view/View;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/music/ui/BlurredDrawerContainer;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mIsAutoUpdateEnabled:Z

    return p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/music/ui/BlurredDrawerContainer;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mInvalidatedByChild:Z

    return p0
.end method

.method static synthetic access$402(Lcom/sonyericsson/music/ui/BlurredDrawerContainer;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mInvalidatedByChild:Z

    return p1
.end method

.method static synthetic access$502(Lcom/sonyericsson/music/ui/BlurredDrawerContainer;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mCacheDirty:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sonyericsson/music/ui/BlurredDrawerContainer;)Z
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->isSliding()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/music/ui/BlurredDrawerContainer;)J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mLastUpdateDuringDrag:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/sonyericsson/music/ui/BlurredDrawerContainer;J)J
    .locals 0

    .line 39
    iput-wide p1, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mLastUpdateDuringDrag:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/sonyericsson/music/ui/BlurredDrawerContainer;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->detachSourceListener()V

    return-void
.end method

.method private attachSourceListener()V
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 415
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceChangedListener:Lcom/sonyericsson/music/ui/BlurredDrawerContainer$SourceChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 418
    iget-object v1, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceChangedListener:Lcom/sonyericsson/music/ui/BlurredDrawerContainer$SourceChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method private detachSourceListener()V
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    iget-object v1, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceChangedListener:Lcom/sonyericsson/music/ui/BlurredDrawerContainer$SourceChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 111
    sget-object v0, Lcom/sonyericsson/music/R$styleable;->BlurredDrawerContainer:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x2

    .line 114
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->setOverlayColorArgb(I)V

    const/high16 v0, 0x41200000    # 10.0f

    .line 116
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->setBlurRadius(F)V

    const/4 v0, 0x1

    const/high16 v2, 0x41000000    # 8.0f

    .line 118
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->setDownSampleFactor(F)V

    .line 120
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 122
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 123
    invoke-static {p1}, Lcom/sonyericsson/music/common/UIUtils;->isRTL(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iput p1, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSlideRtlModifier:F

    return-void
.end method

.method private initResources()V
    .locals 2

    .line 369
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->releaseResources()V

    .line 371
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 372
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    return-void
.end method

.method private isSliding()Z
    .locals 2

    .line 454
    iget v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSlideOffset:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private prepareBlurCache()Z
    .locals 8

    .line 308
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 312
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 313
    iget-object v2, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 315
    iget v3, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceWidth:I

    const/4 v4, 0x1

    if-ne v3, v0, :cond_2

    iget v3, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceHeight:I

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    .line 316
    :goto_1
    iget-object v5, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceCanvas:Landroid/graphics/Canvas;

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mConfigurationChanged:Z

    if-nez v5, :cond_3

    if-eqz v3, :cond_6

    :cond_3
    int-to-float v3, v0

    .line 318
    iget v5, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mDownSampleFactor:F

    invoke-static {v3, v5}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->scaleDown(FF)I

    move-result v3

    int-to-float v5, v2

    .line 319
    iget v6, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mDownSampleFactor:F

    invoke-static {v5, v6}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->scaleDown(FF)I

    move-result v5

    .line 321
    iget-object v6, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v6, v3, :cond_4

    iget-object v6, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceBitmap:Landroid/graphics/Bitmap;

    .line 322
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-eq v6, v5, :cond_5

    .line 324
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->recycleCache()V

    .line 326
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceBitmap:Landroid/graphics/Bitmap;

    .line 327
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mBlurCache:Landroid/graphics/Bitmap;

    .line 329
    iget-object v3, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mBlurCache:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_9

    .line 334
    :cond_5
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceCanvas:Landroid/graphics/Canvas;

    .line 335
    iget-object v3, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceCanvas:Landroid/graphics/Canvas;

    iget v5, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mDownSampleFactor:F

    const/high16 v6, 0x3f800000    # 1.0f

    div-float v7, v6, v5

    div-float/2addr v6, v5

    invoke-virtual {v3, v7, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 336
    iget-object v3, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mRenderScript:Landroid/renderscript/RenderScript;

    iget-object v5, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceBitmap:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {v3, v5, v6, v4}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mInput:Landroid/renderscript/Allocation;

    .line 338
    iget-object v3, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mRenderScript:Landroid/renderscript/RenderScript;

    iget-object v5, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mInput:Landroid/renderscript/Allocation;

    invoke-virtual {v5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mOutput:Landroid/renderscript/Allocation;

    .line 340
    iput v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceWidth:I

    .line 341
    iput v2, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceHeight:I

    .line 342
    iput-boolean v4, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mCacheDirty:Z

    .line 343
    iput-boolean v1, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mConfigurationChanged:Z

    .line 346
    :cond_6
    iget-boolean v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mCacheDirty:Z

    if-eqz v0, :cond_8

    .line 347
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 348
    instance-of v2, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_7

    .line 349
    iget-object v2, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceBitmap:Landroid/graphics/Bitmap;

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_2

    .line 351
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 354
    :goto_2
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceView:Landroid/view/View;

    iget-object v2, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 355
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mInput:Landroid/renderscript/Allocation;

    iget-object v2, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 356
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    iget v2, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mBlurRadius:F

    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 357
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v2, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mInput:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 358
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v2, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mOutput:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 359
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mOutput:Landroid/renderscript/Allocation;

    iget-object v2, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mBlurCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 361
    iput-boolean v1, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mCacheDirty:Z

    :cond_8
    return v4

    .line 330
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Source or Blur bitmap was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private recycleCache()V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 392
    iput-object v1, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceCanvas:Landroid/graphics/Canvas;

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 396
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 397
    iput-object v1, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceBitmap:Landroid/graphics/Bitmap;

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mBlurCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 401
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 402
    iput-object v1, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mBlurCache:Landroid/graphics/Bitmap;

    :cond_2
    return-void
.end method

.method private releaseResources()V
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 378
    iput-object v1, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mRenderScript:Landroid/renderscript/RenderScript;

    if-eqz v0, :cond_1

    .line 382
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 383
    iput-object v1, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 386
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->recycleCache()V

    return-void
.end method

.method private static scaleDown(FF)I
    .locals 0

    div-float/2addr p0, p1

    .line 407
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 409
    rem-int/lit8 p1, p0, 0x4

    sub-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method private setAutoUpdateEnabled(Z)V
    .locals 1

    .line 433
    iget-boolean v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mIsAutoUpdateEnabled:Z

    if-eq v0, p1, :cond_0

    .line 434
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mIsAutoUpdateEnabled:Z

    .line 435
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method private setInvalidatedByChild()V
    .locals 1

    const/4 v0, 0x1

    .line 443
    iput-boolean v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mInvalidatedByChild:Z

    return-void
.end method

.method private setSlideOffset(F)V
    .locals 1

    .line 447
    iget v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSlideOffset:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 448
    iput p1, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSlideOffset:F

    .line 449
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public attachToDrawerLayout(Landroidx/drawerlayout/widget/DrawerLayout;)V
    .locals 0

    .line 222
    invoke-virtual {p1, p0}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    return-void
.end method

.method public detachFromDrawerLayout(Landroidx/drawerlayout/widget/DrawerLayout;)V
    .locals 0

    .line 230
    invoke-virtual {p1, p0}, Landroidx/drawerlayout/widget/DrawerLayout;->removeDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 185
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->prepareBlurCache()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mDownSampleFactor:F

    div-float/2addr v0, v1

    .line 187
    iget v1, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSlideOffset:F

    mul-float v1, v1, v0

    sub-float/2addr v0, v1

    .line 188
    iget v1, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSlideRtlModifier:F

    mul-float v0, v0, v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 195
    iget v1, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceWidth:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mDownSampleFactor:F

    div-float/2addr v1, v3

    iget v3, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSlideRtlModifier:F

    mul-float v1, v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 198
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 199
    iget v4, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mDownSampleFactor:F

    invoke-virtual {p1, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 200
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 201
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mBlurCache:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 202
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 205
    iget-boolean v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mIsAutoUpdateEnabled:Z

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mAttachSourceListener:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 211
    :cond_1
    iget v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mOverlayColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 214
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 0

    .line 178
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->setInvalidatedByChild()V

    .line 179
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object p1

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 128
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 129
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->initResources()V

    return-void
.end method

.method public onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->setInvalidatedByChild()V

    .line 172
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 134
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 135
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->releaseResources()V

    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 146
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->setAutoUpdateEnabled(Z)V

    const/4 p1, 0x0

    .line 147
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->setSlideOffset(F)V

    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 140
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->setAutoUpdateEnabled(Z)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 141
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->setSlideOffset(F)V

    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 1

    .line 152
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->setSlideOffset(F)V

    const/4 p1, 0x0

    cmpl-float v0, p2, p1

    if-lez v0, :cond_0

    .line 153
    iget-boolean v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mIsAutoUpdateEnabled:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    .line 155
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->setAutoUpdateEnabled(Z)V

    goto :goto_0

    :cond_0
    cmpl-float p1, p2, p1

    if-nez p1, :cond_1

    .line 156
    iget-boolean p1, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mIsAutoUpdateEnabled:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 161
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->setAutoUpdateEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 0

    return-void
.end method

.method public setBlurRadius(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x41c80000    # 25.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 279
    iget v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mBlurRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 280
    iput p1, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mBlurRadius:F

    const/4 p1, 0x1

    .line 281
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mConfigurationChanged:Z

    .line 282
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void

    .line 276
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Radius must be in range 0 < r <= 25"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBlurSource(Landroid/view/View;)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    return-void

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->detachSourceListener()V

    .line 245
    iput-object p1, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mSourceView:Landroid/view/View;

    const/4 p1, 0x1

    .line 246
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mCacheDirty:Z

    .line 247
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setDownSampleFactor(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 261
    iget v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mDownSampleFactor:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 262
    iput p1, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mDownSampleFactor:F

    const/4 p1, 0x1

    .line 263
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mConfigurationChanged:Z

    .line 264
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void

    .line 258
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Factor must be >= 1f"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOverlayColorArgb(I)V
    .locals 0

    .line 293
    iput p1, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->mOverlayColor:I

    .line 294
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setOverlayColorResource(I)V
    .locals 1

    .line 304
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->setOverlayColorArgb(I)V

    return-void
.end method
