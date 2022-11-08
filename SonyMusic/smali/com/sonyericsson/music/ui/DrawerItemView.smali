.class public Lcom/sonyericsson/music/ui/DrawerItemView;
.super Landroid/view/View;
.source "DrawerItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/ui/DrawerItemView$InvalidateCallback;,
        Lcom/sonyericsson/music/ui/DrawerItemView$Touching;,
        Lcom/sonyericsson/music/ui/DrawerItemView$OnClickListener;
    }
.end annotation


# static fields
.field private static final RIPPLE_PRESSED_STATE:[I

.field private static sCachedRippleDrawable:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mContextPaint:Landroid/graphics/Paint;

.field private mContextRipple:Landroid/graphics/drawable/Drawable;

.field private mDensity:F

.field private final mDotPositions:[F

.field private mHasContextMenu:Z

.field private mHorizontalPadding:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconSize:I

.field private mIsRtl:Z

.field private mListener:Lcom/sonyericsson/music/ui/DrawerItemView$OnClickListener;

.field private mTextMarginStart:I

.field private mTextPaint:Landroid/text/TextPaint;

.field private final mTextPosition:[F

.field private mTitle:Ljava/lang/String;

.field private mTitleShortened:Ljava/lang/String;

.field private mTouchState:Lcom/sonyericsson/music/ui/DrawerItemView$Touching;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 45
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/music/ui/DrawerItemView;->RIPPLE_PRESSED_STATE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009c
        0x101009e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 71
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    .line 43
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTextPosition:[F

    const/4 p1, 0x6

    .line 44
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mDotPositions:[F

    .line 51
    sget-object p1, Lcom/sonyericsson/music/ui/DrawerItemView$Touching;->NOTHING:Lcom/sonyericsson/music/ui/DrawerItemView$Touching;

    iput-object p1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTouchState:Lcom/sonyericsson/music/ui/DrawerItemView$Touching;

    .line 52
    new-instance p1, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTextPaint:Landroid/text/TextPaint;

    .line 53
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mContextPaint:Landroid/graphics/Paint;

    .line 72
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/DrawerItemView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 43
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTextPosition:[F

    const/4 p1, 0x6

    .line 44
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mDotPositions:[F

    .line 51
    sget-object p1, Lcom/sonyericsson/music/ui/DrawerItemView$Touching;->NOTHING:Lcom/sonyericsson/music/ui/DrawerItemView$Touching;

    iput-object p1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTouchState:Lcom/sonyericsson/music/ui/DrawerItemView$Touching;

    .line 52
    new-instance p1, Landroid/text/TextPaint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTextPaint:Landroid/text/TextPaint;

    .line 53
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mContextPaint:Landroid/graphics/Paint;

    .line 77
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/DrawerItemView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    .line 43
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTextPosition:[F

    const/4 p1, 0x6

    .line 44
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mDotPositions:[F

    .line 51
    sget-object p1, Lcom/sonyericsson/music/ui/DrawerItemView$Touching;->NOTHING:Lcom/sonyericsson/music/ui/DrawerItemView$Touching;

    iput-object p1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTouchState:Lcom/sonyericsson/music/ui/DrawerItemView$Touching;

    .line 52
    new-instance p1, Landroid/text/TextPaint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTextPaint:Landroid/text/TextPaint;

    .line 53
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mContextPaint:Landroid/graphics/Paint;

    .line 82
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/DrawerItemView;->init()V

    return-void
.end method

.method public static clearDrawableCache()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    sput-object v0, Lcom/sonyericsson/music/ui/DrawerItemView;->sCachedRippleDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private dp(F)F
    .locals 1

    .line 354
    iget v0, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mDensity:F

    mul-float v0, v0, p1

    return v0
.end method

.method private ellipsize(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 285
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTextMarginStart:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mHorizontalPadding:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 286
    iget-boolean v1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mHasContextMenu:Z

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mContextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    iget v2, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mHorizontalPadding:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_1

    goto :goto_1

    .line 292
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 293
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private init()V
    .locals 4

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 87
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mDensity:F

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/music/common/UIUtils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mIsRtl:Z

    const/high16 v1, 0x42900000    # 72.0f

    .line 90
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/ui/DrawerItemView;->dp(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTextMarginStart:I

    const/high16 v1, 0x41800000    # 16.0f

    .line 91
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/ui/DrawerItemView;->dp(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mHorizontalPadding:I

    const/high16 v1, 0x41c00000    # 24.0f

    .line 92
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/ui/DrawerItemView;->dp(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mIconSize:I

    .line 94
    iget-object v1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/music/common/ThemeColor;->primaryText(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 95
    iget-object v1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTextPaint:Landroid/text/TextPaint;

    const-string v2, "sans-serif-medium"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 96
    iget-object v1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTextPaint:Landroid/text/TextPaint;

    iget-boolean v2, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mIsRtl:Z

    if-eqz v2, :cond_0

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 97
    iget-object v1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTextPaint:Landroid/text/TextPaint;

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v2, 0x41600000    # 14.0f

    mul-float v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/ThemeColor;->secondaryText(Landroid/content/Context;)I

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mContextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mContextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {p0, v1}, Lcom/sonyericsson/music/ui/DrawerItemView;->dp(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mContextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 104
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/DrawerItemView;->loadRippleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mContextRipple:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private loadRippleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 318
    sget-object v0, Lcom/sonyericsson/music/ui/DrawerItemView;->sCachedRippleDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 320
    new-array v0, v0, [I

    const v1, 0x7f0401aa

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 321
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 322
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 323
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 324
    sput-object v1, Lcom/sonyericsson/music/ui/DrawerItemView;->sCachedRippleDrawable:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    .line 326
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private notifyOnContextMenuClicked()V
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mListener:Lcom/sonyericsson/music/ui/DrawerItemView$OnClickListener;

    if-eqz v0, :cond_0

    .line 349
    invoke-interface {v0, p0}, Lcom/sonyericsson/music/ui/DrawerItemView$OnClickListener;->onContextMenuClicked(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private notifyOnItemClicked()V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mListener:Lcom/sonyericsson/music/ui/DrawerItemView$OnClickListener;

    if-eqz v0, :cond_0

    .line 343
    invoke-interface {v0, p0}, Lcom/sonyericsson/music/ui/DrawerItemView$OnClickListener;->onItemClicked(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setRippleState(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 331
    iget-object p1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mContextRipple:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/sonyericsson/music/ui/DrawerItemView;->RIPPLE_PRESSED_STATE:[I

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 332
    iget-object p1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mContextRipple:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 333
    iget-object p1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mContextRipple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    .line 335
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mContextRipple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 336
    iget-object p1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mContextRipple:Landroid/graphics/drawable/Drawable;

    new-instance v1, Lcom/sonyericsson/music/ui/DrawerItemView$InvalidateCallback;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/music/ui/DrawerItemView$InvalidateCallback;-><init>(Lcom/sonyericsson/music/ui/DrawerItemView;Lcom/sonyericsson/music/ui/DrawerItemView$1;)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 338
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateIconBounds(II)V
    .locals 4

    .line 298
    iget v0, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mIconSize:I

    div-int/lit8 v0, v0, 0x2

    if-lez p2, :cond_1

    .line 299
    iget-object v1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 300
    div-int/lit8 p2, p2, 0x2

    .line 302
    iget-boolean v1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mIsRtl:Z

    if-eqz v1, :cond_0

    .line 303
    iget v1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mHorizontalPadding:I

    sub-int/2addr p1, v1

    sub-int/2addr p1, v0

    goto :goto_0

    .line 305
    :cond_0
    iget p1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mHorizontalPadding:I

    add-int/2addr p1, v0

    .line 307
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    sub-int v2, p1, v0

    sub-int v3, p2, v0

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    invoke-virtual {v1, v2, v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTitleShortened:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 247
    iget-object v0, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTextPosition:[F

    const/4 v1, 0x0

    aget v5, v0, v1

    const/4 v1, 0x1

    .line 248
    aget v6, v0, v1

    .line 249
    iget-object v2, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTitleShortened:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTextPaint:Landroid/text/TextPaint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 252
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mHasContextMenu:Z

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mContextRipple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 254
    iget-object v0, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mDotPositions:[F

    iget-object v1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mContextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPoints([FLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 110
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/16 p2, 0x42

    if-eq p1, p2, :cond_2

    const/16 p2, 0x17

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 114
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/DrawerItemView;->notifyOnItemClicked()V

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 199
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    sub-int p1, p4, p2

    sub-int/2addr p5, p3

    int-to-float p3, p5

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    .line 205
    iget-object v1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v0

    .line 206
    iget-object v2, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTextPosition:[F

    iget-boolean v3, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mIsRtl:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTextMarginStart:I

    sub-int v3, p1, v3

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTextMarginStart:I

    :goto_0
    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 207
    iget-object v2, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTextPosition:[F

    sub-float v1, p3, v1

    const/4 v3, 0x1

    aput v1, v2, v3

    .line 209
    iget-object v1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mContextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    .line 210
    iget-object v2, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mContextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float/2addr v2, v0

    .line 211
    iget-boolean v0, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mIsRtl:Z

    if-eqz v0, :cond_1

    .line 212
    iget-object p4, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mDotPositions:[F

    iget v0, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mHorizontalPadding:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    add-float/2addr p2, v2

    aput p2, p4, v4

    goto :goto_1

    .line 214
    :cond_1
    iget-object p2, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mDotPositions:[F

    iget v0, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mHorizontalPadding:I

    sub-int/2addr p4, v0

    int-to-float p4, p4

    sub-float/2addr p4, v2

    aput p4, p2, v4

    .line 217
    :goto_1
    iget-object p2, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mDotPositions:[F

    aput p3, p2, v3

    const/4 p3, 0x2

    .line 218
    aget p4, p2, v4

    aput p4, p2, p3

    const/4 p3, 0x3

    .line 219
    aget p4, p2, v3

    sub-float/2addr p4, v1

    sub-float/2addr p4, v2

    aput p4, p2, p3

    const/4 p3, 0x4

    .line 220
    aget p4, p2, v4

    aput p4, p2, p3

    const/4 p3, 0x5

    .line 221
    aget p4, p2, v3

    add-float/2addr p4, v1

    add-float/2addr p4, v2

    aput p4, p2, p3

    .line 223
    iget-object p3, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mContextRipple:Landroid/graphics/drawable/Drawable;

    aget p2, p2, v4

    const/high16 p4, 0x41c00000    # 24.0f

    .line 224
    invoke-direct {p0, p4}, Lcom/sonyericsson/music/ui/DrawerItemView;->dp(F)F

    move-result v0

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-object v0, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mDotPositions:[F

    aget v0, v0, v4

    .line 226
    invoke-direct {p0, p4}, Lcom/sonyericsson/music/ui/DrawerItemView;->dp(F)F

    move-result p4

    add-float/2addr v0, p4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p4

    .line 223
    invoke-virtual {p3, p2, v4, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 230
    invoke-direct {p0, p1, p5}, Lcom/sonyericsson/music/ui/DrawerItemView;->updateIconBounds(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 184
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 185
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result p1

    if-nez p1, :cond_0

    const/high16 p1, 0x42400000    # 48.0f

    .line 188
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/DrawerItemView;->dp(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 191
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    if-ge p2, p1, :cond_1

    .line 193
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 235
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 236
    iget-object p1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTitle:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/DrawerItemView;->ellipsize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTitleShortened:Ljava/lang/String;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    .line 178
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 168
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTouchState:Lcom/sonyericsson/music/ui/DrawerItemView$Touching;

    .line 169
    sget-object v1, Lcom/sonyericsson/music/ui/DrawerItemView$Touching;->NOTHING:Lcom/sonyericsson/music/ui/DrawerItemView$Touching;

    iput-object v1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTouchState:Lcom/sonyericsson/music/ui/DrawerItemView$Touching;

    .line 170
    sget-object v1, Lcom/sonyericsson/music/ui/DrawerItemView$Touching;->CONTEXT:Lcom/sonyericsson/music/ui/DrawerItemView$Touching;

    if-ne v0, v1, :cond_0

    .line 171
    invoke-direct {p0, v3}, Lcom/sonyericsson/music/ui/DrawerItemView;->setRippleState(Z)V

    return v4

    .line 174
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 147
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTouchState:Lcom/sonyericsson/music/ui/DrawerItemView$Touching;

    sget-object v1, Lcom/sonyericsson/music/ui/DrawerItemView$Touching;->CONTEXT:Lcom/sonyericsson/music/ui/DrawerItemView$Touching;

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    return v3

    .line 150
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTouchState:Lcom/sonyericsson/music/ui/DrawerItemView$Touching;

    .line 151
    sget-object v1, Lcom/sonyericsson/music/ui/DrawerItemView$Touching;->NOTHING:Lcom/sonyericsson/music/ui/DrawerItemView$Touching;

    iput-object v1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTouchState:Lcom/sonyericsson/music/ui/DrawerItemView$Touching;

    .line 152
    sget-object v1, Lcom/sonyericsson/music/ui/DrawerItemView$1;->$SwitchMap$com$sonyericsson$music$ui$DrawerItemView$Touching:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 163
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 159
    :pswitch_3
    invoke-virtual {p0}, Lcom/sonyericsson/music/ui/DrawerItemView;->performClick()Z

    return v4

    .line 154
    :pswitch_4
    invoke-direct {p0, v3}, Lcom/sonyericsson/music/ui/DrawerItemView;->setRippleState(Z)V

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/DrawerItemView;->notifyOnContextMenuClicked()V

    return v4

    .line 134
    :pswitch_5
    iget-object v2, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTouchState:Lcom/sonyericsson/music/ui/DrawerItemView$Touching;

    sget-object v3, Lcom/sonyericsson/music/ui/DrawerItemView$Touching;->NOTHING:Lcom/sonyericsson/music/ui/DrawerItemView$Touching;

    if-ne v2, v3, :cond_4

    .line 135
    iget-object v2, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mContextRipple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    sget-object p1, Lcom/sonyericsson/music/ui/DrawerItemView$Touching;->CONTEXT:Lcom/sonyericsson/music/ui/DrawerItemView$Touching;

    iput-object p1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTouchState:Lcom/sonyericsson/music/ui/DrawerItemView$Touching;

    .line 137
    invoke-direct {p0, v4}, Lcom/sonyericsson/music/ui/DrawerItemView;->setRippleState(Z)V

    return v4

    .line 140
    :cond_3
    sget-object v0, Lcom/sonyericsson/music/ui/DrawerItemView$Touching;->ITEM:Lcom/sonyericsson/music/ui/DrawerItemView$Touching;

    iput-object v0, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTouchState:Lcom/sonyericsson/music/ui/DrawerItemView$Touching;

    .line 141
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 144
    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public performClick()Z
    .locals 1

    .line 123
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    .line 124
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/DrawerItemView;->notifyOnItemClicked()V

    const/4 v0, 0x1

    return v0
.end method

.method public setClickListener(Lcom/sonyericsson/music/ui/DrawerItemView$OnClickListener;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mListener:Lcom/sonyericsson/music/ui/DrawerItemView$OnClickListener;

    return-void
.end method

.method public setHasContextMenu(Z)V
    .locals 0

    .line 263
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mHasContextMenu:Z

    .line 264
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 270
    iget-object p1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/music/common/UIUtils;->isUseDarkTheme(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 271
    iget-object p1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 274
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/ui/DrawerItemView;->updateIconBounds(II)V

    .line 275
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTitle:Ljava/lang/String;

    .line 280
    iget-object p1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTitle:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/DrawerItemView;->ellipsize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/ui/DrawerItemView;->mTitleShortened:Ljava/lang/String;

    .line 281
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
