.class public Landroidx/slice/widget/ListContent;
.super Landroidx/slice/widget/SliceContent;
.source "ListContent.java"


# instance fields
.field private mHeaderContent:Landroidx/slice/widget/RowContent;

.field private mPrimaryAction:Landroidx/slice/core/SliceAction;

.field private mRowItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slice/widget/SliceContent;",
            ">;"
        }
    .end annotation
.end field

.field private mSeeMoreContent:Landroidx/slice/widget/RowContent;

.field private mSliceActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/slice/Slice;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slice"    # Landroidx/slice/Slice;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    invoke-direct {p0, p2}, Landroidx/slice/widget/SliceContent;-><init>(Landroidx/slice/Slice;)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    .line 77
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mSliceItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_0

    .line 78
    return-void

    .line 80
    :cond_0
    invoke-direct {p0, p2}, Landroidx/slice/widget/ListContent;->populate(Landroidx/slice/Slice;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroidx/slice/Slice;)V
    .locals 1
    .param p1, "slice"    # Landroidx/slice/Slice;

    .line 67
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceContent;-><init>(Landroidx/slice/Slice;)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    .line 68
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mSliceItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_0

    .line 69
    return-void

    .line 71
    :cond_0
    invoke-direct {p0, p1}, Landroidx/slice/widget/ListContent;->populate(Landroidx/slice/Slice;)V

    .line 72
    return-void
.end method

.method private static findHeaderItem(Landroidx/slice/Slice;)Landroidx/slice/SliceItem;
    .locals 8
    .param p0, "slice"    # Landroidx/slice/Slice;

    .line 301
    const-string v0, "list_item"

    const-string v1, "shortcut"

    const-string v2, "actions"

    const-string v3, "keywords"

    const-string v4, "ttl"

    const-string v5, "last_updated"

    const-string v6, "horizontal"

    const-string v7, "selection_option"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "nonHints":[Ljava/lang/String;
    const-string v1, "slice"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    .line 304
    .local v1, "header":Landroidx/slice/SliceItem;
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroidx/slice/widget/ListContent;->isValidHeader(Landroidx/slice/SliceItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 305
    return-object v1

    .line 307
    :cond_0
    return-object v2
.end method

.method private findPrimaryAction()Landroidx/slice/core/SliceAction;
    .locals 5

    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "action":Landroidx/slice/SliceItem;
    iget-object v1, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    if-eqz v1, :cond_0

    .line 233
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v0

    .line 235
    :cond_0
    const-string v1, "action"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 236
    const-string v3, "shortcut"

    const-string v4, "title"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, "hints":[Ljava/lang/String;
    iget-object v4, p0, Landroidx/slice/widget/ListContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-static {v4, v1, v3, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    .line 239
    .end local v3    # "hints":[Ljava/lang/String;
    :cond_1
    if-nez v0, :cond_2

    .line 240
    iget-object v3, p0, Landroidx/slice/widget/ListContent;->mSliceItem:Landroidx/slice/SliceItem;

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v1, v2, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    .line 242
    :cond_2
    if-eqz v0, :cond_3

    new-instance v2, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v2, v0}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    :cond_3
    return-object v2
.end method

.method public static getListHeight(Ljava/util/List;Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I
    .locals 1
    .param p1, "style"    # Landroidx/slice/widget/SliceStyle;
    .param p2, "policy"    # Landroidx/slice/widget/SliceViewPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/widget/SliceContent;",
            ">;",
            "Landroidx/slice/widget/SliceStyle;",
            "Landroidx/slice/widget/SliceViewPolicy;",
            ")I"
        }
    .end annotation

    .line 295
    .local p0, "listItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/widget/SliceContent;>;"
    invoke-virtual {p1, p0, p2}, Landroidx/slice/widget/SliceStyle;->getListItemsHeight(Ljava/util/List;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v0

    return v0
.end method

.method public static getRowType(Landroidx/slice/widget/SliceContent;ZLjava/util/List;)I
    .locals 7
    .param p0, "content"    # Landroidx/slice/widget/SliceContent;
    .param p1, "isHeader"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/widget/SliceContent;",
            "Z",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;)I"
        }
    .end annotation

    .line 255
    .local p2, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_a

    .line 256
    instance-of v1, p0, Landroidx/slice/widget/GridContent;

    if-eqz v1, :cond_0

    .line 257
    const/4 v0, 0x1

    return v0

    .line 259
    :cond_0
    move-object v1, p0

    check-cast v1, Landroidx/slice/widget/RowContent;

    .line 260
    .local v1, "rc":Landroidx/slice/widget/RowContent;
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v2

    .line 261
    .local v2, "actionItem":Landroidx/slice/SliceItem;
    const/4 v3, 0x0

    .line 262
    .local v3, "primaryAction":Landroidx/slice/core/SliceAction;
    if-eqz v2, :cond_1

    .line 263
    new-instance v4, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v4, v2}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    move-object v3, v4

    .line 265
    :cond_1
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 266
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v4, "action"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    const/4 v0, 0x4

    goto :goto_0

    .line 268
    :cond_2
    const/4 v0, 0x5

    .line 266
    :goto_0
    return v0

    .line 269
    :cond_3
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getSelection()Landroidx/slice/SliceItem;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 270
    const/4 v0, 0x6

    return v0

    .line 271
    :cond_4
    const/4 v4, 0x3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroidx/slice/core/SliceAction;->isToggle()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 272
    return v4

    .line 273
    :cond_5
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    .line 274
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 275
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/slice/core/SliceAction;

    invoke-interface {v6}, Landroidx/slice/core/SliceAction;->isToggle()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 276
    return v4

    .line 274
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 279
    .end local v5    # "i":I
    :cond_7
    return v0

    .line 281
    :cond_8
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getToggleItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 282
    move v0, v4

    goto :goto_2

    .line 283
    :cond_9
    nop

    .line 281
    :goto_2
    return v0

    .line 287
    .end local v1    # "rc":Landroidx/slice/widget/RowContent;
    .end local v2    # "actionItem":Landroidx/slice/SliceItem;
    .end local v3    # "primaryAction":Landroidx/slice/core/SliceAction;
    :cond_a
    return v0
.end method

.method private static getSeeMoreItem(Landroidx/slice/Slice;)Landroidx/slice/SliceItem;
    .locals 5
    .param p0, "slice"    # Landroidx/slice/Slice;

    .line 312
    const-string v0, "see_more"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v1, v0, v1}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    .line 314
    .local v0, "item":Landroidx/slice/SliceItem;
    if-eqz v0, :cond_1

    .line 315
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    const-string v3, "slice"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v1

    .line 317
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceItem;

    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v3

    const-string v4, "action"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 318
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    return-object v2

    .line 320
    :cond_0
    return-object v0

    .line 323
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    :cond_1
    return-object v1
.end method

.method private static isValidHeader(Landroidx/slice/SliceItem;)Z
    .locals 4
    .param p0, "sliceItem"    # Landroidx/slice/SliceItem;

    .line 330
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "slice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "actions"

    const-string v2, "keywords"

    const-string v3, "see_more"

    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-virtual {p0, v0}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 333
    const/4 v0, 0x0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const-string v2, "text"

    invoke-static {p0, v2, v0, v0}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    .line 334
    .local v0, "item":Landroidx/slice/SliceItem;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 336
    .end local v0    # "item":Landroidx/slice/SliceItem;
    :cond_1
    return v1
.end method

.method private populate(Landroidx/slice/Slice;)V
    .locals 12
    .param p1, "slice"    # Landroidx/slice/Slice;

    .line 84
    if-nez p1, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-static {p1}, Landroidx/slice/SliceMetadata;->getSliceActions(Landroidx/slice/Slice;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/ListContent;->mSliceActions:Ljava/util/List;

    .line 86
    invoke-static {p1}, Landroidx/slice/widget/ListContent;->findHeaderItem(Landroidx/slice/Slice;)Landroidx/slice/SliceItem;

    move-result-object v0

    .line 87
    .local v0, "headerItem":Landroidx/slice/SliceItem;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 88
    new-instance v2, Landroidx/slice/widget/RowContent;

    invoke-direct {v2, v0, v1}, Landroidx/slice/widget/RowContent;-><init>(Landroidx/slice/SliceItem;I)V

    iput-object v2, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    .line 89
    iget-object v3, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_1
    invoke-static {p1}, Landroidx/slice/widget/ListContent;->getSeeMoreItem(Landroidx/slice/Slice;)Landroidx/slice/SliceItem;

    move-result-object v2

    .line 92
    .local v2, "seeMoreItem":Landroidx/slice/SliceItem;
    if-eqz v2, :cond_2

    .line 93
    new-instance v3, Landroidx/slice/widget/RowContent;

    const/4 v4, -0x1

    invoke-direct {v3, v2, v4}, Landroidx/slice/widget/RowContent;-><init>(Landroidx/slice/SliceItem;I)V

    iput-object v3, p0, Landroidx/slice/widget/ListContent;->mSeeMoreContent:Landroidx/slice/widget/RowContent;

    .line 97
    :cond_2
    invoke-virtual {p1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v3

    .line 98
    .local v3, "children":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 99
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/slice/SliceItem;

    .line 100
    .local v5, "child":Landroidx/slice/SliceItem;
    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, "format":Ljava/lang/String;
    const-string v7, "actions"

    const-string v8, "see_more"

    const-string v9, "keywords"

    const-string v10, "ttl"

    const-string v11, "last_updated"

    filled-new-array {v7, v8, v9, v10, v11}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v7

    .line 103
    .local v7, "isNonRowContent":Z
    if-nez v7, :cond_6

    const-string v8, "action"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "slice"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 104
    :cond_3
    iget-object v8, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    const-string v9, "list_item"

    if-nez v8, :cond_4

    invoke-virtual {v5, v9}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 105
    new-instance v8, Landroidx/slice/widget/RowContent;

    invoke-direct {v8, v5, v1}, Landroidx/slice/widget/RowContent;-><init>(Landroidx/slice/SliceItem;I)V

    iput-object v8, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    .line 106
    iget-object v9, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v1, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 107
    :cond_4
    invoke-virtual {v5, v9}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 108
    const-string v8, "horizontal"

    invoke-virtual {v5, v8}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 109
    iget-object v8, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    new-instance v9, Landroidx/slice/widget/GridContent;

    invoke-direct {v9, v5, v4}, Landroidx/slice/widget/GridContent;-><init>(Landroidx/slice/SliceItem;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 111
    :cond_5
    iget-object v8, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    new-instance v9, Landroidx/slice/widget/RowContent;

    invoke-direct {v9, v5, v4}, Landroidx/slice/widget/RowContent;-><init>(Landroidx/slice/SliceItem;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .end local v5    # "child":Landroidx/slice/SliceItem;
    .end local v6    # "format":Ljava/lang/String;
    .end local v7    # "isNonRowContent":Z
    :cond_6
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 117
    .end local v4    # "i":I
    :cond_7
    iget-object v4, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    const/4 v5, 0x1

    if-nez v4, :cond_8

    iget-object v4, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v5, :cond_8

    .line 120
    iget-object v4, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/widget/RowContent;

    iput-object v1, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    .line 121
    invoke-virtual {v1, v5}, Landroidx/slice/widget/RowContent;->setIsHeader(Z)V

    .line 123
    :cond_8
    iget-object v1, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_9

    iget-object v1, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroidx/slice/widget/GridContent;

    if-eqz v1, :cond_9

    .line 125
    iget-object v1, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/widget/GridContent;

    invoke-virtual {v1, v5}, Landroidx/slice/widget/GridContent;->setIsLastIndex(Z)V

    .line 127
    :cond_9
    invoke-direct {p0}, Landroidx/slice/widget/ListContent;->findPrimaryAction()Landroidx/slice/core/SliceAction;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/ListContent;->mPrimaryAction:Landroidx/slice/core/SliceAction;

    .line 128
    return-void
.end method


# virtual methods
.method public getHeader()Landroidx/slice/widget/RowContent;
    .locals 1

    .line 167
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    return-object v0
.end method

.method public getHeaderTemplateType()I
    .locals 3

    .line 188
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    iget-object v1, p0, Landroidx/slice/widget/ListContent;->mSliceActions:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Landroidx/slice/widget/ListContent;->getRowType(Landroidx/slice/widget/SliceContent;ZLjava/util/List;)I

    move-result v0

    return v0
.end method

.method public getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I
    .locals 1
    .param p1, "style"    # Landroidx/slice/widget/SliceStyle;
    .param p2, "policy"    # Landroidx/slice/widget/SliceViewPolicy;

    .line 132
    invoke-virtual {p1, p0, p2}, Landroidx/slice/widget/SliceStyle;->getListHeight(Landroidx/slice/widget/ListContent;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v0

    return v0
.end method

.method public getRowItems(ILandroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)Landroidx/slice/widget/DisplayedListItems;
    .locals 6
    .param p1, "availableHeight"    # I
    .param p2, "style"    # Landroidx/slice/widget/SliceStyle;
    .param p3, "policy"    # Landroidx/slice/widget/SliceViewPolicy;

    .line 146
    invoke-virtual {p3}, Landroidx/slice/widget/SliceViewPolicy;->getMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 147
    new-instance v0, Landroidx/slice/widget/DisplayedListItems;

    new-instance v3, Ljava/util/ArrayList;

    new-array v4, v2, [Landroidx/slice/widget/RowContent;

    .line 148
    invoke-virtual {p0}, Landroidx/slice/widget/ListContent;->getHeader()Landroidx/slice/widget/RowContent;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    .line 149
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-direct {v0, v3, v1}, Landroidx/slice/widget/DisplayedListItems;-><init>(Ljava/util/List;I)V

    .line 147
    return-object v0

    .line 150
    :cond_0
    invoke-virtual {p3}, Landroidx/slice/widget/SliceViewPolicy;->isScrollable()Z

    move-result v0

    if-nez v0, :cond_1

    if-lez p1, :cond_1

    .line 151
    invoke-virtual {p2, p0, p1, p3}, Landroidx/slice/widget/SliceStyle;->getListItemsForNonScrollingList(Landroidx/slice/widget/ListContent;ILandroidx/slice/widget/SliceViewPolicy;)Landroidx/slice/widget/DisplayedListItems;

    move-result-object v0

    return-object v0

    .line 153
    :cond_1
    new-instance v0, Landroidx/slice/widget/DisplayedListItems;

    .line 154
    invoke-virtual {p2, p0}, Landroidx/slice/widget/SliceStyle;->getListItemsToDisplay(Landroidx/slice/widget/ListContent;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroidx/slice/widget/DisplayedListItems;-><init>(Ljava/util/List;I)V

    .line 153
    return-object v0
.end method

.method public getRowItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/widget/SliceContent;",
            ">;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSeeMoreItem()Landroidx/slice/widget/SliceContent;
    .locals 1

    .line 181
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mSeeMoreContent:Landroidx/slice/widget/RowContent;

    return-object v0
.end method

.method public getShortcut(Landroid/content/Context;)Landroidx/slice/core/SliceAction;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 194
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mPrimaryAction:Landroidx/slice/core/SliceAction;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/slice/widget/SliceContent;->getShortcut(Landroid/content/Context;)Landroidx/slice/core/SliceAction;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSliceActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mSliceActions:Ljava/util/List;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 162
    invoke-super {p0}, Landroidx/slice/widget/SliceContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

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

.method public showActionDividers(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 219
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/widget/SliceContent;

    .line 220
    .local v1, "item":Landroidx/slice/widget/SliceContent;
    instance-of v2, v1, Landroidx/slice/widget/RowContent;

    if-eqz v2, :cond_0

    .line 221
    move-object v2, v1

    check-cast v2, Landroidx/slice/widget/RowContent;

    invoke-virtual {v2, p1}, Landroidx/slice/widget/RowContent;->showActionDivider(Z)V

    .line 223
    .end local v1    # "item":Landroidx/slice/widget/SliceContent;
    :cond_0
    goto :goto_0

    .line 224
    :cond_1
    return-void
.end method

.method public showHeaderDivider(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 210
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 211
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/RowContent;->showBottomDivider(Z)V

    .line 213
    :cond_0
    return-void
.end method

.method public showTitleItems(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 201
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0, p1}, Landroidx/slice/widget/RowContent;->showTitleItems(Z)V

    .line 204
    :cond_0
    return-void
.end method
