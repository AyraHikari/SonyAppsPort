.class public Lcom/android/launcher3/graphics/ShadowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ShadowDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;
    }
.end annotation


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private final mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    new-instance v0, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;-><init>(Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState-IA;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/graphics/ShadowDrawable;-><init>(Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;)V

    .line 55
    return-void
.end method

.method private constructor <init>(Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    .line 57
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mPaint:Landroid/graphics/Paint;

    .line 58
    iput-object p1, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;Lcom/android/launcher3/graphics/ShadowDrawable-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/ShadowDrawable;-><init>(Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;)V

    return-void
.end method

.method static synthetic lambda$regenerateBitmapCache$0(Landroid/graphics/Bitmap;[ILandroid/graphics/Paint;Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V
    .locals 2
    .param p0, "shadow"    # Landroid/graphics/Bitmap;
    .param p1, "offset"    # [I
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "d"    # Landroid/graphics/drawable/Drawable;
    .param p4, "c"    # Landroid/graphics/Canvas;

    .line 148
    const/4 v0, 0x0

    aget v0, p1, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {p4, p0, v0, v1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 149
    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 150
    return-void
.end method

.method private regenerateBitmapCache()V
    .locals 8

    .line 124
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget-object v0, v0, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 125
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v1, v1, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mShadowSize:I

    iget-object v2, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v2, v2, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mShadowSize:I

    iget-object v3, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v3, v3, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIntrinsicWidth:I

    iget-object v4, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v4, v4, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mShadowSize:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v4, v4, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIntrinsicHeight:I

    iget-object v5, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v5, v5, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mShadowSize:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 128
    iget-object v1, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget-boolean v1, v1, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIsDark:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v1, v1, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mDarkTintColor:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 130
    iget-object v1, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget-boolean v1, v1, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIsDark:Z

    if-eqz v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v2, v1, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIntrinsicWidth:I

    iget-object v3, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v3, v3, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIntrinsicHeight:I

    .line 133
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/launcher3/graphics/ShadowDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lcom/android/launcher3/graphics/ShadowDrawable$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 132
    invoke-static {v2, v3, v4}, Lcom/android/launcher3/icons/BitmapRenderer;->createHardwareBitmap(IILcom/android/launcher3/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mLastDrawnBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 135
    :cond_1
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 136
    .local v1, "paint":Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    iget-object v3, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v3, v3, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mShadowSize:I

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 139
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 140
    .local v2, "offset":[I
    iget-object v3, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v3, v3, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIntrinsicWidth:I

    iget-object v4, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v4, v4, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIntrinsicHeight:I

    .line 141
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/launcher3/graphics/ShadowDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lcom/android/launcher3/graphics/ShadowDrawable$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 140
    invoke-static {v3, v4, v5}, Lcom/android/launcher3/icons/BitmapRenderer;->createSoftwareBitmap(IILcom/android/launcher3/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 142
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 144
    .local v3, "shadow":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 145
    iget-object v4, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v4, v4, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mShadowColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    iget-object v4, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v5, v4, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIntrinsicWidth:I

    iget-object v6, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v6, v6, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIntrinsicHeight:I

    new-instance v7, Lcom/android/launcher3/graphics/ShadowDrawable$$ExternalSyntheticLambda1;

    invoke-direct {v7, v3, v2, v1, v0}, Lcom/android/launcher3/graphics/ShadowDrawable$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/Bitmap;[ILandroid/graphics/Paint;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v5, v6, v7}, Lcom/android/launcher3/icons/BitmapRenderer;->createHardwareBitmap(IILcom/android/launcher3/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mLastDrawnBitmap:Landroid/graphics/Bitmap;

    .line 152
    .end local v1    # "paint":Landroid/graphics/Paint;
    .end local v2    # "offset":[I
    .end local v3    # "shadow":Landroid/graphics/Bitmap;
    :goto_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 4
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 112
    const/4 v0, 0x1

    new-array v0, v0, [I

    sget v1, Lcom/android/launcher3/R$attr;->isWorkspaceDarkText:I

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 113
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 114
    .local v1, "isDark":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    iget-object v2, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget-boolean v2, v2, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIsDark:Z

    if-eq v2, v1, :cond_0

    .line 116
    iget-object v2, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iput-boolean v1, v2, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIsDark:Z

    .line 117
    iget-object v2, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mLastDrawnBitmap:Landroid/graphics/Bitmap;

    .line 118
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/ShadowDrawable;->invalidateSelf()V

    .line 120
    :cond_0
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    invoke-virtual {v0}, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 63
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/ShadowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 64
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    return-void

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget-object v1, v1, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mLastDrawnBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 68
    invoke-direct {p0}, Lcom/android/launcher3/graphics/ShadowDrawable;->regenerateBitmapCache()V

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget-object v1, v1, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mLastDrawnBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 71
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v0, v0, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v0, v0, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIntrinsicWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 92
    const/4 v0, -0x3

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 6
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 159
    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 160
    sget-object v1, Lcom/android/launcher3/R$styleable;->ShadowDrawable:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    goto :goto_0

    .line 161
    :cond_0
    sget-object v1, Lcom/android/launcher3/R$styleable;->ShadowDrawable:[I

    invoke-virtual {p4, p3, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    :goto_0
    nop

    .line 163
    .local v1, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v2, Lcom/android/launcher3/R$styleable;->ShadowDrawable_android_src:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 164
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 167
    iget-object v3, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    sget v4, Lcom/android/launcher3/R$styleable;->ShadowDrawable_android_shadowColor:I

    const/high16 v5, -0x1000000

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, v3, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mShadowColor:I

    .line 169
    iget-object v3, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    sget v4, Lcom/android/launcher3/R$styleable;->ShadowDrawable_android_elevation:I

    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v3, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mShadowSize:I

    .line 171
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    sget v3, Lcom/android/launcher3/R$styleable;->ShadowDrawable_darkTintColor:I

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, v0, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mDarkTintColor:I

    .line 174
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v4, v4, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mShadowSize:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, v0, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIntrinsicHeight:I

    .line 175
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v4, v4, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mShadowSize:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, v0, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIntrinsicWidth:I

    .line 176
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v3

    iput v3, v0, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mChangingConfigurations:I

    .line 178
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    iput-object v3, v0, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 181
    nop

    .line 182
    return-void

    .line 165
    .restart local v2    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    :try_start_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "missing src attribute"

    invoke-direct {v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local p0    # "this":Lcom/android/launcher3/graphics/ShadowDrawable;
    .end local p1    # "r":Landroid/content/res/Resources;
    .end local p2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p3    # "attrs":Landroid/util/AttributeSet;
    .end local p4    # "theme":Landroid/content/res/Resources$Theme;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Lcom/android/launcher3/graphics/ShadowDrawable;
    .restart local p1    # "r":Landroid/content/res/Resources;
    .restart local p2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p3    # "attrs":Landroid/util/AttributeSet;
    .restart local p4    # "theme":Landroid/content/res/Resources$Theme;
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 181
    throw v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/ShadowDrawable;->invalidateSelf()V

    .line 77
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 81
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 82
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/ShadowDrawable;->invalidateSelf()V

    .line 83
    return-void
.end method
