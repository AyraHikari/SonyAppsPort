.class Lcom/google/protobuf/RopeByteString$Balancer;
.super Ljava/lang/Object;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/RopeByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Balancer"
.end annotation


# instance fields
.field private final prefixesStack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/RopeByteString$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/RopeByteString$1;

    .line 607
    invoke-direct {p0}, Lcom/google/protobuf/RopeByteString$Balancer;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/protobuf/RopeByteString$Balancer;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/RopeByteString$Balancer;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;
    .param p2, "x2"    # Lcom/google/protobuf/ByteString;

    .line 607
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/RopeByteString$Balancer;->balance(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method private balance(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 4
    .param p1, "left"    # Lcom/google/protobuf/ByteString;
    .param p2, "right"    # Lcom/google/protobuf/ByteString;

    .line 614
    invoke-direct {p0, p1}, Lcom/google/protobuf/RopeByteString$Balancer;->doBalance(Lcom/google/protobuf/ByteString;)V

    .line 615
    invoke-direct {p0, p2}, Lcom/google/protobuf/RopeByteString$Balancer;->doBalance(Lcom/google/protobuf/ByteString;)V

    .line 618
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 619
    .local v0, "partialString":Lcom/google/protobuf/ByteString;
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 620
    iget-object v1, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 621
    .local v1, "newLeft":Lcom/google/protobuf/ByteString;
    new-instance v2, Lcom/google/protobuf/RopeByteString;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString$1;)V

    move-object v0, v2

    .line 622
    .end local v1    # "newLeft":Lcom/google/protobuf/ByteString;
    goto :goto_0

    .line 625
    :cond_0
    return-object v0
.end method

.method private doBalance(Lcom/google/protobuf/ByteString;)V
    .locals 3
    .param p1, "root"    # Lcom/google/protobuf/ByteString;

    .line 633
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->isBalanced()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    invoke-direct {p0, p1}, Lcom/google/protobuf/RopeByteString$Balancer;->insert(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 635
    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/RopeByteString;

    if-eqz v0, :cond_1

    .line 636
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/RopeByteString;

    .line 637
    .local v0, "rbs":Lcom/google/protobuf/RopeByteString;
    invoke-static {v0}, Lcom/google/protobuf/RopeByteString;->access$400(Lcom/google/protobuf/RopeByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/protobuf/RopeByteString$Balancer;->doBalance(Lcom/google/protobuf/ByteString;)V

    .line 638
    invoke-static {v0}, Lcom/google/protobuf/RopeByteString;->access$500(Lcom/google/protobuf/RopeByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/protobuf/RopeByteString$Balancer;->doBalance(Lcom/google/protobuf/ByteString;)V

    .line 639
    .end local v0    # "rbs":Lcom/google/protobuf/RopeByteString;
    nop

    .line 643
    :goto_0
    return-void

    .line 640
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Has a new type of ByteString been created? Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 641
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDepthBinForLength(I)I
    .locals 2
    .param p1, "length"    # I

    .line 696
    sget-object v0, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 697
    .local v0, "depth":I
    if-gez v0, :cond_0

    .line 700
    add-int/lit8 v1, v0, 0x1

    neg-int v1, v1

    .line 701
    .local v1, "insertionPoint":I
    add-int/lit8 v0, v1, -0x1

    .line 704
    .end local v1    # "insertionPoint":I
    :cond_0
    return v0
.end method

.method private insert(Lcom/google/protobuf/ByteString;)V
    .locals 7
    .param p1, "byteString"    # Lcom/google/protobuf/ByteString;

    .line 658
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/RopeByteString$Balancer;->getDepthBinForLength(I)I

    move-result v0

    .line 659
    .local v0, "depthBin":I
    sget-object v1, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    .line 665
    .local v1, "binEnd":I
    iget-object v2, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    if-lt v2, v1, :cond_0

    goto/16 :goto_2

    .line 668
    :cond_0
    sget-object v2, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    aget v2, v2, v0

    .line 671
    .local v2, "binStart":I
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/ByteString;

    .line 672
    .local v3, "newTree":Lcom/google/protobuf/ByteString;
    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->size()I

    move-result v4

    if-ge v4, v2, :cond_1

    .line 673
    iget-object v4, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    .line 674
    .local v4, "left":Lcom/google/protobuf/ByteString;
    new-instance v6, Lcom/google/protobuf/RopeByteString;

    invoke-direct {v6, v4, v3, v5}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString$1;)V

    move-object v3, v6

    .line 675
    .end local v4    # "left":Lcom/google/protobuf/ByteString;
    goto :goto_0

    .line 678
    :cond_1
    new-instance v4, Lcom/google/protobuf/RopeByteString;

    invoke-direct {v4, v3, p1, v5}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString$1;)V

    move-object v3, v4

    .line 681
    :goto_1
    iget-object v4, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 682
    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->size()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/google/protobuf/RopeByteString$Balancer;->getDepthBinForLength(I)I

    move-result v0

    .line 683
    sget-object v4, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    add-int/lit8 v6, v0, 0x1

    aget v1, v4, v6

    .line 684
    iget-object v4, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->size()I

    move-result v4

    if-ge v4, v1, :cond_2

    .line 685
    iget-object v4, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    .line 686
    .restart local v4    # "left":Lcom/google/protobuf/ByteString;
    new-instance v6, Lcom/google/protobuf/RopeByteString;

    invoke-direct {v6, v4, v3, v5}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString$1;)V

    move-object v3, v6

    .line 687
    .end local v4    # "left":Lcom/google/protobuf/ByteString;
    goto :goto_1

    .line 691
    :cond_2
    iget-object v4, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_3

    .line 666
    .end local v2    # "binStart":I
    .end local v3    # "newTree":Lcom/google/protobuf/ByteString;
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 693
    :goto_3
    return-void
.end method
