.class abstract Lcom/google/protobuf/UnknownFieldSchema;
.super Ljava/lang/Object;
.source "UnknownFieldSchema.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    .local p0, "this":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TT;TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract addFixed32(Ljava/lang/Object;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;II)V"
        }
    .end annotation
.end method

.method abstract addFixed64(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;IJ)V"
        }
    .end annotation
.end method

.method abstract addGroup(Ljava/lang/Object;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;ITT;)V"
        }
    .end annotation
.end method

.method abstract addLengthDelimited(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;I",
            "Lcom/google/protobuf/ByteString;",
            ")V"
        }
    .end annotation
.end method

.method abstract addVarint(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;IJ)V"
        }
    .end annotation
.end method

.method abstract getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TB;"
        }
    .end annotation
.end method

.method abstract getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method abstract getSerializedSize(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method abstract getSerializedSizeAsMessageSet(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method abstract makeImmutable(Ljava/lang/Object;)V
.end method

.method abstract merge(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TT;"
        }
    .end annotation
.end method

.method final mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;)V
    .locals 2
    .param p2, "reader"    # Lcom/google/protobuf/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Lcom/google/protobuf/Reader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    .local p0, "this":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TT;TB;>;"
    .local p1, "unknownFields":Ljava/lang/Object;, "TB;"
    :cond_0
    invoke-interface {p2}, Lcom/google/protobuf/Reader;->getFieldNumber()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    :cond_1
    return-void
.end method

.method final mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;)Z
    .locals 6
    .param p2, "reader"    # Lcom/google/protobuf/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Lcom/google/protobuf/Reader;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    .local p0, "this":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TT;TB;>;"
    .local p1, "unknownFields":Ljava/lang/Object;, "TB;"
    invoke-interface {p2}, Lcom/google/protobuf/Reader;->getTag()I

    move-result v0

    .line 83
    .local v0, "tag":I
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    .line 84
    .local v1, "fieldNumber":I
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 109
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v2

    throw v2

    .line 89
    :pswitch_0
    invoke-interface {p2}, Lcom/google/protobuf/Reader;->readFixed32()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/protobuf/UnknownFieldSchema;->addFixed32(Ljava/lang/Object;II)V

    .line 90
    return v3

    .line 107
    :pswitch_1
    const/4 v2, 0x0

    return v2

    .line 98
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/UnknownFieldSchema;->newBuilder()Ljava/lang/Object;

    move-result-object v2

    .line 99
    .local v2, "subFields":Ljava/lang/Object;, "TB;"
    const/4 v4, 0x4

    invoke-static {v1, v4}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v4

    .line 100
    .local v4, "endGroupTag":I
    invoke-virtual {p0, v2, p2}, Lcom/google/protobuf/UnknownFieldSchema;->mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;)V

    .line 101
    invoke-interface {p2}, Lcom/google/protobuf/Reader;->getTag()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 104
    invoke-virtual {p0, v2}, Lcom/google/protobuf/UnknownFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, p1, v1, v5}, Lcom/google/protobuf/UnknownFieldSchema;->addGroup(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 105
    return v3

    .line 102
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    .line 95
    .end local v2    # "subFields":Ljava/lang/Object;, "TB;"
    .end local v4    # "endGroupTag":I
    :pswitch_3
    invoke-interface {p2}, Lcom/google/protobuf/Reader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/protobuf/UnknownFieldSchema;->addLengthDelimited(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V

    .line 96
    return v3

    .line 92
    :pswitch_4
    invoke-interface {p2}, Lcom/google/protobuf/Reader;->readFixed64()J

    move-result-wide v4

    invoke-virtual {p0, p1, v1, v4, v5}, Lcom/google/protobuf/UnknownFieldSchema;->addFixed64(Ljava/lang/Object;IJ)V

    .line 93
    return v3

    .line 86
    :pswitch_5
    invoke-interface {p2}, Lcom/google/protobuf/Reader;->readInt64()J

    move-result-wide v4

    invoke-virtual {p0, p1, v1, v4, v5}, Lcom/google/protobuf/UnknownFieldSchema;->addVarint(Ljava/lang/Object;IJ)V

    .line 87
    return v3

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

.method abstract newBuilder()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method abstract setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TB;)V"
        }
    .end annotation
.end method

.method abstract setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation
.end method

.method abstract shouldDiscardUnknownFields(Lcom/google/protobuf/Reader;)Z
.end method

.method abstract toImmutable(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TT;"
        }
    .end annotation
.end method

.method abstract writeAsMessageSetTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
