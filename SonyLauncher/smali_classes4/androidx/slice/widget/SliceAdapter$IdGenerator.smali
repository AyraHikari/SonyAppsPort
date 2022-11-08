.class Landroidx/slice/widget/SliceAdapter$IdGenerator;
.super Ljava/lang/Object;
.source "SliceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/SliceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdGenerator"
.end annotation


# instance fields
.field private final mCurrentIds:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mNextLong:J

.field private final mUsedIds:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/slice/widget/SliceAdapter$IdGenerator;->mNextLong:J

    .line 421
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/SliceAdapter$IdGenerator;->mCurrentIds:Landroidx/collection/ArrayMap;

    .line 422
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/SliceAdapter$IdGenerator;->mUsedIds:Landroidx/collection/ArrayMap;

    .line 425
    return-void
.end method

.method private genString(Landroidx/slice/SliceItem;)Ljava/lang/String;
    .locals 2
    .param p1, "item"    # Landroidx/slice/SliceItem;

    .line 440
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "slice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 441
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 444
    :cond_0
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 442
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getId(Landroidx/slice/SliceItem;)J
    .locals 7
    .param p1, "item"    # Landroidx/slice/SliceItem;

    .line 428
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceAdapter$IdGenerator;->genString(Landroidx/slice/SliceItem;)Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Landroidx/slice/widget/SliceAdapter$IdGenerator;->mCurrentIds:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, v0}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 430
    iget-object v1, p0, Landroidx/slice/widget/SliceAdapter$IdGenerator;->mCurrentIds:Landroidx/collection/ArrayMap;

    iget-wide v2, p0, Landroidx/slice/widget/SliceAdapter$IdGenerator;->mNextLong:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Landroidx/slice/widget/SliceAdapter$IdGenerator;->mNextLong:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    :cond_0
    iget-object v1, p0, Landroidx/slice/widget/SliceAdapter$IdGenerator;->mCurrentIds:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 433
    .local v1, "id":J
    iget-object v3, p0, Landroidx/slice/widget/SliceAdapter$IdGenerator;->mUsedIds:Landroidx/collection/ArrayMap;

    invoke-virtual {v3, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 434
    .local v3, "usedIdIndex":Ljava/lang/Integer;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 435
    .local v4, "index":I
    :goto_0
    iget-object v5, p0, Landroidx/slice/widget/SliceAdapter$IdGenerator;->mUsedIds:Landroidx/collection/ArrayMap;

    add-int/lit8 v6, v4, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    mul-int/lit16 v5, v4, 0x2710

    int-to-long v5, v5

    add-long/2addr v5, v1

    return-wide v5
.end method

.method public resetUsage()V
    .locals 1

    .line 448
    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter$IdGenerator;->mUsedIds:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    .line 449
    return-void
.end method
