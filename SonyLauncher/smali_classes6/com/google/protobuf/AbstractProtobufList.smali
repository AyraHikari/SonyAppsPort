.class abstract Lcom/google/protobuf/AbstractProtobufList;
.super Ljava/util/AbstractList;
.source "AbstractProtobufList.java"

# interfaces
.implements Lcom/google/protobuf/Internal$ProtobufList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;",
        "Lcom/google/protobuf/Internal$ProtobufList<",
        "TE;>;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_CAPACITY:I = 0xa


# instance fields
.field private isMutable:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 54
    .local p0, "this":Lcom/google/protobuf/AbstractProtobufList;, "Lcom/google/protobuf/AbstractProtobufList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/AbstractProtobufList;->isMutable:Z

    .line 56
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 0
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 104
    .local p0, "this":Lcom/google/protobuf/AbstractProtobufList;, "Lcom/google/protobuf/AbstractProtobufList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 105
    invoke-super {p0, p1, p2}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    .line 106
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 98
    .local p0, "this":Lcom/google/protobuf/AbstractProtobufList;, "Lcom/google/protobuf/AbstractProtobufList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 99
    invoke-super {p0, p1}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 116
    .local p0, "this":Lcom/google/protobuf/AbstractProtobufList;, "Lcom/google/protobuf/AbstractProtobufList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 117
    invoke-super {p0, p1, p2}, Ljava/util/AbstractList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 110
    .local p0, "this":Lcom/google/protobuf/AbstractProtobufList;, "Lcom/google/protobuf/AbstractProtobufList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 111
    invoke-super {p0, p1}, Ljava/util/AbstractList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 0

    .line 122
    .local p0, "this":Lcom/google/protobuf/AbstractProtobufList;, "Lcom/google/protobuf/AbstractProtobufList<TE;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 123
    invoke-super {p0}, Ljava/util/AbstractList;->clear()V

    .line 124
    return-void
.end method

.method protected ensureIsMutable()V
    .locals 1

    .line 171
    .local p0, "this":Lcom/google/protobuf/AbstractProtobufList;, "Lcom/google/protobuf/AbstractProtobufList<TE;>;"
    iget-boolean v0, p0, Lcom/google/protobuf/AbstractProtobufList;->isMutable:Z

    if-eqz v0, :cond_0

    .line 174
    return-void

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 60
    .local p0, "this":Lcom/google/protobuf/AbstractProtobufList;, "Lcom/google/protobuf/AbstractProtobufList<TE;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 61
    return v0

    .line 63
    :cond_0
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 64
    return v2

    .line 69
    :cond_1
    instance-of v1, p1, Ljava/util/RandomAccess;

    if-nez v1, :cond_2

    .line 70
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 73
    :cond_2
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 74
    .local v1, "other":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractProtobufList;->size()I

    move-result v3

    .line 75
    .local v3, "size":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 76
    return v2

    .line 78
    :cond_3
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_5

    .line 79
    invoke-virtual {p0, v4}, Lcom/google/protobuf/AbstractProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 80
    return v2

    .line 78
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 83
    .end local v4    # "i":I
    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 88
    .local p0, "this":Lcom/google/protobuf/AbstractProtobufList;, "Lcom/google/protobuf/AbstractProtobufList<TE;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractProtobufList;->size()I

    move-result v0

    .line 89
    .local v0, "size":I
    const/4 v1, 0x1

    .line 90
    .local v1, "hashCode":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 91
    mul-int/lit8 v3, v1, 0x1f

    invoke-virtual {p0, v2}, Lcom/google/protobuf/AbstractProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int v1, v3, v4

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v2    # "i":I
    :cond_0
    return v1
.end method

.method public isModifiable()Z
    .locals 1

    .line 128
    .local p0, "this":Lcom/google/protobuf/AbstractProtobufList;, "Lcom/google/protobuf/AbstractProtobufList<TE;>;"
    iget-boolean v0, p0, Lcom/google/protobuf/AbstractProtobufList;->isMutable:Z

    return v0
.end method

.method public final makeImmutable()V
    .locals 1

    .line 133
    .local p0, "this":Lcom/google/protobuf/AbstractProtobufList;, "Lcom/google/protobuf/AbstractProtobufList<TE;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/AbstractProtobufList;->isMutable:Z

    .line 134
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 138
    .local p0, "this":Lcom/google/protobuf/AbstractProtobufList;, "Lcom/google/protobuf/AbstractProtobufList<TE;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 139
    invoke-super {p0, p1}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 144
    .local p0, "this":Lcom/google/protobuf/AbstractProtobufList;, "Lcom/google/protobuf/AbstractProtobufList<TE;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 145
    invoke-super {p0, p1}, Ljava/util/AbstractList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 150
    .local p0, "this":Lcom/google/protobuf/AbstractProtobufList;, "Lcom/google/protobuf/AbstractProtobufList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 151
    invoke-super {p0, p1}, Ljava/util/AbstractList;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 156
    .local p0, "this":Lcom/google/protobuf/AbstractProtobufList;, "Lcom/google/protobuf/AbstractProtobufList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 157
    invoke-super {p0, p1}, Ljava/util/AbstractList;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 162
    .local p0, "this":Lcom/google/protobuf/AbstractProtobufList;, "Lcom/google/protobuf/AbstractProtobufList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 163
    invoke-super {p0, p1, p2}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
