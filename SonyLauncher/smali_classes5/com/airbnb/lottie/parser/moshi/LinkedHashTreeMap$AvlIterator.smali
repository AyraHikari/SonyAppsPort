.class Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlIterator;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AvlIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private stackTop:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 622
    .local p0, "this":Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlIterator;, "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlIterator<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public next()Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 636
    .local p0, "this":Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlIterator;, "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlIterator<TK;TV;>;"
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlIterator;->stackTop:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 637
    .local v0, "stackTop":Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;, "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 638
    return-object v1

    .line 640
    :cond_0
    move-object v2, v0

    .line 641
    .local v2, "result":Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;, "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v0, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 642
    iput-object v1, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 643
    iget-object v1, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .local v1, "n":Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;, "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 644
    iput-object v0, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 645
    move-object v0, v1

    .line 643
    iget-object v1, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    goto :goto_0

    .line 647
    .end local v1    # "n":Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;, "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_1
    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlIterator;->stackTop:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 648
    return-object v2
.end method

.method reset(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 627
    .local p0, "this":Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlIterator;, "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlIterator<TK;TV;>;"
    .local p1, "root":Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;, "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v0, 0x0

    .line 628
    .local v0, "stackTop":Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;, "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    move-object v1, p1

    .local v1, "n":Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;, "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v1, :cond_0

    .line 629
    iput-object v0, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 630
    move-object v0, v1

    .line 628
    iget-object v1, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    goto :goto_0

    .line 632
    .end local v1    # "n":Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;, "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_0
    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlIterator;->stackTop:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 633
    return-void
.end method
