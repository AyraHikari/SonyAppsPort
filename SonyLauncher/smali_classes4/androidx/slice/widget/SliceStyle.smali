.class public Landroidx/slice/widget/SliceStyle;
.super Ljava/lang/Object;
.source "SliceStyle.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultRowStyleRes:I

.field private final mExpandToAvailableHeight:Z

.field private final mGridAllImagesHeight:I

.field private final mGridBigPicMaxHeight:I

.field private final mGridBigPicMinHeight:I

.field private final mGridBottomPadding:I

.field private final mGridImageTextHeight:I

.field private final mGridMaxHeight:I

.field private final mGridMinHeight:I

.field private final mGridRawImageTextHeight:I

.field private final mGridSubtitleSize:I

.field private final mGridTitleSize:I

.field private final mGridTopPadding:I

.field private final mHeaderSubtitleSize:I

.field private final mHeaderTitleSize:I

.field private final mHideHeaderRow:Z

.field private final mImageCornerRadius:F

.field private final mListLargeHeight:I

.field private final mListMinScrollHeight:I

.field private final mResourceToRowStyle:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/slice/widget/RowStyle;",
            ">;"
        }
    .end annotation
.end field

.field private final mRowInlineRangeHeight:I

.field private final mRowMaxHeight:I

.field private final mRowMinHeight:I

.field private final mRowRangeHeight:I

.field private final mRowSelectionHeight:I

.field private final mRowSingleTextWithRangeHeight:I

.field private final mRowSingleTextWithSelectionHeight:I

.field private mRowStyleFactory:Landroidx/slice/widget/RowStyleFactory;

.field private final mRowTextWithRangeHeight:I

.field private final mRowTextWithSelectionHeight:I

.field private final mSubtitleColor:I

.field private final mSubtitleSize:I

.field private mTintColor:I

.field private final mTitleColor:I

.field private final mTitleSize:I

.field private final mVerticalGridTextPadding:I

.field private final mVerticalHeaderTextPadding:I

.field private final mVerticalTextPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 96
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, v1, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    .line 89
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v1, Landroidx/slice/widget/SliceStyle;->mResourceToRowStyle:Landroid/util/SparseArray;

    .line 97
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Landroidx/slice/view/R$styleable;->SliceView:[I

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 100
    .local v2, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v3, Landroidx/slice/view/R$styleable;->SliceView_tintColor:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 101
    .local v3, "themeColor":I
    if-eq v3, v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    iget v0, v1, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    :goto_0
    iput v0, v1, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    .line 102
    sget v0, Landroidx/slice/view/R$styleable;->SliceView_titleColor:I

    const/4 v7, 0x0

    invoke-virtual {v2, v0, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, v1, Landroidx/slice/widget/SliceStyle;->mTitleColor:I

    .line 103
    sget v0, Landroidx/slice/view/R$styleable;->SliceView_subtitleColor:I

    invoke-virtual {v2, v0, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, v1, Landroidx/slice/widget/SliceStyle;->mSubtitleColor:I

    .line 105
    sget v0, Landroidx/slice/view/R$styleable;->SliceView_headerTitleSize:I

    const/4 v8, 0x0

    invoke-virtual {v2, v0, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroidx/slice/widget/SliceStyle;->mHeaderTitleSize:I

    .line 107
    sget v0, Landroidx/slice/view/R$styleable;->SliceView_headerSubtitleSize:I

    invoke-virtual {v2, v0, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroidx/slice/widget/SliceStyle;->mHeaderSubtitleSize:I

    .line 109
    sget v0, Landroidx/slice/view/R$styleable;->SliceView_headerTextVerticalPadding:I

    invoke-virtual {v2, v0, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroidx/slice/widget/SliceStyle;->mVerticalHeaderTextPadding:I

    .line 112
    sget v0, Landroidx/slice/view/R$styleable;->SliceView_titleSize:I

    invoke-virtual {v2, v0, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroidx/slice/widget/SliceStyle;->mTitleSize:I

    .line 113
    sget v0, Landroidx/slice/view/R$styleable;->SliceView_subtitleSize:I

    invoke-virtual {v2, v0, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroidx/slice/widget/SliceStyle;->mSubtitleSize:I

    .line 115
    sget v0, Landroidx/slice/view/R$styleable;->SliceView_textVerticalPadding:I

    invoke-virtual {v2, v0, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroidx/slice/widget/SliceStyle;->mVerticalTextPadding:I

    .line 118
    sget v0, Landroidx/slice/view/R$styleable;->SliceView_gridTitleSize:I

    invoke-virtual {v2, v0, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroidx/slice/widget/SliceStyle;->mGridTitleSize:I

    .line 119
    sget v0, Landroidx/slice/view/R$styleable;->SliceView_gridSubtitleSize:I

    invoke-virtual {v2, v0, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroidx/slice/widget/SliceStyle;->mGridSubtitleSize:I

    .line 121
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v9, Landroidx/slice/view/R$dimen;->abc_slice_grid_text_inner_padding:I

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 123
    .local v0, "defaultVerticalGridPadding":I
    sget v9, Landroidx/slice/view/R$styleable;->SliceView_gridTextVerticalPadding:I

    int-to-float v10, v0

    invoke-virtual {v2, v9, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    float-to-int v9, v9

    iput v9, v1, Landroidx/slice/widget/SliceStyle;->mVerticalGridTextPadding:I

    .line 125
    sget v9, Landroidx/slice/view/R$styleable;->SliceView_gridTopPadding:I

    invoke-virtual {v2, v9, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    float-to-int v9, v9

    iput v9, v1, Landroidx/slice/widget/SliceStyle;->mGridTopPadding:I

    .line 126
    sget v9, Landroidx/slice/view/R$styleable;->SliceView_gridBottomPadding:I

    invoke-virtual {v2, v9, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    float-to-int v9, v9

    iput v9, v1, Landroidx/slice/widget/SliceStyle;->mGridBottomPadding:I

    .line 128
    sget v9, Landroidx/slice/view/R$styleable;->SliceView_rowStyle:I

    invoke-virtual {v2, v9, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v1, Landroidx/slice/widget/SliceStyle;->mDefaultRowStyleRes:I

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Landroidx/slice/view/R$dimen;->abc_slice_row_min_height:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 132
    .local v9, "defaultRowMinHeight":I
    sget v10, Landroidx/slice/view/R$styleable;->SliceView_rowMinHeight:I

    int-to-float v11, v9

    invoke-virtual {v2, v10, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    float-to-int v10, v10

    iput v10, v1, Landroidx/slice/widget/SliceStyle;->mRowMinHeight:I

    .line 135
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Landroidx/slice/view/R$dimen;->abc_slice_row_max_height:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 137
    .local v10, "defaultRowMaxHeight":I
    sget v11, Landroidx/slice/view/R$styleable;->SliceView_rowMaxHeight:I

    int-to-float v12, v10

    invoke-virtual {v2, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    float-to-int v11, v11

    iput v11, v1, Landroidx/slice/widget/SliceStyle;->mRowMaxHeight:I

    .line 140
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Landroidx/slice/view/R$dimen;->abc_slice_row_range_height:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 142
    .local v11, "defaultRowRangeHeight":I
    sget v12, Landroidx/slice/view/R$styleable;->SliceView_rowRangeHeight:I

    int-to-float v13, v11

    invoke-virtual {v2, v12, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v12

    float-to-int v12, v12

    iput v12, v1, Landroidx/slice/widget/SliceStyle;->mRowRangeHeight:I

    .line 145
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Landroidx/slice/view/R$dimen;->abc_slice_row_range_single_text_height:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 147
    .local v12, "defaultRowSingleTextWithRangeHeight":I
    sget v13, Landroidx/slice/view/R$styleable;->SliceView_rowRangeSingleTextHeight:I

    int-to-float v14, v12

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v13

    float-to-int v13, v13

    iput v13, v1, Landroidx/slice/widget/SliceStyle;->mRowSingleTextWithRangeHeight:I

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Landroidx/slice/view/R$dimen;->abc_slice_row_range_inline_height:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 153
    .local v13, "defaultRowInlineRangeHeight":I
    sget v14, Landroidx/slice/view/R$styleable;->SliceView_rowInlineRangeHeight:I

    int-to-float v15, v13

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v14

    float-to-int v14, v14

    iput v14, v1, Landroidx/slice/widget/SliceStyle;->mRowInlineRangeHeight:I

    .line 156
    sget v14, Landroidx/slice/view/R$styleable;->SliceView_expandToAvailableHeight:I

    invoke-virtual {v2, v14, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    iput-boolean v14, v1, Landroidx/slice/widget/SliceStyle;->mExpandToAvailableHeight:Z

    .line 159
    sget v14, Landroidx/slice/view/R$styleable;->SliceView_hideHeaderRow:I

    invoke-virtual {v2, v14, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v1, Landroidx/slice/widget/SliceStyle;->mHideHeaderRow:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 161
    move-object/from16 v7, p1

    :try_start_1
    iput-object v7, v1, Landroidx/slice/widget/SliceStyle;->mContext:Landroid/content/Context;

    .line 163
    sget v14, Landroidx/slice/view/R$styleable;->SliceView_imageCornerRadius:I

    invoke-virtual {v2, v14, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    iput v8, v1, Landroidx/slice/widget/SliceStyle;->mImageCornerRadius:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    .end local v0    # "defaultVerticalGridPadding":I
    .end local v3    # "themeColor":I
    .end local v9    # "defaultRowMinHeight":I
    .end local v10    # "defaultRowMaxHeight":I
    .end local v11    # "defaultRowRangeHeight":I
    .end local v12    # "defaultRowSingleTextWithRangeHeight":I
    .end local v13    # "defaultRowInlineRangeHeight":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 166
    nop

    .line 170
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 172
    .local v0, "r":Landroid/content/res/Resources;
    sget v3, Landroidx/slice/view/R$dimen;->abc_slice_row_range_multi_text_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroidx/slice/widget/SliceStyle;->mRowTextWithRangeHeight:I

    .line 174
    sget v3, Landroidx/slice/view/R$dimen;->abc_slice_row_selection_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroidx/slice/widget/SliceStyle;->mRowSelectionHeight:I

    .line 175
    sget v3, Landroidx/slice/view/R$dimen;->abc_slice_row_selection_multi_text_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroidx/slice/widget/SliceStyle;->mRowTextWithSelectionHeight:I

    .line 177
    sget v3, Landroidx/slice/view/R$dimen;->abc_slice_row_selection_single_text_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroidx/slice/widget/SliceStyle;->mRowSingleTextWithSelectionHeight:I

    .line 180
    sget v3, Landroidx/slice/view/R$dimen;->abc_slice_big_pic_min_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroidx/slice/widget/SliceStyle;->mGridBigPicMinHeight:I

    .line 181
    sget v3, Landroidx/slice/view/R$dimen;->abc_slice_big_pic_max_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroidx/slice/widget/SliceStyle;->mGridBigPicMaxHeight:I

    .line 182
    sget v3, Landroidx/slice/view/R$dimen;->abc_slice_grid_image_only_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroidx/slice/widget/SliceStyle;->mGridAllImagesHeight:I

    .line 183
    sget v3, Landroidx/slice/view/R$dimen;->abc_slice_grid_image_text_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroidx/slice/widget/SliceStyle;->mGridImageTextHeight:I

    .line 184
    sget v3, Landroidx/slice/view/R$dimen;->abc_slice_grid_raw_image_text_offset:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroidx/slice/widget/SliceStyle;->mGridRawImageTextHeight:I

    .line 186
    sget v3, Landroidx/slice/view/R$dimen;->abc_slice_grid_min_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroidx/slice/widget/SliceStyle;->mGridMinHeight:I

    .line 187
    sget v3, Landroidx/slice/view/R$dimen;->abc_slice_grid_max_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroidx/slice/widget/SliceStyle;->mGridMaxHeight:I

    .line 189
    sget v3, Landroidx/slice/view/R$dimen;->abc_slice_row_min_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroidx/slice/widget/SliceStyle;->mListMinScrollHeight:I

    .line 190
    sget v3, Landroidx/slice/view/R$dimen;->abc_slice_large_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroidx/slice/widget/SliceStyle;->mListLargeHeight:I

    .line 191
    return-void

    .line 165
    .end local v0    # "r":Landroid/content/res/Resources;
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v7, p1

    :goto_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 166
    throw v0
.end method

.method private shouldSkipFirstListItem(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/widget/SliceContent;",
            ">;)Z"
        }
    .end annotation

    .line 537
    .local p1, "rowItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/widget/SliceContent;>;"
    invoke-virtual {p0}, Landroidx/slice/widget/SliceStyle;->getHideHeaderRow()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_0

    .line 538
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/RowContent;

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getIsHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 537
    :goto_0
    return v1
.end method


# virtual methods
.method public getApplyCornerRadiusToLargeImages()Z
    .locals 2

    .line 316
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mImageCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getExpandToAvailableHeight()Z
    .locals 1

    .line 308
    iget-boolean v0, p0, Landroidx/slice/widget/SliceStyle;->mExpandToAvailableHeight:Z

    return v0
.end method

.method public getGridBottomPadding()I
    .locals 1

    .line 262
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mGridBottomPadding:I

    return v0
.end method

.method public getGridHeight(Landroidx/slice/widget/GridContent;Landroidx/slice/widget/SliceViewPolicy;)I
    .locals 9
    .param p1, "grid"    # Landroidx/slice/widget/GridContent;
    .param p2, "policy"    # Landroidx/slice/widget/SliceViewPolicy;

    .line 362
    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->getMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 363
    .local v0, "isSmall":Z
    :goto_0
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 364
    return v1

    .line 366
    :cond_1
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->getLargestImageMode()I

    move-result v3

    .line 368
    .local v3, "largestImageMode":I
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_6

    .line 369
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->getGridContent()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 370
    if-eqz v0, :cond_2

    .line 371
    iget v2, p0, Landroidx/slice/widget/SliceStyle;->mGridBigPicMinHeight:I

    goto :goto_1

    .line 372
    :cond_2
    iget v2, p0, Landroidx/slice/widget/SliceStyle;->mGridBigPicMaxHeight:I

    goto :goto_1

    .line 373
    :cond_3
    if-nez v3, :cond_4

    .line 374
    iget v2, p0, Landroidx/slice/widget/SliceStyle;->mGridMinHeight:I

    goto :goto_1

    .line 375
    :cond_4
    if-ne v3, v5, :cond_5

    .line 376
    iget-object v2, p0, Landroidx/slice/widget/SliceStyle;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroidx/slice/widget/GridContent;->getFirstImageSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 377
    :cond_5
    iget v2, p0, Landroidx/slice/widget/SliceStyle;->mGridAllImagesHeight:I

    :goto_1
    nop

    .local v2, "height":I
    goto :goto_6

    .line 379
    .end local v2    # "height":I
    :cond_6
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->getMaxCellLineCount()I

    move-result v4

    if-le v4, v2, :cond_7

    move v4, v2

    goto :goto_2

    :cond_7
    move v4, v1

    .line 380
    .local v4, "twoLines":Z
    :goto_2
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->hasImage()Z

    move-result v6

    .line 381
    .local v6, "hasImage":Z
    if-eqz v3, :cond_9

    const/4 v7, 0x5

    if-ne v3, v7, :cond_8

    goto :goto_3

    :cond_8
    move v7, v1

    goto :goto_4

    :cond_9
    :goto_3
    move v7, v2

    .line 383
    .local v7, "iconImagesOrNone":Z
    :goto_4
    if-ne v3, v5, :cond_b

    .line 384
    iget-object v5, p0, Landroidx/slice/widget/SliceStyle;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroidx/slice/widget/GridContent;->getFirstImageSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 385
    if-eqz v4, :cond_a

    const/4 v2, 0x2

    :cond_a
    iget v8, p0, Landroidx/slice/widget/SliceStyle;->mGridRawImageTextHeight:I

    mul-int/2addr v2, v8

    add-int/2addr v5, v2

    goto :goto_5

    .line 386
    :cond_b
    if-eqz v4, :cond_d

    if-nez v0, :cond_d

    .line 387
    if-eqz v6, :cond_c

    .line 388
    iget v5, p0, Landroidx/slice/widget/SliceStyle;->mGridMaxHeight:I

    goto :goto_5

    .line 389
    :cond_c
    iget v5, p0, Landroidx/slice/widget/SliceStyle;->mGridMinHeight:I

    goto :goto_5

    .line 390
    :cond_d
    if-eqz v7, :cond_e

    .line 391
    iget v5, p0, Landroidx/slice/widget/SliceStyle;->mGridMinHeight:I

    goto :goto_5

    .line 392
    :cond_e
    iget v5, p0, Landroidx/slice/widget/SliceStyle;->mGridImageTextHeight:I

    :goto_5
    move v2, v5

    .line 394
    .end local v4    # "twoLines":Z
    .end local v6    # "hasImage":Z
    .end local v7    # "iconImagesOrNone":Z
    .restart local v2    # "height":I
    :goto_6
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->getRowIndex()I

    move-result v4

    if-nez v4, :cond_f

    .line 395
    iget v4, p0, Landroidx/slice/widget/SliceStyle;->mGridTopPadding:I

    goto :goto_7

    :cond_f
    move v4, v1

    .line 396
    .local v4, "topPadding":I
    :goto_7
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->getIsLastIndex()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 397
    iget v1, p0, Landroidx/slice/widget/SliceStyle;->mGridBottomPadding:I

    goto :goto_8

    :cond_10
    nop

    .line 398
    .local v1, "bottomPadding":I
    :goto_8
    add-int v5, v2, v4

    add-int/2addr v5, v1

    return v5
.end method

.method public getGridSubtitleSize()I
    .locals 1

    .line 250
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mGridSubtitleSize:I

    return v0
.end method

.method public getGridTitleSize()I
    .locals 1

    .line 246
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mGridTitleSize:I

    return v0
.end method

.method public getGridTopPadding()I
    .locals 1

    .line 258
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mGridTopPadding:I

    return v0
.end method

.method public getHeaderSubtitleSize()I
    .locals 1

    .line 226
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mHeaderSubtitleSize:I

    return v0
.end method

.method public getHeaderTitleSize()I
    .locals 1

    .line 222
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mHeaderTitleSize:I

    return v0
.end method

.method public getHideHeaderRow()Z
    .locals 1

    .line 312
    iget-boolean v0, p0, Landroidx/slice/widget/SliceStyle;->mHideHeaderRow:Z

    return v0
.end method

.method public getImageCornerRadius()F
    .locals 1

    .line 320
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mImageCornerRadius:F

    return v0
.end method

.method public getListHeight(Landroidx/slice/widget/ListContent;Landroidx/slice/widget/SliceViewPolicy;)I
    .locals 7
    .param p1, "list"    # Landroidx/slice/widget/ListContent;
    .param p2, "policy"    # Landroidx/slice/widget/SliceViewPolicy;

    .line 402
    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 403
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getHeader()Landroidx/slice/widget/RowContent;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Landroidx/slice/widget/RowContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v0

    return v0

    .line 405
    :cond_0
    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->getMaxHeight()I

    move-result v0

    .line 406
    .local v0, "maxHeight":I
    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->isScrollable()Z

    move-result v2

    .line 408
    .local v2, "scrollable":Z
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Landroidx/slice/widget/SliceStyle;->getListItemsHeight(Ljava/util/List;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v3

    .line 409
    .local v3, "desiredHeight":I
    if-lez v0, :cond_1

    .line 411
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getHeader()Landroidx/slice/widget/RowContent;

    move-result-object v4

    invoke-virtual {v4, p0, p2}, Landroidx/slice/widget/RowContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v4

    .line 412
    .local v4, "smallHeight":I
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 414
    .end local v4    # "smallHeight":I
    :cond_1
    if-lez v0, :cond_2

    .line 415
    move v4, v0

    goto :goto_0

    .line 416
    :cond_2
    iget v4, p0, Landroidx/slice/widget/SliceStyle;->mListLargeHeight:I

    :goto_0
    nop

    .line 418
    .local v4, "maxLargeHeight":I
    sub-int v5, v3, v4

    iget v6, p0, Landroidx/slice/widget/SliceStyle;->mListMinScrollHeight:I

    if-lt v5, v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 421
    .local v1, "bigEnoughToScroll":Z
    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroidx/slice/widget/SliceStyle;->getExpandToAvailableHeight()Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v4

    goto :goto_2

    .line 422
    :cond_4
    if-gtz v0, :cond_5

    move v5, v3

    goto :goto_2

    .line 423
    :cond_5
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_2
    nop

    .line 424
    .local v5, "height":I
    if-nez v2, :cond_6

    .line 425
    nop

    .line 426
    invoke-virtual {p0, p1, v5, p2}, Landroidx/slice/widget/SliceStyle;->getListItemsForNonScrollingList(Landroidx/slice/widget/ListContent;ILandroidx/slice/widget/SliceViewPolicy;)Landroidx/slice/widget/DisplayedListItems;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/slice/widget/DisplayedListItems;->getDisplayedItems()Ljava/util/List;

    move-result-object v6

    .line 425
    invoke-virtual {p0, v6, p2}, Landroidx/slice/widget/SliceStyle;->getListItemsHeight(Ljava/util/List;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v5

    .line 429
    :cond_6
    return v5
.end method

.method public getListItemsForNonScrollingList(Landroidx/slice/widget/ListContent;ILandroidx/slice/widget/SliceViewPolicy;)Landroidx/slice/widget/DisplayedListItems;
    .locals 11
    .param p1, "list"    # Landroidx/slice/widget/ListContent;
    .param p2, "availableHeight"    # I
    .param p3, "policy"    # Landroidx/slice/widget/SliceViewPolicy;

    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 463
    .local v0, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/widget/SliceContent;>;"
    const/4 v1, 0x0

    .line 464
    .local v1, "hiddenItemCount":I
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_6

    .line 468
    :cond_0
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/slice/widget/SliceStyle;->shouldSkipFirstListItem(Ljava/util/List;)Z

    move-result v2

    .line 470
    .local v2, "skipFirstItem":Z
    const/4 v3, 0x0

    .line 471
    .local v3, "visibleHeight":I
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 472
    .local v4, "rowCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_3

    .line 473
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/slice/widget/SliceContent;

    .line 474
    .local v6, "listItem":Landroidx/slice/widget/SliceContent;
    if-nez v5, :cond_1

    if-eqz v2, :cond_1

    .line 475
    goto :goto_1

    .line 477
    :cond_1
    invoke-virtual {v6, p0, p3}, Landroidx/slice/widget/SliceContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v7

    .line 478
    .local v7, "itemHeight":I
    if-lez p2, :cond_2

    add-int v8, v3, v7

    if-le v8, p2, :cond_2

    .line 479
    sub-int v1, v4, v5

    .line 480
    goto :goto_2

    .line 482
    :cond_2
    add-int/2addr v3, v7

    .line 483
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    .end local v6    # "listItem":Landroidx/slice/widget/SliceContent;
    .end local v7    # "itemHeight":I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 489
    .end local v5    # "i":I
    :cond_3
    :goto_2
    const/4 v5, 0x1

    if-eqz v2, :cond_4

    move v6, v5

    goto :goto_3

    :cond_4
    const/4 v6, 0x2

    .line 490
    .local v6, "minItemCountForSeeMore":I
    :goto_3
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getSeeMoreItem()Landroidx/slice/widget/SliceContent;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v7, v6, :cond_7

    if-lez v1, :cond_7

    .line 493
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getSeeMoreItem()Landroidx/slice/widget/SliceContent;

    move-result-object v7

    invoke-virtual {v7, p0, p3}, Landroidx/slice/widget/SliceContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v7

    .line 494
    .local v7, "seeMoreHeight":I
    add-int/2addr v3, v7

    .line 497
    :goto_4
    if-le v3, p2, :cond_5

    .line 498
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v8, v6, :cond_5

    .line 499
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v5

    .line 500
    .local v8, "lastIndex":I
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/slice/widget/SliceContent;

    .line 501
    .local v9, "lastItem":Landroidx/slice/widget/SliceContent;
    invoke-virtual {v9, p0, p3}, Landroidx/slice/widget/SliceContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v10

    sub-int/2addr v3, v10

    .line 502
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 503
    nop

    .end local v8    # "lastIndex":I
    .end local v9    # "lastItem":Landroidx/slice/widget/SliceContent;
    add-int/lit8 v1, v1, 0x1

    .line 504
    goto :goto_4

    .line 506
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v5, v6, :cond_6

    .line 507
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getSeeMoreItem()Landroidx/slice/widget/SliceContent;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 510
    :cond_6
    sub-int/2addr v3, v7

    .line 513
    .end local v7    # "seeMoreHeight":I
    :cond_7
    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_8

    .line 515
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/slice/widget/SliceContent;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    :cond_8
    new-instance v5, Landroidx/slice/widget/DisplayedListItems;

    invoke-direct {v5, v0, v1}, Landroidx/slice/widget/DisplayedListItems;-><init>(Ljava/util/List;I)V

    return-object v5

    .line 465
    .end local v2    # "skipFirstItem":Z
    .end local v3    # "visibleHeight":I
    .end local v4    # "rowCount":I
    .end local v6    # "minItemCountForSeeMore":I
    :cond_9
    :goto_6
    new-instance v2, Landroidx/slice/widget/DisplayedListItems;

    invoke-direct {v2, v0, v1}, Landroidx/slice/widget/DisplayedListItems;-><init>(Ljava/util/List;I)V

    return-object v2
.end method

.method public getListItemsHeight(Ljava/util/List;Landroidx/slice/widget/SliceViewPolicy;)I
    .locals 4
    .param p2, "policy"    # Landroidx/slice/widget/SliceViewPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/widget/SliceContent;",
            ">;",
            "Landroidx/slice/widget/SliceViewPolicy;",
            ")I"
        }
    .end annotation

    .line 433
    .local p1, "listItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/widget/SliceContent;>;"
    if-nez p1, :cond_0

    .line 434
    const/4 v0, 0x0

    return v0

    .line 437
    :cond_0
    const/4 v0, 0x0

    .line 438
    .local v0, "height":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 439
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/widget/SliceContent;

    .line 440
    .local v2, "listItem":Landroidx/slice/widget/SliceContent;
    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceStyle;->shouldSkipFirstListItem(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 441
    goto :goto_1

    .line 443
    :cond_1
    invoke-virtual {v2, p0, p2}, Landroidx/slice/widget/SliceContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v3

    add-int/2addr v0, v3

    .line 438
    .end local v2    # "listItem":Landroidx/slice/widget/SliceContent;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 445
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public getListItemsToDisplay(Landroidx/slice/widget/ListContent;)Ljava/util/List;
    .locals 3
    .param p1, "list"    # Landroidx/slice/widget/ListContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/widget/ListContent;",
            ")",
            "Ljava/util/List<",
            "Landroidx/slice/widget/SliceContent;",
            ">;"
        }
    .end annotation

    .line 527
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 528
    .local v0, "rowItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/widget/SliceContent;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceStyle;->shouldSkipFirstListItem(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    const/4 v1, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 531
    :cond_0
    return-object v0
.end method

.method public getRowHeight(Landroidx/slice/widget/RowContent;Landroidx/slice/widget/SliceViewPolicy;)I
    .locals 3
    .param p1, "row"    # Landroidx/slice/widget/RowContent;
    .param p2, "policy"    # Landroidx/slice/widget/SliceViewPolicy;

    .line 324
    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->getMaxSmallHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->getMaxSmallHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mRowMaxHeight:I

    .line 326
    .local v0, "maxHeight":I
    :goto_0
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getSelection()Landroidx/slice/SliceItem;

    move-result-object v1

    if-nez v1, :cond_1

    .line 327
    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->getMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 328
    return v0

    .line 331
    :cond_1
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 333
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getStartItem()Landroidx/slice/SliceItem;

    move-result-object v1

    if-nez v1, :cond_4

    .line 337
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getLineCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 338
    const/4 v1, 0x0

    goto :goto_1

    .line 339
    :cond_2
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getLineCount()I

    move-result v1

    if-le v1, v2, :cond_3

    .line 340
    iget v1, p0, Landroidx/slice/widget/SliceStyle;->mRowTextWithRangeHeight:I

    goto :goto_1

    .line 341
    :cond_3
    iget v1, p0, Landroidx/slice/widget/SliceStyle;->mRowSingleTextWithRangeHeight:I

    :goto_1
    nop

    .line 342
    .local v1, "textAreaHeight":I
    iget v2, p0, Landroidx/slice/widget/SliceStyle;->mRowRangeHeight:I

    add-int/2addr v2, v1

    return v2

    .line 346
    .end local v1    # "textAreaHeight":I
    :cond_4
    iget v1, p0, Landroidx/slice/widget/SliceStyle;->mRowInlineRangeHeight:I

    return v1

    .line 350
    :cond_5
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getSelection()Landroidx/slice/SliceItem;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 353
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getLineCount()I

    move-result v1

    if-le v1, v2, :cond_6

    iget v1, p0, Landroidx/slice/widget/SliceStyle;->mRowTextWithSelectionHeight:I

    goto :goto_2

    .line 354
    :cond_6
    iget v1, p0, Landroidx/slice/widget/SliceStyle;->mRowSingleTextWithSelectionHeight:I

    :goto_2
    nop

    .line 355
    .restart local v1    # "textAreaHeight":I
    iget v2, p0, Landroidx/slice/widget/SliceStyle;->mRowSelectionHeight:I

    add-int/2addr v2, v1

    return v2

    .line 358
    .end local v1    # "textAreaHeight":I
    :cond_7
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getLineCount()I

    move-result v1

    if-gt v1, v2, :cond_9

    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getIsHeader()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    iget v1, p0, Landroidx/slice/widget/SliceStyle;->mRowMinHeight:I

    goto :goto_4

    :cond_9
    :goto_3
    move v1, v0

    :goto_4
    return v1
.end method

.method public getRowInlineRangeHeight()I
    .locals 1

    .line 202
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mRowInlineRangeHeight:I

    return v0
.end method

.method public getRowMaxHeight()I
    .locals 1

    .line 198
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mRowMaxHeight:I

    return v0
.end method

.method public getRowMinHeight()I
    .locals 1

    .line 194
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mRowMinHeight:I

    return v0
.end method

.method public getRowRangeHeight()I
    .locals 1

    .line 300
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mRowRangeHeight:I

    return v0
.end method

.method public getRowSelectionHeight()I
    .locals 1

    .line 304
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mRowSelectionHeight:I

    return v0
.end method

.method public getRowStyle(Landroidx/slice/SliceItem;)Landroidx/slice/widget/RowStyle;
    .locals 4
    .param p1, "sliceItem"    # Landroidx/slice/SliceItem;

    .line 270
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mDefaultRowStyleRes:I

    .line 272
    .local v0, "rowStyleRes":I
    if-eqz p1, :cond_0

    iget-object v1, p0, Landroidx/slice/widget/SliceStyle;->mRowStyleFactory:Landroidx/slice/widget/RowStyleFactory;

    if-eqz v1, :cond_0

    .line 273
    invoke-interface {v1, p1}, Landroidx/slice/widget/RowStyleFactory;->getRowStyleRes(Landroidx/slice/SliceItem;)I

    move-result v1

    .line 274
    .local v1, "maybeStyleRes":I
    if-eqz v1, :cond_0

    .line 275
    move v0, v1

    .line 279
    .end local v1    # "maybeStyleRes":I
    :cond_0
    if-nez v0, :cond_1

    .line 281
    new-instance v1, Landroidx/slice/widget/RowStyle;

    iget-object v2, p0, Landroidx/slice/widget/SliceStyle;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Landroidx/slice/widget/RowStyle;-><init>(Landroid/content/Context;Landroidx/slice/widget/SliceStyle;)V

    return-object v1

    .line 284
    :cond_1
    iget-object v1, p0, Landroidx/slice/widget/SliceStyle;->mResourceToRowStyle:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/widget/RowStyle;

    .line 285
    .local v1, "rowStyle":Landroidx/slice/widget/RowStyle;
    if-nez v1, :cond_2

    .line 286
    new-instance v2, Landroidx/slice/widget/RowStyle;

    iget-object v3, p0, Landroidx/slice/widget/SliceStyle;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0, p0}, Landroidx/slice/widget/RowStyle;-><init>(Landroid/content/Context;ILandroidx/slice/widget/SliceStyle;)V

    move-object v1, v2

    .line 287
    iget-object v2, p0, Landroidx/slice/widget/SliceStyle;->mResourceToRowStyle:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 289
    :cond_2
    return-object v1
.end method

.method public getSubtitleColor()I
    .locals 1

    .line 218
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mSubtitleColor:I

    return v0
.end method

.method public getSubtitleSize()I
    .locals 1

    .line 238
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mSubtitleSize:I

    return v0
.end method

.method public getTintColor()I
    .locals 1

    .line 210
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    return v0
.end method

.method public getTitleColor()I
    .locals 1

    .line 214
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mTitleColor:I

    return v0
.end method

.method public getTitleSize()I
    .locals 1

    .line 234
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mTitleSize:I

    return v0
.end method

.method public getVerticalGridTextPadding()I
    .locals 1

    .line 254
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mVerticalGridTextPadding:I

    return v0
.end method

.method public getVerticalHeaderTextPadding()I
    .locals 1

    .line 230
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mVerticalHeaderTextPadding:I

    return v0
.end method

.method public getVerticalTextPadding()I
    .locals 1

    .line 242
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mVerticalTextPadding:I

    return v0
.end method

.method public setRowStyleFactory(Landroidx/slice/widget/RowStyleFactory;)V
    .locals 0
    .param p1, "rowStyleFactory"    # Landroidx/slice/widget/RowStyleFactory;

    .line 296
    iput-object p1, p0, Landroidx/slice/widget/SliceStyle;->mRowStyleFactory:Landroidx/slice/widget/RowStyleFactory;

    .line 297
    return-void
.end method

.method public setTintColor(I)V
    .locals 0
    .param p1, "tint"    # I

    .line 206
    iput p1, p0, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    .line 207
    return-void
.end method
