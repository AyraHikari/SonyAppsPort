.class public Landroidx/cardview/widget/CardView;
.super Landroid/widget/FrameLayout;
.source "CardView.java"


# static fields
.field private static final COLOR_BACKGROUND_ATTR:[I

.field private static final IMPL:Landroidx/cardview/widget/CardViewImpl;


# instance fields
.field private final mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

.field private mCompatPadding:Z

.field final mContentPadding:Landroid/graphics/Rect;

.field private mPreventCornerOverlap:Z

.field final mShadowBounds:Landroid/graphics/Rect;

.field mUserSetMinHeight:I

.field mUserSetMinWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 82
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010031

    aput v2, v0, v1

    sput-object v0, Landroidx/cardview/widget/CardView;->COLOR_BACKGROUND_ATTR:[I

    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 87
    new-instance v0, Landroidx/cardview/widget/CardViewApi21Impl;

    invoke-direct {v0}, Landroidx/cardview/widget/CardViewApi21Impl;-><init>()V

    sput-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    goto :goto_0

    .line 88
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 89
    new-instance v0, Landroidx/cardview/widget/CardViewApi17Impl;

    invoke-direct {v0}, Landroidx/cardview/widget/CardViewApi17Impl;-><init>()V

    sput-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    goto :goto_0

    .line 91
    :cond_1
    new-instance v0, Landroidx/cardview/widget/CardViewBaseImpl;

    invoke-direct {v0}, Landroidx/cardview/widget/CardViewBaseImpl;-><init>()V

    sput-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    .line 93
    :goto_0
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    invoke-interface {v0}, Landroidx/cardview/widget/CardViewImpl;->initStatic()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 118
    sget v0, Landroidx/cardview/R$attr;->cardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 122
    move-object/from16 v7, p0

    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v7, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    .line 111
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Landroidx/cardview/widget/CardView;->mShadowBounds:Landroid/graphics/Rect;

    .line 450
    new-instance v10, Landroidx/cardview/widget/CardView$1;

    invoke-direct {v10, v7}, Landroidx/cardview/widget/CardView$1;-><init>(Landroidx/cardview/widget/CardView;)V

    iput-object v10, v7, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    .line 124
    sget-object v0, Landroidx/cardview/R$styleable;->CardView:[I

    sget v1, Landroidx/cardview/R$style;->CardView:I

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    move/from16 v13, p3

    invoke-virtual {v15, v14, v0, v13, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 126
    .local v12, "a":Landroid/content/res/TypedArray;
    sget-object v2, Landroidx/cardview/R$styleable;->CardView:[I

    sget v6, Landroidx/cardview/R$style;->CardView:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object v4, v12

    move/from16 v5, p3

    invoke-static/range {v0 .. v6}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 129
    sget v0, Landroidx/cardview/R$styleable;->CardView_cardBackgroundColor:I

    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 130
    sget v0, Landroidx/cardview/R$styleable;->CardView_cardBackgroundColor:I

    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .local v0, "backgroundColor":Landroid/content/res/ColorStateList;
    goto :goto_1

    .line 133
    .end local v0    # "backgroundColor":Landroid/content/res/ColorStateList;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/cardview/widget/CardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroidx/cardview/widget/CardView;->COLOR_BACKGROUND_ATTR:[I

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 134
    .local v0, "aa":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 135
    .local v2, "themeColorBackground":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 138
    const/4 v3, 0x3

    new-array v3, v3, [F

    .line 139
    .local v3, "hsv":[F
    invoke-static {v2, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 140
    const/4 v4, 0x2

    aget v4, v3, v4

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 141
    invoke-virtual/range {p0 .. p0}, Landroidx/cardview/widget/CardView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroidx/cardview/R$color;->cardview_light_background:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/cardview/widget/CardView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroidx/cardview/R$color;->cardview_dark_background:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 140
    :goto_0
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v0, v4

    .line 144
    .end local v2    # "themeColorBackground":I
    .end local v3    # "hsv":[F
    .local v0, "backgroundColor":Landroid/content/res/ColorStateList;
    :goto_1
    sget v2, Landroidx/cardview/R$styleable;->CardView_cardCornerRadius:I

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 145
    .local v2, "radius":F
    sget v4, Landroidx/cardview/R$styleable;->CardView_cardElevation:I

    invoke-virtual {v12, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 146
    .local v4, "elevation":F
    sget v5, Landroidx/cardview/R$styleable;->CardView_cardMaxElevation:I

    invoke-virtual {v12, v5, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 147
    .local v3, "maxElevation":F
    sget v5, Landroidx/cardview/R$styleable;->CardView_cardUseCompatPadding:I

    invoke-virtual {v12, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v7, Landroidx/cardview/widget/CardView;->mCompatPadding:Z

    .line 148
    sget v5, Landroidx/cardview/R$styleable;->CardView_cardPreventCornerOverlap:I

    const/4 v6, 0x1

    invoke-virtual {v12, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v7, Landroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    .line 149
    sget v5, Landroidx/cardview/R$styleable;->CardView_contentPadding:I

    invoke-virtual {v12, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 150
    .local v5, "defaultPadding":I
    sget v6, Landroidx/cardview/R$styleable;->CardView_contentPaddingLeft:I

    invoke-virtual {v12, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v8, Landroid/graphics/Rect;->left:I

    .line 152
    sget v6, Landroidx/cardview/R$styleable;->CardView_contentPaddingTop:I

    invoke-virtual {v12, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v8, Landroid/graphics/Rect;->top:I

    .line 154
    sget v6, Landroidx/cardview/R$styleable;->CardView_contentPaddingRight:I

    invoke-virtual {v12, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v8, Landroid/graphics/Rect;->right:I

    .line 156
    sget v6, Landroidx/cardview/R$styleable;->CardView_contentPaddingBottom:I

    invoke-virtual {v12, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v8, Landroid/graphics/Rect;->bottom:I

    .line 158
    cmpl-float v6, v4, v3

    if-lez v6, :cond_2

    .line 159
    move v3, v4

    .line 161
    :cond_2
    sget v6, Landroidx/cardview/R$styleable;->CardView_android_minWidth:I

    invoke-virtual {v12, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v7, Landroidx/cardview/widget/CardView;->mUserSetMinWidth:I

    .line 162
    sget v6, Landroidx/cardview/R$styleable;->CardView_android_minHeight:I

    invoke-virtual {v12, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v7, Landroidx/cardview/widget/CardView;->mUserSetMinHeight:I

    .line 163
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 165
    sget-object v9, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    move-object/from16 v11, p1

    move-object v1, v12

    .end local v12    # "a":Landroid/content/res/TypedArray;
    .local v1, "a":Landroid/content/res/TypedArray;
    move-object v12, v0

    move v13, v2

    move v14, v4

    move v15, v3

    invoke-interface/range {v9 .. v15}, Landroidx/cardview/widget/CardViewImpl;->initialize(Landroidx/cardview/widget/CardViewDelegate;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V

    .line 167
    return-void
.end method

.method static synthetic access$001(Landroidx/cardview/widget/CardView;IIII)V
    .locals 0
    .param p0, "x0"    # Landroidx/cardview/widget/CardView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method static synthetic access$101(Landroidx/cardview/widget/CardView;I)V
    .locals 0
    .param p0, "x0"    # Landroidx/cardview/widget/CardView;
    .param p1, "x1"    # I

    .line 80
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    return-void
.end method

.method static synthetic access$201(Landroidx/cardview/widget/CardView;I)V
    .locals 0
    .param p0, "x0"    # Landroidx/cardview/widget/CardView;
    .param p1, "x1"    # I

    .line 80
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    return-void
.end method


# virtual methods
.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 2

    .line 306
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v0, v1}, Landroidx/cardview/widget/CardViewImpl;->getBackgroundColor(Landroidx/cardview/widget/CardViewDelegate;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getCardElevation()F
    .locals 2

    .line 390
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v0, v1}, Landroidx/cardview/widget/CardViewImpl;->getElevation(Landroidx/cardview/widget/CardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    .line 346
    iget-object v0, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    .line 316
    iget-object v0, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    .line 326
    iget-object v0, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    .line 336
    iget-object v0, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getMaxCardElevation()F
    .locals 2

    .line 416
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v0, v1}, Landroidx/cardview/widget/CardViewImpl;->getMaxElevation(Landroidx/cardview/widget/CardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 1

    .line 427
    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    return v0
.end method

.method public getRadius()F
    .locals 2

    .line 367
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v0, v1}, Landroidx/cardview/widget/CardViewImpl;->getRadius(Landroidx/cardview/widget/CardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->mCompatPadding:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 235
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    instance-of v1, v0, Landroidx/cardview/widget/CardViewApi21Impl;

    if-nez v1, :cond_0

    .line 236
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 237
    .local v1, "widthMode":I
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 240
    :sswitch_0
    iget-object v2, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v0, v2}, Landroidx/cardview/widget/CardViewImpl;->getMinWidth(Landroidx/cardview/widget/CardViewDelegate;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 241
    .local v2, "minWidth":I
    nop

    .line 242
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 241
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 243
    nop

    .line 249
    .end local v2    # "minWidth":I
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 250
    .local v2, "heightMode":I
    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    .line 253
    :sswitch_1
    iget-object v3, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v0, v3}, Landroidx/cardview/widget/CardViewImpl;->getMinHeight(Landroidx/cardview/widget/CardViewDelegate;)F

    move-result v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    .line 254
    .local v0, "minHeight":I
    nop

    .line 255
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 254
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 256
    nop

    .line 261
    .end local v0    # "minHeight":I
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 262
    .end local v1    # "widthMode":I
    .end local v2    # "heightMode":I
    goto :goto_2

    .line 263
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 265
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public setCardBackgroundColor(I)V
    .locals 3
    .param p1, "color"    # I

    .line 286
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroidx/cardview/widget/CardViewImpl;->setBackgroundColor(Landroidx/cardview/widget/CardViewDelegate;Landroid/content/res/ColorStateList;)V

    .line 287
    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 296
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v0, v1, p1}, Landroidx/cardview/widget/CardViewImpl;->setBackgroundColor(Landroidx/cardview/widget/CardViewDelegate;Landroid/content/res/ColorStateList;)V

    .line 297
    return-void
.end method

.method public setCardElevation(F)V
    .locals 2
    .param p1, "elevation"    # F

    .line 379
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v0, v1, p1}, Landroidx/cardview/widget/CardViewImpl;->setElevation(Landroidx/cardview/widget/CardViewDelegate;F)V

    .line 380
    return-void
.end method

.method public setContentPadding(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 229
    iget-object v0, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 230
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v0, v1}, Landroidx/cardview/widget/CardViewImpl;->updatePadding(Landroidx/cardview/widget/CardViewDelegate;)V

    .line 231
    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 2
    .param p1, "maxElevation"    # F

    .line 405
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v0, v1, p1}, Landroidx/cardview/widget/CardViewImpl;->setMaxElevation(Landroidx/cardview/widget/CardViewDelegate;F)V

    .line 406
    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0
    .param p1, "minHeight"    # I

    .line 275
    iput p1, p0, Landroidx/cardview/widget/CardView;->mUserSetMinHeight:I

    .line 276
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 277
    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0
    .param p1, "minWidth"    # I

    .line 269
    iput p1, p0, Landroidx/cardview/widget/CardView;->mUserSetMinWidth:I

    .line 270
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 271
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 172
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 177
    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 2
    .param p1, "preventCornerOverlap"    # Z

    .line 444
    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    if-eq p1, v0, :cond_0

    .line 445
    iput-boolean p1, p0, Landroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    .line 446
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v0, v1}, Landroidx/cardview/widget/CardViewImpl;->onPreventCornerOverlapChanged(Landroidx/cardview/widget/CardViewDelegate;)V

    .line 448
    :cond_0
    return-void
.end method

.method public setRadius(F)V
    .locals 2
    .param p1, "radius"    # F

    .line 357
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v0, v1, p1}, Landroidx/cardview/widget/CardViewImpl;->setRadius(Landroidx/cardview/widget/CardViewDelegate;F)V

    .line 358
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 2
    .param p1, "useCompatPadding"    # Z

    .line 206
    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->mCompatPadding:Z

    if-eq v0, p1, :cond_0

    .line 207
    iput-boolean p1, p0, Landroidx/cardview/widget/CardView;->mCompatPadding:Z

    .line 208
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewImpl;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardViewDelegate;

    invoke-interface {v0, v1}, Landroidx/cardview/widget/CardViewImpl;->onCompatPaddingChanged(Landroidx/cardview/widget/CardViewDelegate;)V

    .line 210
    :cond_0
    return-void
.end method
