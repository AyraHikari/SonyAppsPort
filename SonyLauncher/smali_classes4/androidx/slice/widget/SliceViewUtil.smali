.class public Landroidx/slice/widget/SliceViewUtil;
.super Ljava/lang/Object;
.source "SliceViewUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    return-void
.end method

.method public static applyAlpha(FI)I
    .locals 4
    .param p0, "alpha"    # F
    .param p1, "inputColor"    # I

    .line 105
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p0, v0

    .line 106
    float-to-int v0, p0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 107
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 106
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static applyAlphaAttr(Landroid/content/Context;II)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I
    .param p2, "inputColor"    # I

    .line 93
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 97
    .local v1, "alpha":F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    invoke-static {v1, p2}, Landroidx/slice/widget/SliceViewUtil;->applyAlpha(FI)I

    move-result v2

    return v2
.end method

.method public static createCircledIcon(Landroid/content/Context;ILandroidx/core/graphics/drawable/IconCompat;ZLandroid/view/ViewGroup;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iconSizePx"    # I
    .param p2, "icon"    # Landroidx/core/graphics/drawable/IconCompat;
    .param p3, "isLarge"    # Z
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .line 162
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 163
    .local v0, "v":Landroid/widget/ImageView;
    invoke-virtual {p2, p0}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    if-eqz p3, :cond_0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    .line 165
    :cond_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 164
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 166
    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 167
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 168
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz p3, :cond_1

    .line 170
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 171
    .local v2, "iconBm":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 172
    .local v3, "iconCanvas":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, p1, p1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 173
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 174
    invoke-static {v2}, Landroidx/slice/widget/SliceViewUtil;->getCircularBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 175
    .end local v2    # "iconBm":Landroid/graphics/Bitmap;
    .end local v3    # "iconCanvas":Landroid/graphics/Canvas;
    goto :goto_1

    .line 176
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 178
    :goto_1
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 179
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 180
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 181
    return-void
.end method

.method public static createIconFromDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 5
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;

    .line 147
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 148
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    return-object v0

    .line 150
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 152
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 153
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 154
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 155
    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    return-object v2
.end method

.method public static getCircularBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 186
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 187
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 186
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 188
    .local v0, "output":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 189
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 190
    .local v2, "paint":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 191
    .local v3, "rect":Landroid/graphics/Rect;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 192
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 193
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    .line 194
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    .line 193
    invoke-virtual {v1, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 195
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 196
    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 197
    return-object v0
.end method

.method public static getColorAccent(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 64
    const v0, 0x1010435

    invoke-static {p0, v0}, Landroidx/slice/widget/SliceViewUtil;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getColorAttr(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .line 114
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 117
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 118
    .local v1, "color":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    return v1
.end method

.method public static getColorError(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 71
    const v0, 0x1010543

    invoke-static {p0, v0}, Landroidx/slice/widget/SliceViewUtil;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getDefaultColor(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .line 78
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 79
    .local v0, "list":Landroid/content/res/ColorStateList;
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    return v1
.end method

.method public static getDisabled(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputColor"    # I

    .line 86
    const v0, 0x1010033

    invoke-static {p0, v0, p1}, Landroidx/slice/widget/SliceViewUtil;->applyAlphaAttr(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .line 136
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 139
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 140
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    return-object v1
.end method

.method public static getThemeAttr(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .line 125
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 128
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 129
    .local v1, "theme":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    return v1
.end method

.method public static getTimestampString(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 204
    .local v0, "currentTimeStamp":J
    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    const/16 v2, 0x8

    invoke-static {p0, p1, p2, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 206
    :cond_1
    :goto_0
    nop

    .line 207
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const-wide/32 v7, 0xea60

    const/high16 v9, 0x40000

    .line 206
    move-wide v3, p1

    invoke-static/range {v3 .. v9}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method public static resolveLayoutDirection(I)I
    .locals 1
    .param p0, "layoutDir"    # I

    .line 218
    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 222
    :cond_1
    :goto_0
    return p0
.end method

.method public static tintIndeterminateProgressBar(Landroid/content/Context;Landroid/widget/ProgressBar;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bar"    # Landroid/widget/ProgressBar;

    .line 230
    sget v0, Landroidx/appcompat/R$attr;->colorControlHighlight:I

    invoke-static {p0, v0}, Landroidx/slice/widget/SliceViewUtil;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    .line 232
    .local v0, "color":I
    nop

    .line 233
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 232
    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 234
    .local v1, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 235
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 236
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    :cond_0
    return-void
.end method
