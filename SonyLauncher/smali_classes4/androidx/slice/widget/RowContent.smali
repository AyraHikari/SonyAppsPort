.class public Landroidx/slice/widget/RowContent;
.super Landroidx/slice/widget/SliceContent;
.source "RowContent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RowContent"


# instance fields
.field private final mEndItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIsHeader:Z

.field private mLineCount:I

.field private mPrimaryAction:Landroidx/slice/SliceItem;

.field private mRange:Landroidx/slice/SliceItem;

.field private mSelection:Landroidx/slice/SliceItem;

.field private mShowActionDivider:Z

.field private mShowBottomDivider:Z

.field private mShowTitleItems:Z

.field private mStartItem:Landroidx/slice/SliceItem;

.field private mSubtitleItem:Landroidx/slice/SliceItem;

.field private mSummaryItem:Landroidx/slice/SliceItem;

.field private mTitleItem:Landroidx/slice/SliceItem;

.field private final mToggleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/slice/SliceItem;I)V
    .locals 1
    .param p1, "rowSlice"    # Landroidx/slice/SliceItem;
    .param p2, "position"    # I

    .line 83
    invoke-direct {p0, p1, p2}, Landroidx/slice/widget/SliceContent;-><init>(Landroidx/slice/SliceItem;I)V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowContent;->mEndItems:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowContent;->mToggleItems:Ljava/util/ArrayList;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Landroidx/slice/widget/RowContent;->mLineCount:I

    .line 84
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, p1, v0}, Landroidx/slice/widget/RowContent;->populate(Landroidx/slice/SliceItem;Z)Z

    .line 85
    return-void
.end method

.method private determineStartAndPrimaryAction(Landroidx/slice/SliceItem;)V
    .locals 9
    .param p1, "rowSlice"    # Landroidx/slice/SliceItem;

    .line 210
    const/4 v0, 0x0

    const-string v1, "title"

    invoke-static {p1, v0, v1, v0}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 211
    .local v2, "possibleStartItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "slice"

    const-string v5, "action"

    const/4 v6, 0x0

    if-lez v3, :cond_2

    .line 213
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceItem;

    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "format":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "image"

    if-eqz v7, :cond_0

    .line 215
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/slice/SliceItem;

    invoke-static {v7, v8}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    nop

    .line 216
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 217
    const-string v7, "long"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 218
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 219
    :cond_1
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/slice/SliceItem;

    iput-object v7, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    .line 224
    .end local v3    # "format":Ljava/lang/String;
    :cond_2
    const-string v3, "shortcut"

    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "hints":[Ljava/lang/String;
    invoke-static {p1, v4, v1, v0}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 226
    .local v3, "possiblePrimaries":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    invoke-static {p1, v5, v1, v0}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 228
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 229
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 230
    iput-object p1, p0, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    goto :goto_0

    .line 231
    :cond_3
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_4

    .line 232
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v5, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    if-ne v0, v5, :cond_4

    .line 234
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/SliceItem;

    iput-object v0, p0, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    goto :goto_0

    .line 235
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 236
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/SliceItem;

    iput-object v0, p0, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    .line 238
    :cond_5
    :goto_0
    return-void
.end method

.method private static filterInvalidItems(Landroidx/slice/SliceItem;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "rowSlice"    # Landroidx/slice/SliceItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/SliceItem;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v0, "filteredList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/SliceItem;>;"
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    .line 456
    .local v2, "i":Landroidx/slice/SliceItem;
    invoke-static {p0, v2}, Landroidx/slice/widget/RowContent;->isValidRowContent(Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 457
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    .end local v2    # "i":Landroidx/slice/SliceItem;
    :cond_0
    goto :goto_0

    .line 460
    :cond_1
    return-object v0
.end method

.method private static hasText(Landroidx/slice/SliceItem;)Z
    .locals 1
    .param p0, "textSlice"    # Landroidx/slice/SliceItem;

    .line 419
    if-eqz p0, :cond_1

    .line 420
    const-string v0, "partial"

    invoke-virtual {p0, v0}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 419
    :goto_0
    return v0
.end method

.method private static isValidRow(Landroidx/slice/SliceItem;)Z
    .locals 5
    .param p0, "rowSlice"    # Landroidx/slice/SliceItem;

    .line 428
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 429
    return v0

    .line 432
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "slice"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 433
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 434
    :cond_1
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v1

    .line 436
    .local v1, "rowItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    const-string v2, "see_more"

    invoke-virtual {p0, v2}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 437
    return v3

    .line 440
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 441
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    invoke-static {p0, v4}, Landroidx/slice/widget/RowContent;->isValidRowContent(Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 442
    return v3

    .line 440
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 446
    .end local v1    # "rowItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    .end local v2    # "i":I
    :cond_4
    return v0
.end method

.method private static isValidRowContent(Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;)Z
    .locals 4
    .param p0, "slice"    # Landroidx/slice/SliceItem;
    .param p1, "item"    # Landroidx/slice/SliceItem;

    .line 470
    const-string v0, "keywords"

    const-string v1, "ttl"

    const-string v2, "last_updated"

    const-string v3, "horizontal"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 471
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content_description"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 472
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "selection_option_key"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 473
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "selection_option_value"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 476
    :cond_0
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "itemFormat":Ljava/lang/String;
    const-string v2, "image"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 480
    const-string v2, "text"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 481
    const-string v2, "long"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 482
    const-string v2, "action"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 483
    const-string v2, "input"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 484
    const-string v2, "slice"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 485
    const-string v2, "int"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "range"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 479
    :cond_2
    return v1

    .line 474
    .end local v0    # "itemFormat":Ljava/lang/String;
    :cond_3
    :goto_0
    return v1
.end method

.method private populate(Landroidx/slice/SliceItem;Z)Z
    .locals 12
    .param p1, "rowSlice"    # Landroidx/slice/SliceItem;
    .param p2, "isHeader"    # Z

    .line 91
    const-string v0, "end_of_section"

    invoke-virtual {p1, v0}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0, v1}, Landroidx/slice/widget/RowContent;->showBottomDivider(Z)V

    .line 95
    :cond_0
    iput-boolean p2, p0, Landroidx/slice/widget/RowContent;->mIsHeader:Z

    .line 96
    invoke-static {p1}, Landroidx/slice/widget/RowContent;->isValidRow(Landroidx/slice/SliceItem;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 97
    const-string v0, "RowContent"

    const-string v1, "Provided SliceItem is invalid for RowContent"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return v2

    .line 100
    :cond_1
    invoke-direct {p0, p1}, Landroidx/slice/widget/RowContent;->determineStartAndPrimaryAction(Landroidx/slice/SliceItem;)V

    .line 103
    invoke-static {p1}, Landroidx/slice/widget/RowContent;->filterInvalidItems(Landroidx/slice/SliceItem;)Ljava/util/ArrayList;

    move-result-object v0

    .line 105
    .local v0, "rowItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/SliceItem;>;"
    const/4 v3, 0x0

    .line 106
    .local v3, "isOneItem":Z
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v5, "title"

    const-string v6, "action"

    if-ne v4, v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 107
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v4

    const-string v7, "slice"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    nop

    .line 108
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    const-string v7, "shortcut"

    filled-new-array {v7, v5}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 109
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    invoke-static {v4}, Landroidx/slice/widget/RowContent;->isValidRow(Landroidx/slice/SliceItem;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 110
    const/4 v3, 0x1

    .line 111
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object p1, v4

    check-cast p1, Landroidx/slice/SliceItem;

    .line 112
    invoke-static {p1}, Landroidx/slice/widget/RowContent;->filterInvalidItems(Landroidx/slice/SliceItem;)Ljava/util/ArrayList;

    move-result-object v0

    .line 115
    :cond_3
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v4

    const-string v7, "range"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 117
    invoke-static {p1, v6, v7}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    if-eqz v4, :cond_6

    if-eqz v3, :cond_4

    goto :goto_0

    .line 122
    :cond_4
    iget-object v4, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v1, :cond_5

    .line 125
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    invoke-static {v4}, Landroidx/slice/widget/RowContent;->isValidRow(Landroidx/slice/SliceItem;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 126
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object p1, v4

    check-cast p1, Landroidx/slice/SliceItem;

    .line 127
    invoke-static {p1}, Landroidx/slice/widget/RowContent;->filterInvalidItems(Landroidx/slice/SliceItem;)Ljava/util/ArrayList;

    move-result-object v0

    .line 128
    iput-object p1, p0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    .line 130
    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->getInputRangeThumb()Landroidx/slice/SliceItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 133
    :cond_5
    invoke-static {p1, v6, v7}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    iput-object v4, p0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    .line 135
    invoke-static {v4}, Landroidx/slice/widget/RowContent;->filterInvalidItems(Landroidx/slice/SliceItem;)Ljava/util/ArrayList;

    move-result-object v4

    .line 136
    .local v4, "rangeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/SliceItem;>;"
    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->getInputRangeThumb()Landroidx/slice/SliceItem;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 137
    iget-object v7, p0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 119
    .end local v4    # "rangeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/SliceItem;>;"
    :cond_6
    :goto_0
    iput-object p1, p0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    .line 142
    :cond_7
    :goto_1
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v4

    const-string v7, "selection"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 143
    iput-object p1, p0, Landroidx/slice/widget/RowContent;->mSelection:Landroidx/slice/SliceItem;

    .line 145
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_17

    .line 147
    iget-object v4, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    if-eqz v4, :cond_9

    .line 148
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 150
    :cond_9
    iget-object v4, p0, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    if-eqz v4, :cond_a

    .line 151
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 155
    :cond_a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v4, "endItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/SliceItem;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_10

    .line 157
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/slice/SliceItem;

    .line 158
    .local v8, "item":Landroidx/slice/SliceItem;
    invoke-virtual {v8}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v9

    const-string v10, "text"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 159
    iget-object v9, p0, Landroidx/slice/widget/RowContent;->mTitleItem:Landroidx/slice/SliceItem;

    const-string v10, "summary"

    if-eqz v9, :cond_b

    invoke-virtual {v9, v5}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 160
    :cond_b
    invoke-virtual {v8, v5}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {v8, v10}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 161
    iput-object v8, p0, Landroidx/slice/widget/RowContent;->mTitleItem:Landroidx/slice/SliceItem;

    goto :goto_3

    .line 162
    :cond_c
    iget-object v9, p0, Landroidx/slice/widget/RowContent;->mSubtitleItem:Landroidx/slice/SliceItem;

    if-nez v9, :cond_d

    invoke-virtual {v8, v10}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 163
    iput-object v8, p0, Landroidx/slice/widget/RowContent;->mSubtitleItem:Landroidx/slice/SliceItem;

    goto :goto_3

    .line 164
    :cond_d
    iget-object v9, p0, Landroidx/slice/widget/RowContent;->mSummaryItem:Landroidx/slice/SliceItem;

    if-nez v9, :cond_f

    invoke-virtual {v8, v10}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 165
    iput-object v8, p0, Landroidx/slice/widget/RowContent;->mSummaryItem:Landroidx/slice/SliceItem;

    goto :goto_3

    .line 168
    :cond_e
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .end local v8    # "item":Landroidx/slice/SliceItem;
    :cond_f
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 171
    .end local v7    # "i":I
    :cond_10
    iget-object v5, p0, Landroidx/slice/widget/RowContent;->mTitleItem:Landroidx/slice/SliceItem;

    invoke-static {v5}, Landroidx/slice/widget/RowContent;->hasText(Landroidx/slice/SliceItem;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 172
    iget v5, p0, Landroidx/slice/widget/RowContent;->mLineCount:I

    add-int/2addr v5, v1

    iput v5, p0, Landroidx/slice/widget/RowContent;->mLineCount:I

    .line 174
    :cond_11
    iget-object v5, p0, Landroidx/slice/widget/RowContent;->mSubtitleItem:Landroidx/slice/SliceItem;

    invoke-static {v5}, Landroidx/slice/widget/RowContent;->hasText(Landroidx/slice/SliceItem;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 175
    iget v5, p0, Landroidx/slice/widget/RowContent;->mLineCount:I

    add-int/2addr v5, v1

    iput v5, p0, Landroidx/slice/widget/RowContent;->mLineCount:I

    .line 178
    :cond_12
    iget-object v5, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    const-string v7, "long"

    if-eqz v5, :cond_13

    .line 179
    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    move v5, v1

    goto :goto_4

    :cond_13
    move v5, v2

    .line 180
    .local v5, "hasTimestamp":Z
    :goto_4
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_17

    .line 181
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/slice/SliceItem;

    .line 182
    .local v9, "item":Landroidx/slice/SliceItem;
    invoke-static {v9, v6}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v10

    if-eqz v10, :cond_14

    move v10, v1

    goto :goto_6

    :cond_14
    move v10, v2

    .line 183
    .local v10, "isAction":Z
    :goto_6
    invoke-virtual {v9}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 184
    if-nez v5, :cond_16

    .line 185
    const/4 v5, 0x1

    .line 186
    iget-object v11, p0, Landroidx/slice/widget/RowContent;->mEndItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 189
    :cond_15
    invoke-direct {p0, v9, v10}, Landroidx/slice/widget/RowContent;->processContent(Landroidx/slice/SliceItem;Z)V

    .line 180
    .end local v9    # "item":Landroidx/slice/SliceItem;
    .end local v10    # "isAction":Z
    :cond_16
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 193
    .end local v4    # "endItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/SliceItem;>;"
    .end local v5    # "hasTimestamp":Z
    .end local v8    # "i":I
    :cond_17
    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->isValid()Z

    move-result v1

    return v1
.end method

.method private processContent(Landroidx/slice/SliceItem;Z)V
    .locals 2
    .param p1, "item"    # Landroidx/slice/SliceItem;
    .param p2, "isAction"    # Z

    .line 197
    if-eqz p2, :cond_0

    .line 198
    new-instance v0, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v0, p1}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    .line 199
    .local v0, "ac":Landroidx/slice/core/SliceAction;
    invoke-interface {v0}, Landroidx/slice/core/SliceAction;->isToggle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Landroidx/slice/widget/RowContent;->mToggleItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .end local v0    # "ac":Landroidx/slice/core/SliceAction;
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mEndItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    return-void
.end method


# virtual methods
.method public getEndItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mEndItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I
    .locals 1
    .param p1, "style"    # Landroidx/slice/widget/SliceStyle;
    .param p2, "policy"    # Landroidx/slice/widget/SliceViewPolicy;

    .line 361
    invoke-virtual {p1, p0, p2}, Landroidx/slice/widget/SliceStyle;->getRowHeight(Landroidx/slice/widget/RowContent;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v0

    return v0
.end method

.method public getInputRangeThumb()Landroidx/slice/SliceItem;
    .locals 4

    .line 286
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_1

    .line 287
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v0

    .line 288
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 289
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    return-object v2

    .line 288
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    .end local v0    # "items":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIsHeader()Z
    .locals 1

    .line 256
    iget-boolean v0, p0, Landroidx/slice/widget/RowContent;->mIsHeader:Z

    return v0
.end method

.method public getLineCount()I
    .locals 1

    .line 352
    iget v0, p0, Landroidx/slice/widget/RowContent;->mLineCount:I

    return v0
.end method

.method public getPrimaryAction()Landroidx/slice/SliceItem;
    .locals 1

    .line 302
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getRange()Landroidx/slice/SliceItem;
    .locals 1

    .line 270
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getSelection()Landroidx/slice/SliceItem;
    .locals 1

    .line 278
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mSelection:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getStartItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 310
    iget-boolean v0, p0, Landroidx/slice/widget/RowContent;->mIsHeader:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/slice/widget/RowContent;->mShowTitleItems:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    :goto_0
    return-object v0
.end method

.method public getSubtitleItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 326
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mSubtitleItem:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getSummaryItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 331
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mSummaryItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mSubtitleItem:Landroidx/slice/SliceItem;

    :cond_0
    return-object v0
.end method

.method public getTitleItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 318
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mTitleItem:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getToggleItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mToggleItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasActionDivider()Z
    .locals 1

    .line 412
    iget-boolean v0, p0, Landroidx/slice/widget/RowContent;->mShowActionDivider:Z

    return v0
.end method

.method public hasBottomDivider()Z
    .locals 1

    .line 398
    iget-boolean v0, p0, Landroidx/slice/widget/RowContent;->mShowBottomDivider:Z

    return v0
.end method

.method public hasTitleItems()Z
    .locals 1

    .line 384
    iget-boolean v0, p0, Landroidx/slice/widget/RowContent;->mShowTitleItems:Z

    return v0
.end method

.method public isDefaultSeeMore()Z
    .locals 2

    .line 368
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 369
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    const-string v1, "see_more"

    invoke-virtual {v0, v1}, Landroidx/slice/Slice;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 370
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 368
    :goto_0
    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 242
    invoke-super {p0}, Landroidx/slice/widget/SliceContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mTitleItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mSubtitleItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mEndItems:Ljava/util/ArrayList;

    .line 247
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mSelection:Landroidx/slice/SliceItem;

    if-nez v0, :cond_0

    .line 250
    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->isDefaultSeeMore()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 242
    :goto_0
    return v0
.end method

.method public setIsHeader(Z)V
    .locals 0
    .param p1, "isHeader"    # Z

    .line 262
    iput-boolean p1, p0, Landroidx/slice/widget/RowContent;->mIsHeader:Z

    .line 263
    return-void
.end method

.method public showActionDivider(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 405
    iput-boolean p1, p0, Landroidx/slice/widget/RowContent;->mShowActionDivider:Z

    .line 406
    return-void
.end method

.method public showBottomDivider(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 391
    iput-boolean p1, p0, Landroidx/slice/widget/RowContent;->mShowBottomDivider:Z

    .line 392
    return-void
.end method

.method public showTitleItems(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 377
    iput-boolean p1, p0, Landroidx/slice/widget/RowContent;->mShowTitleItems:Z

    .line 378
    return-void
.end method
