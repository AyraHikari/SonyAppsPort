.class public Lcom/android/launcher3/icons/FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FastBitmapDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;
    }
.end annotation


# static fields
.field private static final ACCEL:Landroid/view/animation/Interpolator;

.field public static final CLICK_FEEDBACK_DURATION:I = 0xc8

.field private static final DEACCEL:Landroid/view/animation/Interpolator;

.field private static final DISABLED_BRIGHTNESS:F = 0.5f

.field private static final DISABLED_DESATURATION:F = 1.0f

.field protected static final FULLY_OPAQUE:I = 0xff

.field private static final PRESSED_SCALE:F = 1.1f

.field private static final SCALE:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/icons/FastBitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field public static final WHITE_SCRIM_ALPHA:I = 0x8a


# instance fields
.field private mAlpha:I

.field private mBadge:Landroid/graphics/drawable/Drawable;

.field protected final mBitmap:Landroid/graphics/Bitmap;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field mDisabledAlpha:F

.field protected final mIconColor:I

.field protected mIsDisabled:Z

.field private mIsPressed:Z

.field protected final mPaint:Landroid/graphics/Paint;

.field private mScale:F

.field private mScaleAnimation:Landroid/animation/ObjectAnimator;


# direct methods
.method static bridge synthetic -$$Nest$fgetmScale(Lcom/android/launcher3/icons/FastBitmapDrawable;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScale:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmScale(Lcom/android/launcher3/icons/FastBitmapDrawable;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScale:F

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/launcher3/icons/FastBitmapDrawable;->ACCEL:Landroid/view/animation/Interpolator;

    .line 44
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/launcher3/icons/FastBitmapDrawable;->DEACCEL:Landroid/view/animation/Interpolator;

    .line 66
    new-instance v0, Lcom/android/launcher3/icons/FastBitmapDrawable$1;

    const-string v1, "scale"

    invoke-direct {v0, v1}, Lcom/android/launcher3/icons/FastBitmapDrawable$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/icons/FastBitmapDrawable;->SCALE:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    .line 87
    return-void
.end method

.method protected constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "iconColor"    # I

    .line 93
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 63
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mDisabledAlpha:F

    .line 80
    iput v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScale:F

    .line 81
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mAlpha:I

    .line 94
    iput-object p1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 95
    iput p2, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIconColor:I

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setFilterBitmap(Z)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/icons/BitmapInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/icons/BitmapInfo;

    .line 90
    iget-object v0, p1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget v1, p1, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    .line 91
    return-void
.end method

.method protected static final getDisabledColor(I)I
    .locals 5
    .param p0, "color"    # I

    .line 334
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    .line 335
    .local v0, "component":I
    const/high16 v1, 0x3f000000    # 0.5f

    .line 336
    .local v1, "scale":F
    const/16 v2, 0x7f

    .line 337
    .local v2, "brightnessI":I
    int-to-float v3, v0

    mul-float/2addr v3, v1

    int-to-float v4, v2

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/16 v4, 0xff

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 338
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    return v3
.end method

.method public static getDisabledColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 311
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getDisabledColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method private static getDisabledColorFilter(F)Landroid/graphics/ColorFilter;
    .locals 7
    .param p0, "disabledAlpha"    # F

    .line 315
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 316
    .local v0, "tempBrightnessMatrix":Landroid/graphics/ColorMatrix;
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 318
    .local v1, "tempFilterMatrix":Landroid/graphics/ColorMatrix;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 319
    const/high16 v2, 0x3f000000    # 0.5f

    .line 320
    .local v2, "scale":F
    const/16 v3, 0x7f

    .line 321
    .local v3, "brightnessI":I
    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v4

    .line 322
    .local v4, "mat":[F
    const/4 v5, 0x0

    aput v2, v4, v5

    .line 323
    const/4 v5, 0x6

    aput v2, v4, v5

    .line 324
    const/16 v5, 0xc

    aput v2, v4, v5

    .line 325
    int-to-float v5, v3

    const/4 v6, 0x4

    aput v5, v4, v6

    .line 326
    int-to-float v5, v3

    const/16 v6, 0x9

    aput v5, v4, v6

    .line 327
    int-to-float v5, v3

    const/16 v6, 0xe

    aput v5, v4, v6

    .line 328
    const/16 v5, 0x12

    aput p0, v4, v5

    .line 329
    invoke-virtual {v1, v0}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    .line 330
    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    return-object v5
.end method

.method public static setBadgeBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 5
    .param p0, "badge"    # Landroid/graphics/drawable/Drawable;
    .param p1, "iconBounds"    # Landroid/graphics/Rect;

    .line 345
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v0}, Lcom/android/launcher3/icons/BaseIconFactory;->getBadgeSizeForIconSize(I)I

    move-result v0

    .line 346
    .local v0, "size":I
    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 348
    return-void
.end method

.method private updateBadgeBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 106
    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 107
    invoke-static {v0, p1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setBadgeBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 109
    :cond_0
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 113
    iget v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 115
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 116
    .local v1, "bounds":Landroid/graphics/Rect;
    iget v2, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScale:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v2, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 117
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 118
    iget-object v2, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 119
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 121
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 122
    .end local v0    # "count":I
    .end local v1    # "bounds":Landroid/graphics/Rect;
    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 124
    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 128
    :cond_2
    :goto_0
    return-void
.end method

.method protected drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 131
    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 132
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mAlpha:I

    return v0
.end method

.method public getAnimatedScale()F
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScale:F

    :goto_0
    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 302
    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->newConstantState()Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;

    move-result-object v0

    .line 303
    .local v0, "cs":Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;
    iget-boolean v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIsDisabled:Z

    iput-boolean v1, v0, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;->mIsDisabled:Z

    .line 304
    iget-object v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;->-$$Nest$fputmBadgeConstantState(Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 307
    :cond_0
    return-object v0
.end method

.method public getIconColor()I
    .locals 2

    .line 138
    const/4 v0, -0x1

    const/16 v1, 0x8a

    invoke-static {v0, v1}, Lcom/android/launcher3/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v0

    .line 139
    .local v0, "whiteScrim":I
    iget v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIconColor:I

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v1

    return v1
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .line 210
    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .line 205
    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 157
    const/4 v0, -0x3

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 352
    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->invalidateSelf()V

    .line 355
    :cond_0
    return-void
.end method

.method protected isDisabled()Z
    .locals 1

    .line 270
    iget-boolean v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIsDisabled:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public isThemed()Z
    .locals 1

    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method protected newConstantState()Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;
    .locals 3

    .line 297
    new-instance v0, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;

    iget-object v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIconColor:I

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 101
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 102
    invoke-direct {p0, p1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->updateBadgeBounds(Landroid/graphics/Rect;)V

    .line 103
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 8
    .param p1, "state"    # [I

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "isPressed":Z
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, p1, v3

    .line 227
    .local v4, "s":I
    const v5, 0x10100a7

    if-ne v4, v5, :cond_0

    .line 228
    const/4 v0, 0x1

    .line 229
    goto :goto_1

    .line 226
    .end local v4    # "s":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 232
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIsPressed:Z

    if-eq v1, v0, :cond_5

    .line 233
    iput-boolean v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIsPressed:Z

    .line 235
    iget-object v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_2

    .line 236
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 237
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    .line 240
    :cond_2
    iget-boolean v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIsPressed:Z

    const-wide/16 v3, 0xc8

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    .line 242
    sget-object v1, Lcom/android/launcher3/icons/FastBitmapDrawable;->SCALE:Landroid/util/FloatProperty;

    new-array v6, v5, [F

    const v7, 0x3f8ccccd    # 1.1f

    aput v7, v6, v2

    invoke-static {p0, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    .line 243
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 244
    iget-object v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    sget-object v2, Lcom/android/launcher3/icons/FastBitmapDrawable;->ACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 245
    iget-object v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_2

    .line 247
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->isVisible()Z

    move-result v1

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v1, :cond_4

    .line 248
    sget-object v1, Lcom/android/launcher3/icons/FastBitmapDrawable;->SCALE:Landroid/util/FloatProperty;

    new-array v7, v5, [F

    aput v6, v7, v2

    invoke-static {p0, v1, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    .line 249
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 250
    iget-object v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    sget-object v2, Lcom/android/launcher3/icons/FastBitmapDrawable;->DEACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 251
    iget-object v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_2

    .line 253
    :cond_4
    iput v6, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScale:F

    .line 254
    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->invalidateSelf()V

    .line 257
    :goto_2
    return v5

    .line 259
    :cond_5
    return v2
.end method

.method public resetScale()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    .line 185
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScale:F

    .line 186
    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->invalidateSelf()V

    .line 187
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .line 359
    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 360
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/launcher3/icons/FastBitmapDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 362
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 162
    iget v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mAlpha:I

    if-eq v0, p1, :cond_0

    .line 163
    iput p1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mAlpha:I

    .line 164
    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 165
    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->invalidateSelf()V

    .line 167
    :cond_0
    return-void
.end method

.method public setBadge(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "badge"    # Landroid/graphics/drawable/Drawable;

    .line 274
    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 275
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 277
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 278
    if-eqz p1, :cond_1

    .line 279
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 281
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->updateBadgeBounds(Landroid/graphics/Rect;)V

    .line 282
    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->updateFilter()V

    .line 283
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .line 151
    iput-object p1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 152
    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->updateFilter()V

    .line 153
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filterBitmap"    # Z

    .line 171
    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 172
    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 173
    return-void
.end method

.method public setIsDisabled(Z)V
    .locals 1
    .param p1, "isDisabled"    # Z

    .line 263
    iget-boolean v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIsDisabled:Z

    if-eq v0, p1, :cond_0

    .line 264
    iput-boolean p1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIsDisabled:Z

    .line 265
    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->updateFilter()V

    .line 267
    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .line 366
    invoke-virtual {p0, p2}, Lcom/android/launcher3/icons/FastBitmapDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 367
    return-void
.end method

.method protected updateFilter()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIsDisabled:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mDisabledAlpha:F

    invoke-static {v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getDisabledColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 290
    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 291
    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 293
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->invalidateSelf()V

    .line 294
    return-void
.end method
