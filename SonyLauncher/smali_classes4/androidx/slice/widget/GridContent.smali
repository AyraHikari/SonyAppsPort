.class public Landroidx/slice/widget/GridContent;
.super Landroidx/slice/widget/SliceContent;
.source "GridContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/GridContent$CellContent;
    }
.end annotation


# instance fields
.field private mAllImages:Z

.field private mFirstImage:Landroidx/core/graphics/drawable/IconCompat;

.field private mFirstImageSize:Landroid/graphics/Point;

.field private final mGridContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slice/widget/GridContent$CellContent;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLastIndex:Z

.field private mLargestImageMode:I

.field private mMaxCellLineCount:I

.field private mPrimaryAction:Landroidx/slice/SliceItem;

.field private mSeeMoreItem:Landroidx/slice/SliceItem;

.field private mTitleItem:Landroidx/slice/SliceItem;


# direct methods
.method public constructor <init>(Landroidx/slice/SliceItem;I)V
    .locals 1
    .param p1, "gridItem"    # Landroidx/slice/SliceItem;
    .param p2, "position"    # I

    .line 79
    invoke-direct {p0, p1, p2}, Landroidx/slice/widget/SliceContent;-><init>(Landroidx/slice/SliceItem;I)V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/GridContent;->mGridContent:Ljava/util/ArrayList;

    .line 67
    const/4 v0, 0x5

    iput v0, p0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/widget/GridContent;->mFirstImage:Landroidx/core/graphics/drawable/IconCompat;

    .line 70
    iput-object v0, p0, Landroidx/slice/widget/GridContent;->mFirstImageSize:Landroid/graphics/Point;

    .line 80
    invoke-direct {p0, p1}, Landroidx/slice/widget/GridContent;->populate(Landroidx/slice/SliceItem;)Z

    .line 81
    return-void
.end method

.method private filterAndProcessItems(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/SliceItem;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 226
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v0, "filteredItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 228
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    .line 230
    .local v2, "item":Landroidx/slice/SliceItem;
    const/4 v3, 0x0

    const-string v4, "see_more"

    invoke-static {v2, v3, v4, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_1

    :cond_0
    move v3, v4

    .line 231
    .local v3, "containsSeeMore":Z
    :goto_1
    if-nez v3, :cond_1

    const-string v6, "shortcut"

    const-string v7, "see_more"

    const-string v8, "keywords"

    const-string v9, "ttl"

    const-string v10, "last_updated"

    const-string v11, "overlay"

    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v6

    .line 232
    invoke-virtual {v2, v6}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    move v4, v5

    .line 234
    .local v4, "isNonCellContent":Z
    :cond_2
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "content_description"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 235
    iput-object v2, p0, Landroidx/slice/widget/GridContent;->mContentDescr:Landroidx/slice/SliceItem;

    goto :goto_2

    .line 236
    :cond_3
    if-nez v4, :cond_4

    .line 237
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    .end local v2    # "item":Landroidx/slice/SliceItem;
    .end local v3    # "containsSeeMore":Z
    .end local v4    # "isNonCellContent":Z
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    .end local v1    # "i":I
    :cond_5
    return-object v0
.end method

.method private populate(Landroidx/slice/SliceItem;)Z
    .locals 6
    .param p1, "gridItem"    # Landroidx/slice/SliceItem;

    .line 87
    const/4 v0, 0x0

    const-string v1, "see_more"

    invoke-static {p1, v0, v1, v0}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/GridContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    .line 88
    const-string v1, "slice"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v0

    .line 90
    .local v0, "seeMoreItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 91
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    iput-object v2, p0, Landroidx/slice/widget/GridContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    .line 94
    .end local v0    # "seeMoreItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    :cond_0
    const-string v0, "shortcut"

    const-string v2, "title"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "hints":[Ljava/lang/String;
    const-string v2, "actions"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v0, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    iput-object v2, p0, Landroidx/slice/widget/GridContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    .line 97
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/slice/widget/GridContent;->mAllImages:Z

    .line 98
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 99
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v1

    .line 100
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    invoke-direct {p0, v1}, Landroidx/slice/widget/GridContent;->filterAndProcessItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 101
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 102
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceItem;

    .line 103
    .local v3, "item":Landroidx/slice/SliceItem;
    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content_description"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 104
    new-instance v4, Landroidx/slice/widget/GridContent$CellContent;

    invoke-direct {v4, v3}, Landroidx/slice/widget/GridContent$CellContent;-><init>(Landroidx/slice/SliceItem;)V

    .line 105
    .local v4, "cc":Landroidx/slice/widget/GridContent$CellContent;
    invoke-direct {p0, v4}, Landroidx/slice/widget/GridContent;->processContent(Landroidx/slice/widget/GridContent$CellContent;)V

    .line 101
    .end local v3    # "item":Landroidx/slice/SliceItem;
    .end local v4    # "cc":Landroidx/slice/widget/GridContent$CellContent;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    .end local v2    # "i":I
    :cond_2
    goto :goto_1

    .line 109
    :cond_3
    new-instance v1, Landroidx/slice/widget/GridContent$CellContent;

    invoke-direct {v1, p1}, Landroidx/slice/widget/GridContent$CellContent;-><init>(Landroidx/slice/SliceItem;)V

    .line 110
    .local v1, "cc":Landroidx/slice/widget/GridContent$CellContent;
    invoke-direct {p0, v1}, Landroidx/slice/widget/GridContent;->processContent(Landroidx/slice/widget/GridContent$CellContent;)V

    .line 112
    .end local v1    # "cc":Landroidx/slice/widget/GridContent$CellContent;
    :goto_1
    invoke-virtual {p0}, Landroidx/slice/widget/GridContent;->isValid()Z

    move-result v1

    return v1
.end method

.method private processContent(Landroidx/slice/widget/GridContent$CellContent;)V
    .locals 2
    .param p1, "cc"    # Landroidx/slice/widget/GridContent$CellContent;

    .line 116
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 117
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mTitleItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/GridContent;->mTitleItem:Landroidx/slice/SliceItem;

    .line 120
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mGridContent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->isImageOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/slice/widget/GridContent;->mAllImages:Z

    .line 124
    :cond_1
    iget v0, p0, Landroidx/slice/widget/GridContent;->mMaxCellLineCount:I

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->getTextCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridContent;->mMaxCellLineCount:I

    .line 125
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mFirstImage:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->getImageIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/GridContent;->mFirstImage:Landroidx/core/graphics/drawable/IconCompat;

    .line 128
    :cond_2
    iget v0, p0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 129
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->getImageMode()I

    move-result v0

    goto :goto_0

    .line 130
    :cond_3
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->getImageMode()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    iput v0, p0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    .line 132
    :cond_4
    return-void
.end method


# virtual methods
.method public getContentIntent()Landroidx/slice/SliceItem;
    .locals 1

    .line 166
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getFirstImageSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 211
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mFirstImage:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 214
    :cond_0
    iget-object v1, p0, Landroidx/slice/widget/GridContent;->mFirstImageSize:Landroid/graphics/Point;

    if-nez v1, :cond_1

    .line 215
    invoke-virtual {v0, p1}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 216
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Landroidx/slice/widget/GridContent;->mFirstImageSize:Landroid/graphics/Point;

    .line 218
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mFirstImageSize:Landroid/graphics/Point;

    return-object v0
.end method

.method public getGridContent()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/widget/GridContent$CellContent;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mGridContent:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I
    .locals 1
    .param p1, "style"    # Landroidx/slice/widget/SliceStyle;
    .param p2, "policy"    # Landroidx/slice/widget/SliceViewPolicy;

    .line 283
    invoke-virtual {p1, p0, p2}, Landroidx/slice/widget/SliceStyle;->getGridHeight(Landroidx/slice/widget/GridContent;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v0

    return v0
.end method

.method public getIsLastIndex()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Landroidx/slice/widget/GridContent;->mIsLastIndex:Z

    return v0
.end method

.method public getLargestImageMode()I
    .locals 1

    .line 202
    iget v0, p0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    return v0
.end method

.method public getMaxCellLineCount()I
    .locals 1

    .line 249
    iget v0, p0, Landroidx/slice/widget/GridContent;->mMaxCellLineCount:I

    return v0
.end method

.method public getSeeMoreItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 176
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 141
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mTitleItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSanitizedText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 143
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_1

    .line 144
    new-instance v1, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v1, v0}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    invoke-virtual {v1}, Landroidx/slice/core/SliceActionImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 146
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasImage()Z
    .locals 1

    .line 258
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mFirstImage:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAllImages()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Landroidx/slice/widget/GridContent;->mAllImages:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 184
    invoke-super {p0}, Landroidx/slice/widget/SliceContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mGridContent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setIsLastIndex(Z)V
    .locals 0
    .param p1, "isLast"    # Z

    .line 274
    iput-boolean p1, p0, Landroidx/slice/widget/GridContent;->mIsLastIndex:Z

    .line 275
    return-void
.end method
