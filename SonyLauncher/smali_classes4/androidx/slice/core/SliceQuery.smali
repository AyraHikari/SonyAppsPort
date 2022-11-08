.class public Landroidx/slice/core/SliceQuery;
.super Ljava/lang/Object;
.source "SliceQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/core/SliceQuery$Filter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    return-void
.end method

.method static checkFormat(Landroidx/slice/SliceItem;Ljava/lang/String;)Z
    .locals 1
    .param p0, "item"    # Landroidx/slice/SliceItem;
    .param p1, "format"    # Ljava/lang/String;

    .line 232
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method static checkSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;)Z
    .locals 1
    .param p0, "item"    # Landroidx/slice/SliceItem;
    .param p1, "subtype"    # Ljava/lang/String;

    .line 237
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method private static contains(Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;)Z
    .locals 3
    .param p0, "container"    # Landroidx/slice/SliceItem;
    .param p1, "item"    # Landroidx/slice/SliceItem;

    .line 96
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-static {p0}, Landroidx/slice/core/SliceQuery;->toQueue(Landroidx/slice/SliceItem;)Ljava/util/Deque;

    move-result-object v1

    new-instance v2, Landroidx/slice/core/SliceQuery$1;

    invoke-direct {v2, p1}, Landroidx/slice/core/SliceQuery$1;-><init>(Landroidx/slice/SliceItem;)V

    invoke-static {v1, v2}, Landroidx/slice/core/SliceQuery;->findSliceItem(Ljava/util/Deque;Landroidx/slice/core/SliceQuery$Filter;)Landroidx/slice/SliceItem;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 96
    :cond_2
    :goto_0
    return v0
.end method

.method public static find(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/SliceItem;
    .locals 2
    .param p0, "s"    # Landroidx/slice/Slice;
    .param p1, "format"    # Ljava/lang/String;

    .line 163
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    invoke-static {p0, p1, v0, v0}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    return-object v0
.end method

.method public static find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;
    .locals 3
    .param p0, "s"    # Landroidx/slice/Slice;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "hints"    # Ljava/lang/String;
    .param p3, "nonHints"    # Ljava/lang/String;

    .line 157
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    new-array v0, v0, [Ljava/lang/String;

    aput-object p3, v0, v2

    invoke-static {p0, p1, v1, v0}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    return-object v0
.end method

.method public static find(Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;
    .locals 2
    .param p0, "s"    # Landroidx/slice/Slice;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "hints"    # [Ljava/lang/String;
    .param p3, "nonHints"    # [Ljava/lang/String;

    .line 182
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 183
    :cond_0
    invoke-static {p0}, Landroidx/slice/core/SliceQuery;->toQueue(Landroidx/slice/Slice;)Ljava/util/Deque;

    move-result-object v0

    new-instance v1, Landroidx/slice/core/SliceQuery$4;

    invoke-direct {v1, p1, p2, p3}, Landroidx/slice/core/SliceQuery$4;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroidx/slice/core/SliceQuery;->findSliceItem(Ljava/util/Deque;Landroidx/slice/core/SliceQuery$Filter;)Landroidx/slice/SliceItem;

    move-result-object v0

    return-object v0
.end method

.method public static find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;
    .locals 2
    .param p0, "s"    # Landroidx/slice/SliceItem;
    .param p1, "format"    # Ljava/lang/String;

    .line 169
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    invoke-static {p0, p1, v0, v0}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    return-object v0
.end method

.method public static find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;
    .locals 3
    .param p0, "s"    # Landroidx/slice/SliceItem;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "hints"    # Ljava/lang/String;
    .param p3, "nonHints"    # Ljava/lang/String;

    .line 175
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    new-array v0, v0, [Ljava/lang/String;

    aput-object p3, v0, v2

    invoke-static {p0, p1, v1, v0}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    return-object v0
.end method

.method public static find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;
    .locals 2
    .param p0, "s"    # Landroidx/slice/SliceItem;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "hints"    # [Ljava/lang/String;
    .param p3, "nonHints"    # [Ljava/lang/String;

    .line 220
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 221
    :cond_0
    invoke-static {p0}, Landroidx/slice/core/SliceQuery;->toQueue(Landroidx/slice/SliceItem;)Ljava/util/Deque;

    move-result-object v0

    new-instance v1, Landroidx/slice/core/SliceQuery$7;

    invoke-direct {v1, p1, p2, p3}, Landroidx/slice/core/SliceQuery$7;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroidx/slice/core/SliceQuery;->findSliceItem(Ljava/util/Deque;Landroidx/slice/core/SliceQuery$Filter;)Landroidx/slice/SliceItem;

    move-result-object v0

    return-object v0
.end method

.method public static findAll(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "s"    # Landroidx/slice/Slice;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "hints"    # Ljava/lang/String;
    .param p3, "nonHints"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/Slice;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 114
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    new-array v0, v0, [Ljava/lang/String;

    aput-object p3, v0, v2

    invoke-static {p0, p1, v1, v0}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static findAll(Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "s"    # Landroidx/slice/Slice;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "hints"    # [Ljava/lang/String;
    .param p3, "nonHints"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/Slice;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/SliceItem;>;"
    invoke-static {p0}, Landroidx/slice/core/SliceQuery;->toQueue(Landroidx/slice/Slice;)Ljava/util/Deque;

    move-result-object v1

    new-instance v2, Landroidx/slice/core/SliceQuery$2;

    invoke-direct {v2, p1, p2, p3}, Landroidx/slice/core/SliceQuery$2;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v1, v2, v0}, Landroidx/slice/core/SliceQuery;->findAll(Ljava/util/Deque;Landroidx/slice/core/SliceQuery$Filter;Ljava/util/List;)V

    .line 136
    return-object v0
.end method

.method public static findAll(Landroidx/slice/SliceItem;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "s"    # Landroidx/slice/SliceItem;
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/SliceItem;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 108
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    invoke-static {p0, p1, v0, v0}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static findAll(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "s"    # Landroidx/slice/SliceItem;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "hints"    # Ljava/lang/String;
    .param p3, "nonHints"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/SliceItem;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 121
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    new-array v0, v0, [Ljava/lang/String;

    aput-object p3, v0, v2

    invoke-static {p0, p1, v1, v0}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static findAll(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "s"    # Landroidx/slice/SliceItem;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "hints"    # [Ljava/lang/String;
    .param p3, "nonHints"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/SliceItem;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/SliceItem;>;"
    invoke-static {p0}, Landroidx/slice/core/SliceQuery;->toQueue(Landroidx/slice/SliceItem;)Ljava/util/Deque;

    move-result-object v1

    new-instance v2, Landroidx/slice/core/SliceQuery$3;

    invoke-direct {v2, p1, p2, p3}, Landroidx/slice/core/SliceQuery$3;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v1, v2, v0}, Landroidx/slice/core/SliceQuery;->findAll(Ljava/util/Deque;Landroidx/slice/core/SliceQuery$Filter;Ljava/util/List;)V

    .line 151
    return-object v0
.end method

.method private static findAll(Ljava/util/Deque;Landroidx/slice/core/SliceQuery$Filter;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Landroidx/slice/SliceItem;",
            ">;",
            "Landroidx/slice/core/SliceQuery$Filter<",
            "Landroidx/slice/SliceItem;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/slice/SliceItem;",
            ">;)V"
        }
    .end annotation

    .line 268
    .local p0, "items":Ljava/util/Deque;, "Ljava/util/Deque<Landroidx/slice/SliceItem;>;"
    .local p1, "f":Landroidx/slice/core/SliceQuery$Filter;, "Landroidx/slice/core/SliceQuery$Filter<Landroidx/slice/SliceItem;>;"
    .local p2, "out":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 269
    invoke-interface {p0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/SliceItem;

    .line 270
    .local v0, "item":Landroidx/slice/SliceItem;
    invoke-interface {p1, v0}, Landroidx/slice/core/SliceQuery$Filter;->filter(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_0
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "slice"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 274
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 275
    :cond_1
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice;->getItemArray()[Landroidx/slice/SliceItem;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 277
    .end local v0    # "item":Landroidx/slice/SliceItem;
    :cond_2
    goto :goto_0

    .line 278
    :cond_3
    return-void
.end method

.method public static findItem(Landroidx/slice/Slice;Landroid/net/Uri;)Landroidx/slice/SliceItem;
    .locals 2
    .param p0, "s"    # Landroidx/slice/Slice;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 303
    invoke-static {p0}, Landroidx/slice/core/SliceQuery;->toQueue(Landroidx/slice/Slice;)Ljava/util/Deque;

    move-result-object v0

    new-instance v1, Landroidx/slice/core/SliceQuery$8;

    invoke-direct {v1, p1}, Landroidx/slice/core/SliceQuery$8;-><init>(Landroid/net/Uri;)V

    invoke-static {v0, v1}, Landroidx/slice/core/SliceQuery;->findSliceItem(Ljava/util/Deque;Landroidx/slice/core/SliceQuery$Filter;)Landroidx/slice/SliceItem;

    move-result-object v0

    return-object v0
.end method

.method public static findNotContaining(Landroidx/slice/SliceItem;Ljava/util/List;)Landroidx/slice/SliceItem;
    .locals 3
    .param p0, "container"    # Landroidx/slice/SliceItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/SliceItem;",
            "Ljava/util/List<",
            "Landroidx/slice/SliceItem;",
            ">;)",
            "Landroidx/slice/SliceItem;"
        }
    .end annotation

    .line 83
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    const/4 v0, 0x0

    .line 84
    .local v0, "ret":Landroidx/slice/SliceItem;
    :goto_0
    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceItem;

    .line 86
    .local v1, "remove":Landroidx/slice/SliceItem;
    invoke-static {p0, v1}, Landroidx/slice/core/SliceQuery;->contains(Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    move-object v0, v1

    .line 89
    .end local v1    # "remove":Landroidx/slice/SliceItem;
    :cond_0
    goto :goto_0

    .line 90
    :cond_1
    return-object v0
.end method

.method private static findSliceItem(Ljava/util/Deque;Landroidx/slice/core/SliceQuery$Filter;)Landroidx/slice/SliceItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Landroidx/slice/SliceItem;",
            ">;",
            "Landroidx/slice/core/SliceQuery$Filter<",
            "Landroidx/slice/SliceItem;",
            ">;)",
            "Landroidx/slice/SliceItem;"
        }
    .end annotation

    .line 253
    .local p0, "items":Ljava/util/Deque;, "Ljava/util/Deque<Landroidx/slice/SliceItem;>;"
    .local p1, "f":Landroidx/slice/core/SliceQuery$Filter;, "Landroidx/slice/core/SliceQuery$Filter<Landroidx/slice/SliceItem;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 254
    invoke-interface {p0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/SliceItem;

    .line 255
    .local v0, "item":Landroidx/slice/SliceItem;
    invoke-interface {p1, v0}, Landroidx/slice/core/SliceQuery$Filter;->filter(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    return-object v0

    .line 258
    :cond_0
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "slice"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 259
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 260
    :cond_1
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice;->getItemArray()[Landroidx/slice/SliceItem;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 262
    .end local v0    # "item":Landroidx/slice/SliceItem;
    :cond_2
    goto :goto_0

    .line 263
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static findSubtype(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;
    .locals 2
    .param p0, "s"    # Landroidx/slice/Slice;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "subtype"    # Ljava/lang/String;

    .line 195
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 196
    :cond_0
    invoke-static {p0}, Landroidx/slice/core/SliceQuery;->toQueue(Landroidx/slice/Slice;)Ljava/util/Deque;

    move-result-object v0

    new-instance v1, Landroidx/slice/core/SliceQuery$5;

    invoke-direct {v1, p1, p2}, Landroidx/slice/core/SliceQuery$5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroidx/slice/core/SliceQuery;->findSliceItem(Ljava/util/Deque;Landroidx/slice/core/SliceQuery$Filter;)Landroidx/slice/SliceItem;

    move-result-object v0

    return-object v0
.end method

.method public static findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;
    .locals 2
    .param p0, "s"    # Landroidx/slice/SliceItem;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "subtype"    # Ljava/lang/String;

    .line 207
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 208
    :cond_0
    invoke-static {p0}, Landroidx/slice/core/SliceQuery;->toQueue(Landroidx/slice/SliceItem;)Ljava/util/Deque;

    move-result-object v0

    new-instance v1, Landroidx/slice/core/SliceQuery$6;

    invoke-direct {v1, p1, p2}, Landroidx/slice/core/SliceQuery$6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroidx/slice/core/SliceQuery;->findSliceItem(Ljava/util/Deque;Landroidx/slice/core/SliceQuery$Filter;)Landroidx/slice/SliceItem;

    move-result-object v0

    return-object v0
.end method

.method public static findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;
    .locals 4
    .param p0, "s"    # Landroidx/slice/Slice;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "subtype"    # Ljava/lang/String;
    .param p3, "hints"    # [Ljava/lang/String;
    .param p4, "nonHints"    # [Ljava/lang/String;

    .line 285
    invoke-virtual {p0}, Landroidx/slice/Slice;->getItemArray()[Landroidx/slice/SliceItem;

    move-result-object v0

    .line 286
    .local v0, "items":[Landroidx/slice/SliceItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 287
    aget-object v2, v0, v1

    .line 288
    .local v2, "item":Landroidx/slice/SliceItem;
    invoke-static {v2, p1}, Landroidx/slice/core/SliceQuery;->checkFormat(Landroidx/slice/SliceItem;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 289
    invoke-static {v2, p2}, Landroidx/slice/core/SliceQuery;->checkSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    invoke-static {v2, p3}, Landroidx/slice/core/SliceQuery;->hasHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    invoke-static {v2, p4}, Landroidx/slice/core/SliceQuery;->hasAnyHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 292
    return-object v2

    .line 286
    .end local v2    # "item":Landroidx/slice/SliceItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static varargs hasAnyHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "item"    # Landroidx/slice/SliceItem;
    .param p1, "hints"    # [Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 48
    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 49
    .local v3, "hint":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 50
    const/4 v0, 0x1

    return v0

    .line 48
    .end local v3    # "hint":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :cond_2
    return v0
.end method

.method public static varargs hasHints(Landroidx/slice/Slice;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "item"    # Landroidx/slice/Slice;
    .param p1, "hints"    # [Ljava/lang/String;

    .line 71
    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 72
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 73
    .local v4, "hint":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v4}, Landroidx/slice/Slice;->hasHint(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 74
    return v2

    .line 72
    .end local v4    # "hint":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    :cond_2
    return v0
.end method

.method public static varargs hasHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "item"    # Landroidx/slice/SliceItem;
    .param p1, "hints"    # [Ljava/lang/String;

    .line 59
    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 60
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 61
    .local v4, "hint":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v4}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 62
    return v2

    .line 60
    .end local v4    # "hint":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    :cond_2
    return v0
.end method

.method private static toQueue(Landroidx/slice/Slice;)Ljava/util/Deque;
    .locals 2
    .param p0, "item"    # Landroidx/slice/Slice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/Slice;",
            ")",
            "Ljava/util/Deque<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 242
    .local v0, "q":Ljava/util/Deque;, "Ljava/util/Deque<Landroidx/slice/SliceItem;>;"
    invoke-virtual {p0}, Landroidx/slice/Slice;->getItemArray()[Landroidx/slice/SliceItem;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 243
    return-object v0
.end method

.method private static toQueue(Landroidx/slice/SliceItem;)Ljava/util/Deque;
    .locals 1
    .param p0, "item"    # Landroidx/slice/SliceItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/SliceItem;",
            ")",
            "Ljava/util/Deque<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 248
    .local v0, "q":Ljava/util/Deque;, "Ljava/util/Deque<Landroidx/slice/SliceItem;>;"
    invoke-interface {v0, p0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 249
    return-object v0
.end method
