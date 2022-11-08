.class abstract Lcom/google/protobuf/ByteString$LeafByteString;
.super Lcom/google/protobuf/ByteString;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "LeafByteString"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 864
    invoke-direct {p0}, Lcom/google/protobuf/ByteString;-><init>()V

    return-void
.end method


# virtual methods
.method abstract equalsRange(Lcom/google/protobuf/ByteString;II)Z
.end method

.method protected final getTreeDepth()I
    .locals 1

    .line 867
    const/4 v0, 0x0

    return v0
.end method

.method protected final isBalanced()Z
    .locals 1

    .line 872
    const/4 v0, 0x1

    return v0
.end method

.method writeToReverse(Lcom/google/protobuf/ByteOutput;)V
    .locals 0
    .param p1, "byteOutput"    # Lcom/google/protobuf/ByteOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 877
    invoke-virtual {p0, p1}, Lcom/google/protobuf/ByteString$LeafByteString;->writeTo(Lcom/google/protobuf/ByteOutput;)V

    .line 878
    return-void
.end method
