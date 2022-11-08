.class Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;
.super Lcom/android/launcher3/icons/FastBitmapDrawable;
.source "ClockDrawableWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/icons/ClockDrawableWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClockIconDrawable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;
    }
.end annotation


# instance fields
.field private final mAnimInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

.field private final mBG:Landroid/graphics/Bitmap;

.field private final mBgFilter:Landroid/graphics/ColorFilter;

.field private final mBgPaint:Landroid/graphics/Paint;

.field private final mBoundsOffset:F

.field private final mCanvasScale:F

.field private final mFG:Landroid/graphics/drawable/LayerDrawable;

.field private final mFullDrawable:Landroid/graphics/drawable/AdaptiveIconDrawable;

.field private final mThemedFgColor:I

.field private final mTime:Ljava/util/Calendar;


# direct methods
.method constructor <init>(Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;)V
    .locals 5
    .param p1, "cs"    # Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;

    .line 381
    iget-object v0, p1, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p1, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;->mIconColor:I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    .line 366
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mTime:Ljava/util/Calendar;

    .line 372
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mBgPaint:Landroid/graphics/Paint;

    .line 382
    invoke-static {p1}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;->-$$Nest$fgetmBoundsOffset(Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;)F

    move-result v2

    iput v2, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mBoundsOffset:F

    .line 383
    invoke-static {p1}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;->-$$Nest$fgetmAnimInfo(Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;)Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mAnimInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    .line 385
    invoke-static {p1}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;->-$$Nest$fgetmBG(Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mBG:Landroid/graphics/Bitmap;

    .line 386
    invoke-static {p1}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;->-$$Nest$fgetmBgFilter(Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;)Landroid/graphics/ColorFilter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mBgFilter:Landroid/graphics/ColorFilter;

    .line 387
    invoke-static {p1}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;->-$$Nest$fgetmBgFilter(Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;)Landroid/graphics/ColorFilter;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 388
    invoke-static {p1}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;->-$$Nest$fgetmThemedFgColor(Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mThemedFgColor:I

    .line 390
    iget-object v1, v3, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->baseDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    iput-object v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mFullDrawable:Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 391
    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    iput-object v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mFG:Landroid/graphics/drawable/LayerDrawable;

    .line 395
    invoke-virtual {v3, v0, v1}, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->applyTime(Ljava/util/Calendar;Landroid/graphics/drawable/LayerDrawable;)Z

    .line 396
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mCanvasScale:F

    .line 397
    return-void
.end method

.method private reschedule()V
    .locals 6

    .line 469
    invoke-virtual {p0}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    return-void

    .line 473
    :cond_0
    invoke-virtual {p0, p0}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 474
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 475
    .local v0, "upTime":J
    sget-wide v2, Lcom/android/launcher3/icons/ClockDrawableWrapper;->TICK_MS:J

    .line 476
    .local v2, "step":J
    rem-long v4, v0, v2

    sub-long v4, v0, v4

    add-long/2addr v4, v2

    invoke-virtual {p0, p0, v4, v5}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 477
    return-void
.end method


# virtual methods
.method public drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 410
    iget-object v0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mAnimInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    if-nez v0, :cond_0

    .line 411
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/icons/FastBitmapDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 412
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mBG:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 417
    iget-object v0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mAnimInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    iget-object v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mTime:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mFG:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->applyTime(Ljava/util/Calendar;Landroid/graphics/drawable/LayerDrawable;)Z

    .line 418
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 419
    .local v0, "saveCount":I
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 420
    iget v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mCanvasScale:F

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 421
    iget-object v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mFullDrawable:Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 422
    iget-object v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mFG:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/LayerDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 423
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 425
    invoke-direct {p0}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->reschedule()V

    .line 426
    return-void
.end method

.method public getIconColor()I
    .locals 1

    .line 445
    invoke-virtual {p0}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->isThemed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mThemedFgColor:I

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getIconColor()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isThemed()Z
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public newConstantState()Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;
    .locals 9

    .line 481
    new-instance v8, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;

    iget-object v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mIconColor:I

    iget v3, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mThemedFgColor:I

    iget v4, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mBoundsOffset:F

    iget-object v5, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mAnimInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    iget-object v6, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mBG:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mBgPaint:Landroid/graphics/Paint;

    .line 482
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;-><init>(Landroid/graphics/Bitmap;IIFLcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;Landroid/graphics/Bitmap;Landroid/graphics/ColorFilter;)V

    .line 481
    return-object v8
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 401
    invoke-super {p0, p1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 405
    iget-object v0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mFullDrawable:Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    .line 406
    return-void
.end method

.method public run()V
    .locals 3

    .line 450
    iget-object v0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mAnimInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    iget-object v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mTime:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mFG:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->applyTime(Ljava/util/Calendar;Landroid/graphics/drawable/LayerDrawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->invalidateSelf()V

    goto :goto_0

    .line 453
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->reschedule()V

    .line 455
    :goto_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 459
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setVisible(ZZ)Z

    move-result v0

    .line 460
    .local v0, "result":Z
    if-eqz p1, :cond_0

    .line 461
    invoke-direct {p0}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->reschedule()V

    goto :goto_0

    .line 463
    :cond_0
    invoke-virtual {p0, p0}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 465
    :goto_0
    return v0
.end method

.method protected updateFilter()V
    .locals 3

    .line 435
    invoke-super {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->updateFilter()V

    .line 436
    iget-boolean v0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mIsDisabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mDisabledAlpha:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    .line 437
    .local v0, "alpha":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 438
    iget-object v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mFG:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setAlpha(I)V

    .line 439
    iget-object v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mBgPaint:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mIsDisabled:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->getDisabledColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mBgFilter:Landroid/graphics/ColorFilter;

    :goto_1
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 440
    iget-object v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mFG:Landroid/graphics/drawable/LayerDrawable;

    iget-boolean v2, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->mIsDisabled:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;->getDisabledColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 441
    return-void
.end method
