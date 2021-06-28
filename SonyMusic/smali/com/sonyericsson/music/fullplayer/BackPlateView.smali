.class public Lcom/sonyericsson/music/fullplayer/BackPlateView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "BackPlateView.java"

# interfaces
.implements Lcom/sonyericsson/music/fullplayer/ArtPagerObserver;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

.field private final mBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mBackgroundColorDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mBlurs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;",
            ">;"
        }
    .end annotation
.end field

.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mColorBlur:Landroid/graphics/Bitmap;

.field private mDefaultBlur:Landroid/graphics/Bitmap;

.field private mLayoutPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/fullplayer/BackPlateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/music/fullplayer/BackPlateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mBlurs:Ljava/util/HashMap;

    .line 37
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 p3, 0x10

    invoke-static {p3, p3, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 46
    new-instance p2, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mCanvas:Landroid/graphics/Canvas;

    const/high16 p2, -0x80000000

    .line 48
    iput p2, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mLayoutPosition:I

    .line 62
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p2, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mBackgroundColorDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 63
    iget-object p2, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mBackgroundColorDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x7f060024

    .line 68
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 65
    invoke-static {p3, p3, p1}, Lcom/sonyericsson/music/common/BitmapUtils;->createColoredBitmap(III)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mColorBlur:Landroid/graphics/Bitmap;

    .line 70
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mColorBlur:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mDefaultBlur:Landroid/graphics/Bitmap;

    return-void
.end method

.method private doLayout()V
    .locals 6

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-interface {v0}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->getUserPosition()F

    move-result v0

    .line 101
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/BackPlateView;->floor(F)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mLayoutPosition:I

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mBlurs:Ljava/util/HashMap;

    iget v1, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mLayoutPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;

    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {v0}, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->getTarget()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 106
    invoke-virtual {v0}, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->getTarget()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->getDefaultBlur()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mDefaultBlur:Landroid/graphics/Bitmap;

    .line 109
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mBlurs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 110
    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mBlurs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 112
    iget v1, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mLayoutPosition:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_3

    add-int v3, v2, v1

    .line 114
    iget-object v4, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    invoke-interface {v4}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->getCount()I

    move-result v4

    invoke-static {v3, v4}, Lcom/sonymobile/music/common/MathUtil;->modulo(II)I

    move-result v3

    .line 115
    iget-object v4, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    invoke-interface {v4, v3}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->getId(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/sonyericsson/music/fullplayer/BackPlateView;->findOrCreate(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;

    move-result-object v4

    .line 116
    iget-object v5, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mDefaultBlur:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->setDefaultBlur(Landroid/graphics/Bitmap;)V

    .line 117
    iget-object v5, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mBlurs:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 120
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/BackPlateView;->updateBlur()V

    return-void
.end method

.method private doLayoutAsNeeded()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mLayoutPosition:I

    .line 90
    invoke-interface {v0}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->getUserPosition()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/BackPlateView;->floor(F)I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/BackPlateView;->doLayout()V

    :cond_0
    return-void
.end method

.method private findOrCreate(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;",
            ">;)",
            "Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;"
        }
    .end annotation

    .line 124
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 126
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;

    .line 129
    invoke-virtual {v0}, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    return-object v0

    .line 135
    :cond_1
    new-instance p2, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;

    invoke-direct {p2, p1}, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method private floor(F)I
    .locals 2

    float-to-double v0, p1

    .line 228
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method private updateBlur()V
    .locals 6

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    invoke-interface {v0}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->getUserPosition()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/BackPlateView;->floor(F)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 145
    iget-object v2, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    invoke-interface {v2}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->getCount()I

    move-result v2

    rem-int/2addr v1, v2

    .line 146
    iget-object v2, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    invoke-interface {v2}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->getUserPosition()F

    move-result v2

    int-to-float v3, v0

    sub-float/2addr v2, v3

    .line 148
    iget-object v3, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mBlurs:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;

    .line 149
    iget-object v3, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mBlurs:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 153
    invoke-virtual {v0}, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->animate()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->animate()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 154
    :cond_1
    invoke-virtual {p0, p0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 159
    :cond_2
    invoke-virtual {v0}, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->isFinal()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->isFinal()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v3, 0x1

    .line 161
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mCanvas:Landroid/graphics/Canvas;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4, v5}, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->drawInto(Landroid/graphics/Canvas;F)V

    if-eqz v3, :cond_5

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->drawInto(Landroid/graphics/Canvas;F)V

    .line 167
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_6
    return-void
.end method


# virtual methods
.method public getBlur()Landroid/graphics/Bitmap;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public onBitmapChanged(Landroid/graphics/Bitmap;I)V
    .locals 9

    .line 206
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/BackPlateView;->doLayoutAsNeeded()V

    .line 208
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mBlurs:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;

    if-nez v0, :cond_0

    .line 210
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/BackPlateView;->doLayout()V

    .line 211
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mBlurs:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;

    :cond_0
    if-eqz v0, :cond_4

    .line 214
    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    invoke-interface {v1}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->getUserPosition()F

    move-result v1

    int-to-double v2, p2

    float-to-double v4, v1

    .line 215
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    const/4 v1, 0x0

    cmpl-double v8, v2, v6

    if-eqz v8, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    cmpl-double v6, v2, v4

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 217
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    invoke-interface {v3, p2}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->isDefaultBlur(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 218
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mColorBlur:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->setDefaultBlur(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 219
    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->setTarget(Landroid/graphics/Bitmap;Z)V

    goto :goto_2

    .line 221
    :cond_3
    invoke-static {p1}, Lcom/sonyericsson/music/common/BlurUtils;->getBlur(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->setTarget(Landroid/graphics/Bitmap;Z)V

    .line 223
    :goto_2
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/BackPlateView;->updateBlur()V

    :cond_4
    return-void
.end method

.method public onDataChanged()V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 182
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/BackPlateView;->doLayout()V

    return-void
.end method

.method public onPositionChanged()V
    .locals 0

    return-void
.end method

.method public onUserPositionChanged()V
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/BackPlateView;->doLayoutAsNeeded()V

    .line 201
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/BackPlateView;->updateBlur()V

    return-void
.end method

.method public run()V
    .locals 0

    .line 187
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/BackPlateView;->updateBlur()V

    return-void
.end method

.method public setAdapter(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0, p0}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->unregisterObserver(Lcom/sonyericsson/music/fullplayer/ArtPagerObserver;)V

    .line 79
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    .line 80
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mAdapter:Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;

    if-eqz p1, :cond_1

    .line 81
    invoke-interface {p1, p0}, Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;->registerObserver(Lcom/sonyericsson/music/fullplayer/ArtPagerObserver;)V

    :cond_1
    if-eqz p2, :cond_2

    goto :goto_0

    .line 84
    :cond_2
    iget-object p2, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mColorBlur:Landroid/graphics/Bitmap;

    :goto_0
    iput-object p2, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView;->mDefaultBlur:Landroid/graphics/Bitmap;

    .line 85
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/BackPlateView;->updateBlur()V

    return-void
.end method
