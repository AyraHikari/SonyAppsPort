.class public Landroidx/slice/widget/GridRowView;
.super Landroidx/slice/widget/SliceChildView;
.source "GridRowView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/GridRowView$TimeSetListener;,
        Landroidx/slice/widget/GridRowView$DateSetListener;
    }
.end annotation


# static fields
.field private static final MAX_CELL_IMAGES:I = 0x1

.field private static final MAX_CELL_TEXT:I = 0x2

.field private static final MAX_CELL_TEXT_SMALL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GridRowView"

.field private static final TEXT_LAYOUT:I


# instance fields
.field protected final mForeground:Landroid/view/View;

.field protected mGridContent:Landroidx/slice/widget/GridContent;

.field private final mGutter:I

.field private mHiddenItemCount:I

.field protected final mIconSize:I

.field protected final mLargeImageHeight:I

.field private final mLoc:[I

.field mMaxCellUpdateScheduled:Z

.field protected mMaxCells:I

.field private final mMaxCellsUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field protected mRowCount:I

.field protected mRowIndex:I

.field protected final mSmallImageMinWidth:I

.field protected final mSmallImageSize:I

.field private final mTextPadding:I

.field protected final mViewContainer:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    sget v0, Landroidx/slice/view/R$layout;->abc_slice_secondary_text:I

    sput v0, Landroidx/slice/widget/GridRowView;->TEXT_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/slice/widget/GridRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 158
    invoke-direct {p0, p1, p2}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/slice/widget/GridRowView;->mLoc:[I

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mMaxCells:I

    .line 851
    new-instance v1, Landroidx/slice/widget/GridRowView$2;

    invoke-direct {v1, p0}, Landroidx/slice/widget/GridRowView$2;-><init>(Landroidx/slice/widget/GridRowView;)V

    iput-object v1, p0, Landroidx/slice/widget/GridRowView;->mMaxCellsUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 159
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 160
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    .line 161
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 162
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Landroidx/slice/widget/GridRowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 164
    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_icon_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroidx/slice/widget/GridRowView;->mIconSize:I

    .line 165
    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_small_image_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroidx/slice/widget/GridRowView;->mSmallImageSize:I

    .line 166
    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_grid_image_only_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroidx/slice/widget/GridRowView;->mLargeImageHeight:I

    .line 167
    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_grid_image_min_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroidx/slice/widget/GridRowView;->mSmallImageMinWidth:I

    .line 168
    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_grid_gutter:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroidx/slice/widget/GridRowView;->mGutter:I

    .line 169
    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_grid_text_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroidx/slice/widget/GridRowView;->mTextPadding:I

    .line 171
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    .line 172
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Landroidx/slice/widget/GridRowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    return-void
.end method

.method private addCell(Landroidx/slice/widget/GridContent$CellContent;II)V
    .locals 32
    .param p1, "cell"    # Landroidx/slice/widget/GridContent$CellContent;
    .param p2, "index"    # I
    .param p3, "total"    # I

    .line 395
    move-object/from16 v6, p0

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/GridRowView;->getMode()I

    move-result v0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_0

    iget-object v0, v6, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    move v0, v10

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    move v11, v0

    .line 397
    .local v11, "maxCellText":I
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v12, v0

    .line 398
    .local v12, "cellContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 399
    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 401
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/widget/GridContent$CellContent;->getCellItems()Ljava/util/ArrayList;

    move-result-object v13

    .line 402
    .local v13, "cellItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/SliceItem;>;"
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/widget/GridContent$CellContent;->getContentIntent()Landroidx/slice/SliceItem;

    move-result-object v14

    .line 403
    .local v14, "contentIntentItem":Landroidx/slice/SliceItem;
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/widget/GridContent$CellContent;->getPicker()Landroidx/slice/SliceItem;

    move-result-object v15

    .line 404
    .local v15, "pickerItem":Landroidx/slice/SliceItem;
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/widget/GridContent$CellContent;->getToggleItem()Landroidx/slice/SliceItem;

    move-result-object v5

    .line 406
    .local v5, "toggleItem":Landroidx/slice/SliceItem;
    const/4 v0, 0x0

    .line 407
    .local v0, "textCount":I
    const/4 v1, 0x0

    .line 408
    .local v1, "imageCount":I
    const/4 v2, 0x0

    .line 409
    .local v2, "added":Z
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v10, :cond_1

    move v3, v10

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move/from16 v16, v3

    .line 410
    .local v16, "isSingleItem":Z
    const/4 v3, 0x0

    .line 412
    .local v3, "textItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    const-string v9, "text"

    if-nez v16, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/GridRowView;->getMode()I

    move-result v4

    if-ne v4, v10, :cond_6

    .line 414
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 415
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v10, v18

    check-cast v10, Landroidx/slice/SliceItem;

    .line 416
    .local v10, "cellItem":Landroidx/slice/SliceItem;
    move/from16 v18, v0

    .end local v0    # "textCount":I
    .local v18, "textCount":I
    invoke-virtual {v10}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 417
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    .end local v10    # "cellItem":Landroidx/slice/SliceItem;
    :cond_2
    move/from16 v0, v18

    const/4 v10, 0x1

    goto :goto_2

    .line 421
    .end local v18    # "textCount":I
    .restart local v0    # "textCount":I
    :cond_3
    move/from16 v18, v0

    .end local v0    # "textCount":I
    .restart local v18    # "textCount":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 422
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/slice/SliceItem;>;"
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v11, :cond_5

    .line 423
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    .line 424
    .local v4, "item":Landroidx/slice/SliceItem;
    const-string v10, "title"

    move/from16 v19, v1

    .end local v1    # "imageCount":I
    .local v19, "imageCount":I
    const-string v1, "large"

    filled-new-array {v10, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 425
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 427
    .end local v4    # "item":Landroidx/slice/SliceItem;
    :cond_4
    move/from16 v1, v19

    goto :goto_3

    .line 422
    .end local v19    # "imageCount":I
    .restart local v1    # "imageCount":I
    :cond_5
    move/from16 v19, v1

    .end local v1    # "imageCount":I
    .restart local v19    # "imageCount":I
    move-object v10, v3

    goto :goto_4

    .line 412
    .end local v18    # "textCount":I
    .end local v19    # "imageCount":I
    .local v0, "textCount":I
    .restart local v1    # "imageCount":I
    :cond_6
    move/from16 v18, v0

    move/from16 v19, v1

    .line 429
    .end local v0    # "textCount":I
    .end local v1    # "imageCount":I
    .restart local v18    # "textCount":I
    .restart local v19    # "imageCount":I
    move-object v10, v3

    .end local v3    # "textItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    .local v10, "textItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    :goto_4
    const/4 v0, 0x0

    .line 430
    .local v0, "prevItem":Landroidx/slice/SliceItem;
    const/4 v1, 0x0

    move-object v4, v0

    move/from16 v3, v18

    move/from16 v18, v2

    move v2, v1

    move/from16 v1, v19

    .end local v0    # "prevItem":Landroidx/slice/SliceItem;
    .end local v19    # "imageCount":I
    .restart local v1    # "imageCount":I
    .local v2, "i":I
    .local v3, "textCount":I
    .local v4, "prevItem":Landroidx/slice/SliceItem;
    .local v18, "added":Z
    :goto_5
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_f

    .line 431
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/SliceItem;

    .line 432
    .local v0, "item":Landroidx/slice/SliceItem;
    move-object/from16 v19, v13

    .end local v13    # "cellItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/SliceItem;>;"
    .local v19, "cellItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/SliceItem;>;"
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v13

    .line 433
    .local v13, "itemFormat":Ljava/lang/String;
    move-object/from16 v20, v14

    .end local v14    # "contentIntentItem":Landroidx/slice/SliceItem;
    .local v20, "contentIntentItem":Landroidx/slice/SliceItem;
    invoke-direct {v6, v4}, Landroidx/slice/widget/GridRowView;->determinePadding(Landroidx/slice/SliceItem;)I

    move-result v14

    .line 434
    .local v14, "padding":I
    if-ge v3, v11, :cond_a

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 435
    move/from16 v21, v2

    .end local v2    # "i":I
    .local v21, "i":I
    const-string v2, "long"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_6

    .line 434
    .end local v21    # "i":I
    .restart local v2    # "i":I
    :cond_7
    move/from16 v21, v2

    .line 436
    .end local v2    # "i":I
    .restart local v21    # "i":I
    :goto_6
    if-eqz v10, :cond_8

    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 437
    move/from16 v24, v1

    move/from16 v25, v3

    move-object/from16 v26, v5

    move-object/from16 v23, v9

    move-object/from16 v17, v10

    const/4 v10, 0x0

    move-object v9, v4

    goto/16 :goto_7

    .line 439
    :cond_8
    invoke-direct {v6, v0, v12, v14}, Landroidx/slice/widget/GridRowView;->addTextItem(Landroidx/slice/SliceItem;Landroid/view/ViewGroup;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 440
    move-object v2, v0

    .line 441
    .end local v4    # "prevItem":Landroidx/slice/SliceItem;
    .local v2, "prevItem":Landroidx/slice/SliceItem;
    add-int/lit8 v3, v3, 0x1

    .line 442
    const/4 v4, 0x1

    move/from16 v18, v4

    move-object/from16 v26, v5

    move-object/from16 v23, v9

    move-object/from16 v17, v10

    const/4 v10, 0x0

    move-object v4, v2

    .end local v18    # "added":Z
    .local v4, "added":Z
    goto/16 :goto_8

    .line 439
    .end local v2    # "prevItem":Landroidx/slice/SliceItem;
    .local v4, "prevItem":Landroidx/slice/SliceItem;
    .restart local v18    # "added":Z
    :cond_9
    move/from16 v24, v1

    move/from16 v25, v3

    move-object/from16 v26, v5

    move-object/from16 v23, v9

    move-object/from16 v17, v10

    const/4 v10, 0x0

    move-object v9, v4

    goto/16 :goto_7

    .line 434
    .end local v21    # "i":I
    .local v2, "i":I
    :cond_a
    move/from16 v21, v2

    .line 444
    .end local v2    # "i":I
    .restart local v21    # "i":I
    :cond_b
    const/4 v2, 0x1

    if-ge v1, v2, :cond_d

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v22, v0

    .end local v0    # "item":Landroidx/slice/SliceItem;
    .local v22, "item":Landroidx/slice/SliceItem;
    const-string v0, "image"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 445
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/widget/GridContent$CellContent;->getOverlayItem()Landroidx/slice/SliceItem;

    move-result-object v2

    iget v0, v6, Landroidx/slice/widget/GridRowView;->mTintColor:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v24, v1

    .end local v1    # "imageCount":I
    .local v24, "imageCount":I
    move-object/from16 v1, v22

    move/from16 v25, v3

    .end local v3    # "textCount":I
    .local v25, "textCount":I
    move/from16 v3, v23

    move-object/from16 v23, v9

    move-object/from16 v17, v10

    const/4 v10, 0x0

    move-object v9, v4

    .end local v4    # "prevItem":Landroidx/slice/SliceItem;
    .end local v10    # "textItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    .local v9, "prevItem":Landroidx/slice/SliceItem;
    .local v17, "textItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    move-object v4, v12

    move-object/from16 v26, v5

    .end local v5    # "toggleItem":Landroidx/slice/SliceItem;
    .local v26, "toggleItem":Landroidx/slice/SliceItem;
    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroidx/slice/widget/GridRowView;->addImageItem(Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;ILandroid/view/ViewGroup;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 447
    move-object/from16 v0, v22

    .line 448
    .end local v9    # "prevItem":Landroidx/slice/SliceItem;
    .local v0, "prevItem":Landroidx/slice/SliceItem;
    add-int/lit8 v1, v24, 0x1

    .line 449
    .end local v24    # "imageCount":I
    .restart local v1    # "imageCount":I
    const/4 v2, 0x1

    move-object v4, v0

    move/from16 v18, v2

    move/from16 v3, v25

    .end local v18    # "added":Z
    .local v2, "added":Z
    goto :goto_8

    .line 444
    .end local v0    # "prevItem":Landroidx/slice/SliceItem;
    .end local v2    # "added":Z
    .end local v17    # "textItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    .end local v25    # "textCount":I
    .end local v26    # "toggleItem":Landroidx/slice/SliceItem;
    .restart local v3    # "textCount":I
    .restart local v4    # "prevItem":Landroidx/slice/SliceItem;
    .restart local v5    # "toggleItem":Landroidx/slice/SliceItem;
    .restart local v10    # "textItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    .restart local v18    # "added":Z
    :cond_c
    move/from16 v24, v1

    move/from16 v25, v3

    move-object/from16 v26, v5

    move-object/from16 v23, v9

    move-object/from16 v17, v10

    const/4 v10, 0x0

    move-object v9, v4

    .end local v1    # "imageCount":I
    .end local v3    # "textCount":I
    .end local v4    # "prevItem":Landroidx/slice/SliceItem;
    .end local v5    # "toggleItem":Landroidx/slice/SliceItem;
    .end local v10    # "textItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    .restart local v9    # "prevItem":Landroidx/slice/SliceItem;
    .restart local v17    # "textItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    .restart local v24    # "imageCount":I
    .restart local v25    # "textCount":I
    .restart local v26    # "toggleItem":Landroidx/slice/SliceItem;
    goto :goto_7

    .end local v9    # "prevItem":Landroidx/slice/SliceItem;
    .end local v17    # "textItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    .end local v22    # "item":Landroidx/slice/SliceItem;
    .end local v24    # "imageCount":I
    .end local v25    # "textCount":I
    .end local v26    # "toggleItem":Landroidx/slice/SliceItem;
    .local v0, "item":Landroidx/slice/SliceItem;
    .restart local v1    # "imageCount":I
    .restart local v3    # "textCount":I
    .restart local v4    # "prevItem":Landroidx/slice/SliceItem;
    .restart local v5    # "toggleItem":Landroidx/slice/SliceItem;
    .restart local v10    # "textItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    :cond_d
    move-object/from16 v22, v0

    move/from16 v24, v1

    move/from16 v25, v3

    move-object/from16 v26, v5

    move-object/from16 v23, v9

    move-object/from16 v17, v10

    const/4 v10, 0x0

    move-object v9, v4

    .line 430
    .end local v0    # "item":Landroidx/slice/SliceItem;
    .end local v1    # "imageCount":I
    .end local v3    # "textCount":I
    .end local v4    # "prevItem":Landroidx/slice/SliceItem;
    .end local v5    # "toggleItem":Landroidx/slice/SliceItem;
    .end local v10    # "textItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    .end local v13    # "itemFormat":Ljava/lang/String;
    .end local v14    # "padding":I
    .restart local v9    # "prevItem":Landroidx/slice/SliceItem;
    .restart local v17    # "textItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    .restart local v24    # "imageCount":I
    .restart local v25    # "textCount":I
    .restart local v26    # "toggleItem":Landroidx/slice/SliceItem;
    :cond_e
    :goto_7
    move-object v4, v9

    move/from16 v1, v24

    move/from16 v3, v25

    .end local v9    # "prevItem":Landroidx/slice/SliceItem;
    .end local v24    # "imageCount":I
    .end local v25    # "textCount":I
    .restart local v1    # "imageCount":I
    .restart local v3    # "textCount":I
    .restart local v4    # "prevItem":Landroidx/slice/SliceItem;
    :goto_8
    add-int/lit8 v2, v21, 0x1

    move-object/from16 v10, v17

    move-object/from16 v13, v19

    move-object/from16 v14, v20

    move-object/from16 v9, v23

    move-object/from16 v5, v26

    .end local v21    # "i":I
    .local v2, "i":I
    goto/16 :goto_5

    .end local v17    # "textItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    .end local v19    # "cellItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/SliceItem;>;"
    .end local v20    # "contentIntentItem":Landroidx/slice/SliceItem;
    .end local v26    # "toggleItem":Landroidx/slice/SliceItem;
    .restart local v5    # "toggleItem":Landroidx/slice/SliceItem;
    .restart local v10    # "textItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    .local v13, "cellItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/SliceItem;>;"
    .local v14, "contentIntentItem":Landroidx/slice/SliceItem;
    :cond_f
    move/from16 v24, v1

    move/from16 v21, v2

    move/from16 v25, v3

    move-object v9, v4

    move-object/from16 v26, v5

    move-object/from16 v17, v10

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    const/4 v10, 0x0

    .line 453
    .end local v1    # "imageCount":I
    .end local v2    # "i":I
    .end local v3    # "textCount":I
    .end local v4    # "prevItem":Landroidx/slice/SliceItem;
    .end local v5    # "toggleItem":Landroidx/slice/SliceItem;
    .end local v10    # "textItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    .end local v13    # "cellItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/SliceItem;>;"
    .end local v14    # "contentIntentItem":Landroidx/slice/SliceItem;
    .restart local v9    # "prevItem":Landroidx/slice/SliceItem;
    .restart local v17    # "textItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    .restart local v19    # "cellItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/SliceItem;>;"
    .restart local v20    # "contentIntentItem":Landroidx/slice/SliceItem;
    .restart local v24    # "imageCount":I
    .restart local v25    # "textCount":I
    .restart local v26    # "toggleItem":Landroidx/slice/SliceItem;
    if-eqz v15, :cond_11

    .line 454
    invoke-virtual {v15}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "date_picker"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 455
    invoke-direct {v6, v9}, Landroidx/slice/widget/GridRowView;->determinePadding(Landroidx/slice/SliceItem;)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {v6, v15, v12, v0, v1}, Landroidx/slice/widget/GridRowView;->addPickerItem(Landroidx/slice/SliceItem;Landroid/view/ViewGroup;IZ)Z

    move-result v18

    goto :goto_9

    .line 457
    :cond_10
    invoke-virtual {v15}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "time_picker"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 458
    invoke-direct {v6, v9}, Landroidx/slice/widget/GridRowView;->determinePadding(Landroidx/slice/SliceItem;)I

    move-result v0

    invoke-direct {v6, v15, v12, v0, v10}, Landroidx/slice/widget/GridRowView;->addPickerItem(Landroidx/slice/SliceItem;Landroid/view/ViewGroup;IZ)Z

    move-result v18

    .line 462
    :cond_11
    :goto_9
    const/4 v0, 0x0

    .line 463
    .local v0, "sav":Landroidx/slice/widget/SliceActionView;
    move-object/from16 v1, v26

    .end local v26    # "toggleItem":Landroidx/slice/SliceItem;
    .local v1, "toggleItem":Landroidx/slice/SliceItem;
    if-eqz v1, :cond_12

    .line 464
    new-instance v2, Landroidx/slice/widget/SliceActionView;

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v6, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v5, v6, Landroidx/slice/widget/GridRowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    invoke-direct {v2, v3, v4, v5}, Landroidx/slice/widget/SliceActionView;-><init>(Landroid/content/Context;Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/RowStyle;)V

    move-object v0, v2

    .line 465
    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 466
    const/16 v18, 0x1

    .line 468
    :cond_12
    if-eqz v18, :cond_16

    .line 469
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/widget/GridContent$CellContent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 470
    .local v2, "contentDescr":Ljava/lang/CharSequence;
    if-eqz v2, :cond_13

    .line 471
    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 473
    :cond_13
    iget-object v3, v6, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v4, v10, v5, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v12, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    add-int/lit8 v3, v8, -0x1

    if-eq v7, v3, :cond_14

    .line 477
    nop

    .line 478
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 479
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v4, v6, Landroidx/slice/widget/GridRowView;->mGutter:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 480
    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    .end local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_14
    if-eqz v20, :cond_15

    .line 483
    new-instance v3, Landroidx/slice/widget/EventInfo;

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/GridRowView;->getMode()I

    move-result v4

    iget v5, v6, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    const/4 v13, 0x1

    invoke-direct {v3, v4, v13, v13, v5}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 485
    .local v3, "info":Landroidx/slice/widget/EventInfo;
    const/4 v4, 0x2

    invoke-virtual {v3, v4, v7, v8}, Landroidx/slice/widget/EventInfo;->setPosition(III)V

    .line 486
    new-instance v4, Landroid/util/Pair;

    move-object/from16 v5, v20

    .end local v20    # "contentIntentItem":Landroidx/slice/SliceItem;
    .local v5, "contentIntentItem":Landroidx/slice/SliceItem;
    invoke-direct {v4, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 487
    .local v4, "tagItem":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/slice/SliceItem;Landroidx/slice/widget/EventInfo;>;"
    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 488
    invoke-direct {v6, v12, v13}, Landroidx/slice/widget/GridRowView;->makeClickable(Landroid/view/View;Z)V

    goto :goto_a

    .line 482
    .end local v3    # "info":Landroidx/slice/widget/EventInfo;
    .end local v4    # "tagItem":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/slice/SliceItem;Landroidx/slice/widget/EventInfo;>;"
    .end local v5    # "contentIntentItem":Landroidx/slice/SliceItem;
    .restart local v20    # "contentIntentItem":Landroidx/slice/SliceItem;
    :cond_15
    move-object/from16 v5, v20

    .line 490
    .end local v20    # "contentIntentItem":Landroidx/slice/SliceItem;
    .restart local v5    # "contentIntentItem":Landroidx/slice/SliceItem;
    :goto_a
    if-eqz v1, :cond_17

    .line 491
    new-instance v3, Landroidx/slice/widget/EventInfo;

    .line 492
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/GridRowView;->getMode()I

    move-result v4

    const/4 v13, 0x3

    iget v14, v6, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    invoke-direct {v3, v4, v10, v13, v14}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 493
    .restart local v3    # "info":Landroidx/slice/widget/EventInfo;
    new-instance v4, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v4, v1}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    iget-object v10, v6, Landroidx/slice/widget/GridRowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    iget v13, v6, Landroidx/slice/widget/GridRowView;->mTintColor:I

    iget-object v14, v6, Landroidx/slice/widget/GridRowView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    move-object/from16 v26, v0

    move-object/from16 v27, v4

    move-object/from16 v28, v3

    move-object/from16 v29, v10

    move/from16 v30, v13

    move-object/from16 v31, v14

    invoke-virtual/range {v26 .. v31}, Landroidx/slice/widget/SliceActionView;->setAction(Landroidx/slice/core/SliceActionImpl;Landroidx/slice/widget/EventInfo;Landroidx/slice/widget/SliceView$OnSliceActionListener;ILandroidx/slice/widget/SliceActionView$SliceActionLoadingListener;)V

    .line 496
    const/4 v4, 0x2

    invoke-virtual {v3, v4, v7, v8}, Landroidx/slice/widget/EventInfo;->setPosition(III)V

    goto :goto_b

    .line 468
    .end local v2    # "contentDescr":Ljava/lang/CharSequence;
    .end local v3    # "info":Landroidx/slice/widget/EventInfo;
    .end local v5    # "contentIntentItem":Landroidx/slice/SliceItem;
    .restart local v20    # "contentIntentItem":Landroidx/slice/SliceItem;
    :cond_16
    move-object/from16 v5, v20

    .line 499
    .end local v20    # "contentIntentItem":Landroidx/slice/SliceItem;
    .restart local v5    # "contentIntentItem":Landroidx/slice/SliceItem;
    :cond_17
    :goto_b
    return-void
.end method

.method private addPickerItem(Landroidx/slice/SliceItem;Landroid/view/ViewGroup;IZ)Z
    .locals 16
    .param p1, "pickerItem"    # Landroidx/slice/SliceItem;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "padding"    # I
    .param p4, "isDatePicker"    # Z

    .line 613
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const-string v0, "long"

    const-string v1, "millis"

    invoke-static {v7, v0, v1}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v9

    .line 615
    .local v9, "dateTimeItem":Landroidx/slice/SliceItem;
    const/4 v10, 0x0

    if-nez v9, :cond_0

    .line 616
    return v10

    .line 618
    :cond_0
    invoke-virtual {v9}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v11

    .line 620
    .local v11, "dateTimeMillis":J
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/GridRowView;->getTitleTextLayout()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/TextView;

    .line 622
    .local v13, "tv":Landroid/widget/TextView;
    iget-object v0, v6, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v0, :cond_1

    .line 623
    iget-object v0, v6, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceStyle;->getGridTitleSize()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v13, v10, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 624
    iget-object v0, v6, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceStyle;->getTitleColor()I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 627
    :cond_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v11, v12}, Ljava/util/Date;-><init>(J)V

    .line 628
    .local v2, "date":Ljava/util/Date;
    const-string v0, "text"

    const-string v1, "title"

    invoke-static {v7, v0, v1, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v14

    .line 630
    .local v14, "titleItem":Landroidx/slice/SliceItem;
    if-eqz v14, :cond_2

    .line 631
    invoke-virtual {v14}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    :cond_2
    iget v15, v6, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    .line 636
    .local v15, "rowIndex":I
    new-instance v5, Landroidx/slice/widget/GridRowView$1;

    move-object v0, v5

    move-object/from16 v1, p0

    move/from16 v3, p4

    move-object/from16 v4, p1

    move-object v10, v5

    move v5, v15

    invoke-direct/range {v0 .. v5}, Landroidx/slice/widget/GridRowView$1;-><init>(Landroidx/slice/widget/GridRowView;Ljava/util/Date;ZLandroidx/slice/SliceItem;I)V

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 664
    const v1, 0x101030e

    .line 665
    .local v1, "backgroundAttr":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_3

    .line 666
    const v1, 0x101045c

    .line 668
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 669
    invoke-virtual {v8, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 670
    move/from16 v3, p3

    const/4 v4, 0x0

    invoke-virtual {v13, v4, v3, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 671
    return v0
.end method

.method private addSeeMoreCount(I)V
    .locals 14
    .param p1, "numExtra"    # I

    .line 339
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 340
    .local v0, "last":Landroid/view/View;
    iget-object v1, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 342
    iget-object v1, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v1}, Landroidx/slice/widget/GridContent;->getSeeMoreItem()Landroidx/slice/SliceItem;

    move-result-object v1

    .line 343
    .local v1, "seeMoreItem":Landroidx/slice/SliceItem;
    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 344
    .local v3, "index":I
    iget v4, p0, Landroidx/slice/widget/GridRowView;->mMaxCells:I

    .line 345
    .local v4, "total":I
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v5

    const-string v6, "slice"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 346
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v5

    const-string v6, "action"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 347
    :cond_0
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 349
    new-instance v2, Landroidx/slice/widget/GridContent$CellContent;

    invoke-direct {v2, v1}, Landroidx/slice/widget/GridContent$CellContent;-><init>(Landroidx/slice/SliceItem;)V

    invoke-direct {p0, v2, v3, v4}, Landroidx/slice/widget/GridRowView;->addCell(Landroidx/slice/widget/GridContent$CellContent;II)V

    .line 350
    return-void

    .line 354
    :cond_1
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 358
    .local v5, "inflater":Landroid/view/LayoutInflater;
    iget-object v6, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v6}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    .line 359
    sget v6, Landroidx/slice/view/R$layout;->abc_slice_grid_see_more_overlay:I

    iget-object v9, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 361
    .local v6, "seeMoreView":Landroid/view/ViewGroup;
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 362
    sget v9, Landroidx/slice/view/R$id;->text_see_more_count:I

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 363
    .local v9, "extraText":Landroid/widget/TextView;
    sget v10, Landroidx/slice/view/R$id;->overlay_see_more:I

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 364
    .local v10, "extraTint":Landroid/view/View;
    new-instance v11, Landroidx/slice/CornerDrawable;

    .line 365
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x1010030

    .line 364
    invoke-static {v12, v13}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iget-object v13, p0, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 366
    invoke-virtual {v13}, Landroidx/slice/widget/SliceStyle;->getImageCornerRadius()F

    move-result v13

    invoke-direct {v11, v12, v13}, Landroidx/slice/CornerDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    .line 364
    invoke-virtual {v10, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 368
    .end local v6    # "seeMoreView":Landroid/view/ViewGroup;
    .end local v9    # "extraText":Landroid/widget/TextView;
    .end local v10    # "extraTint":Landroid/view/View;
    :cond_2
    sget v6, Landroidx/slice/view/R$layout;->abc_slice_grid_see_more:I

    iget-object v9, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 370
    .restart local v6    # "seeMoreView":Landroid/view/ViewGroup;
    sget v9, Landroidx/slice/view/R$id;->text_see_more_count:I

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 373
    .restart local v9    # "extraText":Landroid/widget/TextView;
    sget v10, Landroidx/slice/view/R$id;->text_see_more:I

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 374
    .local v10, "moreText":Landroid/widget/TextView;
    iget-object v11, p0, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v11, :cond_3

    iget-object v11, p0, Landroidx/slice/widget/GridRowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    if-eqz v11, :cond_3

    .line 375
    iget-object v11, p0, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v11}, Landroidx/slice/widget/SliceStyle;->getGridTitleSize()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v10, v8, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 376
    iget-object v11, p0, Landroidx/slice/widget/GridRowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    invoke-virtual {v11}, Landroidx/slice/widget/RowStyle;->getTitleColor()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 379
    .end local v10    # "moreText":Landroid/widget/TextView;
    :cond_3
    :goto_0
    iget-object v10, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v11, v8, v7, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v10, v6, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v10, Landroidx/slice/view/R$string;->abc_slice_more_content:I

    new-array v11, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-virtual {v7, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    new-instance v7, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getMode()I

    move-result v8

    const/4 v10, 0x4

    iget v11, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    invoke-direct {v7, v8, v10, v2, v11}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 385
    .local v7, "info":Landroidx/slice/widget/EventInfo;
    const/4 v8, 0x2

    invoke-virtual {v7, v8, v3, v4}, Landroidx/slice/widget/EventInfo;->setPosition(III)V

    .line 386
    new-instance v8, Landroid/util/Pair;

    invoke-direct {v8, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 387
    .local v8, "tagItem":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/slice/SliceItem;Landroidx/slice/widget/EventInfo;>;"
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 388
    invoke-direct {p0, v6, v2}, Landroidx/slice/widget/GridRowView;->makeClickable(Landroid/view/View;Z)V

    .line 389
    return-void
.end method

.method private addTextItem(Landroidx/slice/SliceItem;Landroid/view/ViewGroup;I)Z
    .locals 7
    .param p1, "item"    # Landroidx/slice/SliceItem;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "padding"    # I

    .line 511
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "format":Ljava/lang/String;
    const-string v1, "text"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "long"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 513
    return v3

    .line 515
    :cond_0
    const-string v1, "large"

    const-string v4, "title"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/slice/core/SliceQuery;->hasAnyHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result v1

    .line 516
    .local v1, "isTitle":Z
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    if-eqz v1, :cond_1

    .line 517
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getTitleTextLayout()I

    move-result v5

    goto :goto_0

    :cond_1
    sget v5, Landroidx/slice/widget/GridRowView;->TEXT_LAYOUT:I

    :goto_0
    const/4 v6, 0x0

    .line 516
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 518
    .local v4, "tv":Landroid/widget/TextView;
    iget-object v5, p0, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroidx/slice/widget/GridRowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    if-eqz v5, :cond_4

    .line 519
    if-eqz v1, :cond_2

    .line 520
    iget-object v5, p0, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v5}, Landroidx/slice/widget/SliceStyle;->getGridTitleSize()I

    move-result v5

    goto :goto_1

    :cond_2
    iget-object v5, p0, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v5}, Landroidx/slice/widget/SliceStyle;->getGridSubtitleSize()I

    move-result v5

    :goto_1
    int-to-float v5, v5

    .line 519
    invoke-virtual {v4, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 521
    if-eqz v1, :cond_3

    .line 522
    iget-object v5, p0, Landroidx/slice/widget/GridRowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    invoke-virtual {v5}, Landroidx/slice/widget/RowStyle;->getTitleColor()I

    move-result v5

    goto :goto_2

    :cond_3
    iget-object v5, p0, Landroidx/slice/widget/GridRowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    invoke-virtual {v5}, Landroidx/slice/widget/RowStyle;->getSubtitleColor()I

    move-result v5

    .line 521
    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 524
    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 525
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Landroidx/slice/widget/SliceViewUtil;->getTimestampString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_3

    .line 526
    :cond_5
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSanitizedText()Ljava/lang/CharSequence;

    move-result-object v2

    :goto_3
    nop

    .line 527
    .local v2, "text":Ljava/lang/CharSequence;
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 529
    invoke-virtual {v4, v3, p3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 530
    const/4 v3, 0x1

    return v3
.end method

.method private determinePadding(Landroidx/slice/SliceItem;)I
    .locals 3
    .param p1, "prevItem"    # Landroidx/slice/SliceItem;

    .line 743
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 745
    return v0

    .line 746
    :cond_0
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 747
    iget v0, p0, Landroidx/slice/widget/GridRowView;->mTextPadding:I

    return v0

    .line 748
    :cond_1
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 749
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "long"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 752
    :cond_2
    return v0

    .line 750
    :cond_3
    :goto_0
    iget-object v1, p0, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v1, :cond_4

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceStyle;->getVerticalGridTextPadding()I

    move-result v0

    :cond_4
    return v0
.end method

.method private makeClickable(Landroid/view/View;Z)V
    .locals 4
    .param p1, "layout"    # Landroid/view/View;
    .param p2, "isClickable"    # Z

    .line 767
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 768
    const v1, 0x101030e

    .line 769
    .local v1, "backgroundAttr":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 770
    const v1, 0x101045c

    .line 772
    :cond_1
    if-eqz p2, :cond_2

    .line 773
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 774
    :cond_2
    nop

    .line 772
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 775
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 776
    return-void
.end method

.method private makeEntireGridClickable(Z)V
    .locals 3
    .param p1, "isClickable"    # Z

    .line 756
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move-object v2, p0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 757
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    move-object v2, p0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 758
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 759
    nop

    .line 760
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x101030e

    .line 759
    invoke-static {v1, v2}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    .line 761
    :cond_2
    nop

    .line 758
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 762
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 763
    invoke-virtual {p0, p1}, Landroidx/slice/widget/GridRowView;->setClickable(Z)V

    .line 764
    return-void
.end method

.method private onForegroundActivated(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 815
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    .line 816
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mLoc:[I

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 817
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mLoc:[I

    aget v3, v3, v1

    int-to-float v3, v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 818
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget-object v4, p0, Landroidx/slice/widget/GridRowView;->mLoc:[I

    aget v4, v4, v2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 819
    .local v3, "y":I
    iget-object v4, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    int-to-float v5, v0

    int-to-float v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 821
    .end local v0    # "x":I
    .end local v3    # "y":I
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 822
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 823
    iget-object v1, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 824
    :cond_1
    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 827
    :cond_2
    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    .line 829
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method protected addImageItem(Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;ILandroid/view/ViewGroup;Z)Z
    .locals 16
    .param p1, "item"    # Landroidx/slice/SliceItem;
    .param p2, "overlayItem"    # Landroidx/slice/SliceItem;
    .param p3, "color"    # I
    .param p4, "container"    # Landroid/view/ViewGroup;
    .param p5, "isSingle"    # Z

    .line 545
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {p1 .. p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v4

    .line 546
    .local v4, "format":Ljava/lang/String;
    iget-object v5, v0, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    iget-object v5, v0, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 547
    invoke-virtual {v5}, Landroidx/slice/widget/SliceStyle;->getApplyCornerRadiusToLargeImages()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    .line 548
    .local v5, "hasRoundedImage":Z
    :goto_0
    const-string v8, "image"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v8

    if-nez v8, :cond_1

    goto/16 :goto_8

    .line 551
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 552
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    if-nez v8, :cond_2

    .line 553
    return v7

    .line 555
    :cond_2
    new-instance v9, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 556
    .local v9, "iv":Landroid/widget/ImageView;
    if-eqz v5, :cond_3

    .line 557
    new-instance v10, Landroidx/slice/CornerDrawable;

    iget-object v11, v0, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v11}, Landroidx/slice/widget/SliceStyle;->getImageCornerRadius()F

    move-result v11

    invoke-direct {v10, v8, v11}, Landroidx/slice/CornerDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    .line 558
    .local v10, "cd":Landroidx/slice/CornerDrawable;
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 559
    .end local v10    # "cd":Landroidx/slice/CornerDrawable;
    goto :goto_1

    .line 560
    :cond_3
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 563
    :goto_1
    const-string v10, "raw"

    invoke-virtual {v1, v10}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v10

    const-string v11, "no_tint"

    const/4 v12, -0x1

    if-eqz v10, :cond_4

    .line 564
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 565
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v13, v0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroidx/slice/widget/GridContent;->getFirstImageSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Point;->x:I

    iget-object v14, v0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    .line 566
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroidx/slice/widget/GridContent;->getFirstImageSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Point;->y:I

    invoke-direct {v10, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v10, "lp":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_6

    .line 567
    .end local v10    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    const-string v10, "large"

    invoke-virtual {v1, v10}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 568
    if-eqz v5, :cond_5

    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    goto :goto_2

    :cond_5
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :goto_2
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 569
    if-eqz p5, :cond_6

    move v10, v12

    goto :goto_3

    :cond_6
    iget v10, v0, Landroidx/slice/widget/GridRowView;->mLargeImageHeight:I

    .line 570
    .local v10, "height":I
    :goto_3
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v10, v13

    .line 571
    .local v10, "lp":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_6

    .line 572
    .end local v10    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    invoke-virtual {v1, v11}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v10

    xor-int/2addr v10, v6

    .line 573
    .local v10, "isIcon":Z
    if-nez v10, :cond_8

    iget v13, v0, Landroidx/slice/widget/GridRowView;->mSmallImageSize:I

    goto :goto_4

    :cond_8
    iget v13, v0, Landroidx/slice/widget/GridRowView;->mIconSize:I

    .line 574
    .local v13, "size":I
    :goto_4
    if-eqz v10, :cond_9

    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    goto :goto_5

    :cond_9
    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :goto_5
    invoke-virtual {v9, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 575
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v10, v14

    .line 577
    .end local v13    # "size":I
    .local v10, "lp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_6
    if-eq v2, v12, :cond_a

    invoke-virtual {v1, v11}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 578
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 581
    :cond_a
    if-eqz p2, :cond_c

    iget-object v11, v0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v11

    iget v12, v0, Landroidx/slice/widget/GridRowView;->mMaxCells:I

    sub-int/2addr v12, v6

    if-ne v11, v12, :cond_b

    goto :goto_7

    .line 586
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 590
    .local v11, "inflater":Landroid/view/LayoutInflater;
    sget v12, Landroidx/slice/view/R$layout;->abc_slice_grid_text_overlay_image:I

    invoke-virtual {v11, v12, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    .line 592
    .local v12, "overlayView":Landroid/view/ViewGroup;
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v14, -0x2

    invoke-direct {v13, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v9, v7, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 593
    sget v7, Landroidx/slice/view/R$id;->text_overlay:I

    invoke-virtual {v12, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 594
    .local v7, "overlayText":Landroid/widget/TextView;
    invoke-virtual/range {p2 .. p2}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    sget v13, Landroidx/slice/view/R$id;->tint_overlay:I

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 596
    .local v13, "overlayTint":Landroid/view/View;
    new-instance v14, Landroidx/slice/CornerDrawable;

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v15

    sget v6, Landroidx/slice/view/R$drawable;->abc_slice_gradient:I

    invoke-static {v15, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v15, v0, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 597
    invoke-virtual {v15}, Landroidx/slice/widget/SliceStyle;->getImageCornerRadius()F

    move-result v15

    invoke-direct {v14, v6, v15}, Landroidx/slice/CornerDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    .line 596
    invoke-virtual {v13, v14}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 598
    invoke-virtual {v3, v12, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 599
    const/4 v6, 0x1

    return v6

    .line 582
    .end local v7    # "overlayText":Landroid/widget/TextView;
    .end local v11    # "inflater":Landroid/view/LayoutInflater;
    .end local v12    # "overlayView":Landroid/view/ViewGroup;
    .end local v13    # "overlayTint":Landroid/view/View;
    :cond_c
    :goto_7
    invoke-virtual {v3, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 583
    return v6

    .line 549
    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    .end local v9    # "iv":Landroid/widget/ImageView;
    .end local v10    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_d
    :goto_8
    return v7
.end method

.method protected getExtraBottomPadding()I
    .locals 4

    .line 200
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    iget v0, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    iget v2, p0, Landroidx/slice/widget/GridRowView;->mRowCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getMode()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 202
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceStyle;->getGridBottomPadding()I

    move-result v1

    :cond_1
    return v1

    .line 205
    :cond_2
    return v1
.end method

.method protected getExtraTopPadding()I
    .locals 2

    .line 190
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget v0, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    if-nez v0, :cond_1

    .line 193
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceStyle;->getGridTopPadding()I

    move-result v1

    :cond_0
    return v1

    .line 196
    :cond_1
    return v1
.end method

.method public getHiddenItemCount()I
    .locals 1

    .line 848
    iget v0, p0, Landroidx/slice/widget/GridRowView;->mHiddenItemCount:I

    return v0
.end method

.method protected getMaxCells()I
    .locals 4

    .line 271
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 274
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->getGridContent()Ljava/util/ArrayList;

    move-result-object v0

    .line 275
    .local v0, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/widget/GridContent$CellContent;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 277
    iget-object v1, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v1}, Landroidx/slice/widget/GridContent;->getLargestImageMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 285
    :pswitch_0
    iget v1, p0, Landroidx/slice/widget/GridRowView;->mSmallImageMinWidth:I

    .local v1, "desiredCellWidth":I
    goto :goto_0

    .line 282
    .end local v1    # "desiredCellWidth":I
    :pswitch_1
    iget-object v1, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/slice/widget/GridContent;->getFirstImageSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 283
    .restart local v1    # "desiredCellWidth":I
    goto :goto_0

    .line 279
    .end local v1    # "desiredCellWidth":I
    :pswitch_2
    iget v1, p0, Landroidx/slice/widget/GridRowView;->mLargeImageHeight:I

    .line 280
    .restart local v1    # "desiredCellWidth":I
    nop

    .line 287
    :goto_0
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getWidth()I

    move-result v2

    iget v3, p0, Landroidx/slice/widget/GridRowView;->mGutter:I

    add-int/2addr v3, v1

    div-int/2addr v2, v3

    return v2

    .line 289
    .end local v1    # "desiredCellWidth":I
    :cond_1
    return v2

    .line 272
    .end local v0    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/widget/GridContent$CellContent;>;"
    :cond_2
    :goto_1
    const/4 v0, -0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getTitleTextLayout()I
    .locals 1

    .line 186
    sget v0, Landroidx/slice/view/R$layout;->abc_slice_title:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .line 785
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 786
    .local v0, "tagItem":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/slice/SliceItem;Landroidx/slice/widget/EventInfo;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroidx/slice/SliceItem;

    .line 787
    .local v1, "sliceItem":Landroidx/slice/SliceItem;
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroidx/slice/widget/EventInfo;

    .line 788
    .local v2, "info":Landroidx/slice/widget/EventInfo;
    if-eqz v1, :cond_1

    .line 789
    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    const-string v4, "action"

    invoke-static {v1, v4, v3, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    .line 791
    .local v4, "actionItem":Landroidx/slice/SliceItem;
    if-eqz v4, :cond_1

    .line 793
    :try_start_0
    invoke-virtual {v4, v3, v3}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V

    .line 794
    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz v3, :cond_0

    .line 795
    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    invoke-interface {v3, v2, v4}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    :cond_0
    goto :goto_0

    .line 797
    :catch_0
    move-exception v3

    .line 798
    .local v3, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v5, "GridRowView"

    const-string v6, "PendingIntent for slice cannot be sent"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 802
    .end local v3    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v4    # "actionItem":Landroidx/slice/SliceItem;
    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 210
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    iget-object v1, p0, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v0, v1, v2}, Landroidx/slice/widget/GridContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v0

    iget v1, p0, Landroidx/slice/widget/GridRowView;->mInsetTop:I

    add-int/2addr v0, v1

    iget v1, p0, Landroidx/slice/widget/GridRowView;->mInsetBottom:I

    add-int/2addr v0, v1

    .line 212
    .local v0, "height":I
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 213
    iget-object v1, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 214
    invoke-super {p0, p1, p2}, Landroidx/slice/widget/SliceChildView;->onMeasure(II)V

    .line 215
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 810
    invoke-direct {p0, p2}, Landroidx/slice/widget/GridRowView;->onForegroundActivated(Landroid/view/MotionEvent;)V

    .line 811
    const/4 v0, 0x0

    return v0
.end method

.method protected populateViews()V
    .locals 7

    .line 294
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 298
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->scheduleMaxCellsUpdate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->getLayoutDir()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 302
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->getLayoutDir()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/slice/widget/GridRowView;->setLayoutDirection(I)V

    .line 304
    :cond_2
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->getContentIntent()Landroidx/slice/SliceItem;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 305
    new-instance v0, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getMode()I

    move-result v2

    const/4 v3, 0x3

    iget v4, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    invoke-direct {v0, v2, v3, v1, v4}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 307
    .local v0, "info":Landroidx/slice/widget/EventInfo;
    new-instance v2, Landroid/util/Pair;

    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v3}, Landroidx/slice/widget/GridContent;->getContentIntent()Landroidx/slice/SliceItem;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 308
    .local v2, "tagItem":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/slice/SliceItem;Landroidx/slice/widget/EventInfo;>;"
    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 309
    invoke-direct {p0, v1}, Landroidx/slice/widget/GridRowView;->makeEntireGridClickable(Z)V

    .line 311
    .end local v0    # "info":Landroidx/slice/widget/EventInfo;
    .end local v2    # "tagItem":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/slice/SliceItem;Landroidx/slice/widget/EventInfo;>;"
    :cond_3
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 312
    .local v0, "contentDescr":Ljava/lang/CharSequence;
    if-eqz v0, :cond_4

    .line 313
    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 315
    :cond_4
    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v2}, Landroidx/slice/widget/GridContent;->getGridContent()Ljava/util/ArrayList;

    move-result-object v2

    .line 316
    .local v2, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/widget/GridContent$CellContent;>;"
    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v3}, Landroidx/slice/widget/GridContent;->getLargestImageMode()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    .line 317
    invoke-virtual {v3}, Landroidx/slice/widget/GridContent;->getLargestImageMode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    goto :goto_0

    .line 320
    :cond_5
    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_1

    .line 318
    :cond_6
    :goto_0
    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 322
    :goto_1
    iget v3, p0, Landroidx/slice/widget/GridRowView;->mMaxCells:I

    .line 323
    .local v3, "maxCells":I
    iget-object v4, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v4}, Landroidx/slice/widget/GridContent;->getSeeMoreItem()Landroidx/slice/SliceItem;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    move v1, v5

    .line 324
    .local v1, "hasSeeMore":Z
    :goto_2
    iput v5, p0, Landroidx/slice/widget/GridRowView;->mHiddenItemCount:I

    .line 325
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 326
    iget-object v5, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-lt v5, v3, :cond_8

    .line 327
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, p0, Landroidx/slice/widget/GridRowView;->mHiddenItemCount:I

    .line 328
    if-eqz v1, :cond_9

    .line 329
    invoke-direct {p0, v5}, Landroidx/slice/widget/GridRowView;->addSeeMoreCount(I)V

    goto :goto_4

    .line 333
    :cond_8
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/slice/widget/GridContent$CellContent;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-direct {p0, v5, v4, v6}, Landroidx/slice/widget/GridRowView;->addCell(Landroidx/slice/widget/GridContent$CellContent;II)V

    .line 325
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 335
    .end local v4    # "i":I
    :cond_9
    :goto_4
    return-void

    .line 295
    .end local v0    # "contentDescr":Ljava/lang/CharSequence;
    .end local v1    # "hasSeeMore":Z
    .end local v2    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/widget/GridContent$CellContent;>;"
    .end local v3    # "maxCells":I
    :cond_a
    :goto_5
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->resetView()V

    .line 296
    return-void
.end method

.method public resetView()V
    .locals 3

    .line 833
    iget-boolean v0, p0, Landroidx/slice/widget/GridRowView;->mMaxCellUpdateScheduled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 834
    iput-boolean v1, p0, Landroidx/slice/widget/GridRowView;->mMaxCellUpdateScheduled:Z

    .line 835
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->mMaxCellsUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 837
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 838
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/slice/widget/GridRowView;->setLayoutDirection(I)V

    .line 839
    invoke-direct {p0, v1}, Landroidx/slice/widget/GridRowView;->makeEntireGridClickable(Z)V

    .line 840
    return-void
.end method

.method protected scheduleMaxCellsUpdate()Z
    .locals 3

    .line 256
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    .line 261
    iput-boolean v1, p0, Landroidx/slice/widget/GridRowView;->mMaxCellUpdateScheduled:Z

    .line 262
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->mMaxCellsUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 263
    return v1

    .line 265
    :cond_1
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getMaxCells()I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mMaxCells:I

    .line 266
    const/4 v0, 0x0

    return v0

    .line 257
    :cond_2
    :goto_0
    return v1
.end method

.method public setInsets(IIII)V
    .locals 3
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 181
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    .line 182
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getExtraTopPadding()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getExtraBottomPadding()I

    move-result v2

    add-int/2addr v2, p4

    invoke-virtual {v0, p1, v1, p3, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 183
    return-void
.end method

.method public setSliceItem(Landroidx/slice/widget/SliceContent;ZIILandroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 6
    .param p1, "slice"    # Landroidx/slice/widget/SliceContent;
    .param p2, "isHeader"    # Z
    .param p3, "rowIndex"    # I
    .param p4, "rowCount"    # I
    .param p5, "observer"    # Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 237
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->resetView()V

    .line 238
    invoke-virtual {p0, p5}, Landroidx/slice/widget/GridRowView;->setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    .line 239
    iput p3, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    .line 240
    iput p4, p0, Landroidx/slice/widget/GridRowView;->mRowCount:I

    .line 241
    move-object v0, p1

    check-cast v0, Landroidx/slice/widget/GridContent;

    iput-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    .line 243
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->scheduleMaxCellsUpdate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->populateViews()V

    .line 246
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Landroidx/slice/widget/GridRowView;->mInsetStart:I

    iget v2, p0, Landroidx/slice/widget/GridRowView;->mInsetTop:I

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getExtraTopPadding()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Landroidx/slice/widget/GridRowView;->mInsetEnd:I

    iget v4, p0, Landroidx/slice/widget/GridRowView;->mInsetBottom:I

    .line 247
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getExtraBottomPadding()I

    move-result v5

    add-int/2addr v4, v5

    .line 246
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 248
    return-void
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "tintColor"    # I

    .line 223
    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    .line 224
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->resetView()V

    .line 227
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->populateViews()V

    .line 229
    :cond_0
    return-void
.end method
