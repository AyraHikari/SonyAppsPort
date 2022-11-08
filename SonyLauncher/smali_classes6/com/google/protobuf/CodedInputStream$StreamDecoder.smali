.class final Lcom/google/protobuf/CodedInputStream$StreamDecoder;
.super Lcom/google/protobuf/CodedInputStream;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StreamDecoder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/CodedInputStream$StreamDecoder$RefillCallback;,
        Lcom/google/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;
    }
.end annotation


# instance fields
.field private final buffer:[B

.field private bufferSize:I

.field private bufferSizeAfterLimit:I

.field private currentLimit:I

.field private final input:Ljava/io/InputStream;

.field private lastTag:I

.field private pos:I

.field private refillCallback:Lcom/google/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

.field private totalBytesRetired:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I

    .line 2046
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream;-><init>(Lcom/google/protobuf/CodedInputStream$1;)V

    .line 2044
    const v1, 0x7fffffff

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    .line 2718
    iput-object v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->refillCallback:Lcom/google/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

    .line 2047
    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2048
    iput-object p1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    .line 2049
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2050
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2051
    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2052
    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2053
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;ILcom/google/protobuf/CodedInputStream$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/InputStream;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/google/protobuf/CodedInputStream$1;

    .line 2025
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/protobuf/CodedInputStream$StreamDecoder;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/CodedInputStream$StreamDecoder;

    .line 2025
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/protobuf/CodedInputStream$StreamDecoder;)[B
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/CodedInputStream$StreamDecoder;

    .line 2025
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    return-object v0
.end method

.method private readBytesSlowPath(I)Lcom/google/protobuf/ByteString;
    .locals 11
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2972
    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPathOneChunk(I)[B

    move-result-object v0

    .line 2973
    .local v0, "result":[B
    if-eqz v0, :cond_0

    .line 2976
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    return-object v1

    .line 2979
    :cond_0
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2980
    .local v1, "originalBufferPos":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int v3, v2, v3

    .line 2983
    .local v3, "bufferedBytes":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2984
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2985
    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2988
    sub-int v4, p1, v3

    .line 2992
    .local v4, "sizeLeft":I
    invoke-direct {p0, v4}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPathRemainingChunks(I)Ljava/util/List;

    move-result-object v5

    .line 2995
    .local v5, "chunks":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-array v6, p1, [B

    .line 2998
    .local v6, "bytes":[B
    iget-object v7, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    invoke-static {v7, v1, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3001
    move v7, v3

    .line 3002
    .local v7, "tempPos":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 3003
    .local v9, "chunk":[B
    array-length v10, v9

    invoke-static {v9, v2, v6, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3004
    array-length v10, v9

    add-int/2addr v7, v10

    .line 3005
    .end local v9    # "chunk":[B
    goto :goto_0

    .line 3007
    :cond_1
    invoke-static {v6}, Lcom/google/protobuf/ByteString;->wrap([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    return-object v2
.end method

.method private readRawBytesSlowPath(IZ)[B
    .locals 11
    .param p1, "size"    # I
    .param p2, "ensureNoLeakedReferences"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2837
    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPathOneChunk(I)[B

    move-result-object v0

    .line 2838
    .local v0, "result":[B
    if-eqz v0, :cond_1

    .line 2839
    if-eqz p2, :cond_0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    .line 2842
    :cond_1
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2843
    .local v1, "originalBufferPos":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int v3, v2, v3

    .line 2846
    .local v3, "bufferedBytes":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2847
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2848
    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2851
    sub-int v4, p1, v3

    .line 2855
    .local v4, "sizeLeft":I
    invoke-direct {p0, v4}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPathRemainingChunks(I)Ljava/util/List;

    move-result-object v5

    .line 2858
    .local v5, "chunks":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-array v6, p1, [B

    .line 2861
    .local v6, "bytes":[B
    iget-object v7, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    invoke-static {v7, v1, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2864
    move v7, v3

    .line 2865
    .local v7, "tempPos":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 2866
    .local v9, "chunk":[B
    array-length v10, v9

    invoke-static {v9, v2, v6, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2867
    array-length v10, v9

    add-int/2addr v7, v10

    .line 2868
    .end local v9    # "chunk":[B
    goto :goto_1

    .line 2871
    :cond_2
    return-object v6
.end method

.method private readRawBytesSlowPathOneChunk(I)[B
    .locals 7
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2881
    if-nez p1, :cond_0

    .line 2882
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 2884
    :cond_0
    if-ltz p1, :cond_7

    .line 2889
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 2890
    .local v0, "currentMessageSize":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->sizeLimit:I

    sub-int v1, v0, v1

    if-gtz v1, :cond_6

    .line 2895
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    if-gt v0, v1, :cond_5

    .line 2901
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    .line 2903
    .local v1, "bufferedBytes":I
    sub-int v2, p1, v1

    .line 2905
    .local v2, "sizeLeft":I
    const/16 v3, 0x1000

    if-lt v2, v3, :cond_2

    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    if-gt v2, v3, :cond_1

    goto :goto_0

    .line 2930
    :cond_1
    const/4 v3, 0x0

    return-object v3

    .line 2908
    :cond_2
    :goto_0
    new-array v3, p1, [B

    .line 2911
    .local v3, "bytes":[B
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v5, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2912
    iget v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v5, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2913
    iput v6, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2914
    iput v6, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2917
    move v4, v1

    .line 2918
    .local v4, "tempPos":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_4

    .line 2919
    iget-object v5, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    sub-int v6, p1, v4

    invoke-virtual {v5, v3, v4, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 2920
    .local v5, "n":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 2923
    iget v6, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2924
    add-int/2addr v4, v5

    .line 2925
    .end local v5    # "n":I
    goto :goto_1

    .line 2921
    .restart local v5    # "n":I
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6

    .line 2927
    .end local v5    # "n":I
    :cond_4
    return-object v3

    .line 2897
    .end local v1    # "bufferedBytes":I
    .end local v2    # "sizeLeft":I
    .end local v3    # "bytes":[B
    .end local v4    # "tempPos":I
    :cond_5
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    .line 2898
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 2891
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->sizeLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 2885
    .end local v0    # "currentMessageSize":I
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private readRawBytesSlowPathRemainingChunks(I)Ljava/util/List;
    .locals 5
    .param p1, "sizeLeft"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2946
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2948
    .local v0, "chunks":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_0
    if-lez p1, :cond_2

    .line 2950
    const/16 v1, 0x1000

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v1, v1, [B

    .line 2951
    .local v1, "chunk":[B
    const/4 v2, 0x0

    .line 2952
    .local v2, "tempPos":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 2953
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    array-length v4, v1

    sub-int/2addr v4, v2

    invoke-virtual {v3, v1, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 2954
    .local v3, "n":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 2957
    iget v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2958
    add-int/2addr v2, v3

    .line 2959
    .end local v3    # "n":I
    goto :goto_1

    .line 2955
    .restart local v3    # "n":I
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4

    .line 2960
    .end local v3    # "n":I
    :cond_1
    array-length v3, v1

    sub-int/2addr p1, v3

    .line 2961
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2962
    .end local v1    # "chunk":[B
    .end local v2    # "tempPos":I
    goto :goto_0

    .line 2964
    :cond_2
    return-object v0
.end method

.method private recomputeBufferSizeAfterLimit()V
    .locals 3

    .line 2677
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSizeAfterLimit:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2678
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v1, v0

    .line 2679
    .local v1, "bufferEnd":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    if-le v1, v2, :cond_0

    .line 2681
    sub-int v2, v1, v2

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSizeAfterLimit:I

    .line 2682
    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    goto :goto_0

    .line 2684
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSizeAfterLimit:I

    .line 2686
    :goto_0
    return-void
.end method

.method private refillBuffer(I)V
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2729
    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->tryRefillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2732
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->sizeLimit:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    .line 2733
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->sizeLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2735
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2738
    :cond_1
    return-void
.end method

.method private skipRawBytesSlowPath(I)V
    .locals 9
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3025
    if-ltz p1, :cond_7

    .line 3029
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    if-gt v2, v3, :cond_6

    .line 3036
    const/4 v2, 0x0

    .line 3037
    .local v2, "totalSkipped":I
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->refillCallback:Lcom/google/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

    if-nez v3, :cond_3

    .line 3039
    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 3040
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v0, v1

    .line 3041
    .end local v2    # "totalSkipped":I
    .local v0, "totalSkipped":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 3042
    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    move v2, v0

    .line 3045
    .end local v0    # "totalSkipped":I
    .restart local v2    # "totalSkipped":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 3046
    sub-int v0, p1, v2

    .line 3047
    .local v0, "toSkip":I
    :try_start_0
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    .line 3048
    .local v3, "skipped":J
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_1

    int-to-long v7, v0

    cmp-long v1, v3, v7

    if-gtz v1, :cond_1

    .line 3054
    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    .line 3059
    goto :goto_1

    .line 3061
    :cond_0
    long-to-int v1, v3

    add-int/2addr v2, v1

    .line 3062
    .end local v0    # "toSkip":I
    .end local v3    # "skipped":J
    goto :goto_0

    .line 3049
    .restart local v0    # "toSkip":I
    .restart local v3    # "skipped":J
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    .line 3050
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#skip returned invalid result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nThe InputStream implementation is buggy."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "totalSkipped":I
    .end local p0    # "this":Lcom/google/protobuf/CodedInputStream$StreamDecoder;
    .end local p1    # "size":I
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3064
    .end local v0    # "toSkip":I
    .end local v3    # "skipped":J
    .restart local v2    # "totalSkipped":I
    .restart local p0    # "this":Lcom/google/protobuf/CodedInputStream$StreamDecoder;
    .restart local p1    # "size":I
    :catchall_0
    move-exception v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 3065
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    .line 3066
    throw v0

    .line 3064
    :cond_2
    :goto_1
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 3065
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    .line 3068
    :cond_3
    if-ge v2, p1, :cond_5

    .line 3070
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int v1, v0, v1

    .line 3071
    .local v1, "tempPos":I
    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 3075
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 3076
    :goto_2
    sub-int v3, p1, v1

    iget v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-le v3, v4, :cond_4

    .line 3077
    add-int/2addr v1, v4

    .line 3078
    iput v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 3079
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    goto :goto_2

    .line 3082
    :cond_4
    sub-int v0, p1, v1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 3084
    .end local v1    # "tempPos":I
    :cond_5
    return-void

    .line 3031
    .end local v2    # "totalSkipped":I
    :cond_6
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    .line 3033
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3026
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private skipRawVarint()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2498
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 2499
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipRawVarintFastPath()V

    goto :goto_0

    .line 2501
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipRawVarintSlowPath()V

    .line 2503
    :goto_0
    return-void
.end method

.method private skipRawVarintFastPath()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2506
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 2507
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    aget-byte v1, v1, v2

    if-ltz v1, :cond_0

    .line 2508
    return-void

    .line 2506
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2511
    .end local v0    # "i":I
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private skipRawVarintSlowPath()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2515
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 2516
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_0

    .line 2517
    return-void

    .line 2515
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2520
    .end local v0    # "i":I
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private tryRefillBuffer(I)Z
    .locals 8
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2749
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-le v0, v1, :cond_8

    .line 2757
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->sizeLimit:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    if-le p1, v0, :cond_0

    .line 2758
    return v3

    .line 2762
    :cond_0
    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    if-le v1, v0, :cond_1

    .line 2764
    return v3

    .line 2767
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->refillCallback:Lcom/google/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

    if-eqz v0, :cond_2

    .line 2768
    invoke-interface {v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder$RefillCallback;->onRefill()V

    .line 2771
    :cond_2
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2772
    .local v0, "tempPos":I
    if-lez v0, :cond_4

    .line 2773
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-le v1, v0, :cond_3

    .line 2774
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    sub-int/2addr v1, v0

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2776
    :cond_3
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2777
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2778
    iput v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2782
    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    array-length v5, v2

    sub-int/2addr v5, v4

    iget v6, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->sizeLimit:I

    iget v7, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v6, v7

    .line 2786
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2783
    invoke-virtual {v1, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 2791
    .local v1, "bytesRead":I
    if-eqz v1, :cond_7

    const/4 v2, -0x1

    if-lt v1, v2, :cond_7

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    array-length v2, v2

    if-gt v1, v2, :cond_7

    .line 2798
    if-lez v1, :cond_6

    .line 2799
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2800
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    .line 2801
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-lt v2, p1, :cond_5

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->tryRefillBuffer(I)Z

    move-result v2

    :goto_0
    return v2

    .line 2804
    :cond_6
    return v3

    .line 2792
    :cond_7
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    .line 2793
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#read(byte[]) returned invalid result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nThe InputStream implementation is buggy."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2750
    .end local v0    # "tempPos":I
    .end local v1    # "bytesRead":I
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refillBuffer() called when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes were already available in buffer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public checkLastTagWas(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2073
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    if-ne v0, p1, :cond_0

    .line 2076
    return-void

    .line 2074
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public enableAliasing(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 2652
    return-void
.end method

.method public getBytesUntilLimit()I
    .locals 3

    .line 2696
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 2697
    const/4 v0, -0x1

    return v0

    .line 2700
    :cond_0
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v1, v2

    .line 2701
    .local v1, "currentAbsolutePosition":I
    sub-int/2addr v0, v1

    return v0
.end method

.method public getLastTag()I
    .locals 1

    .line 2080
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    return v0
.end method

.method public getTotalBytesRead()I
    .locals 2

    .line 2711
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isAtEnd()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2706
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v2}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->tryRefillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public popLimit(I)V
    .locals 0
    .param p1, "oldLimit"    # I

    .line 2690
    iput p1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    .line 2691
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    .line 2692
    return-void
.end method

.method public pushLimit(I)I
    .locals 2
    .param p1, "byteLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2661
    if-ltz p1, :cond_1

    .line 2664
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 2665
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    .line 2666
    .local v0, "oldLimit":I
    if-gt p1, v0, :cond_0

    .line 2669
    iput p1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    .line 2671
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    .line 2673
    return v0

    .line 2667
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 2662
    .end local v0    # "oldLimit":I
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readBool()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2246
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readByteArray()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2389
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2390
    .local v0, "size":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 2393
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    add-int v3, v2, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 2394
    .local v1, "result":[B
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2395
    return-object v1

    .line 2399
    .end local v1    # "result":[B
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object v1

    return-object v1
.end method

.method public readByteBuffer()Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2405
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2406
    .local v0, "size":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 2408
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    add-int v3, v2, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2409
    .local v1, "result":Ljava/nio/ByteBuffer;
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2410
    return-object v1

    .line 2412
    .end local v1    # "result":Ljava/nio/ByteBuffer;
    :cond_0
    if-nez v0, :cond_1

    .line 2413
    sget-object v1, Lcom/google/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    return-object v1

    .line 2419
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public readBytes()Lcom/google/protobuf/ByteString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2373
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2374
    .local v0, "size":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 2377
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 2378
    .local v1, "result":Lcom/google/protobuf/ByteString;
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2379
    return-object v1

    .line 2381
    .end local v1    # "result":Lcom/google/protobuf/ByteString;
    :cond_0
    if-nez v0, :cond_1

    .line 2382
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-object v1

    .line 2384
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readBytesSlowPath(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2211
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readEnum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2429
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2241
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2236
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2216
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readGroup(ILcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/MessageLite;",
            ">(I",
            "Lcom/google/protobuf/Parser<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2321
    .local p2, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<TT;>;"
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionLimit:I

    if-ge v0, v1, :cond_0

    .line 2324
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2325
    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    .line 2326
    .local v0, "result":Lcom/google/protobuf/MessageLite;, "TT;"
    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2327
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2328
    return-object v0

    .line 2322
    .end local v0    # "result":Lcom/google/protobuf/MessageLite;, "TT;"
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "builder"    # Lcom/google/protobuf/MessageLite$Builder;
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2305
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionLimit:I

    if-ge v0, v1, :cond_0

    .line 2308
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2309
    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;

    .line 2310
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2311
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2312
    return-void

    .line 2306
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2231
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2226
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
    .locals 4
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/MessageLite;",
            ">(",
            "Lcom/google/protobuf/Parser<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2358
    .local p1, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<TT;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2359
    .local v0, "length":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionLimit:I

    if-ge v1, v2, :cond_0

    .line 2362
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pushLimit(I)I

    move-result v1

    .line 2363
    .local v1, "oldLimit":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2364
    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    .line 2365
    .local v2, "result":Lcom/google/protobuf/MessageLite;, "TT;"
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2366
    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2367
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->popLimit(I)V

    .line 2368
    return-object v2

    .line 2360
    .end local v1    # "oldLimit":I
    .end local v2    # "result":Lcom/google/protobuf/MessageLite;, "TT;"
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 3
    .param p1, "builder"    # Lcom/google/protobuf/MessageLite$Builder;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2342
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2343
    .local v0, "length":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionLimit:I

    if-ge v1, v2, :cond_0

    .line 2346
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pushLimit(I)I

    move-result v1

    .line 2347
    .local v1, "oldLimit":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2348
    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;

    .line 2349
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2350
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2351
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->popLimit(I)V

    .line 2352
    return-void

    .line 2344
    .end local v1    # "oldLimit":I
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public readRawByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2809
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-ne v0, v1, :cond_0

    .line 2810
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2812
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readRawBytes(I)[B
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2817
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2818
    .local v0, "tempPos":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    if-lez p1, :cond_0

    .line 2819
    add-int v1, v0, p1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2820
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    add-int v2, v0, p1

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    return-object v1

    .line 2823
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object v1

    return-object v1
.end method

.method public readRawLittleEndian32()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2611
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2613
    .local v0, "tempPos":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 2614
    invoke-direct {p0, v2}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2615
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2618
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2619
    .local v1, "buffer":[B
    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2620
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    return v2
.end method

.method public readRawLittleEndian64()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2628
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2630
    .local v0, "tempPos":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 2631
    invoke-direct {p0, v2}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2632
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2635
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2636
    .local v1, "buffer":[B
    add-int/lit8 v3, v0, 0x8

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2637
    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x7

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long v4, v7, v5

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public readRawVarint32()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2459
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2461
    .local v0, "tempPos":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-ne v1, v0, :cond_0

    .line 2462
    goto/16 :goto_0

    .line 2465
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2467
    .local v2, "buffer":[B
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "tempPos":I
    .local v3, "tempPos":I
    aget-byte v0, v2, v0

    move v4, v0

    .local v4, "x":I
    if-ltz v0, :cond_1

    .line 2468
    iput v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2469
    return v4

    .line 2470
    :cond_1
    sub-int/2addr v1, v3

    const/16 v0, 0x9

    if-ge v1, v0, :cond_2

    .line 2471
    goto :goto_0

    .line 2472
    :cond_2
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "tempPos":I
    .restart local v0    # "tempPos":I
    aget-byte v1, v2, v3

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v1, v4

    move v3, v1

    .end local v4    # "x":I
    .local v3, "x":I
    if-gez v1, :cond_3

    .line 2473
    xor-int/lit8 v1, v3, -0x80

    .end local v3    # "x":I
    .local v1, "x":I
    goto :goto_1

    .line 2474
    .end local v1    # "x":I
    .restart local v3    # "x":I
    :cond_3
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "tempPos":I
    .local v1, "tempPos":I
    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0xe

    xor-int/2addr v0, v3

    move v3, v0

    if-ltz v0, :cond_4

    .line 2475
    xor-int/lit16 v0, v3, 0x3f80

    move v5, v1

    move v1, v0

    move v0, v5

    .end local v3    # "x":I
    .local v0, "x":I
    goto :goto_1

    .line 2476
    .end local v0    # "x":I
    .restart local v3    # "x":I
    :cond_4
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "tempPos":I
    .local v0, "tempPos":I
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v1, v3

    move v3, v1

    if-gez v1, :cond_5

    .line 2477
    const v1, -0x1fc080

    xor-int/2addr v1, v3

    .end local v3    # "x":I
    .local v1, "x":I
    goto :goto_1

    .line 2479
    .end local v1    # "x":I
    .restart local v3    # "x":I
    :cond_5
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "tempPos":I
    .local v1, "tempPos":I
    aget-byte v0, v2, v0

    .line 2480
    .local v0, "y":I
    shl-int/lit8 v4, v0, 0x1c

    xor-int/2addr v3, v4

    .line 2481
    const v4, 0xfe03f80

    xor-int/2addr v3, v4

    .line 2482
    if-gez v0, :cond_7

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "tempPos":I
    .local v4, "tempPos":I
    aget-byte v1, v2, v1

    if-gez v1, :cond_6

    add-int/lit8 v1, v4, 0x1

    .end local v4    # "tempPos":I
    .restart local v1    # "tempPos":I
    aget-byte v4, v2, v4

    if-gez v4, :cond_7

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "tempPos":I
    .restart local v4    # "tempPos":I
    aget-byte v1, v2, v1

    if-gez v1, :cond_6

    add-int/lit8 v1, v4, 0x1

    .end local v4    # "tempPos":I
    .restart local v1    # "tempPos":I
    aget-byte v4, v2, v4

    if-gez v4, :cond_7

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "tempPos":I
    .restart local v4    # "tempPos":I
    aget-byte v1, v2, v1

    if-gez v1, :cond_6

    .line 2488
    nop

    .line 2494
    .end local v0    # "y":I
    .end local v2    # "buffer":[B
    .end local v3    # "x":I
    .end local v4    # "tempPos":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 2482
    .restart local v0    # "y":I
    .restart local v2    # "buffer":[B
    .restart local v3    # "x":I
    .restart local v4    # "tempPos":I
    :cond_6
    move v1, v3

    move v0, v4

    goto :goto_1

    .end local v4    # "tempPos":I
    .restart local v1    # "tempPos":I
    :cond_7
    move v0, v1

    move v1, v3

    .line 2491
    .end local v3    # "x":I
    .local v0, "tempPos":I
    .local v1, "x":I
    :goto_1
    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2492
    return v1
.end method

.method public readRawVarint64()J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2538
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2540
    .local v0, "tempPos":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-ne v1, v0, :cond_0

    .line 2541
    goto/16 :goto_0

    .line 2544
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2547
    .local v2, "buffer":[B
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "tempPos":I
    .local v3, "tempPos":I
    aget-byte v0, v2, v0

    move v4, v0

    .local v4, "y":I
    if-ltz v0, :cond_1

    .line 2548
    iput v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2549
    int-to-long v0, v4

    return-wide v0

    .line 2550
    :cond_1
    sub-int/2addr v1, v3

    const/16 v0, 0x9

    if-ge v1, v0, :cond_2

    .line 2551
    goto/16 :goto_0

    .line 2552
    :cond_2
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "tempPos":I
    .restart local v0    # "tempPos":I
    aget-byte v1, v2, v3

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v1, v4

    move v3, v1

    .end local v4    # "y":I
    .local v3, "y":I
    if-gez v1, :cond_3

    .line 2553
    xor-int/lit8 v1, v3, -0x80

    int-to-long v4, v1

    .local v4, "x":J
    goto/16 :goto_1

    .line 2554
    .end local v4    # "x":J
    :cond_3
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "tempPos":I
    .local v1, "tempPos":I
    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0xe

    xor-int/2addr v0, v3

    move v3, v0

    if-ltz v0, :cond_4

    .line 2555
    xor-int/lit16 v0, v3, 0x3f80

    int-to-long v4, v0

    move v0, v1

    .restart local v4    # "x":J
    goto/16 :goto_1

    .line 2556
    .end local v4    # "x":J
    :cond_4
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "tempPos":I
    .restart local v0    # "tempPos":I
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v1, v3

    move v3, v1

    if-gez v1, :cond_5

    .line 2557
    const v1, -0x1fc080

    xor-int/2addr v1, v3

    int-to-long v4, v1

    .restart local v4    # "x":J
    goto/16 :goto_1

    .line 2558
    .end local v4    # "x":J
    :cond_5
    int-to-long v4, v3

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "tempPos":I
    .restart local v1    # "tempPos":I
    aget-byte v0, v2, v0

    int-to-long v6, v0

    const/16 v0, 0x1c

    shl-long/2addr v6, v0

    xor-long/2addr v4, v6

    move-wide v6, v4

    .local v6, "x":J
    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-ltz v0, :cond_6

    .line 2559
    const-wide/32 v4, 0xfe03f80

    xor-long/2addr v4, v6

    move v0, v1

    .end local v6    # "x":J
    .restart local v4    # "x":J
    goto :goto_1

    .line 2560
    .end local v4    # "x":J
    .restart local v6    # "x":J
    :cond_6
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "tempPos":I
    .restart local v0    # "tempPos":I
    aget-byte v1, v2, v1

    int-to-long v4, v1

    const/16 v1, 0x23

    shl-long/2addr v4, v1

    xor-long/2addr v4, v6

    move-wide v6, v4

    cmp-long v1, v4, v8

    if-gez v1, :cond_7

    .line 2561
    const-wide v4, -0x7f01fc080L

    xor-long/2addr v4, v6

    .end local v6    # "x":J
    .restart local v4    # "x":J
    goto :goto_1

    .line 2562
    .end local v4    # "x":J
    .restart local v6    # "x":J
    :cond_7
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "tempPos":I
    .restart local v1    # "tempPos":I
    aget-byte v0, v2, v0

    int-to-long v4, v0

    const/16 v0, 0x2a

    shl-long/2addr v4, v0

    xor-long/2addr v4, v6

    move-wide v6, v4

    cmp-long v0, v4, v8

    if-ltz v0, :cond_8

    .line 2563
    const-wide v4, 0x3f80fe03f80L

    xor-long/2addr v4, v6

    move v0, v1

    .end local v6    # "x":J
    .restart local v4    # "x":J
    goto :goto_1

    .line 2564
    .end local v4    # "x":J
    .restart local v6    # "x":J
    :cond_8
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "tempPos":I
    .restart local v0    # "tempPos":I
    aget-byte v1, v2, v1

    int-to-long v4, v1

    const/16 v1, 0x31

    shl-long/2addr v4, v1

    xor-long/2addr v4, v6

    move-wide v6, v4

    cmp-long v1, v4, v8

    if-gez v1, :cond_9

    .line 2565
    const-wide v4, -0x1fc07f01fc080L

    xor-long/2addr v4, v6

    .end local v6    # "x":J
    .restart local v4    # "x":J
    goto :goto_1

    .line 2574
    .end local v4    # "x":J
    .restart local v6    # "x":J
    :cond_9
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "tempPos":I
    .restart local v1    # "tempPos":I
    aget-byte v0, v2, v0

    int-to-long v4, v0

    const/16 v0, 0x38

    shl-long/2addr v4, v0

    xor-long/2addr v4, v6

    .line 2575
    .end local v6    # "x":J
    .restart local v4    # "x":J
    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v4, v6

    .line 2584
    cmp-long v0, v4, v8

    if-gez v0, :cond_a

    .line 2585
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "tempPos":I
    .restart local v0    # "tempPos":I
    aget-byte v1, v2, v1

    int-to-long v6, v1

    cmp-long v1, v6, v8

    if-gez v1, :cond_b

    .line 2586
    nop

    .line 2593
    .end local v0    # "tempPos":I
    .end local v2    # "buffer":[B
    .end local v3    # "y":I
    .end local v4    # "x":J
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    return-wide v0

    .line 2584
    .restart local v1    # "tempPos":I
    .restart local v2    # "buffer":[B
    .restart local v3    # "y":I
    .restart local v4    # "x":J
    :cond_a
    move v0, v1

    .line 2590
    .end local v1    # "tempPos":I
    .restart local v0    # "tempPos":I
    :cond_b
    :goto_1
    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2591
    return-wide v4
.end method

.method readRawVarint64SlowPath()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2598
    const-wide/16 v0, 0x0

    .line 2599
    .local v0, "result":J
    const/4 v2, 0x0

    .local v2, "shift":I
    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 2600
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawByte()B

    move-result v3

    .line 2601
    .local v3, "b":B
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 2602
    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_0

    .line 2603
    return-wide v0

    .line 2599
    .end local v3    # "b":B
    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    .line 2606
    .end local v2    # "shift":I
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method public readSFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2434
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readSFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2439
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2444
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public readSInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2449
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2251
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2252
    .local v0, "size":I
    if-lez v0, :cond_0

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 2255
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    sget-object v4, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2256
    .local v1, "result":Ljava/lang/String;
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2257
    return-object v1

    .line 2259
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    .line 2260
    const-string v1, ""

    return-object v1

    .line 2262
    :cond_1
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-gt v0, v1, :cond_2

    .line 2263
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2264
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sget-object v4, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2265
    .restart local v1    # "result":Ljava/lang/String;
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2266
    return-object v1

    .line 2269
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2274
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2276
    .local v0, "size":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2278
    .local v1, "oldPos":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int v3, v2, v1

    if-gt v0, v3, :cond_0

    if-lez v0, :cond_0

    .line 2281
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2282
    .local v2, "bytes":[B
    add-int v3, v1, v0

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2283
    move v3, v1

    .local v3, "tempPos":I
    goto :goto_0

    .line 2284
    .end local v2    # "bytes":[B
    .end local v3    # "tempPos":I
    :cond_0
    if-nez v0, :cond_1

    .line 2285
    const-string v2, ""

    return-object v2

    .line 2286
    :cond_1
    if-gt v0, v2, :cond_2

    .line 2287
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2288
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2289
    .restart local v2    # "bytes":[B
    const/4 v3, 0x0

    .line 2290
    .restart local v3    # "tempPos":I
    add-int v4, v3, v0

    iput v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    goto :goto_0

    .line 2293
    .end local v2    # "bytes":[B
    .end local v3    # "tempPos":I
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object v2

    .line 2294
    .restart local v2    # "bytes":[B
    const/4 v3, 0x0

    .line 2296
    .restart local v3    # "tempPos":I
    :goto_0
    invoke-static {v2, v3, v0}, Lcom/google/protobuf/Utf8;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public readTag()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2057
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2058
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    .line 2059
    return v0

    .line 2062
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    .line 2063
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2068
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    return v0

    .line 2066
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readUInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2424
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readUInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2221
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUnknownGroup(ILcom/google/protobuf/MessageLite$Builder;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "builder"    # Lcom/google/protobuf/MessageLite$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2335
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2336
    return-void
.end method

.method public resetSizeCounter()V
    .locals 1

    .line 2656
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    neg-int v0, v0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2657
    return-void
.end method

.method public skipField(I)Z
    .locals 3
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2085
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 2106
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 2103
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    .line 2104
    return v2

    .line 2101
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 2096
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipMessage()V

    .line 2097
    nop

    .line 2098
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    invoke-static {v0, v1}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    .line 2097
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2099
    return v2

    .line 2093
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    .line 2094
    return v2

    .line 2090
    :pswitch_4
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    .line 2091
    return v2

    .line 2087
    :pswitch_5
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipRawVarint()V

    .line 2088
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public skipField(ILcom/google/protobuf/CodedOutputStream;)Z
    .locals 4
    .param p1, "tag"    # I
    .param p2, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2112
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 2157
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 2151
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian32()I

    move-result v0

    .line 2152
    .local v0, "value":I
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 2153
    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    .line 2154
    return v1

    .line 2147
    .end local v0    # "value":I
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 2136
    :pswitch_2
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 2137
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipMessage(Lcom/google/protobuf/CodedOutputStream;)V

    .line 2138
    nop

    .line 2140
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    const/4 v2, 0x4

    .line 2139
    invoke-static {v0, v2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    .line 2141
    .local v0, "endtag":I
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2142
    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 2143
    return v1

    .line 2129
    .end local v0    # "endtag":I
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2130
    .local v0, "value":Lcom/google/protobuf/ByteString;
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 2131
    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/google/protobuf/ByteString;)V

    .line 2132
    return v1

    .line 2122
    .end local v0    # "value":Lcom/google/protobuf/ByteString;
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian64()J

    move-result-wide v2

    .line 2123
    .local v2, "value":J
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 2124
    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    .line 2125
    return v1

    .line 2115
    .end local v2    # "value":J
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readInt64()J

    move-result-wide v2

    .line 2116
    .restart local v2    # "value":J
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 2117
    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    .line 2118
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public skipMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2164
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readTag()I

    move-result v0

    .line 2165
    .local v0, "tag":I
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2168
    .end local v0    # "tag":I
    :cond_0
    goto :goto_0

    .line 2166
    .restart local v0    # "tag":I
    :cond_1
    :goto_1
    return-void
.end method

.method public skipMessage(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2174
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readTag()I

    move-result v0

    .line 2175
    .local v0, "tag":I
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipField(ILcom/google/protobuf/CodedOutputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2178
    .end local v0    # "tag":I
    :cond_0
    goto :goto_0

    .line 2176
    .restart local v0    # "tag":I
    :cond_1
    :goto_1
    return-void
.end method

.method public skipRawBytes(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3012
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 3014
    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    goto :goto_0

    .line 3016
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipRawBytesSlowPath(I)V

    .line 3018
    :goto_0
    return-void
.end method
