.class Lcom/google/protobuf/SmallSortedMap$1;
.super Lcom/google/protobuf/SmallSortedMap;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/google/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/SmallSortedMap<",
        "TFieldDescriptorType;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "arraySize"    # I

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/SmallSortedMap;-><init>(ILcom/google/protobuf/SmallSortedMap$1;)V

    return-void
.end method


# virtual methods
.method public makeImmutable()V
    .locals 4

    .line 99
    invoke-virtual {p0}, Lcom/google/protobuf/SmallSortedMap$1;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/SmallSortedMap$1;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 101
    invoke-virtual {p0, v0}, Lcom/google/protobuf/SmallSortedMap$1;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    .line 102
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 104
    .local v2, "value":Ljava/util/List;
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    .end local v2    # "value":Ljava/util/List;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/SmallSortedMap$1;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 108
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 110
    .restart local v2    # "value":Ljava/util/List;
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    .end local v2    # "value":Ljava/util/List;
    :cond_2
    goto :goto_1

    .line 114
    :cond_3
    invoke-super {p0}, Lcom/google/protobuf/SmallSortedMap;->makeImmutable()V

    .line 115
    return-void
.end method
