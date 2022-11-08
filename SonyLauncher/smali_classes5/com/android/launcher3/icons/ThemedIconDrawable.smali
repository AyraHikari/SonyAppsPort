.class public Lcom/android/launcher3/icons/ThemedIconDrawable;
.super Lcom/android/launcher3/icons/FastBitmapDrawable;
.source "ThemedIconDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedConstantState;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ThemedIconDrawable"


# instance fields
.field final bitmapInfo:Lcom/android/launcher3/icons/BitmapInfo;

.field final colorBg:I

.field final colorFg:I

.field private final mBgBitmap:Landroid/graphics/Bitmap;

.field private final mBgFilter:Landroid/graphics/ColorFilter;

.field private final mBgPaint:Landroid/graphics/Paint;

.field private final mMonoFilter:Landroid/graphics/ColorFilter;

.field private final mMonoIcon:Landroid/graphics/Bitmap;

.field private final mMonoPaint:Landroid/graphics/Paint;


# direct methods
.method protected constructor <init>(Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedConstantState;)V
    .locals 7
    .param p1, "constantState"    # Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedConstantState;

    .line 52
    iget-object v0, p1, Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedConstantState;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p1, Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedConstantState;->colorFg:I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mMonoPaint:Landroid/graphics/Paint;

    .line 47
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mBgPaint:Landroid/graphics/Paint;

    .line 53
    iget-object v1, p1, Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedConstantState;->bitmapInfo:Lcom/android/launcher3/icons/BitmapInfo;

    iput-object v1, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->bitmapInfo:Lcom/android/launcher3/icons/BitmapInfo;

    .line 54
    iget v3, p1, Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedConstantState;->colorBg:I

    iput v3, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->colorBg:I

    .line 55
    iget v4, p1, Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedConstantState;->colorFg:I

    iput v4, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->colorFg:I

    .line 57
    iget-object v5, v1, Lcom/android/launcher3/icons/BitmapInfo;->mMono:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mMonoIcon:Landroid/graphics/Bitmap;

    .line 58
    new-instance v5, Landroid/graphics/BlendModeColorFilter;

    sget-object v6, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-direct {v5, v4, v6}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    iput-object v5, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mMonoFilter:Landroid/graphics/ColorFilter;

    .line 59
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 61
    iget-object v0, v1, Lcom/android/launcher3/icons/BitmapInfo;->mWhiteShadowLayer:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mBgBitmap:Landroid/graphics/Bitmap;

    .line 62
    new-instance v0, Landroid/graphics/BlendModeColorFilter;

    sget-object v1, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-direct {v0, v3, v1}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    iput-object v0, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mBgFilter:Landroid/graphics/ColorFilter;

    .line 63
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 64
    return-void
.end method

.method public static getColors(Landroid/content/Context;)[I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 127
    .local v0, "res":Landroid/content/res/Resources;
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 128
    .local v1, "colors":[I
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/4 v3, 0x1

    const v4, 0x106003a

    const/4 v5, 0x0

    const/16 v6, 0x20

    if-ne v2, v6, :cond_0

    .line 129
    const v2, 0x1060027

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v5

    .line 130
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v3

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v5

    .line 133
    const v2, 0x1060033

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v3

    .line 135
    :goto_0
    return-object v1
.end method

.method public static newDrawable(Lcom/android/launcher3/icons/BitmapInfo;Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;
    .locals 4
    .param p0, "info"    # Lcom/android/launcher3/icons/BitmapInfo;
    .param p1, "context"    # Landroid/content/Context;

    .line 118
    invoke-static {p1}, Lcom/android/launcher3/icons/ThemedIconDrawable;->getColors(Landroid/content/Context;)[I

    move-result-object v0

    .line 119
    .local v0, "colors":[I
    new-instance v1, Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedConstantState;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedConstantState;-><init>(Lcom/android/launcher3/icons/BitmapInfo;II)V

    invoke-virtual {v1}, Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedConstantState;->newDrawable()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public changeBackgroundColor(I)V
    .locals 3
    .param p1, "colorBg"    # I

    .line 96
    iget-object v0, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mBgPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BlendModeColorFilter;

    sget-object v2, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 97
    return-void
.end method

.method protected drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 68
    iget-object v0, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mBgBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mBgPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 69
    iget-object v0, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mMonoIcon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mMonoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 70
    return-void
.end method

.method public getIconColor()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->colorFg:I

    return v0
.end method

.method public isThemed()Z
    .locals 1

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public newConstantState()Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;
    .locals 4

    .line 92
    new-instance v0, Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedConstantState;

    iget-object v1, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->bitmapInfo:Lcom/android/launcher3/icons/BitmapInfo;

    iget v2, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->colorBg:I

    iget v3, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->colorFg:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedConstantState;-><init>(Lcom/android/launcher3/icons/BitmapInfo;II)V

    return-object v0
.end method

.method protected updateFilter()V
    .locals 5

    .line 74
    invoke-super {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->updateFilter()V

    .line 75
    iget-boolean v0, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mIsDisabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mDisabledAlpha:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    .line 76
    .local v0, "alpha":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 77
    iget-object v1, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mBgPaint:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mIsDisabled:Z

    if-eqz v2, :cond_1

    new-instance v2, Landroid/graphics/BlendModeColorFilter;

    iget v3, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->colorBg:I

    .line 78
    invoke-static {v3}, Lcom/android/launcher3/icons/ThemedIconDrawable;->getDisabledColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mBgFilter:Landroid/graphics/ColorFilter;

    .line 77
    :goto_1
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 80
    iget-object v1, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mMonoPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 81
    iget-object v1, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mMonoPaint:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mIsDisabled:Z

    if-eqz v2, :cond_2

    new-instance v2, Landroid/graphics/BlendModeColorFilter;

    iget v3, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->colorFg:I

    .line 82
    invoke-static {v3}, Lcom/android/launcher3/icons/ThemedIconDrawable;->getDisabledColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mMonoFilter:Landroid/graphics/ColorFilter;

    .line 81
    :goto_2
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 83
    return-void
.end method
