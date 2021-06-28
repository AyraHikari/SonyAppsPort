.class Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;
.super Ljava/lang/Object;
.source "BackPlateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/fullplayer/BackPlateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Blur"
.end annotation


# instance fields
.field private mCrossFade:F

.field private mCrossFadePaint:Landroid/graphics/Paint;

.field private mDefault:Landroid/graphics/Bitmap;

.field private final mId:Ljava/lang/String;

.field private mTarget:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->mCrossFadePaint:Landroid/graphics/Paint;

    .line 239
    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->mId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public animate()Z
    .locals 3

    .line 272
    invoke-virtual {p0}, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 273
    iget v1, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->mCrossFade:F

    const v2, 0x3ca3d70a    # 0.02f

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->mCrossFade:F

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public drawInto(Landroid/graphics/Canvas;F)V
    .locals 4

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gtz v1, :cond_0

    return-void

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->mCrossFadePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v3, p2, v2

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 285
    iget v1, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->mCrossFade:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    .line 286
    iget-object p2, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->mTarget:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->mCrossFadePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 288
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->mDefault:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->mCrossFadePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 289
    iget v1, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->mCrossFade:F

    cmpl-float v3, v1, v0

    if-lez v3, :cond_2

    .line 290
    iget-object v3, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->mCrossFadePaint:Landroid/graphics/Paint;

    mul-float v1, v1, p2

    mul-float v1, v1, v2

    float-to-int p2, v1

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 291
    iget-object p2, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->mTarget:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->mCrossFadePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getDefaultBlur()Landroid/graphics/Bitmap;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->mDefault:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Landroid/graphics/Bitmap;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->mTarget:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isAnimating()Z
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->mTarget:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->mCrossFade:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFinal()Z
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->mTarget:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->mCrossFade:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDefaultBlur(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->mDefault:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setTarget(Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->mTarget:Landroid/graphics/Bitmap;

    if-nez p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 252
    :goto_1
    iput p1, p0, Lcom/sonyericsson/music/fullplayer/BackPlateView$Blur;->mCrossFade:F

    return-void
.end method
