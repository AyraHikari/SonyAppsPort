.class public Landroidx/slice/widget/GridContent$CellContent;
.super Ljava/lang/Object;
.source "GridContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/GridContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CellContent"
.end annotation


# instance fields
.field private final mCellItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContentDescr:Landroidx/slice/SliceItem;

.field private mContentIntent:Landroidx/slice/SliceItem;

.field private mImage:Landroidx/core/graphics/drawable/IconCompat;

.field private mImageCount:I

.field private mImageMode:I

.field private mOverlayItem:Landroidx/slice/SliceItem;

.field private mPicker:Landroidx/slice/SliceItem;

.field private mTextCount:I

.field private mTitleItem:Landroidx/slice/SliceItem;

.field private mToggleItem:Landroidx/slice/SliceItem;


# direct methods
.method public constructor <init>(Landroidx/slice/SliceItem;)V
    .locals 1
    .param p1, "cellItem"    # Landroidx/slice/SliceItem;

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    .line 301
    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mImageMode:I

    .line 306
    invoke-virtual {p0, p1}, Landroidx/slice/widget/GridContent$CellContent;->populate(Landroidx/slice/SliceItem;)Z

    .line 307
    return-void
.end method

.method private fillCellItems(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/SliceItem;",
            ">;)V"
        }
    .end annotation

    .line 352
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 353
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceItem;

    .line 354
    .local v1, "item":Landroidx/slice/SliceItem;
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, "itemFormat":Ljava/lang/String;
    iget-object v3, p0, Landroidx/slice/widget/GridContent$CellContent;->mPicker:Landroidx/slice/SliceItem;

    if-nez v3, :cond_1

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "date_picker"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 356
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "time_picker"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 357
    :cond_0
    iput-object v1, p0, Landroidx/slice/widget/GridContent$CellContent;->mPicker:Landroidx/slice/SliceItem;

    goto/16 :goto_1

    .line 358
    :cond_1
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content_description"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 359
    iput-object v1, p0, Landroidx/slice/widget/GridContent$CellContent;->mContentDescr:Landroidx/slice/SliceItem;

    goto :goto_1

    .line 360
    :cond_2
    iget v3, p0, Landroidx/slice/widget/GridContent$CellContent;->mTextCount:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v3, v4, :cond_7

    const-string v3, "text"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 361
    const-string v3, "long"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 362
    :cond_3
    iget-object v3, p0, Landroidx/slice/widget/GridContent$CellContent;->mTitleItem:Landroidx/slice/SliceItem;

    if-eqz v3, :cond_4

    .line 363
    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v1, v4}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 364
    :cond_4
    iput-object v1, p0, Landroidx/slice/widget/GridContent$CellContent;->mTitleItem:Landroidx/slice/SliceItem;

    .line 366
    :cond_5
    const-string v3, "overlay"

    invoke-virtual {v1, v3}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 367
    iget-object v3, p0, Landroidx/slice/widget/GridContent$CellContent;->mOverlayItem:Landroidx/slice/SliceItem;

    if-nez v3, :cond_8

    .line 368
    iput-object v1, p0, Landroidx/slice/widget/GridContent$CellContent;->mOverlayItem:Landroidx/slice/SliceItem;

    goto :goto_1

    .line 371
    :cond_6
    iget v3, p0, Landroidx/slice/widget/GridContent$CellContent;->mTextCount:I

    add-int/2addr v3, v5

    iput v3, p0, Landroidx/slice/widget/GridContent$CellContent;->mTextCount:I

    .line 372
    iget-object v3, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 374
    :cond_7
    iget v3, p0, Landroidx/slice/widget/GridContent$CellContent;->mImageCount:I

    if-ge v3, v5, :cond_8

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v3

    const-string v4, "image"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 375
    invoke-static {v1}, Landroidx/slice/SliceUtils;->parseImageMode(Landroidx/slice/SliceItem;)I

    move-result v3

    iput v3, p0, Landroidx/slice/widget/GridContent$CellContent;->mImageMode:I

    .line 376
    iget v3, p0, Landroidx/slice/widget/GridContent$CellContent;->mImageCount:I

    add-int/2addr v3, v5

    iput v3, p0, Landroidx/slice/widget/GridContent$CellContent;->mImageCount:I

    .line 377
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v3

    iput-object v3, p0, Landroidx/slice/widget/GridContent$CellContent;->mImage:Landroidx/core/graphics/drawable/IconCompat;

    .line 378
    iget-object v3, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    .end local v1    # "item":Landroidx/slice/SliceItem;
    .end local v2    # "itemFormat":Ljava/lang/String;
    :cond_8
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 381
    .end local v0    # "i":I
    :cond_9
    return-void
.end method

.method private isValidCellContent(Landroidx/slice/SliceItem;)Z
    .locals 6
    .param p1, "cellItem"    # Landroidx/slice/SliceItem;

    .line 436
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "format":Ljava/lang/String;
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content_description"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const-string v1, "keywords"

    const-string v4, "ttl"

    const-string v5, "last_updated"

    filled-new-array {v1, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 438
    invoke-virtual {p1, v1}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 439
    .local v1, "isNonCellContent":Z
    :goto_1
    if-nez v1, :cond_3

    .line 440
    const-string v4, "text"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 441
    const-string v4, "long"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 442
    const-string v4, "image"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    nop

    .line 439
    :goto_2
    return v2
.end method


# virtual methods
.method public getCellItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 429
    iget-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 490
    iget-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mContentDescr:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContentIntent()Landroidx/slice/SliceItem;
    .locals 1

    .line 413
    iget-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mContentIntent:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getImageIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 1

    .line 485
    iget-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mImage:Landroidx/core/graphics/drawable/IconCompat;

    return-object v0
.end method

.method public getImageMode()I
    .locals 1

    .line 477
    iget v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mImageMode:I

    return v0
.end method

.method public getOverlayItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 405
    iget-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mOverlayItem:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getPicker()Landroidx/slice/SliceItem;
    .locals 1

    .line 421
    iget-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mPicker:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getTextCount()I
    .locals 1

    .line 463
    iget v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mTextCount:I

    return v0
.end method

.method public getTitleItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 397
    iget-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mTitleItem:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getToggleItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 389
    iget-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mToggleItem:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public hasImage()Z
    .locals 1

    .line 470
    iget-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mImage:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isImageOnly()Z
    .locals 4

    .line 456
    iget-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/SliceItem;

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v3, "image"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public isValid()Z
    .locals 2

    .line 449
    iget-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mPicker:Landroidx/slice/SliceItem;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public populate(Landroidx/slice/SliceItem;)Z
    .locals 10
    .param p1, "cellItem"    # Landroidx/slice/SliceItem;

    .line 313
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "format":Ljava/lang/String;
    const-string v1, "shortcut"

    invoke-virtual {p1, v1}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 315
    const-string v1, "slice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "action"

    if-nez v2, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 316
    :cond_0
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v2

    .line 317
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    const/4 v4, 0x0

    .line 320
    .local v4, "sliceActionItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/slice/SliceItem;

    .line 321
    .local v6, "item":Landroidx/slice/SliceItem;
    invoke-virtual {v6}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 322
    invoke-virtual {v6}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_1
    nop

    .line 323
    invoke-virtual {v6}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "date_picker"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 324
    invoke-virtual {v6}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "time_picker"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 325
    invoke-virtual {v6}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v4

    .line 326
    new-instance v1, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v1, v6}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    .line 327
    .local v1, "ac":Landroidx/slice/core/SliceAction;
    invoke-interface {v1}, Landroidx/slice/core/SliceAction;->isToggle()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 328
    iput-object v6, p0, Landroidx/slice/widget/GridContent$CellContent;->mToggleItem:Landroidx/slice/SliceItem;

    goto :goto_1

    .line 330
    :cond_2
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/slice/SliceItem;

    iput-object v5, p0, Landroidx/slice/widget/GridContent$CellContent;->mContentIntent:Landroidx/slice/SliceItem;

    .line 332
    goto :goto_1

    .line 334
    .end local v1    # "ac":Landroidx/slice/core/SliceAction;
    .end local v6    # "item":Landroidx/slice/SliceItem;
    :cond_3
    goto :goto_0

    .line 335
    :cond_4
    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 336
    iput-object p1, p0, Landroidx/slice/widget/GridContent$CellContent;->mContentIntent:Landroidx/slice/SliceItem;

    .line 338
    :cond_5
    iput v7, p0, Landroidx/slice/widget/GridContent$CellContent;->mTextCount:I

    .line 339
    iput v7, p0, Landroidx/slice/widget/GridContent$CellContent;->mImageCount:I

    .line 340
    invoke-direct {p0, v2}, Landroidx/slice/widget/GridContent$CellContent;->fillCellItems(Ljava/util/List;)V

    .line 342
    iget v1, p0, Landroidx/slice/widget/GridContent$CellContent;->mTextCount:I

    if-nez v1, :cond_7

    iget v1, p0, Landroidx/slice/widget/GridContent$CellContent;->mImageCount:I

    if-nez v1, :cond_7

    if-eqz v4, :cond_7

    .line 343
    invoke-direct {p0, v4}, Landroidx/slice/widget/GridContent$CellContent;->fillCellItems(Ljava/util/List;)V

    goto :goto_2

    .line 345
    .end local v2    # "items":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    .end local v4    # "sliceActionItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    :cond_6
    invoke-direct {p0, p1}, Landroidx/slice/widget/GridContent$CellContent;->isValidCellContent(Landroidx/slice/SliceItem;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 346
    iget-object v1, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 345
    :cond_7
    :goto_2
    nop

    .line 348
    :goto_3
    invoke-virtual {p0}, Landroidx/slice/widget/GridContent$CellContent;->isValid()Z

    move-result v1

    return v1
.end method
