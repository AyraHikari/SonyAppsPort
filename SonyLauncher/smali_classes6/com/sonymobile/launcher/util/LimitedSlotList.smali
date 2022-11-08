.class public Lcom/sonymobile/launcher/util/LimitedSlotList;
.super Ljava/lang/Object;
.source "LimitedSlotList.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final mMaxSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "maxSize"    # I

    .line 33
    .local p0, "this":Lcom/sonymobile/launcher/util/LimitedSlotList;, "Lcom/sonymobile/launcher/util/LimitedSlotList<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/sonymobile/launcher/util/LimitedSlotList;->mMaxSize:I

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/launcher/util/LimitedSlotList;->mList:Ljava/util/ArrayList;

    .line 36
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/sonymobile/launcher/util/LimitedSlotList;->mList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method private getAvailableIndex()I
    .locals 2

    .line 181
    .local p0, "this":Lcom/sonymobile/launcher/util/LimitedSlotList;, "Lcom/sonymobile/launcher/util/LimitedSlotList<TV;>;"
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget v1, p0, Lcom/sonymobile/launcher/util/LimitedSlotList;->mMaxSize:I

    if-ge v0, v1, :cond_1

    .line 182
    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/util/LimitedSlotList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 183
    return v0

    .line 181
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v0    # "index":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private getIndex(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .line 196
    .local p0, "this":Lcom/sonymobile/launcher/util/LimitedSlotList;, "Lcom/sonymobile/launcher/util/LimitedSlotList<TV;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/sonymobile/launcher/util/LimitedSlotList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 61
    .local p0, "this":Lcom/sonymobile/launcher/util/LimitedSlotList;, "Lcom/sonymobile/launcher/util/LimitedSlotList<TV;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lcom/sonymobile/launcher/util/LimitedSlotList;->getAvailableIndex()I

    move-result v0

    .line 63
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 64
    const/4 v1, 0x0

    return v1

    .line 67
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/launcher/util/LimitedSlotList;->set(ILjava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 122
    .local p0, "this":Lcom/sonymobile/launcher/util/LimitedSlotList;, "Lcom/sonymobile/launcher/util/LimitedSlotList<TV;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/sonymobile/launcher/util/LimitedSlotList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/sonymobile/launcher/util/LimitedSlotList;, "Lcom/sonymobile/launcher/util/LimitedSlotList<TV;>;"
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/sonymobile/launcher/util/LimitedSlotList;->mMaxSize:I

    if-ge p1, v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/sonymobile/launcher/util/LimitedSlotList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 51
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method get()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 163
    .local p0, "this":Lcom/sonymobile/launcher/util/LimitedSlotList;, "Lcom/sonymobile/launcher/util/LimitedSlotList<TV;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget v2, p0, Lcom/sonymobile/launcher/util/LimitedSlotList;->mMaxSize:I

    if-ge v1, v2, :cond_1

    .line 166
    invoke-virtual {p0, v1}, Lcom/sonymobile/launcher/util/LimitedSlotList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 168
    .local v2, "v":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_0

    .line 169
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .end local v2    # "v":Ljava/lang/Object;, "TV;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v1    # "index":I
    :cond_1
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lcom/sonymobile/launcher/util/LimitedSlotList;, "Lcom/sonymobile/launcher/util/LimitedSlotList<TV;>;"
    new-instance v0, Lcom/sonymobile/launcher/util/LimitedSlotList$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/launcher/util/LimitedSlotList$1;-><init>(Lcom/sonymobile/launcher/util/LimitedSlotList;)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 109
    .local p0, "this":Lcom/sonymobile/launcher/util/LimitedSlotList;, "Lcom/sonymobile/launcher/util/LimitedSlotList<TV;>;"
    const/4 v0, 0x0

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/sonymobile/launcher/util/LimitedSlotList;->mMaxSize:I

    if-ge p1, v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/sonymobile/launcher/util/LimitedSlotList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 112
    :cond_0
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 92
    .local p0, "this":Lcom/sonymobile/launcher/util/LimitedSlotList;, "Lcom/sonymobile/launcher/util/LimitedSlotList<TV;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/util/LimitedSlotList;->getIndex(Ljava/lang/Object;)I

    move-result v0

    .line 94
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/sonymobile/launcher/util/LimitedSlotList;->mList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 97
    const/4 v1, 0x1

    return v1

    .line 99
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public set(ILjava/lang/Object;)Z
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)Z"
        }
    .end annotation

    .line 78
    .local p0, "this":Lcom/sonymobile/launcher/util/LimitedSlotList;, "Lcom/sonymobile/launcher/util/LimitedSlotList<TV;>;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/sonymobile/launcher/util/LimitedSlotList;->mMaxSize:I

    if-ge p1, v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/sonymobile/launcher/util/LimitedSlotList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 80
    const/4 v0, 0x1

    return v0

    .line 82
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 131
    .local p0, "this":Lcom/sonymobile/launcher/util/LimitedSlotList;, "Lcom/sonymobile/launcher/util/LimitedSlotList<TV;>;"
    iget v0, p0, Lcom/sonymobile/launcher/util/LimitedSlotList;->mMaxSize:I

    return v0
.end method
