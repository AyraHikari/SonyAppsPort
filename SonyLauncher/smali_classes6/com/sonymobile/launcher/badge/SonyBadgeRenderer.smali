.class public Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;
.super Ljava/lang/Object;
.source "SonyBadgeRenderer.java"


# static fields
.field private static final BADGE_SCALE:F = 0.6f

.field private static final OFFSET_X_PERCENTAGE:F = 0.05f

.field private static final OFFSET_Y_PERCENTAGE:F = -0.05f

.field private static final SIZE_PERCENTAGE:F = 0.38f

.field private static final TAG:Ljava/lang/String; = "SonyBadgeRenderer"

.field private static sFont:Landroid/graphics/Typeface;


# instance fields
.field private final mBackgroundWithShadow:Landroid/graphics/Bitmap;

.field private final mBgColorDark:I

.field private final mBitmapOffset:F

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private final mCircleRadius:F

.field private final mDotCenterOffset:F

.field private final mOffsetX:I

.field private final mOffsetY:I

.field private final mSmallTextSize:F

.field private final mTextColor:I

.field private final mTextColorDark:I

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTextSize:F


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 8
    .param p1, "iconSizePx"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mCirclePaint:Landroid/graphics/Paint;

    .line 80
    int-to-float v0, p1

    const v1, 0x3ec28f5c    # 0.38f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mDotCenterOffset:F

    .line 81
    int-to-float v1, p1

    const v2, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mOffsetX:I

    .line 82
    int-to-float v1, p1

    const v2, -0x42b33333    # -0.05f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mOffsetY:I

    .line 83
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 84
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$dimen;->badge_scale:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 85
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    .line 87
    .local v2, "badgeScale":F
    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v3

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 88
    .local v0, "size":I
    new-instance v3, Lcom/android/launcher3/icons/ShadowGenerator$Builder;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/android/launcher3/icons/ShadowGenerator$Builder;-><init>(I)V

    .line 89
    .local v3, "builder":Lcom/android/launcher3/icons/ShadowGenerator$Builder;
    const/16 v5, 0x58

    iput v5, v3, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->ambientShadowAlpha:I

    .line 90
    invoke-virtual {v3, v0}, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->setupBlurForSize(I)Lcom/android/launcher3/icons/ShadowGenerator$Builder;

    move-result-object v5

    invoke-virtual {v5, v0, v0}, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->createPill(II)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mBackgroundWithShadow:Landroid/graphics/Bitmap;

    .line 91
    iget v6, v3, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->radius:F

    iput v6, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mCircleRadius:F

    .line 93
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mBitmapOffset:F

    .line 95
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/launcher3/R$dimen;->badge_text_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iput v5, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mTextSize:F

    .line 96
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/launcher3/R$dimen;->badge_text_size_small:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iput v5, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mSmallTextSize:F

    .line 98
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/launcher3/R$color;->folder_badge_bg_color_dark:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    iput v5, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mBgColorDark:I

    .line 99
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/launcher3/R$color;->home_badge_text_color:I

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    iput v5, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mTextColor:I

    .line 100
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/launcher3/R$color;->home_badge_text_color_dark:I

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    iput v5, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mTextColorDark:I

    .line 102
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mTextPaint:Landroid/graphics/Paint;

    .line 103
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    sget-object v6, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->sFont:Landroid/graphics/Typeface;

    if-nez v6, :cond_0

    .line 105
    sget v6, Lcom/android/launcher3/R$string;->icon_font_name:I

    invoke-virtual {p2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 106
    .local v6, "fontName":Ljava/lang/String;
    invoke-static {v6, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->sFont:Landroid/graphics/Typeface;

    .line 108
    .end local v6    # "fontName":Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->sFont:Landroid/graphics/Typeface;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 109
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/android/launcher3/icons/DotRenderer$DrawParams;Ljava/lang/String;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "params"    # Lcom/android/launcher3/icons/DotRenderer$DrawParams;
    .param p3, "badgeText"    # Ljava/lang/String;

    .line 115
    if-nez p2, :cond_0

    .line 116
    const-string v0, "SonyBadgeRenderer"

    const-string v1, "Invalid null argument(s) passed in call to draw."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void

    .line 119
    :cond_0
    iget v0, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->dotColor:I

    iget v1, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mBgColorDark:I

    if-ne v0, v1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mTextColorDark:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 126
    iget-boolean v0, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->leftAlign:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v2, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mDotCenterOffset:F

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    goto :goto_1

    .line 128
    :cond_2
    iget-object v0, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v2, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mDotCenterOffset:F

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    :goto_1
    nop

    .line 129
    .local v0, "badgeCenterX":F
    iget-object v2, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mDotCenterOffset:F

    div-float/2addr v3, v1

    add-float/2addr v2, v3

    .line 132
    .local v2, "badgeCenterY":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 133
    .local v3, "canvasBounds":Landroid/graphics/Rect;
    iget-boolean v4, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->leftAlign:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 134
    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v6, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mBitmapOffset:F

    add-float/2addr v6, v0

    sub-float/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_2

    .line 135
    :cond_3
    iget v4, v3, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v6, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mBitmapOffset:F

    sub-float v6, v0, v6

    sub-float/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    :goto_2
    nop

    .line 136
    .local v4, "offsetX":F
    iget v6, v3, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mBitmapOffset:F

    add-float/2addr v7, v2

    sub-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 138
    .local v6, "offsetY":F
    add-float v7, v0, v4

    sub-float v8, v2, v6

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 139
    iget v7, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    iget v8, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 141
    iget-object v7, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mCirclePaint:Landroid/graphics/Paint;

    const/high16 v8, -0x1000000

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    iget-object v7, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mBackgroundWithShadow:Landroid/graphics/Bitmap;

    iget v8, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mBitmapOffset:F

    iget-object v9, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 143
    iget-object v7, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mCirclePaint:Landroid/graphics/Paint;

    iget v8, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->dotColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    iget v7, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mCircleRadius:F

    iget-object v8, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v5, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 148
    const-string v5, "999+"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 149
    iget-object v5, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mTextPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mSmallTextSize:F

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_3

    .line 151
    :cond_4
    iget-object v5, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mTextPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mTextSize:F

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 153
    :goto_3
    iget-object v5, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget-object v7, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v5, v7

    .line 154
    .local v5, "textHight":F
    iget-object v7, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    neg-float v7, v7

    div-float/2addr v7, v1

    .line 155
    .local v7, "xPosText":F
    neg-float v8, v5

    div-float/2addr v8, v1

    .line 156
    .local v8, "yPosText":F
    iget-object v1, p0, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v7, v8, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 157
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 158
    return-void
.end method
