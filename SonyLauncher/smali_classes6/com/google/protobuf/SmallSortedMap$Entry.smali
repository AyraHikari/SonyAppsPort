.class Lcom/google/protobuf/SmallSortedMap$Entry;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;",
        "Ljava/lang/Comparable<",
        "Lcom/google/protobuf/SmallSortedMap<",
        "TK;TV;>.Entry;>;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/protobuf/SmallSortedMap;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/protobuf/SmallSortedMap;Ljava/lang/Comparable;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 408
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap$Entry;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    .local p2, "key":Ljava/lang/Comparable;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lcom/google/protobuf/SmallSortedMap$Entry;->this$0:Lcom/google/protobuf/SmallSortedMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput-object p2, p0, Lcom/google/protobuf/SmallSortedMap$Entry;->key:Ljava/lang/Comparable;

    .line 410
    iput-object p3, p0, Lcom/google/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    .line 411
    return-void
.end method

.method constructor <init>(Lcom/google/protobuf/SmallSortedMap;Ljava/util/Map$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 405
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap$Entry;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    .local p2, "copy":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/protobuf/SmallSortedMap$Entry;-><init>(Lcom/google/protobuf/SmallSortedMap;Ljava/lang/Comparable;Ljava/lang/Object;)V

    .line 406
    return-void
.end method

.method private equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .line 461
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap$Entry;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public compareTo(Lcom/google/protobuf/SmallSortedMap$Entry;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/SmallSortedMap<",
            "TK;TV;>.Entry;)I"
        }
    .end annotation

    .line 425
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap$Entry;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    .local p1, "other":Lcom/google/protobuf/SmallSortedMap$Entry;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    invoke-virtual {p0}, Lcom/google/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 399
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap$Entry;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    check-cast p1, Lcom/google/protobuf/SmallSortedMap$Entry;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/SmallSortedMap$Entry;->compareTo(Lcom/google/protobuf/SmallSortedMap$Entry;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 438
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap$Entry;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 439
    return v0

    .line 441
    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 442
    return v2

    .line 445
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    .line 446
    .local v1, "other":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Lcom/google/protobuf/SmallSortedMap$Entry;->key:Ljava/lang/Comparable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/google/protobuf/SmallSortedMap$Entry;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/google/protobuf/SmallSortedMap$Entry;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getKey()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 415
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap$Entry;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap$Entry;->key:Ljava/lang/Comparable;

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .line 399
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap$Entry;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    invoke-virtual {p0}, Lcom/google/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 420
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap$Entry;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 451
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap$Entry;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap$Entry;->key:Ljava/lang/Comparable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 430
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap$Entry;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap$Entry;->this$0:Lcom/google/protobuf/SmallSortedMap;

    invoke-static {v0}, Lcom/google/protobuf/SmallSortedMap;->access$300(Lcom/google/protobuf/SmallSortedMap;)V

    .line 431
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    .line 432
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lcom/google/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    .line 433
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 456
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap$Entry;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/protobuf/SmallSortedMap$Entry;->key:Ljava/lang/Comparable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
