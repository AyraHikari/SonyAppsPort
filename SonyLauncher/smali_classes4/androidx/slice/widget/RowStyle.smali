.class public Landroidx/slice/widget/RowStyle;
.super Ljava/lang/Object;
.source "RowStyle.java"


# static fields
.field public static final UNBOUNDED:I = -0x1


# instance fields
.field private mActionDividerHeight:I

.field private mBottomDividerEndPadding:I

.field private mBottomDividerStartPadding:I

.field private mContentEndPadding:I

.field private mContentStartPadding:I

.field private mDisableRecyclerViewItemAnimator:Z

.field private mEndItemEndPadding:I

.field private mEndItemStartPadding:I

.field private mIconSize:I

.field private mImageSize:I

.field private mProgressBarEndPadding:I

.field private mProgressBarInlineWidth:I

.field private mProgressBarStartPadding:I

.field private mSeekBarInlineWidth:I

.field private final mSliceStyle:Landroidx/slice/widget/SliceStyle;

.field private mSubContentEndPadding:I

.field private mSubContentStartPadding:I

.field private mSubtitleColor:Ljava/lang/Integer;

.field private mTextActionPadding:I

.field private mTintColor:Ljava/lang/Integer;

.field private mTitleColor:Ljava/lang/Integer;

.field private mTitleEndPadding:I

.field private mTitleItemEndPadding:I

.field private mTitleItemStartPadding:I

.field private mTitleStartPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroidx/slice/widget/SliceStyle;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "sliceStyle"    # Landroidx/slice/widget/SliceStyle;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mTitleItemStartPadding:I

    .line 41
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mTitleItemEndPadding:I

    .line 42
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mContentStartPadding:I

    .line 43
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mContentEndPadding:I

    .line 44
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mTitleStartPadding:I

    .line 45
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mTitleEndPadding:I

    .line 46
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mSubContentStartPadding:I

    .line 47
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mSubContentEndPadding:I

    .line 48
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mEndItemStartPadding:I

    .line 49
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mEndItemEndPadding:I

    .line 50
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mBottomDividerStartPadding:I

    .line 51
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mBottomDividerEndPadding:I

    .line 52
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mActionDividerHeight:I

    .line 53
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mSeekBarInlineWidth:I

    .line 54
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mProgressBarInlineWidth:I

    .line 55
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mProgressBarStartPadding:I

    .line 56
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mProgressBarEndPadding:I

    .line 57
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mTextActionPadding:I

    .line 58
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mIconSize:I

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/slice/widget/RowStyle;->mDisableRecyclerViewItemAnimator:Z

    .line 75
    iput-object p3, p0, Landroidx/slice/widget/RowStyle;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Landroidx/slice/view/R$styleable;->RowStyle:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 78
    .local v1, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v2, Landroidx/slice/view/R$styleable;->RowStyle_titleItemStartPadding:I

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/RowStyle;->mTitleItemStartPadding:I

    .line 80
    sget v2, Landroidx/slice/view/R$styleable;->RowStyle_titleItemEndPadding:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/RowStyle;->mTitleItemEndPadding:I

    .line 82
    sget v2, Landroidx/slice/view/R$styleable;->RowStyle_contentStartPadding:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/RowStyle;->mContentStartPadding:I

    .line 84
    sget v2, Landroidx/slice/view/R$styleable;->RowStyle_contentEndPadding:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/RowStyle;->mContentEndPadding:I

    .line 86
    sget v2, Landroidx/slice/view/R$styleable;->RowStyle_titleStartPadding:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/RowStyle;->mTitleStartPadding:I

    .line 88
    sget v2, Landroidx/slice/view/R$styleable;->RowStyle_titleEndPadding:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/RowStyle;->mTitleEndPadding:I

    .line 90
    sget v2, Landroidx/slice/view/R$styleable;->RowStyle_subContentStartPadding:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/RowStyle;->mSubContentStartPadding:I

    .line 92
    sget v2, Landroidx/slice/view/R$styleable;->RowStyle_subContentEndPadding:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/RowStyle;->mSubContentEndPadding:I

    .line 94
    sget v2, Landroidx/slice/view/R$styleable;->RowStyle_endItemStartPadding:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/RowStyle;->mEndItemStartPadding:I

    .line 96
    sget v2, Landroidx/slice/view/R$styleable;->RowStyle_endItemEndPadding:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/RowStyle;->mEndItemEndPadding:I

    .line 98
    sget v2, Landroidx/slice/view/R$styleable;->RowStyle_bottomDividerStartPadding:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/RowStyle;->mBottomDividerStartPadding:I

    .line 100
    sget v2, Landroidx/slice/view/R$styleable;->RowStyle_bottomDividerEndPadding:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/RowStyle;->mBottomDividerEndPadding:I

    .line 102
    sget v2, Landroidx/slice/view/R$styleable;->RowStyle_actionDividerHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/RowStyle;->mActionDividerHeight:I

    .line 104
    sget v2, Landroidx/slice/view/R$styleable;->RowStyle_seekBarInlineWidth:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/RowStyle;->mSeekBarInlineWidth:I

    .line 106
    sget v2, Landroidx/slice/view/R$styleable;->RowStyle_progressBarInlineWidth:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/RowStyle;->mProgressBarInlineWidth:I

    .line 108
    sget v2, Landroidx/slice/view/R$styleable;->RowStyle_progressBarStartPadding:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/RowStyle;->mProgressBarStartPadding:I

    .line 110
    sget v2, Landroidx/slice/view/R$styleable;->RowStyle_progressBarEndPadding:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/RowStyle;->mProgressBarEndPadding:I

    .line 112
    sget v2, Landroidx/slice/view/R$styleable;->RowStyle_textActionPadding:I

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/RowStyle;->mTextActionPadding:I

    .line 114
    sget v2, Landroidx/slice/view/R$styleable;->RowStyle_iconSize:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/RowStyle;->mIconSize:I

    .line 116
    sget v2, Landroidx/slice/view/R$styleable;->RowStyle_disableRecyclerViewItemAnimator:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/slice/widget/RowStyle;->mDisableRecyclerViewItemAnimator:Z

    .line 118
    sget v0, Landroidx/slice/view/R$styleable;->RowStyle_imageSize:I

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroidx/slice/view/R$dimen;->abc_slice_small_image_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 118
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mImageSize:I

    .line 124
    sget v0, Landroidx/slice/view/R$styleable;->RowStyle_tintColor:I

    invoke-static {v1, v0}, Landroidx/slice/widget/RowStyle;->getOptionalColor(Landroid/content/res/TypedArray;I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/RowStyle;->mTintColor:Ljava/lang/Integer;

    .line 125
    sget v0, Landroidx/slice/view/R$styleable;->RowStyle_titleColor:I

    invoke-static {v1, v0}, Landroidx/slice/widget/RowStyle;->getOptionalColor(Landroid/content/res/TypedArray;I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/RowStyle;->mTitleColor:Ljava/lang/Integer;

    .line 126
    sget v0, Landroidx/slice/view/R$styleable;->RowStyle_subtitleColor:I

    invoke-static {v1, v0}, Landroidx/slice/widget/RowStyle;->getOptionalColor(Landroid/content/res/TypedArray;I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/RowStyle;->mSubtitleColor:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 129
    nop

    .line 130
    return-void

    .line 128
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 129
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/slice/widget/SliceStyle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sliceStyle"    # Landroidx/slice/widget/SliceStyle;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mTitleItemStartPadding:I

    .line 41
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mTitleItemEndPadding:I

    .line 42
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mContentStartPadding:I

    .line 43
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mContentEndPadding:I

    .line 44
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mTitleStartPadding:I

    .line 45
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mTitleEndPadding:I

    .line 46
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mSubContentStartPadding:I

    .line 47
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mSubContentEndPadding:I

    .line 48
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mEndItemStartPadding:I

    .line 49
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mEndItemEndPadding:I

    .line 50
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mBottomDividerStartPadding:I

    .line 51
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mBottomDividerEndPadding:I

    .line 52
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mActionDividerHeight:I

    .line 53
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mSeekBarInlineWidth:I

    .line 54
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mProgressBarInlineWidth:I

    .line 55
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mProgressBarStartPadding:I

    .line 56
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mProgressBarEndPadding:I

    .line 57
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mTextActionPadding:I

    .line 58
    iput v0, p0, Landroidx/slice/widget/RowStyle;->mIconSize:I

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/slice/widget/RowStyle;->mDisableRecyclerViewItemAnimator:Z

    .line 69
    iput-object p2, p0, Landroidx/slice/widget/RowStyle;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_small_image_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mImageSize:I

    .line 72
    return-void
.end method

.method private static getOptionalColor(Landroid/content/res/TypedArray;I)Ljava/lang/Integer;
    .locals 1
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "colorRes"    # I

    .line 230
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getActionDividerHeight()I
    .locals 1

    .line 181
    iget v0, p0, Landroidx/slice/widget/RowStyle;->mActionDividerHeight:I

    return v0
.end method

.method public getBottomDividerEndPadding()I
    .locals 1

    .line 177
    iget v0, p0, Landroidx/slice/widget/RowStyle;->mBottomDividerEndPadding:I

    return v0
.end method

.method public getBottomDividerStartPadding()I
    .locals 1

    .line 173
    iget v0, p0, Landroidx/slice/widget/RowStyle;->mBottomDividerStartPadding:I

    return v0
.end method

.method public getContentEndPadding()I
    .locals 1

    .line 145
    iget v0, p0, Landroidx/slice/widget/RowStyle;->mContentEndPadding:I

    return v0
.end method

.method public getContentStartPadding()I
    .locals 1

    .line 141
    iget v0, p0, Landroidx/slice/widget/RowStyle;->mContentStartPadding:I

    return v0
.end method

.method public getDisableRecyclerViewItemAnimator()Z
    .locals 1

    .line 209
    iget-boolean v0, p0, Landroidx/slice/widget/RowStyle;->mDisableRecyclerViewItemAnimator:Z

    return v0
.end method

.method public getEndItemEndPadding()I
    .locals 1

    .line 169
    iget v0, p0, Landroidx/slice/widget/RowStyle;->mEndItemEndPadding:I

    return v0
.end method

.method public getEndItemStartPadding()I
    .locals 1

    .line 165
    iget v0, p0, Landroidx/slice/widget/RowStyle;->mEndItemStartPadding:I

    return v0
.end method

.method public getIconSize()I
    .locals 1

    .line 205
    iget v0, p0, Landroidx/slice/widget/RowStyle;->mIconSize:I

    return v0
.end method

.method public getImageSize()I
    .locals 1

    .line 213
    iget v0, p0, Landroidx/slice/widget/RowStyle;->mImageSize:I

    return v0
.end method

.method public getProgressBarEndPadding()I
    .locals 1

    .line 197
    iget v0, p0, Landroidx/slice/widget/RowStyle;->mProgressBarEndPadding:I

    return v0
.end method

.method public getProgressBarInlineWidth()I
    .locals 1

    .line 189
    iget v0, p0, Landroidx/slice/widget/RowStyle;->mProgressBarInlineWidth:I

    return v0
.end method

.method public getProgressBarStartPadding()I
    .locals 1

    .line 193
    iget v0, p0, Landroidx/slice/widget/RowStyle;->mProgressBarStartPadding:I

    return v0
.end method

.method public getSeekBarInlineWidth()I
    .locals 1

    .line 185
    iget v0, p0, Landroidx/slice/widget/RowStyle;->mSeekBarInlineWidth:I

    return v0
.end method

.method public getSubContentEndPadding()I
    .locals 1

    .line 161
    iget v0, p0, Landroidx/slice/widget/RowStyle;->mSubContentEndPadding:I

    return v0
.end method

.method public getSubContentStartPadding()I
    .locals 1

    .line 157
    iget v0, p0, Landroidx/slice/widget/RowStyle;->mSubContentStartPadding:I

    return v0
.end method

.method public getSubtitleColor()I
    .locals 1

    .line 225
    iget-object v0, p0, Landroidx/slice/widget/RowStyle;->mSubtitleColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RowStyle;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceStyle;->getSubtitleColor()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getTextActionPadding()I
    .locals 1

    .line 201
    iget v0, p0, Landroidx/slice/widget/RowStyle;->mTextActionPadding:I

    return v0
.end method

.method public getTintColor()I
    .locals 1

    .line 217
    iget-object v0, p0, Landroidx/slice/widget/RowStyle;->mTintColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RowStyle;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceStyle;->getTintColor()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getTitleColor()I
    .locals 1

    .line 221
    iget-object v0, p0, Landroidx/slice/widget/RowStyle;->mTitleColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RowStyle;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceStyle;->getTitleColor()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getTitleEndPadding()I
    .locals 1

    .line 153
    iget v0, p0, Landroidx/slice/widget/RowStyle;->mTitleEndPadding:I

    return v0
.end method

.method public getTitleItemEndPadding()I
    .locals 1

    .line 137
    iget v0, p0, Landroidx/slice/widget/RowStyle;->mTitleItemEndPadding:I

    return v0
.end method

.method public getTitleItemStartPadding()I
    .locals 1

    .line 133
    iget v0, p0, Landroidx/slice/widget/RowStyle;->mTitleItemStartPadding:I

    return v0
.end method

.method public getTitleStartPadding()I
    .locals 1

    .line 149
    iget v0, p0, Landroidx/slice/widget/RowStyle;->mTitleStartPadding:I

    return v0
.end method
