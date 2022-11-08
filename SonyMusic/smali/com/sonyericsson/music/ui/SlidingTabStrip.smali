.class Lcom/sonyericsson/music/ui/SlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source "SlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/ui/SlidingTabStrip$SimpleTabColorizer;
    }
.end annotation


# static fields
.field private static final DEFAULT_BOTTOM_BORDER_COLOR_ALPHA:B = 0x26t

.field private static final DEFAULT_BOTTOM_BORDER_THICKNESS_DIPS:I = 0x0

.field private static final DEFAULT_DIVIDER_COLOR_ALPHA:B = 0x20t

.field private static final DEFAULT_DIVIDER_HEIGHT:F = 0.5f

.field private static final DEFAULT_DIVIDER_THICKNESS_DIPS:I = 0x1

.field private static final DEFAULT_SELECTED_INDICATOR_COLOR:I = -0xcc4a1b

.field private static final SELECTED_INDICATOR_THICKNESS_DIPS:I = 0x3


# instance fields
.field private final mBottomBorderPaint:Landroid/graphics/Paint;

.field private final mBottomBorderThickness:I

.field private mCustomTabColorizer:Lcom/sonyericsson/music/ui/SlidingTabLayout$TabColorizer;

.field private final mDefaultBottomBorderColor:I

.field private final mDefaultTabColorizer:Lcom/sonyericsson/music/ui/SlidingTabStrip$SimpleTabColorizer;

.field private final mDividerHeight:F

.field private final mDividerPaint:Landroid/graphics/Paint;

.field private final mSelectedIndicatorPaint:Landroid/graphics/Paint;

.field private final mSelectedIndicatorThickness:I

.field private mSelectedPosition:I

.field private mSelectionOffset:F


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/ui/SlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 69
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 71
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 73
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/4 v2, 0x1

    const v3, 0x1010030

    invoke-virtual {p1, v3, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 75
    iget p1, v1, Landroid/util/TypedValue;->data:I

    const/16 v1, 0x26

    .line 78
    invoke-static {p1, v1}, Lcom/sonyericsson/music/ui/SlidingTabStrip;->setColorAlpha(IB)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mDefaultBottomBorderColor:I

    .line 80
    new-instance v1, Lcom/sonyericsson/music/ui/SlidingTabStrip$SimpleTabColorizer;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/sonyericsson/music/ui/SlidingTabStrip$SimpleTabColorizer;-><init>(Lcom/sonyericsson/music/ui/SlidingTabStrip$1;)V

    iput-object v1, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mDefaultTabColorizer:Lcom/sonyericsson/music/ui/SlidingTabStrip$SimpleTabColorizer;

    .line 81
    iget-object v1, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mDefaultTabColorizer:Lcom/sonyericsson/music/ui/SlidingTabStrip$SimpleTabColorizer;

    new-array v3, v2, [I

    const v4, -0xcc4a1b

    aput v4, v3, p2

    invoke-virtual {v1, v3}, Lcom/sonyericsson/music/ui/SlidingTabStrip$SimpleTabColorizer;->setIndicatorColors([I)V

    .line 82
    iget-object v1, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mDefaultTabColorizer:Lcom/sonyericsson/music/ui/SlidingTabStrip$SimpleTabColorizer;

    new-array v2, v2, [I

    const/16 v3, 0x20

    .line 83
    invoke-static {p1, v3}, Lcom/sonyericsson/music/ui/SlidingTabStrip;->setColorAlpha(IB)I

    move-result p1

    aput p1, v2, p2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/ui/SlidingTabStrip$SimpleTabColorizer;->setDividerColors([I)V

    const/4 p1, 0x0

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 85
    iput p1, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mBottomBorderThickness:I

    .line 86
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mBottomBorderPaint:Landroid/graphics/Paint;

    .line 87
    iget-object p1, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mBottomBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mDefaultBottomBorderColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p1, 0x40400000    # 3.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 89
    iput p1, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mSelectedIndicatorThickness:I

    .line 90
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    const/high16 p1, 0x3f000000    # 0.5f

    .line 92
    iput p1, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mDividerHeight:F

    .line 93
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mDividerPaint:Landroid/graphics/Paint;

    .line 94
    iget-object p1, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mDividerPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 97
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    return-void
.end method

.method private static blendColors(IIF)I
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 188
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    .line 189
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    .line 190
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float p0, p0, p2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v0

    add-float/2addr p0, p1

    float-to-int p1, v1

    float-to-int p2, v2

    float-to-int p0, p0

    .line 191
    invoke-static {p1, p2, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method private static setColorAlpha(IB)I
    .locals 2

    .line 177
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 127
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 128
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 129
    iget v2, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mDividerHeight:F

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v11, v0

    mul-float v2, v2, v11

    float-to-int v2, v2

    .line 131
    iget-object v5, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mCustomTabColorizer:Lcom/sonyericsson/music/ui/SlidingTabLayout$TabColorizer;

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mDefaultTabColorizer:Lcom/sonyericsson/music/ui/SlidingTabStrip$SimpleTabColorizer;

    :goto_0
    move-object v12, v5

    if-lez v1, :cond_3

    .line 135
    iget v5, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 136
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 137
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    .line 138
    iget v7, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mSelectedPosition:I

    invoke-interface {v12, v7}, Lcom/sonyericsson/music/ui/SlidingTabLayout$TabColorizer;->getIndicatorColor(I)I

    move-result v7

    .line 140
    iget v8, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mSelectionOffset:F

    cmpl-float v3, v8, v3

    if-lez v3, :cond_2

    iget v3, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v3, v8, :cond_2

    .line 141
    iget v3, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v12, v3}, Lcom/sonyericsson/music/ui/SlidingTabLayout$TabColorizer;->getIndicatorColor(I)I

    move-result v3

    if-eq v7, v3, :cond_1

    .line 143
    iget v8, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mSelectionOffset:F

    invoke-static {v3, v7, v8}, Lcom/sonyericsson/music/ui/SlidingTabStrip;->blendColors(IIF)I

    move-result v3

    move v7, v3

    .line 147
    :cond_1
    iget v3, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 148
    iget v8, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    mul-float v8, v8, v9

    iget v9, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mSelectionOffset:F

    sub-float v10, v4, v9

    int-to-float v6, v6

    mul-float v10, v10, v6

    add-float/2addr v8, v10

    float-to-int v6, v8

    .line 150
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    mul-float v9, v9, v3

    iget v3, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mSelectionOffset:F

    sub-float/2addr v4, v3

    int-to-float v3, v5

    mul-float v4, v4, v3

    add-float/2addr v9, v4

    float-to-int v5, v9

    .line 154
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v6, v6

    .line 156
    iget v3, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mSelectedIndicatorThickness:I

    sub-int v3, v0, v3

    int-to-float v7, v3

    int-to-float v8, v5

    iget-object v10, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v9, v11

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    const/4 v6, 0x0

    .line 161
    iget v3, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mBottomBorderThickness:I

    sub-int v3, v0, v3

    int-to-float v7, v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    int-to-float v8, v3

    iget-object v10, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mBottomBorderPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v9, v11

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sub-int/2addr v0, v2

    .line 164
    div-int/lit8 v0, v0, 0x2

    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_4

    .line 166
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 167
    iget-object v5, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mDividerPaint:Landroid/graphics/Paint;

    invoke-interface {v12, v3}, Lcom/sonyericsson/music/ui/SlidingTabLayout$TabColorizer;->getDividerColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v7, v5

    int-to-float v8, v0

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v9, v4

    add-int v4, v0, v2

    int-to-float v10, v4

    iget-object v11, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mDividerPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method onViewPagerPageChanged(IF)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mSelectedPosition:I

    .line 121
    iput p2, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mSelectionOffset:F

    .line 122
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method setCustomTabColorizer(Lcom/sonyericsson/music/ui/SlidingTabLayout$TabColorizer;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mCustomTabColorizer:Lcom/sonyericsson/music/ui/SlidingTabLayout$TabColorizer;

    .line 102
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method varargs setDividerColors([I)V
    .locals 1

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mCustomTabColorizer:Lcom/sonyericsson/music/ui/SlidingTabLayout$TabColorizer;

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mDefaultTabColorizer:Lcom/sonyericsson/music/ui/SlidingTabStrip$SimpleTabColorizer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/ui/SlidingTabStrip$SimpleTabColorizer;->setDividerColors([I)V

    .line 116
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method varargs setSelectedIndicatorColors([I)V
    .locals 1

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mCustomTabColorizer:Lcom/sonyericsson/music/ui/SlidingTabLayout$TabColorizer;

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip;->mDefaultTabColorizer:Lcom/sonyericsson/music/ui/SlidingTabStrip$SimpleTabColorizer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/ui/SlidingTabStrip$SimpleTabColorizer;->setIndicatorColors([I)V

    .line 109
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method
