.class final Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GhostedViewLaunchAnimatorController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WrappedDrawable"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGhostedViewLaunchAnimatorController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GhostedViewLaunchAnimatorController.kt\ncom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,462:1\n1#2:463\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\r\u001a\u00020\u000eH\u0002J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00012\u0006\u0010\u0010\u001a\u00020\u0005H\u0002J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0007H\u0016J\u0008\u0010\u0015\u001a\u00020\u0007H\u0016J\u0008\u0010\u0016\u001a\u00020\u000eH\u0002J\u0010\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u0001H\u0002J\u0010\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u0007H\u0016J\u0016\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001dJ\u0012\u0010\u001f\u001a\u00020\u000e2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016J \u0010\"\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001dH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006#"
    }
    d2 = {
        "Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;",
        "Landroid/graphics/drawable/Drawable;",
        "wrapped",
        "(Landroid/graphics/drawable/Drawable;)V",
        "cornerRadii",
        "",
        "currentAlpha",
        "",
        "previousBounds",
        "Landroid/graphics/Rect;",
        "previousCornerRadii",
        "getWrapped",
        "()Landroid/graphics/drawable/Drawable;",
        "applyBackgroundRadii",
        "",
        "drawable",
        "radii",
        "draw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "getAlpha",
        "getOpacity",
        "restoreBackgroundRadii",
        "savePreviousBackgroundRadii",
        "background",
        "setAlpha",
        "alpha",
        "setBackgroundRadius",
        "topCornerRadius",
        "",
        "bottomCornerRadius",
        "setColorFilter",
        "filter",
        "Landroid/graphics/ColorFilter;",
        "updateRadii",
        "frameworks__base__packages__SystemUI__animation__android_common__SystemUIAnimationLib"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private cornerRadii:[F

.field private currentAlpha:I

.field private previousBounds:Landroid/graphics/Rect;

.field private previousCornerRadii:[F

.field private final wrapped:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "wrapped"    # Landroid/graphics/drawable/Drawable;

    .line 337
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    .line 338
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->currentAlpha:I

    .line 339
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->previousBounds:Landroid/graphics/Rect;

    .line 341
    const/16 v0, 0x8

    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->cornerRadii:[F

    .line 342
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->previousCornerRadii:[F

    .line 337
    return-void
.end method

.method private final applyBackgroundRadii()V
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->cornerRadii:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 412
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->savePreviousBackgroundRadii(Landroid/graphics/drawable/Drawable;)V

    .line 413
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->cornerRadii:[F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->applyBackgroundRadii(Landroid/graphics/drawable/Drawable;[F)V

    .line 414
    return-void

    .line 409
    :cond_1
    :goto_0
    return-void
.end method

.method private final applyBackgroundRadii(Landroid/graphics/drawable/Drawable;[F)V
    .locals 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "radii"    # [F

    .line 434
    instance-of v0, p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 435
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 436
    return-void

    .line 439
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_2

    .line 440
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 463
    .local v0, "it":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v1, 0x0

    .line 440
    .local v1, "$i$a$-let-GhostedViewLaunchAnimatorController$WrappedDrawable$applyBackgroundRadii$1":I
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->applyBackgroundRadii(Landroid/graphics/drawable/Drawable;[F)V

    .line 441
    .end local v0    # "it":Landroid/graphics/drawable/Drawable;
    .end local v1    # "$i$a$-let-GhostedViewLaunchAnimatorController$WrappedDrawable$applyBackgroundRadii$1":I
    :goto_0
    return-void

    .line 444
    :cond_2
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-nez v0, :cond_3

    .line 445
    return-void

    .line 448
    :cond_3
    const/4 v0, 0x0

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_6

    move v2, v0

    .local v2, "i":I
    add-int/lit8 v0, v0, 0x1

    .line 449
    move-object v3, p1

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v4, v3, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v4, :cond_4

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v3, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_1

    .line 451
    .end local v2    # "i":I
    :cond_6
    return-void
.end method

.method private final restoreBackgroundRadii()V
    .locals 2

    .line 454
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->cornerRadii:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 458
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->previousCornerRadii:[F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->applyBackgroundRadii(Landroid/graphics/drawable/Drawable;[F)V

    .line 459
    return-void

    .line 455
    :cond_1
    :goto_0
    return-void
.end method

.method private final savePreviousBackgroundRadii(Landroid/graphics/drawable/Drawable;)V
    .locals 9
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 419
    sget-object v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->Companion:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;

    invoke-virtual {v0, p1}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;->findGradientDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 423
    .local v0, "gradient":Landroid/graphics/drawable/GradientDrawable;
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadii()[F

    move-result-object v8

    .line 424
    .local v8, "radii":[F
    if-eqz v8, :cond_1

    .line 425
    iget-object v2, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->previousCornerRadii:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, v8

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([F[FIIIILjava/lang/Object;)[F

    goto :goto_0

    .line 428
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result v1

    .line 429
    .local v1, "radius":F
    iget-object v2, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->previousCornerRadii:[F

    invoke-direct {p0, v2, v1, v1}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->updateRadii([FFF)V

    .line 431
    .end local v1    # "radius":F
    :goto_0
    return-void
.end method

.method private final updateRadii([FFF)V
    .locals 1
    .param p1, "radii"    # [F
    .param p2, "topCornerRadius"    # F
    .param p3, "bottomCornerRadius"    # F

    .line 396
    const/4 v0, 0x0

    aput p2, p1, v0

    .line 397
    const/4 v0, 0x1

    aput p2, p1, v0

    .line 398
    const/4 v0, 0x2

    aput p2, p1, v0

    .line 399
    const/4 v0, 0x3

    aput p2, p1, v0

    .line 401
    const/4 v0, 0x4

    aput p3, p1, v0

    .line 402
    const/4 v0, 0x5

    aput p3, p1, v0

    .line 403
    const/4 v0, 0x6

    aput p3, p1, v0

    .line 404
    const/4 v0, 0x7

    aput p3, p1, v0

    .line 405
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 347
    .local v0, "wrapped":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->previousBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 349
    iget v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->currentAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 350
    invoke-virtual {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 351
    invoke-direct {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->applyBackgroundRadii()V

    .line 353
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 358
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 359
    iget-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->previousBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 360
    invoke-direct {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->restoreBackgroundRadii()V

    .line 361
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 370
    iget v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->currentAlpha:I

    return v0
.end method

.method public getOpacity()I
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, -0x2

    return v0

    .line 375
    .local v0, "wrapped":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    .line 376
    .local v1, "previousAlpha":I
    iget v2, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->currentAlpha:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 377
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    .line 378
    .local v2, "opacity":I
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 379
    return v2
.end method

.method public final getWrapped()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 364
    iget v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->currentAlpha:I

    if-eq p1, v0, :cond_0

    .line 365
    iput p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->currentAlpha:I

    .line 366
    invoke-virtual {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->invalidateSelf()V

    .line 368
    :cond_0
    return-void
.end method

.method public final setBackgroundRadius(FF)V
    .locals 1
    .param p1, "topCornerRadius"    # F
    .param p2, "bottomCornerRadius"    # F

    .line 387
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->cornerRadii:[F

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->updateRadii([FFF)V

    .line 388
    invoke-virtual {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->invalidateSelf()V

    .line 389
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    .line 383
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 384
    :goto_0
    return-void
.end method
