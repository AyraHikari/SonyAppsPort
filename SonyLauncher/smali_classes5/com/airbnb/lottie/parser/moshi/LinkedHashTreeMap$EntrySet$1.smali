.class Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet$1;
.super Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap<",
        "TK;TV;>.",
        "LinkedTreeMapIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;)V
    .locals 1
    .param p1, "this$1"    # Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;

    .line 797
    .local p0, "this":Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet$1;, "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet$1;"
    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet$1;->this$1:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;

    iget-object v0, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;->this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;-><init>(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 797
    .local p0, "this":Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet$1;, "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet$1;"
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 799
    .local p0, "this":Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet$1;, "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet$1;"
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet$1;->nextNode()Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object v0

    return-object v0
.end method
