.class public Landroidx/slice/SliceMetadata;
.super Ljava/lang/Object;
.source "SliceMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/SliceMetadata$SliceLoadingState;
    }
.end annotation


# static fields
.field public static final LOADED_ALL:I = 0x2

.field public static final LOADED_NONE:I = 0x0

.field public static final LOADED_PARTIAL:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExpiry:J

.field private mHeaderContent:Landroidx/slice/widget/RowContent;

.field private final mHostExtras:Landroid/os/Bundle;

.field private mLastUpdated:J

.field private mListContent:Landroidx/slice/widget/ListContent;

.field private mPrimaryAction:Landroidx/slice/core/SliceAction;

.field private mSlice:Landroidx/slice/Slice;

.field private mSliceActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplateType:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroidx/slice/Slice;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slice"    # Landroidx/slice/Slice;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p2, p0, Landroidx/slice/SliceMetadata;->mSlice:Landroidx/slice/Slice;

    .line 137
    iput-object p1, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    .line 138
    const-string v0, "long"

    const-string v1, "ttl"

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    .line 139
    .local v1, "ttlItem":Landroidx/slice/SliceItem;
    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/slice/SliceMetadata;->mExpiry:J

    .line 142
    :cond_0
    const-string v3, "last_updated"

    invoke-static {p2, v0, v3, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    .line 143
    .local v0, "updatedItem":Landroidx/slice/SliceItem;
    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/slice/SliceMetadata;->mLastUpdated:J

    .line 146
    :cond_1
    const-string v2, "bundle"

    const-string v3, "host_extras"

    invoke-static {p2, v2, v3}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    .line 148
    .local v2, "hostExtrasItem":Landroidx/slice/SliceItem;
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    instance-of v3, v3, Landroid/os/Bundle;

    if-eqz v3, :cond_2

    .line 149
    iget-object v3, v2, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    iput-object v3, p0, Landroidx/slice/SliceMetadata;->mHostExtras:Landroid/os/Bundle;

    goto :goto_0

    .line 151
    :cond_2
    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v3, p0, Landroidx/slice/SliceMetadata;->mHostExtras:Landroid/os/Bundle;

    .line 153
    :goto_0
    new-instance v3, Landroidx/slice/widget/ListContent;

    invoke-direct {v3, p2}, Landroidx/slice/widget/ListContent;-><init>(Landroidx/slice/Slice;)V

    iput-object v3, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    .line 154
    invoke-virtual {v3}, Landroidx/slice/widget/ListContent;->getHeader()Landroidx/slice/widget/RowContent;

    move-result-object v3

    iput-object v3, p0, Landroidx/slice/SliceMetadata;->mHeaderContent:Landroidx/slice/widget/RowContent;

    .line 155
    iget-object v3, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v3}, Landroidx/slice/widget/ListContent;->getHeaderTemplateType()I

    move-result v3

    iput v3, p0, Landroidx/slice/SliceMetadata;->mTemplateType:I

    .line 156
    iget-object v3, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    iget-object v4, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroidx/slice/widget/ListContent;->getShortcut(Landroid/content/Context;)Landroidx/slice/core/SliceAction;

    move-result-object v3

    iput-object v3, p0, Landroidx/slice/SliceMetadata;->mPrimaryAction:Landroidx/slice/core/SliceAction;

    .line 157
    iget-object v3, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v3}, Landroidx/slice/widget/ListContent;->getSliceActions()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroidx/slice/SliceMetadata;->mSliceActions:Ljava/util/List;

    .line 158
    if-nez v3, :cond_5

    iget-object v3, p0, Landroidx/slice/SliceMetadata;->mHeaderContent:Landroidx/slice/widget/RowContent;

    if-eqz v3, :cond_5

    .line 159
    invoke-virtual {v3}, Landroidx/slice/widget/RowContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v3

    const-string v4, "list_item"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/slice/core/SliceQuery;->hasHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 161
    iget-object v3, p0, Landroidx/slice/SliceMetadata;->mHeaderContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v3}, Landroidx/slice/widget/RowContent;->getEndItems()Ljava/util/List;

    move-result-object v3

    .line 162
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v4, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 164
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/slice/SliceItem;

    const-string v7, "action"

    invoke-static {v6, v7}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 165
    new-instance v6, Landroidx/slice/core/SliceActionImpl;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/slice/SliceItem;

    invoke-direct {v6, v7}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 168
    .end local v5    # "i":I
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 169
    iput-object v4, p0, Landroidx/slice/SliceMetadata;->mSliceActions:Ljava/util/List;

    .line 172
    .end local v3    # "items":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    .end local v4    # "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    :cond_5
    return-void
.end method

.method public static from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slice"    # Landroidx/slice/Slice;

    .line 125
    new-instance v0, Landroidx/slice/SliceMetadata;

    invoke-direct {v0, p0, p1}, Landroidx/slice/SliceMetadata;-><init>(Landroid/content/Context;Landroidx/slice/Slice;)V

    return-object v0
.end method

.method public static getSliceActions(Landroidx/slice/Slice;)Ljava/util/List;
    .locals 7
    .param p0, "slice"    # Landroidx/slice/Slice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/Slice;",
            ")",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation

    .line 476
    const-string v0, "slice"

    const-string v1, "actions"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    .line 477
    .local v3, "actionGroup":Landroidx/slice/SliceItem;
    const-string v4, "shortcut"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 478
    .local v1, "hints":[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 479
    invoke-static {v3, v0, v1, v2}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 480
    :cond_0
    move-object v0, v2

    :goto_0
    nop

    .line 481
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    if-eqz v0, :cond_2

    .line 482
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 483
    .local v2, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 484
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/slice/SliceItem;

    .line 485
    .local v5, "item":Landroidx/slice/SliceItem;
    new-instance v6, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v6, v5}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    .end local v5    # "item":Landroidx/slice/SliceItem;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 487
    .end local v4    # "i":I
    :cond_1
    return-object v2

    .line 489
    .end local v2    # "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    :cond_2
    return-object v2
.end method


# virtual methods
.method public getExpiry()J
    .locals 2

    .line 428
    iget-wide v0, p0, Landroidx/slice/SliceMetadata;->mExpiry:J

    return-wide v0
.end method

.method public getHeaderType()I
    .locals 1

    .line 232
    iget v0, p0, Landroidx/slice/SliceMetadata;->mTemplateType:I

    return v0
.end method

.method public getHostExtras()Landroid/os/Bundle;
    .locals 1

    .line 266
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mHostExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getInputRangeAction()Landroid/app/PendingIntent;
    .locals 2

    .line 296
    iget v0, p0, Landroidx/slice/SliceMetadata;->mTemplateType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 297
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mHeaderContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v0

    .line 298
    .local v0, "range":Landroidx/slice/SliceItem;
    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1

    .line 302
    .end local v0    # "range":Landroidx/slice/SliceItem;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastUpdatedTime()J
    .locals 2

    .line 436
    iget-wide v0, p0, Landroidx/slice/SliceMetadata;->mLastUpdated:J

    return-wide v0
.end method

.method public getListContent()Landroidx/slice/widget/ListContent;
    .locals 1

    .line 524
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    return-object v0
.end method

.method public getLoadingState()I
    .locals 4

    .line 406
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mSlice:Landroidx/slice/Slice;

    const/4 v1, 0x0

    const-string v2, "partial"

    invoke-static {v0, v1, v2, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 407
    .local v0, "hasHintPartial":Z
    :goto_0
    iget-object v3, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v3}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 409
    return v2

    .line 410
    :cond_1
    if-eqz v0, :cond_2

    .line 412
    return v1

    .line 415
    :cond_2
    const/4 v1, 0x2

    return v1
.end method

.method public getPrimaryAction()Landroidx/slice/core/SliceAction;
    .locals 1

    .line 225
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mPrimaryAction:Landroidx/slice/core/SliceAction;

    return-object v0
.end method

.method public getRange()Landroidx/core/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 337
    iget v0, p0, Landroidx/slice/SliceMetadata;->mTemplateType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 339
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mHeaderContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v0

    .line 340
    .local v0, "range":Landroidx/slice/SliceItem;
    const-string v1, "int"

    const-string v2, "max"

    invoke-static {v0, v1, v2}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    .line 341
    .local v2, "maxItem":Landroidx/slice/SliceItem;
    const-string v3, "min"

    invoke-static {v0, v1, v3}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    .line 342
    .local v1, "minItem":Landroidx/slice/SliceItem;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getInt()I

    move-result v3

    goto :goto_1

    :cond_2
    const/16 v3, 0x64

    .line 343
    .local v3, "max":I
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getInt()I

    move-result v4

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 344
    .local v4, "min":I
    :goto_2
    new-instance v5, Landroidx/core/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5
.end method

.method public getRangeValue()I
    .locals 4

    .line 357
    iget v0, p0, Landroidx/slice/SliceMetadata;->mTemplateType:I

    const/4 v1, -0x1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    return v1

    .line 359
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mHeaderContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v0

    .line 360
    .local v0, "range":Landroidx/slice/SliceItem;
    const-string v2, "int"

    const-string v3, "value"

    invoke-static {v0, v2, v3}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    .line 361
    .local v2, "currentItem":Landroidx/slice/SliceItem;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getInt()I

    move-result v1

    :cond_2
    return v1
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

    .line 217
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mSliceActions:Ljava/util/List;

    return-object v0
.end method

.method public getSliceKeywords()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 380
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mSlice:Landroidx/slice/Slice;

    const-string v1, "slice"

    const-string v2, "keywords"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    .line 381
    .local v0, "keywordGroup":Landroidx/slice/SliceItem;
    if-eqz v0, :cond_2

    .line 382
    const-string v1, "text"

    invoke-static {v0, v1}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 383
    .local v1, "itemList":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    if-eqz v1, :cond_2

    .line 384
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v2, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 386
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 387
    .local v4, "keyword":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 388
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    .end local v4    # "keyword":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 391
    .end local v3    # "i":I
    :cond_1
    return-object v2

    .line 394
    .end local v1    # "itemList":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    .end local v2    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-object v3
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 195
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mHeaderContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getSubtitleItem()Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mHeaderContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getSubtitleItem()Landroidx/slice/SliceItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 198
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 206
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mHeaderContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getSummaryItem()Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mHeaderContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getSummaryItem()Landroidx/slice/SliceItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 209
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeToExpiry()J
    .locals 8

    .line 514
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 515
    .local v0, "now":J
    iget-wide v2, p0, Landroidx/slice/SliceMetadata;->mExpiry:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    const-wide/16 v6, -0x1

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    cmp-long v6, v0, v2

    if-lez v6, :cond_0

    goto :goto_0

    .line 516
    :cond_0
    sub-long v4, v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 515
    :goto_1
    return-wide v4
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "title":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mHeaderContent:Landroidx/slice/widget/RowContent;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mHeaderContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 183
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mPrimaryAction:Landroidx/slice/core/SliceAction;

    if-eqz v1, :cond_1

    .line 184
    invoke-interface {v1}, Landroidx/slice/core/SliceAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 187
    :cond_1
    return-object v0
.end method

.method public getToggles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v0, "toggles":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mPrimaryAction:Landroidx/slice/core/SliceAction;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/slice/core/SliceAction;->isToggle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mPrimaryAction:Landroidx/slice/core/SliceAction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 251
    :cond_0
    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mSliceActions:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 252
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/slice/SliceMetadata;->mSliceActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 253
    iget-object v2, p0, Landroidx/slice/SliceMetadata;->mSliceActions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/core/SliceAction;

    .line 254
    .local v2, "action":Landroidx/slice/core/SliceAction;
    invoke-interface {v2}, Landroidx/slice/core/SliceAction;->isToggle()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 255
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    .end local v2    # "action":Landroidx/slice/core/SliceAction;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_2
    goto :goto_1

    .line 258
    :cond_3
    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mHeaderContent:Landroidx/slice/widget/RowContent;

    if-eqz v1, :cond_4

    .line 259
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getToggleItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 261
    :cond_4
    :goto_1
    return-object v0
.end method

.method public hasLargeMode()Z
    .locals 2

    .line 240
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isCachedSlice()Z
    .locals 2

    .line 466
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mSlice:Landroidx/slice/Slice;

    const-string v1, "cached"

    invoke-virtual {v0, v1}, Landroidx/slice/Slice;->hasHint(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isErrorSlice()Z
    .locals 2

    .line 458
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mSlice:Landroidx/slice/Slice;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroidx/slice/Slice;->hasHint(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isExpired()Z
    .locals 6

    .line 497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 498
    .local v0, "now":J
    iget-wide v2, p0, Landroidx/slice/SliceMetadata;->mExpiry:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isPermissionSlice()Z
    .locals 2

    .line 448
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mSlice:Landroidx/slice/Slice;

    const-string v1, "permission_request"

    invoke-virtual {v0, v1}, Landroidx/slice/Slice;->hasHint(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSelection()Z
    .locals 2

    .line 371
    iget v0, p0, Landroidx/slice/SliceMetadata;->mTemplateType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public neverExpires()Z
    .locals 4

    .line 506
    iget-wide v0, p0, Landroidx/slice/SliceMetadata;->mExpiry:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public sendInputRangeAction(I)Z
    .locals 5
    .param p1, "newValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 312
    iget v0, p0, Landroidx/slice/SliceMetadata;->mTemplateType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 313
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mHeaderContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v0

    .line 314
    .local v0, "range":Landroidx/slice/SliceItem;
    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p0}, Landroidx/slice/SliceMetadata;->getRange()Landroidx/core/util/Pair;

    move-result-object v1

    .line 317
    .local v1, "validRange":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p1, v2, v3}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v2

    .line 318
    .local v2, "adjustedValue":I
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x10000000

    .line 319
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    .line 320
    const-string v4, "android.app.slice.extra.RANGE_VALUE"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 321
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4, v3}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V

    .line 322
    const/4 v4, 0x1

    return v4

    .line 325
    .end local v0    # "range":Landroidx/slice/SliceItem;
    .end local v1    # "validRange":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v2    # "adjustedValue":I
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sendToggleAction(Landroidx/slice/core/SliceAction;Z)Z
    .locals 8
    .param p1, "toggleAction"    # Landroidx/slice/core/SliceAction;
    .param p2, "toggleValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 278
    if-eqz p1, :cond_1

    .line 279
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 280
    const-string v1, "android.app.slice.extra.TOGGLE_STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 281
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 282
    invoke-interface {p1}, Landroidx/slice/core/SliceAction;->getAction()Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 284
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 286
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
