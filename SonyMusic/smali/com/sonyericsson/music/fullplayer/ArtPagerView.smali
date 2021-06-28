.class public Lcom/sonyericsson/music/fullplayer/ArtPagerView;
.super Landroid/view/ViewGroup;
.source "ArtPagerView.java"

# interfaces
.implements Lcom/sonyericsson/music/fullplayer/ArtPagerObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/fullplayer/ArtPagerView$LayoutParams;
    }
.end annotation


# static fields
.field static final CHILD_COUNT:I = 0x3

.field private static final VIGNETTE_GRADIENT_HEIGHT:F = 1.0f

.field private static final VIGNETTE_SOLID_HEIGHT:F = 0.2f


# instance fields
.field private mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

.field private mDataChanged:Z

.field private mLayoutPosition:I

.field private final mStateDrawable:Landroid/graphics/drawable/Drawable;

.field private mUserPosition:F

.field private final mVignette:Landroid/graphics/drawable/Drawable;

.field private mVignetteHeight:I

.field private final mVignettePaint:Landroid/graphics/Paint;

.field private final mVignetteSolidRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/fullplayer/ArtPagerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/music/fullplayer/ArtPagerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 52
    iput p2, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mUserPosition:F

    .line 59
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mVignettePaint:Landroid/graphics/Paint;

    .line 60
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mVignetteSolidRect:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 75
    iput-object p2, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    .line 76
    new-instance p2, Lcom/sonyericsson/music/ui/ExpLinearShadow;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Lcom/sonyericsson/music/ui/ExpLinearShadow;-><init>(I)V

    iput-object p2, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mVignette:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f0401a9

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->resolveAttrResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mStateDrawable:Landroid/graphics/drawable/Drawable;

    .line 79
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mStateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 p1, 0x1

    .line 80
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    return-void
.end method

.method private childById(Ljava/util/List;Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 354
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 355
    invoke-static {v0}, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->lp(Landroid/view/View;)Lcom/sonyericsson/music/fullplayer/ArtPagerView$LayoutParams;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/music/fullplayer/ArtPagerView$LayoutParams;->id:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private createOrReuse(Ljava/util/List;Ljava/lang/String;IZ)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 336
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->childById(Ljava/util/List;Ljava/lang/String;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 338
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    if-nez p4, :cond_1

    if-eqz p2, :cond_1

    return-object p2

    .line 343
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->decodeWidth()I

    move-result v0

    invoke-interface {p1, p4, v0, p3, p2}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->createView(Landroid/content/Context;IILandroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private decodeWidth()I
    .locals 3

    .line 348
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 349
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    .line 350
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float v1, v1, v0

    float-to-int v0, v1

    return v0
.end method

.method private doLayout()V
    .locals 13

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    if-eqz v0, :cond_6

    .line 275
    invoke-interface {v0}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->getUserPosition()F

    move-result v0

    .line 276
    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    invoke-interface {v1}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->getCount()I

    move-result v1

    .line 277
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->floor(F)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mLayoutPosition:I

    if-eqz v1, :cond_5

    const/4 v0, 0x3

    if-ge v1, v0, :cond_0

    .line 283
    iget v0, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mLayoutPosition:I

    move v2, v1

    goto :goto_0

    .line 286
    :cond_0
    iget v2, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mLayoutPosition:I

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    const/4 v2, 0x3

    .line 294
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->removeViewsForLayout()Ljava/util/List;

    move-result-object v3

    .line 295
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v0

    :goto_1
    add-int v6, v0, v2

    if-ge v5, v6, :cond_1

    .line 297
    rem-int v6, v5, v1

    add-int/2addr v6, v1

    rem-int/2addr v6, v1

    .line 298
    invoke-direct {p0, v6, v3, v4}, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->storeForReuse(ILjava/util/List;Ljava/util/List;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 300
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 301
    iget-object v5, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v3}, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->lp(Landroid/view/View;)Lcom/sonyericsson/music/fullplayer/ArtPagerView$LayoutParams;

    move-result-object v8

    iget v8, v8, Lcom/sonyericsson/music/fullplayer/ArtPagerView$LayoutParams;->adapterPos:I

    invoke-interface {v5, v7, v8, v3}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->destroyView(Landroid/content/Context;ILandroid/view/View;)V

    goto :goto_2

    :cond_2
    :goto_3
    const/4 v2, 0x0

    if-ge v0, v6, :cond_3

    .line 304
    rem-int v3, v0, v1

    add-int/2addr v3, v1

    rem-int v11, v3, v1

    .line 305
    iget-object v3, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    invoke-interface {v3, v11}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->getId(I)Ljava/lang/String;

    move-result-object v10

    .line 306
    iget-boolean v3, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mDataChanged:Z

    invoke-direct {p0, v4, v10, v11, v3}, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->createOrReuse(Ljava/util/List;Ljava/lang/String;IZ)Landroid/view/View;

    move-result-object v3

    .line 308
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    .line 309
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    const/high16 v5, 0x40000000    # 2.0f

    .line 310
    invoke-static {v8, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 311
    invoke-static {v9, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 312
    invoke-virtual {v3, v7, v5}, Landroid/view/View;->measure(II)V

    .line 313
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v3, v2, v2, v5, v7}, Landroid/view/View;->layout(IIII)V

    .line 315
    iget v2, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mLayoutPosition:I

    sub-int v12, v0, v2

    const/4 v2, -0x1

    .line 316
    new-instance v5, Lcom/sonyericsson/music/fullplayer/ArtPagerView$LayoutParams;

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/music/fullplayer/ArtPagerView$LayoutParams;-><init>(IILjava/lang/String;II)V

    invoke-virtual {p0, v3, v2, v5}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 318
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 321
    iput-boolean v2, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mDataChanged:Z

    .line 322
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->setTranslationTransform()V

    .line 323
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    .line 319
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "all reuse candidates were not actually used"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot handle 0 views"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot participate in layout without an adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method private floor(F)I
    .locals 2

    float-to-double v0, p1

    .line 120
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method private hasLayout()Z
    .locals 1

    .line 236
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static lp(Landroid/view/View;)Lcom/sonyericsson/music/fullplayer/ArtPagerView$LayoutParams;
    .locals 0

    .line 363
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView$LayoutParams;

    return-object p0
.end method

.method private removeViewsForLayout()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 245
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 246
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    return-object v0
.end method

.method private resolveAttrResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 85
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 87
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p2, v1, :cond_0

    .line 88
    iget p2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 90
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private setTranslationTransform()V
    .locals 5

    .line 132
    iget v0, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mUserPosition:F

    iget v1, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mLayoutPosition:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    .line 133
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 134
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 136
    invoke-static {v2}, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->lp(Landroid/view/View;)Lcom/sonyericsson/music/fullplayer/ArtPagerView$LayoutParams;

    move-result-object v3

    iget v3, v3, Lcom/sonyericsson/music/fullplayer/ArtPagerView$LayoutParams;->posOffset:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    const v4, 0x3e4ccccd    # 0.2f

    mul-float v3, v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    .line 137
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private setupVignette()V
    .locals 5

    .line 264
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mVignettePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 265
    iget v0, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mVignetteHeight:I

    int-to-float v1, v0

    const v2, 0x3e4ccccd    # 0.2f

    mul-float v1, v1, v2

    float-to-int v1, v1

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 267
    iget-object v2, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mVignetteSolidRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 268
    iget-object v2, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mVignette:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    add-int/2addr v0, v1

    invoke-virtual {v2, v4, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private storeForReuse(ILjava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    invoke-interface {v0, p1}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->getId(I)Ljava/lang/String;

    move-result-object p1

    .line 328
    invoke-direct {p0, p2, p1}, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->childById(Ljava/util/List;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 330
    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 331
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 162
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 163
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mStateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 164
    iget v0, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mVignetteHeight:I

    if-lez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mVignetteSolidRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mVignettePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 166
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mVignette:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    .line 199
    iget v0, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mUserPosition:F

    iget v1, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mLayoutPosition:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 200
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 201
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 202
    invoke-static {p2}, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->lp(Landroid/view/View;)Lcom/sonyericsson/music/fullplayer/ArtPagerView$LayoutParams;

    move-result-object v3

    iget v3, v3, Lcom/sonyericsson/music/fullplayer/ArtPagerView$LayoutParams;->posOffset:I

    int-to-float v4, v3

    sub-float/2addr v4, v0

    int-to-float v1, v1

    mul-float v4, v4, v1

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    sub-float/2addr v3, v0

    mul-float v3, v3, v1

    .line 205
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    float-to-int v1, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    .line 206
    invoke-virtual {p1, v1, v4, v3, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 207
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 208
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p2
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 151
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->drawableHotspotChanged(FF)V

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mStateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 144
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mStateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 176
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 177
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mVignetteHeight:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method

.method public onBitmapChanged(Landroid/graphics/Bitmap;I)V
    .locals 0

    return-void
.end method

.method public onDataChanged()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    invoke-interface {v0}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->getUserPosition()F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mUserPosition:F

    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mDataChanged:Z

    .line 216
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 254
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->doLayout()V

    return-void
.end method

.method public onPositionChanged()V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 259
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->setupVignette()V

    .line 260
    iget-object p3, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mStateDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public onUserPositionChanged()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    invoke-interface {v0}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->getUserPosition()F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mUserPosition:F

    .line 226
    iget v0, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mLayoutPosition:I

    iget v1, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mUserPosition:F

    invoke-direct {p0, v1}, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->floor(F)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->hasLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->doLayout()V

    goto :goto_0

    .line 231
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->setTranslationTransform()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAdapter(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0, p0}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->unregisterObserver(Lcom/sonyericsson/music/fullplayer/ArtPagerObserver;)V

    .line 105
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    .line 106
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    if-eqz p1, :cond_1

    .line 107
    invoke-interface {p1, p0}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->registerObserver(Lcom/sonyericsson/music/fullplayer/ArtPagerObserver;)V

    .line 108
    invoke-virtual {p0}, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->onDataChanged()V

    :cond_1
    return-void
.end method

.method public setVignetteHeight(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mVignetteHeight:I

    .line 114
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 157
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->mStateDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
