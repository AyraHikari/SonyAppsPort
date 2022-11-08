.class Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;
.super Lcom/android/launcher3/icons/BitmapInfo;
.source "ClockDrawableWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/icons/ClockDrawableWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClockBitmapInfo"
.end annotation


# instance fields
.field public final animInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

.field public final boundsOffset:F

.field public final mFlattenedBackground:Landroid/graphics/Bitmap;

.field public final themeBackground:Landroid/graphics/Bitmap;

.field public final themeData:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;IFLcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;Landroid/graphics/Bitmap;Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "color"    # I
    .param p3, "scale"    # F
    .param p4, "animInfo"    # Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;
    .param p5, "background"    # Landroid/graphics/Bitmap;
    .param p6, "themeInfo"    # Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;
    .param p7, "themeBackground"    # Landroid/graphics/Bitmap;

    .line 312
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/icons/BitmapInfo;-><init>(Landroid/graphics/Bitmap;I)V

    .line 313
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const v1, 0x3d0f5c29    # 0.035f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->boundsOffset:F

    .line 314
    iput-object p4, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->animInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    .line 315
    iput-object p5, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->mFlattenedBackground:Landroid/graphics/Bitmap;

    .line 316
    iput-object p6, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->themeData:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    .line 317
    iput-object p7, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->themeBackground:Landroid/graphics/Bitmap;

    .line 318
    return-void
.end method


# virtual methods
.method public canPersist()Z
    .locals 1

    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public clone()Lcom/android/launcher3/icons/BitmapInfo;
    .locals 9

    .line 359
    new-instance v8, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;

    iget-object v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->color:I

    iget v0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->boundsOffset:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    iget-object v4, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->animInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    iget-object v5, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->mFlattenedBackground:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->themeData:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    iget-object v7, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->themeBackground:Landroid/graphics/Bitmap;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;-><init>(Landroid/graphics/Bitmap;IFLcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;Landroid/graphics/Bitmap;Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v8}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->copyInternalsTo(Lcom/android/launcher3/icons/BitmapInfo;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 299
    invoke-virtual {p0}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->clone()Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method public newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "creationFlags"    # I

    .line 328
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->themeData:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    if-eqz v0, :cond_0

    .line 329
    invoke-static {p1}, Lcom/android/launcher3/icons/ThemedIconDrawable;->getColors(Landroid/content/Context;)[I

    move-result-object v0

    .line 330
    .local v0, "colors":[I
    iget-object v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->themeData:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    iget-object v1, v1, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->baseDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 331
    .local v1, "tintedDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x1

    aget v3, v0, v2

    .line 332
    .local v3, "themedFgColor":I
    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 333
    iget-object v2, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->themeData:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->copyForIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    move-result-object v2

    .line 334
    .local v2, "info":Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;
    iget-object v4, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->themeBackground:Landroid/graphics/Bitmap;

    .line 335
    .local v4, "bg":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/BlendModeColorFilter;

    const/4 v6, 0x0

    aget v6, v0, v6

    sget-object v7, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    move-object v0, v5

    .line 336
    .end local v1    # "tintedDrawable":Landroid/graphics/drawable/Drawable;
    .local v0, "bgFilter":Landroid/graphics/ColorFilter;
    goto :goto_0

    .line 337
    .end local v0    # "bgFilter":Landroid/graphics/ColorFilter;
    .end local v2    # "info":Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;
    .end local v3    # "themedFgColor":I
    .end local v4    # "bg":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->animInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    .line 338
    .restart local v2    # "info":Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;
    const/4 v3, -0x1

    .line 339
    .restart local v3    # "themedFgColor":I
    iget-object v4, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->mFlattenedBackground:Landroid/graphics/Bitmap;

    .line 340
    .restart local v4    # "bg":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 342
    .restart local v0    # "bgFilter":Landroid/graphics/ColorFilter;
    :goto_0
    if-nez v2, :cond_1

    .line 343
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v1

    return-object v1

    .line 345
    :cond_1
    new-instance v1, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;

    iget-object v6, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget v7, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->color:I

    iget v9, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->boundsOffset:F

    move-object v5, v1

    move v8, v3

    move-object v10, v2

    move-object v11, v4

    move-object v12, v0

    invoke-direct/range {v5 .. v12}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;-><init>(Landroid/graphics/Bitmap;IIFLcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;Landroid/graphics/Bitmap;Landroid/graphics/ColorFilter;)V

    .line 347
    .local v1, "cs":Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;
    invoke-virtual {v1}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;->newDrawable()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v5

    .line 348
    .local v5, "d":Lcom/android/launcher3/icons/FastBitmapDrawable;
    invoke-virtual {p0, p1, v5, p2}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->applyFlags(Landroid/content/Context;Lcom/android/launcher3/icons/FastBitmapDrawable;I)V

    .line 349
    return-object v5
.end method
