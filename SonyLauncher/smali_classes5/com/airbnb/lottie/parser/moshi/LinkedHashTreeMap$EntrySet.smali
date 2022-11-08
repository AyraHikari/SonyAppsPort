.class final Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    .line 791
    .local p0, "this":Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;, "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;->this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 822
    .local p0, "this":Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;, "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;->this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->clear()V

    .line 823
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 805
    .local p0, "this":Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;, "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;->this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->findByEntry(Ljava/util/Map$Entry;)Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 797
    .local p0, "this":Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;, "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap<TK;TV;>.EntrySet;"
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet$1;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet$1;-><init>(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 809
    .local p0, "this":Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;, "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 810
    return v1

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;->this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    move-object v2, p1

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->findByEntry(Ljava/util/Map$Entry;)Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object v0

    .line 814
    .local v0, "node":Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;, "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    if-nez v0, :cond_1

    .line 815
    return v1

    .line 817
    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;->this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->removeInternal(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Z)V

    .line 818
    return v2
.end method

.method public size()I
    .locals 1

    .line 793
    .local p0, "this":Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;, "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;->this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    iget v0, v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->size:I

    return v0
.end method
