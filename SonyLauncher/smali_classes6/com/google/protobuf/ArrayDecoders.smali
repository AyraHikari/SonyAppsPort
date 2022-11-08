.class final Lcom/google/protobuf/ArrayDecoders;
.super Ljava/lang/Object;
.source "ArrayDecoders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/ArrayDecoders$Registers;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decodeBoolList(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 8
    .param p0, "tag"    # I
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p5, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 374
    .local p4, "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p4

    check-cast v0, Lcom/google/protobuf/BooleanArrayList;

    .line 375
    .local v0, "output":Lcom/google/protobuf/BooleanArrayList;
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 376
    iget-wide v1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/protobuf/BooleanArrayList;->addBoolean(Z)V

    .line 377
    :goto_1
    if-ge p2, p3, :cond_3

    .line 378
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 379
    .local v1, "nextPosition":I
    iget v6, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v6, :cond_1

    .line 380
    goto :goto_3

    .line 382
    :cond_1
    invoke-static {p1, v1, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 383
    iget-wide v6, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    cmp-long v6, v6, v3

    if-eqz v6, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    move v6, v5

    :goto_2
    invoke-virtual {v0, v6}, Lcom/google/protobuf/BooleanArrayList;->addBoolean(Z)V

    .line 384
    .end local v1    # "nextPosition":I
    goto :goto_1

    .line 385
    :cond_3
    :goto_3
    return p2
.end method

.method static decodeBytes([BILcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "position"    # I
    .param p2, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 218
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 219
    iget v0, p2, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 220
    .local v0, "length":I
    if-ltz v0, :cond_2

    .line 222
    array-length v1, p0

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1

    .line 224
    if-nez v0, :cond_0

    .line 225
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p2, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 226
    return p1

    .line 228
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p2, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 229
    add-int v1, p1, v0

    return v1

    .line 223
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 221
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method static decodeBytesList(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 5
    .param p0, "tag"    # I
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p5, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 654
    .local p4, "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p4

    .line 655
    .local v0, "output":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/protobuf/ByteString;>;"
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 656
    iget v1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 657
    .local v1, "length":I
    if-ltz v1, :cond_7

    .line 659
    array-length v2, p1

    sub-int/2addr v2, p2

    if-gt v1, v2, :cond_6

    .line 661
    if-nez v1, :cond_0

    .line 662
    sget-object v2, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-interface {v0, v2}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 664
    :cond_0
    invoke-static {p1, p2, v1}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 665
    add-int/2addr p2, v1

    .line 667
    :goto_0
    if-ge p2, p3, :cond_5

    .line 668
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 669
    .local v2, "nextPosition":I
    iget v3, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v3, :cond_1

    .line 670
    goto :goto_2

    .line 672
    :cond_1
    invoke-static {p1, v2, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 673
    iget v3, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 674
    .local v3, "nextLength":I
    if-ltz v3, :cond_4

    .line 676
    array-length v4, p1

    sub-int/2addr v4, p2

    if-gt v3, v4, :cond_3

    .line 678
    if-nez v3, :cond_2

    .line 679
    sget-object v4, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-interface {v0, v4}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 681
    :cond_2
    invoke-static {p1, p2, v3}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 682
    add-int/2addr p2, v3

    .line 684
    .end local v2    # "nextPosition":I
    .end local v3    # "nextLength":I
    :goto_1
    goto :goto_0

    .line 677
    .restart local v2    # "nextPosition":I
    .restart local v3    # "nextLength":I
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4

    .line 675
    :cond_4
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4

    .line 685
    .end local v2    # "nextPosition":I
    .end local v3    # "nextLength":I
    :cond_5
    :goto_2
    return p2

    .line 660
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 658
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static decodeDouble([BI)D
    .locals 2
    .param p0, "data"    # [B
    .param p1, "position"    # I

    .line 175
    invoke-static {p0, p1}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method static decodeDoubleList(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 4
    .param p0, "tag"    # I
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p5, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 357
    .local p4, "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p4

    check-cast v0, Lcom/google/protobuf/DoubleArrayList;

    .line 358
    .local v0, "output":Lcom/google/protobuf/DoubleArrayList;
    invoke-static {p1, p2}, Lcom/google/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/DoubleArrayList;->addDouble(D)V

    .line 359
    add-int/lit8 p2, p2, 0x8

    .line 360
    :goto_0
    if-ge p2, p3, :cond_1

    .line 361
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 362
    .local v1, "nextPosition":I
    iget v2, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v2, :cond_0

    .line 363
    goto :goto_1

    .line 365
    :cond_0
    invoke-static {p1, v1}, Lcom/google/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/DoubleArrayList;->addDouble(D)V

    .line 366
    add-int/lit8 p2, v1, 0x8

    .line 367
    .end local v1    # "nextPosition":I
    goto :goto_0

    .line 368
    :cond_1
    :goto_1
    return p2
.end method

.method static decodeExtension(I[BIILcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 17
    .param p0, "tag"    # I
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p7, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<",
            "**>;",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "**>;",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "Lcom/google/protobuf/UnknownFieldSetLite;",
            "Lcom/google/protobuf/UnknownFieldSetLite;",
            ">;",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 778
    .local p4, "message":Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<**>;"
    .local p5, "extension":Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    .local p6, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<Lcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/UnknownFieldSetLite;>;"
    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    iget-object v12, v8, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    .line 779
    .local v12, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    ushr-int/lit8 v13, p0, 0x3

    .line 780
    .local v13, "fieldNumber":I
    iget-object v0, v9, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v9, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 781
    sget-object v0, Lcom/google/protobuf/ArrayDecoders$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual/range {p5 .. p5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 871
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type cannot be packed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 872
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 851
    :pswitch_0
    new-instance v0, Lcom/google/protobuf/IntArrayList;

    invoke-direct {v0}, Lcom/google/protobuf/IntArrayList;-><init>()V

    .line 852
    .local v0, "list":Lcom/google/protobuf/IntArrayList;
    invoke-static {v6, v7, v0, v11}, Lcom/google/protobuf/ArrayDecoders;->decodePackedVarint32List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 853
    .end local p2    # "position":I
    .local v1, "position":I
    iget-object v2, v8, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 854
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSetLite;
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 855
    const/4 v2, 0x0

    .line 857
    :cond_0
    iget-object v3, v9, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 861
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/google/protobuf/Internal$EnumLiteMap;

    move-result-object v3

    .line 858
    invoke-static {v13, v0, v3, v2, v10}, Lcom/google/protobuf/SchemaUtil;->filterUnknownEnumList(ILjava/util/List;Lcom/google/protobuf/Internal$EnumLiteMap;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/google/protobuf/UnknownFieldSetLite;

    .line 864
    if-eqz v2, :cond_1

    .line 865
    iput-object v2, v8, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 867
    :cond_1
    iget-object v3, v9, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v3, v0}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 868
    move/from16 v15, p3

    goto/16 :goto_4

    .line 844
    .end local v0    # "list":Lcom/google/protobuf/IntArrayList;
    .end local v1    # "position":I
    .end local v2    # "unknownFields":Lcom/google/protobuf/UnknownFieldSetLite;
    .restart local p2    # "position":I
    :pswitch_1
    new-instance v0, Lcom/google/protobuf/LongArrayList;

    invoke-direct {v0}, Lcom/google/protobuf/LongArrayList;-><init>()V

    .line 845
    .local v0, "list":Lcom/google/protobuf/LongArrayList;
    invoke-static {v6, v7, v0, v11}, Lcom/google/protobuf/ArrayDecoders;->decodePackedSInt64List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 846
    .end local p2    # "position":I
    .restart local v1    # "position":I
    iget-object v2, v9, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v2, v0}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 847
    move/from16 v15, p3

    goto/16 :goto_4

    .line 837
    .end local v0    # "list":Lcom/google/protobuf/LongArrayList;
    .end local v1    # "position":I
    .restart local p2    # "position":I
    :pswitch_2
    new-instance v0, Lcom/google/protobuf/IntArrayList;

    invoke-direct {v0}, Lcom/google/protobuf/IntArrayList;-><init>()V

    .line 838
    .local v0, "list":Lcom/google/protobuf/IntArrayList;
    invoke-static {v6, v7, v0, v11}, Lcom/google/protobuf/ArrayDecoders;->decodePackedSInt32List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 839
    .end local p2    # "position":I
    .restart local v1    # "position":I
    iget-object v2, v9, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v2, v0}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 840
    move/from16 v15, p3

    goto/16 :goto_4

    .line 830
    .end local v0    # "list":Lcom/google/protobuf/IntArrayList;
    .end local v1    # "position":I
    .restart local p2    # "position":I
    :pswitch_3
    new-instance v0, Lcom/google/protobuf/BooleanArrayList;

    invoke-direct {v0}, Lcom/google/protobuf/BooleanArrayList;-><init>()V

    .line 831
    .local v0, "list":Lcom/google/protobuf/BooleanArrayList;
    invoke-static {v6, v7, v0, v11}, Lcom/google/protobuf/ArrayDecoders;->decodePackedBoolList([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 832
    .end local p2    # "position":I
    .restart local v1    # "position":I
    iget-object v2, v9, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v2, v0}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 833
    move/from16 v15, p3

    goto/16 :goto_4

    .line 823
    .end local v0    # "list":Lcom/google/protobuf/BooleanArrayList;
    .end local v1    # "position":I
    .restart local p2    # "position":I
    :pswitch_4
    new-instance v0, Lcom/google/protobuf/IntArrayList;

    invoke-direct {v0}, Lcom/google/protobuf/IntArrayList;-><init>()V

    .line 824
    .local v0, "list":Lcom/google/protobuf/IntArrayList;
    invoke-static {v6, v7, v0, v11}, Lcom/google/protobuf/ArrayDecoders;->decodePackedFixed32List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 825
    .end local p2    # "position":I
    .restart local v1    # "position":I
    iget-object v2, v9, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v2, v0}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 826
    move/from16 v15, p3

    goto/16 :goto_4

    .line 815
    .end local v0    # "list":Lcom/google/protobuf/IntArrayList;
    .end local v1    # "position":I
    .restart local p2    # "position":I
    :pswitch_5
    new-instance v0, Lcom/google/protobuf/LongArrayList;

    invoke-direct {v0}, Lcom/google/protobuf/LongArrayList;-><init>()V

    .line 816
    .local v0, "list":Lcom/google/protobuf/LongArrayList;
    invoke-static {v6, v7, v0, v11}, Lcom/google/protobuf/ArrayDecoders;->decodePackedFixed64List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 817
    .end local p2    # "position":I
    .restart local v1    # "position":I
    iget-object v2, v9, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v2, v0}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 818
    move/from16 v15, p3

    goto/16 :goto_4

    .line 807
    .end local v0    # "list":Lcom/google/protobuf/LongArrayList;
    .end local v1    # "position":I
    .restart local p2    # "position":I
    :pswitch_6
    new-instance v0, Lcom/google/protobuf/IntArrayList;

    invoke-direct {v0}, Lcom/google/protobuf/IntArrayList;-><init>()V

    .line 808
    .local v0, "list":Lcom/google/protobuf/IntArrayList;
    invoke-static {v6, v7, v0, v11}, Lcom/google/protobuf/ArrayDecoders;->decodePackedVarint32List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 809
    .end local p2    # "position":I
    .restart local v1    # "position":I
    iget-object v2, v9, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v2, v0}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 810
    move/from16 v15, p3

    goto/16 :goto_4

    .line 799
    .end local v0    # "list":Lcom/google/protobuf/IntArrayList;
    .end local v1    # "position":I
    .restart local p2    # "position":I
    :pswitch_7
    new-instance v0, Lcom/google/protobuf/LongArrayList;

    invoke-direct {v0}, Lcom/google/protobuf/LongArrayList;-><init>()V

    .line 800
    .local v0, "list":Lcom/google/protobuf/LongArrayList;
    invoke-static {v6, v7, v0, v11}, Lcom/google/protobuf/ArrayDecoders;->decodePackedVarint64List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 801
    .end local p2    # "position":I
    .restart local v1    # "position":I
    iget-object v2, v9, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v2, v0}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 802
    move/from16 v15, p3

    goto/16 :goto_4

    .line 791
    .end local v0    # "list":Lcom/google/protobuf/LongArrayList;
    .end local v1    # "position":I
    .restart local p2    # "position":I
    :pswitch_8
    new-instance v0, Lcom/google/protobuf/FloatArrayList;

    invoke-direct {v0}, Lcom/google/protobuf/FloatArrayList;-><init>()V

    .line 792
    .local v0, "list":Lcom/google/protobuf/FloatArrayList;
    invoke-static {v6, v7, v0, v11}, Lcom/google/protobuf/ArrayDecoders;->decodePackedFloatList([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 793
    .end local p2    # "position":I
    .restart local v1    # "position":I
    iget-object v2, v9, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v2, v0}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 794
    move/from16 v15, p3

    goto/16 :goto_4

    .line 784
    .end local v0    # "list":Lcom/google/protobuf/FloatArrayList;
    .end local v1    # "position":I
    .restart local p2    # "position":I
    :pswitch_9
    new-instance v0, Lcom/google/protobuf/DoubleArrayList;

    invoke-direct {v0}, Lcom/google/protobuf/DoubleArrayList;-><init>()V

    .line 785
    .local v0, "list":Lcom/google/protobuf/DoubleArrayList;
    invoke-static {v6, v7, v0, v11}, Lcom/google/protobuf/ArrayDecoders;->decodePackedDoubleList([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 786
    .end local p2    # "position":I
    .restart local v1    # "position":I
    iget-object v2, v9, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v2, v0}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 787
    move/from16 v15, p3

    goto/16 :goto_4

    .line 875
    .end local v0    # "list":Lcom/google/protobuf/DoubleArrayList;
    .end local v1    # "position":I
    .restart local p2    # "position":I
    :cond_2
    const/4 v14, 0x0

    .line 877
    .local v14, "value":Ljava/lang/Object;
    invoke-virtual/range {p5 .. p5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->ENUM:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne v0, v1, :cond_5

    .line 878
    invoke-static {v6, v7, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 879
    .end local p2    # "position":I
    .local v0, "position":I
    iget-object v1, v9, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/google/protobuf/Internal$EnumLiteMap;

    move-result-object v1

    iget v2, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-interface {v1, v2}, Lcom/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;

    move-result-object v1

    .line 880
    .local v1, "enumValue":Ljava/lang/Object;
    if-nez v1, :cond_4

    .line 881
    iget-object v2, v8, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 882
    .restart local v2    # "unknownFields":Lcom/google/protobuf/UnknownFieldSetLite;
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 883
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->newInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v2

    .line 884
    iput-object v2, v8, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 886
    :cond_3
    iget v3, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v13, v3, v2, v10}, Lcom/google/protobuf/SchemaUtil;->storeUnknownEnum(IILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    .line 888
    return v0

    .line 892
    .end local v2    # "unknownFields":Lcom/google/protobuf/UnknownFieldSetLite;
    :cond_4
    iget v2, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 893
    .end local v1    # "enumValue":Ljava/lang/Object;
    move/from16 v15, p3

    goto/16 :goto_1

    .line 894
    .end local v0    # "position":I
    .restart local p2    # "position":I
    :cond_5
    sget-object v0, Lcom/google/protobuf/ArrayDecoders$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual/range {p5 .. p5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    move/from16 v15, p3

    move v0, v7

    goto/16 :goto_1

    .line 953
    :pswitch_a
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual/range {p5 .. p5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v0

    .line 952
    move/from16 v15, p3

    invoke-static {v0, v6, v7, v15, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeMessageField(Lcom/google/protobuf/Schema;[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 955
    .end local p2    # "position":I
    .restart local v0    # "position":I
    iget-object v14, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 956
    goto/16 :goto_1

    .line 944
    .end local v0    # "position":I
    .restart local p2    # "position":I
    :pswitch_b
    move/from16 v15, p3

    shl-int/lit8 v0, v13, 0x3

    or-int/lit8 v16, v0, 0x4

    .line 946
    .local v16, "endTag":I
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual/range {p5 .. p5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v0

    .line 945
    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v16

    move-object/from16 v5, p7

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/ArrayDecoders;->decodeGroupField(Lcom/google/protobuf/Schema;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 948
    .end local p2    # "position":I
    .restart local v0    # "position":I
    iget-object v14, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 949
    goto/16 :goto_1

    .line 940
    .end local v0    # "position":I
    .end local v16    # "endTag":I
    .restart local p2    # "position":I
    :pswitch_c
    move/from16 v15, p3

    invoke-static {v6, v7, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeString([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 941
    .end local p2    # "position":I
    .restart local v0    # "position":I
    iget-object v14, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 942
    goto/16 :goto_1

    .line 928
    .end local v0    # "position":I
    .restart local p2    # "position":I
    :pswitch_d
    move/from16 v15, p3

    invoke-static {v6, v7, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeBytes([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 929
    .end local p2    # "position":I
    .restart local v0    # "position":I
    iget-object v14, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 930
    goto/16 :goto_1

    .line 959
    .end local v0    # "position":I
    .restart local p2    # "position":I
    :pswitch_e
    move/from16 v15, p3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t reach here."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 936
    :pswitch_f
    move/from16 v15, p3

    invoke-static {v6, v7, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 937
    .end local p2    # "position":I
    .restart local v0    # "position":I
    iget-wide v1, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 938
    goto/16 :goto_1

    .line 932
    .end local v0    # "position":I
    .restart local p2    # "position":I
    :pswitch_10
    move/from16 v15, p3

    invoke-static {v6, v7, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 933
    .end local p2    # "position":I
    .restart local v0    # "position":I
    iget v1, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 934
    goto :goto_1

    .line 924
    .end local v0    # "position":I
    .restart local p2    # "position":I
    :pswitch_11
    move/from16 v15, p3

    invoke-static {v6, v7, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 925
    .end local p2    # "position":I
    .restart local v0    # "position":I
    iget-wide v1, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 926
    goto :goto_1

    .line 920
    .end local v0    # "position":I
    .restart local p2    # "position":I
    :pswitch_12
    move/from16 v15, p3

    invoke-static/range {p1 .. p2}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 921
    add-int/lit8 v0, v7, 0x4

    .line 922
    .end local p2    # "position":I
    .restart local v0    # "position":I
    goto :goto_1

    .line 915
    .end local v0    # "position":I
    .restart local p2    # "position":I
    :pswitch_13
    move/from16 v15, p3

    invoke-static/range {p1 .. p2}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 916
    add-int/lit8 v0, v7, 0x8

    .line 917
    .end local p2    # "position":I
    .restart local v0    # "position":I
    goto :goto_1

    .line 910
    .end local v0    # "position":I
    .restart local p2    # "position":I
    :pswitch_14
    move/from16 v15, p3

    invoke-static {v6, v7, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 911
    .end local p2    # "position":I
    .restart local v0    # "position":I
    iget v1, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 912
    goto :goto_1

    .line 905
    .end local v0    # "position":I
    .restart local p2    # "position":I
    :pswitch_15
    move/from16 v15, p3

    invoke-static {v6, v7, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 906
    .end local p2    # "position":I
    .restart local v0    # "position":I
    iget-wide v1, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 907
    goto :goto_1

    .line 900
    .end local v0    # "position":I
    .restart local p2    # "position":I
    :pswitch_16
    move/from16 v15, p3

    invoke-static/range {p1 .. p2}, Lcom/google/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    .line 901
    add-int/lit8 v0, v7, 0x4

    .line 902
    .end local p2    # "position":I
    .restart local v0    # "position":I
    goto :goto_1

    .line 896
    .end local v0    # "position":I
    .restart local p2    # "position":I
    :pswitch_17
    move/from16 v15, p3

    invoke-static/range {p1 .. p2}, Lcom/google/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    .line 897
    add-int/lit8 v0, v7, 0x8

    .line 898
    .end local p2    # "position":I
    .restart local v0    # "position":I
    nop

    .line 962
    :goto_1
    invoke-virtual/range {p5 .. p5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 963
    iget-object v1, v9, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v1, v14}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_3

    .line 965
    :cond_7
    sget-object v1, Lcom/google/protobuf/ArrayDecoders$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual/range {p5 .. p5}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2

    goto :goto_2

    .line 968
    :pswitch_18
    iget-object v1, v9, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v1}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v1

    .line 969
    .local v1, "oldValue":Ljava/lang/Object;
    if-eqz v1, :cond_8

    .line 970
    invoke-static {v1, v14}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 976
    .end local v1    # "oldValue":Ljava/lang/Object;
    :cond_8
    :goto_2
    iget-object v1, v9, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v12, v1, v14}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 979
    .end local v14    # "value":Ljava/lang/Object;
    :goto_3
    move v1, v0

    .end local v0    # "position":I
    .local v1, "position":I
    :goto_4
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x11
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method

.method static decodeExtensionOrUnknownField(I[BIILjava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 12
    .param p0, "tag"    # I
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p4, "message"    # Ljava/lang/Object;
    .param p5, "defaultInstance"    # Lcom/google/protobuf/MessageLite;
    .param p7, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/MessageLite;",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "Lcom/google/protobuf/UnknownFieldSetLite;",
            "Lcom/google/protobuf/UnknownFieldSetLite;",
            ">;",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 754
    .local p6, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<Lcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/UnknownFieldSetLite;>;"
    ushr-int/lit8 v8, p0, 0x3

    .line 755
    .local v8, "number":I
    move-object/from16 v9, p7

    iget-object v0, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 756
    move-object/from16 v10, p5

    invoke-virtual {v0, v10, v8}, Lcom/google/protobuf/ExtensionRegistryLite;->findLiteExtensionByNumber(Lcom/google/protobuf/MessageLite;I)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v11

    .line 757
    .local v11, "extension":Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    if-nez v11, :cond_0

    .line 758
    nop

    .line 759
    invoke-static/range {p4 .. p4}, Lcom/google/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v4

    .line 758
    move v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v5, p7

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/ArrayDecoders;->decodeUnknownField(I[BIILcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    return v0

    .line 761
    :cond_0
    move-object/from16 v0, p4

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->ensureExtensionsAreMutable()Lcom/google/protobuf/FieldSet;

    .line 762
    move-object/from16 v4, p4

    check-cast v4, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    move v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v11

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v7}, Lcom/google/protobuf/ArrayDecoders;->decodeExtension(I[BIILcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    return v0
.end method

.method static decodeFixed32([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "position"    # I

    .line 155
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method static decodeFixed32List(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 3
    .param p0, "tag"    # I
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p5, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 306
    .local p4, "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p4

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    .line 307
    .local v0, "output":Lcom/google/protobuf/IntArrayList;
    invoke-static {p1, p2}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 308
    add-int/lit8 p2, p2, 0x4

    .line 309
    :goto_0
    if-ge p2, p3, :cond_1

    .line 310
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 311
    .local v1, "nextPosition":I
    iget v2, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v2, :cond_0

    .line 312
    goto :goto_1

    .line 314
    :cond_0
    invoke-static {p1, v1}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 315
    add-int/lit8 p2, v1, 0x4

    .line 316
    .end local v1    # "nextPosition":I
    goto :goto_0

    .line 317
    :cond_1
    :goto_1
    return p2
.end method

.method static decodeFixed64([BI)J
    .locals 7
    .param p0, "data"    # [B
    .param p1, "position"    # I

    .line 163
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x7

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static decodeFixed64List(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 4
    .param p0, "tag"    # I
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p5, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 323
    .local p4, "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p4

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    .line 324
    .local v0, "output":Lcom/google/protobuf/LongArrayList;
    invoke-static {p1, p2}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 325
    add-int/lit8 p2, p2, 0x8

    .line 326
    :goto_0
    if-ge p2, p3, :cond_1

    .line 327
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 328
    .local v1, "nextPosition":I
    iget v2, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v2, :cond_0

    .line 329
    goto :goto_1

    .line 331
    :cond_0
    invoke-static {p1, v1}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 332
    add-int/lit8 p2, v1, 0x8

    .line 333
    .end local v1    # "nextPosition":I
    goto :goto_0

    .line 334
    :cond_1
    :goto_1
    return p2
.end method

.method static decodeFloat([BI)F
    .locals 1
    .param p0, "data"    # [B
    .param p1, "position"    # I

    .line 180
    invoke-static {p0, p1}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method static decodeFloatList(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 3
    .param p0, "tag"    # I
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p5, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 340
    .local p4, "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p4

    check-cast v0, Lcom/google/protobuf/FloatArrayList;

    .line 341
    .local v0, "output":Lcom/google/protobuf/FloatArrayList;
    invoke-static {p1, p2}, Lcom/google/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/FloatArrayList;->addFloat(F)V

    .line 342
    add-int/lit8 p2, p2, 0x4

    .line 343
    :goto_0
    if-ge p2, p3, :cond_1

    .line 344
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 345
    .local v1, "nextPosition":I
    iget v2, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v2, :cond_0

    .line 346
    goto :goto_1

    .line 348
    :cond_0
    invoke-static {p1, v1}, Lcom/google/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/FloatArrayList;->addFloat(F)V

    .line 349
    add-int/lit8 p2, v1, 0x4

    .line 350
    .end local v1    # "nextPosition":I
    goto :goto_0

    .line 351
    :cond_1
    :goto_1
    return p2
.end method

.method static decodeGroupField(Lcom/google/protobuf/Schema;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 9
    .param p0, "schema"    # Lcom/google/protobuf/Schema;
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p4, "endGroup"    # I
    .param p5, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    move-object v7, p0

    check-cast v7, Lcom/google/protobuf/MessageSchema;

    .line 260
    .local v7, "messageSchema":Lcom/google/protobuf/MessageSchema;
    invoke-virtual {v7}, Lcom/google/protobuf/MessageSchema;->newInstance()Ljava/lang/Object;

    move-result-object v8

    .line 262
    .local v8, "result":Ljava/lang/Object;
    nop

    .line 263
    move-object v0, v7

    move-object v1, v8

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/protobuf/MessageSchema;->parseProto2Message(Ljava/lang/Object;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 264
    .local v0, "endPosition":I
    invoke-virtual {v7, v8}, Lcom/google/protobuf/MessageSchema;->makeImmutable(Ljava/lang/Object;)V

    .line 265
    iput-object v8, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 266
    return v0
.end method

.method static decodeGroupList(Lcom/google/protobuf/Schema;I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 9
    .param p0, "schema"    # Lcom/google/protobuf/Schema;
    .param p1, "tag"    # I
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "limit"    # I
    .param p6, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Schema;",
            "I[BII",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 732
    .local p5, "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p5

    .line 733
    .local v0, "output":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Ljava/lang/Object;>;"
    and-int/lit8 v1, p1, -0x8

    or-int/lit8 v1, v1, 0x4

    .line 734
    .local v1, "endgroup":I
    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, v1

    move-object v7, p6

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/ArrayDecoders;->decodeGroupField(Lcom/google/protobuf/Schema;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    .line 735
    iget-object v2, p6, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 736
    :goto_0
    if-ge p3, p4, :cond_1

    .line 737
    invoke-static {p2, p3, p6}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    .line 738
    .local v8, "nextPosition":I
    iget v2, p6, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p1, v2, :cond_0

    .line 739
    goto :goto_1

    .line 741
    :cond_0
    move-object v2, p0

    move-object v3, p2

    move v4, v8

    move v5, p4

    move v6, v1

    move-object v7, p6

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/ArrayDecoders;->decodeGroupField(Lcom/google/protobuf/Schema;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    .line 742
    iget-object v2, p6, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 743
    .end local v8    # "nextPosition":I
    goto :goto_0

    .line 744
    :cond_1
    :goto_1
    return p3
.end method

.method static decodeMessageField(Lcom/google/protobuf/Schema;[BIILcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 8
    .param p0, "schema"    # Lcom/google/protobuf/Schema;
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p4, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "position":I
    .local v0, "position":I
    aget-byte p2, p1, p2

    .line 238
    .local p2, "length":I
    if-gez p2, :cond_0

    .line 239
    invoke-static {p2, p1, v0, p4}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32(I[BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 240
    iget p2, p4, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    move v6, v0

    goto :goto_0

    .line 238
    :cond_0
    move v6, v0

    .line 242
    .end local v0    # "position":I
    .local v6, "position":I
    :goto_0
    if-ltz p2, :cond_1

    sub-int v0, p3, v6

    if-gt p2, v0, :cond_1

    .line 245
    invoke-interface {p0}, Lcom/google/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v7

    .line 246
    .local v7, "result":Ljava/lang/Object;
    add-int v4, v6, p2

    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move v3, v6

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;[BIILcom/google/protobuf/ArrayDecoders$Registers;)V

    .line 247
    invoke-interface {p0, v7}, Lcom/google/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 248
    iput-object v7, p4, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 249
    add-int v0, v6, p2

    return v0

    .line 243
    .end local v7    # "result":Ljava/lang/Object;
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method static decodeMessageList(Lcom/google/protobuf/Schema;I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 3
    .param p1, "tag"    # I
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "limit"    # I
    .param p6, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Schema<",
            "*>;I[BII",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 703
    .local p0, "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<*>;"
    .local p5, "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p5

    .line 704
    .local v0, "output":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Ljava/lang/Object;>;"
    invoke-static {p0, p2, p3, p4, p6}, Lcom/google/protobuf/ArrayDecoders;->decodeMessageField(Lcom/google/protobuf/Schema;[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    .line 705
    iget-object v1, p6, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 706
    :goto_0
    if-ge p3, p4, :cond_1

    .line 707
    invoke-static {p2, p3, p6}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 708
    .local v1, "nextPosition":I
    iget v2, p6, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p1, v2, :cond_0

    .line 709
    goto :goto_1

    .line 711
    :cond_0
    invoke-static {p0, p2, v1, p4, p6}, Lcom/google/protobuf/ArrayDecoders;->decodeMessageField(Lcom/google/protobuf/Schema;[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    .line 712
    iget-object v2, p6, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 713
    .end local v1    # "nextPosition":I
    goto :goto_0

    .line 714
    :cond_1
    :goto_1
    return p3
.end method

.method static decodePackedBoolList([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 6
    .param p0, "data"    # [B
    .param p1, "position"    # I
    .param p3, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 521
    .local p2, "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/BooleanArrayList;

    .line 522
    .local v0, "output":Lcom/google/protobuf/BooleanArrayList;
    invoke-static {p0, p1, p3}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 523
    iget v1, p3, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, p1

    .line 524
    .local v1, "fieldLimit":I
    :goto_0
    if-ge p1, v1, :cond_1

    .line 525
    invoke-static {p0, p1, p3}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 526
    iget-wide v2, p3, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Lcom/google/protobuf/BooleanArrayList;->addBoolean(Z)V

    goto :goto_0

    .line 528
    :cond_1
    if-ne p1, v1, :cond_2

    .line 531
    return p1

    .line 529
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static decodePackedDoubleList([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 4
    .param p0, "data"    # [B
    .param p1, "position"    # I
    .param p3, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 505
    .local p2, "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/DoubleArrayList;

    .line 506
    .local v0, "output":Lcom/google/protobuf/DoubleArrayList;
    invoke-static {p0, p1, p3}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 507
    iget v1, p3, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, p1

    .line 508
    .local v1, "fieldLimit":I
    :goto_0
    if-ge p1, v1, :cond_0

    .line 509
    invoke-static {p0, p1}, Lcom/google/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/DoubleArrayList;->addDouble(D)V

    .line 510
    add-int/lit8 p1, p1, 0x8

    goto :goto_0

    .line 512
    :cond_0
    if-ne p1, v1, :cond_1

    .line 515
    return p1

    .line 513
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static decodePackedFixed32List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 3
    .param p0, "data"    # [B
    .param p1, "position"    # I
    .param p3, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 457
    .local p2, "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    .line 458
    .local v0, "output":Lcom/google/protobuf/IntArrayList;
    invoke-static {p0, p1, p3}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 459
    iget v1, p3, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, p1

    .line 460
    .local v1, "fieldLimit":I
    :goto_0
    if-ge p1, v1, :cond_0

    .line 461
    invoke-static {p0, p1}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 462
    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 464
    :cond_0
    if-ne p1, v1, :cond_1

    .line 467
    return p1

    .line 465
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static decodePackedFixed64List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 4
    .param p0, "data"    # [B
    .param p1, "position"    # I
    .param p3, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 473
    .local p2, "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    .line 474
    .local v0, "output":Lcom/google/protobuf/LongArrayList;
    invoke-static {p0, p1, p3}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 475
    iget v1, p3, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, p1

    .line 476
    .local v1, "fieldLimit":I
    :goto_0
    if-ge p1, v1, :cond_0

    .line 477
    invoke-static {p0, p1}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 478
    add-int/lit8 p1, p1, 0x8

    goto :goto_0

    .line 480
    :cond_0
    if-ne p1, v1, :cond_1

    .line 483
    return p1

    .line 481
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static decodePackedFloatList([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 3
    .param p0, "data"    # [B
    .param p1, "position"    # I
    .param p3, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 489
    .local p2, "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/FloatArrayList;

    .line 490
    .local v0, "output":Lcom/google/protobuf/FloatArrayList;
    invoke-static {p0, p1, p3}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 491
    iget v1, p3, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, p1

    .line 492
    .local v1, "fieldLimit":I
    :goto_0
    if-ge p1, v1, :cond_0

    .line 493
    invoke-static {p0, p1}, Lcom/google/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/FloatArrayList;->addFloat(F)V

    .line 494
    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 496
    :cond_0
    if-ne p1, v1, :cond_1

    .line 499
    return p1

    .line 497
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static decodePackedSInt32List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 3
    .param p0, "data"    # [B
    .param p1, "position"    # I
    .param p3, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 537
    .local p2, "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    .line 538
    .local v0, "output":Lcom/google/protobuf/IntArrayList;
    invoke-static {p0, p1, p3}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 539
    iget v1, p3, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, p1

    .line 540
    .local v1, "fieldLimit":I
    :goto_0
    if-ge p1, v1, :cond_0

    .line 541
    invoke-static {p0, p1, p3}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 542
    iget v2, p3, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v2}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_0

    .line 544
    :cond_0
    if-ne p1, v1, :cond_1

    .line 547
    return p1

    .line 545
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static decodePackedSInt64List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 4
    .param p0, "data"    # [B
    .param p1, "position"    # I
    .param p3, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 554
    .local p2, "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    .line 555
    .local v0, "output":Lcom/google/protobuf/LongArrayList;
    invoke-static {p0, p1, p3}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 556
    iget v1, p3, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, p1

    .line 557
    .local v1, "fieldLimit":I
    :goto_0
    if-ge p1, v1, :cond_0

    .line 558
    invoke-static {p0, p1, p3}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 559
    iget-wide v2, p3, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    goto :goto_0

    .line 561
    :cond_0
    if-ne p1, v1, :cond_1

    .line 564
    return p1

    .line 562
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static decodePackedVarint32List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 3
    .param p0, "data"    # [B
    .param p1, "position"    # I
    .param p3, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    .local p2, "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    .line 426
    .local v0, "output":Lcom/google/protobuf/IntArrayList;
    invoke-static {p0, p1, p3}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 427
    iget v1, p3, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, p1

    .line 428
    .local v1, "fieldLimit":I
    :goto_0
    if-ge p1, v1, :cond_0

    .line 429
    invoke-static {p0, p1, p3}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 430
    iget v2, p3, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v0, v2}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_0

    .line 432
    :cond_0
    if-ne p1, v1, :cond_1

    .line 435
    return p1

    .line 433
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static decodePackedVarint64List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 4
    .param p0, "data"    # [B
    .param p1, "position"    # I
    .param p3, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 441
    .local p2, "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    .line 442
    .local v0, "output":Lcom/google/protobuf/LongArrayList;
    invoke-static {p0, p1, p3}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 443
    iget v1, p3, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, p1

    .line 444
    .local v1, "fieldLimit":I
    :goto_0
    if-ge p1, v1, :cond_0

    .line 445
    invoke-static {p0, p1, p3}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 446
    iget-wide v2, p3, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    goto :goto_0

    .line 448
    :cond_0
    if-ne p1, v1, :cond_1

    .line 451
    return p1

    .line 449
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static decodeSInt32List(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 3
    .param p0, "tag"    # I
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p5, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 391
    .local p4, "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p4

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    .line 392
    .local v0, "output":Lcom/google/protobuf/IntArrayList;
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 393
    iget v1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 394
    :goto_0
    if-ge p2, p3, :cond_1

    .line 395
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 396
    .local v1, "nextPosition":I
    iget v2, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v2, :cond_0

    .line 397
    goto :goto_1

    .line 399
    :cond_0
    invoke-static {p1, v1, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 400
    iget v2, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v2}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 401
    .end local v1    # "nextPosition":I
    goto :goto_0

    .line 402
    :cond_1
    :goto_1
    return p2
.end method

.method static decodeSInt64List(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 4
    .param p0, "tag"    # I
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p5, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 408
    .local p4, "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p4

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    .line 409
    .local v0, "output":Lcom/google/protobuf/LongArrayList;
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 410
    iget-wide v1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 411
    :goto_0
    if-ge p2, p3, :cond_1

    .line 412
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 413
    .local v1, "nextPosition":I
    iget v2, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v2, :cond_0

    .line 414
    goto :goto_1

    .line 416
    :cond_0
    invoke-static {p1, v1, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 417
    iget-wide v2, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 418
    .end local v1    # "nextPosition":I
    goto :goto_0

    .line 419
    :cond_1
    :goto_1
    return p2
.end method

.method static decodeString([BILcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 3
    .param p0, "data"    # [B
    .param p1, "position"    # I
    .param p2, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 187
    iget v0, p2, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 188
    .local v0, "length":I
    if-ltz v0, :cond_1

    .line 190
    if-nez v0, :cond_0

    .line 191
    const-string v1, ""

    iput-object v1, p2, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 192
    return p1

    .line 194
    :cond_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p2, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 195
    add-int v1, p1, v0

    return v1

    .line 189
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method static decodeStringList(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 7
    .param p0, "tag"    # I
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p5, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 572
    .local p4, "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p4

    .line 573
    .local v0, "output":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Ljava/lang/String;>;"
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 574
    iget v1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 575
    .local v1, "length":I
    if-ltz v1, :cond_5

    .line 577
    const-string v2, ""

    if-nez v1, :cond_0

    .line 578
    invoke-interface {v0, v2}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 580
    :cond_0
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, p2, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 581
    .local v3, "value":Ljava/lang/String;
    invoke-interface {v0, v3}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 582
    add-int/2addr p2, v1

    .line 584
    .end local v3    # "value":Ljava/lang/String;
    :goto_0
    if-ge p2, p3, :cond_4

    .line 585
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 586
    .local v3, "nextPosition":I
    iget v4, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v4, :cond_1

    .line 587
    goto :goto_2

    .line 589
    :cond_1
    invoke-static {p1, v3, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 590
    iget v4, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 591
    .local v4, "nextLength":I
    if-ltz v4, :cond_3

    .line 593
    if-nez v4, :cond_2

    .line 594
    invoke-interface {v0, v2}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 596
    :cond_2
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, p1, p2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 597
    .local v5, "value":Ljava/lang/String;
    invoke-interface {v0, v5}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 598
    add-int/2addr p2, v4

    .line 600
    .end local v3    # "nextPosition":I
    .end local v4    # "nextLength":I
    .end local v5    # "value":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 592
    .restart local v3    # "nextPosition":I
    .restart local v4    # "nextLength":I
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 601
    .end local v3    # "nextPosition":I
    .end local v4    # "nextLength":I
    :cond_4
    :goto_2
    return p2

    .line 576
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static decodeStringListRequireUtf8(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 7
    .param p0, "tag"    # I
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p5, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 611
    .local p4, "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p4

    .line 612
    .local v0, "output":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Ljava/lang/String;>;"
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 613
    iget v1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 614
    .local v1, "length":I
    if-ltz v1, :cond_7

    .line 616
    const-string v2, ""

    if-nez v1, :cond_0

    .line 617
    invoke-interface {v0, v2}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 619
    :cond_0
    add-int v3, p2, v1

    invoke-static {p1, p2, v3}, Lcom/google/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 622
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, p2, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 623
    .local v3, "value":Ljava/lang/String;
    invoke-interface {v0, v3}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 624
    add-int/2addr p2, v1

    .line 626
    .end local v3    # "value":Ljava/lang/String;
    :goto_0
    if-ge p2, p3, :cond_5

    .line 627
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 628
    .local v3, "nextPosition":I
    iget v4, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v4, :cond_1

    .line 629
    goto :goto_2

    .line 631
    :cond_1
    invoke-static {p1, v3, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 632
    iget v4, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 633
    .local v4, "nextLength":I
    if-ltz v4, :cond_4

    .line 635
    if-nez v4, :cond_2

    .line 636
    invoke-interface {v0, v2}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 638
    :cond_2
    add-int v5, p2, v4

    invoke-static {p1, p2, v5}, Lcom/google/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 641
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, p1, p2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 642
    .local v5, "value":Ljava/lang/String;
    invoke-interface {v0, v5}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 643
    add-int/2addr p2, v4

    .line 645
    .end local v3    # "nextPosition":I
    .end local v4    # "nextLength":I
    .end local v5    # "value":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 639
    .restart local v3    # "nextPosition":I
    .restart local v4    # "nextLength":I
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 634
    :cond_4
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 646
    .end local v3    # "nextPosition":I
    .end local v4    # "nextLength":I
    :cond_5
    :goto_2
    return p2

    .line 620
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 615
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method static decodeStringRequireUtf8([BILcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "position"    # I
    .param p2, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 202
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 203
    iget v0, p2, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 204
    .local v0, "length":I
    if-ltz v0, :cond_1

    .line 206
    if-nez v0, :cond_0

    .line 207
    const-string v1, ""

    iput-object v1, p2, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 208
    return p1

    .line 210
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/google/protobuf/Utf8;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 211
    add-int v1, p1, v0

    return v1

    .line 205
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method static decodeUnknownField(I[BIILcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 9
    .param p0, "tag"    # I
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p4, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSetLite;
    .param p5, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 991
    invoke-static {p0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_6

    .line 994
    invoke-static {p0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1036
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1000
    :pswitch_1
    invoke-static {p1, p2}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, p0, v0}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 1001
    add-int/lit8 v0, p2, 0x4

    return v0

    .line 1019
    :pswitch_2
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->newInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v0

    .line 1020
    .local v0, "child":Lcom/google/protobuf/UnknownFieldSetLite;
    and-int/lit8 v1, p0, -0x8

    or-int/lit8 v7, v1, 0x4

    .line 1021
    .local v7, "endGroup":I
    const/4 v1, 0x0

    .line 1022
    .local v1, "lastTag":I
    :goto_0
    if-ge p2, p3, :cond_1

    .line 1023
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 1024
    iget v8, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 1025
    .end local v1    # "lastTag":I
    .local v8, "lastTag":I
    if-ne v8, v7, :cond_0

    .line 1026
    move v1, v8

    goto :goto_1

    .line 1028
    :cond_0
    move v1, v8

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v0

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/ArrayDecoders;->decodeUnknownField(I[BIILcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    goto :goto_0

    .line 1030
    .end local v8    # "lastTag":I
    .restart local v1    # "lastTag":I
    :cond_1
    :goto_1
    if-gt p2, p3, :cond_2

    if-ne v1, v7, :cond_2

    .line 1033
    invoke-virtual {p4, p0, v0}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 1034
    return p2

    .line 1031
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 1006
    .end local v0    # "child":Lcom/google/protobuf/UnknownFieldSetLite;
    .end local v1    # "lastTag":I
    .end local v7    # "endGroup":I
    :pswitch_3
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 1007
    iget v0, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 1008
    .local v0, "length":I
    if-ltz v0, :cond_5

    .line 1010
    array-length v1, p1

    sub-int/2addr v1, p2

    if-gt v0, v1, :cond_4

    .line 1012
    if-nez v0, :cond_3

    .line 1013
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-virtual {p4, p0, v1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    goto :goto_2

    .line 1015
    :cond_3
    invoke-static {p1, p2, v0}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p4, p0, v1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 1017
    :goto_2
    add-int v1, p2, v0

    return v1

    .line 1011
    :cond_4
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1009
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1003
    .end local v0    # "length":I
    :pswitch_4
    invoke-static {p1, p2}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, p0, v0}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 1004
    add-int/lit8 v0, p2, 0x8

    return v0

    .line 996
    :pswitch_5
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 997
    iget-wide v0, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, p0, v0}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 998
    return p2

    .line 992
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static decodeVarint32(I[BILcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 6
    .param p0, "firstByte"    # I
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;

    .line 89
    and-int/lit8 v0, p0, 0x7f

    .line 90
    .local v0, "value":I
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "position":I
    .local v1, "position":I
    aget-byte p2, p1, p2

    .line 91
    .local p2, "b2":B
    if-ltz p2, :cond_0

    .line 92
    shl-int/lit8 v2, p2, 0x7

    or-int/2addr v2, v0

    iput v2, p3, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 93
    return v1

    .line 95
    :cond_0
    and-int/lit8 v2, p2, 0x7f

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v0, v2

    .line 97
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "position":I
    .local v2, "position":I
    aget-byte v1, p1, v1

    .line 98
    .local v1, "b3":B
    if-ltz v1, :cond_1

    .line 99
    shl-int/lit8 v3, v1, 0xe

    or-int/2addr v3, v0

    iput v3, p3, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 100
    return v2

    .line 102
    :cond_1
    and-int/lit8 v3, v1, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v0, v3

    .line 104
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "position":I
    .local v3, "position":I
    aget-byte v2, p1, v2

    .line 105
    .local v2, "b4":B
    if-ltz v2, :cond_2

    .line 106
    shl-int/lit8 v4, v2, 0x15

    or-int/2addr v4, v0

    iput v4, p3, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 107
    return v3

    .line 109
    :cond_2
    and-int/lit8 v4, v2, 0x7f

    shl-int/lit8 v4, v4, 0x15

    or-int/2addr v0, v4

    .line 111
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "position":I
    .local v4, "position":I
    aget-byte v3, p1, v3

    .line 112
    .local v3, "b5":B
    if-ltz v3, :cond_3

    .line 113
    shl-int/lit8 v5, v3, 0x1c

    or-int/2addr v5, v0

    iput v5, p3, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 114
    return v4

    .line 116
    :cond_3
    and-int/lit8 v5, v3, 0x7f

    shl-int/lit8 v5, v5, 0x1c

    or-int/2addr v0, v5

    .line 118
    :goto_0
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "position":I
    .local v5, "position":I
    aget-byte v4, p1, v4

    if-gez v4, :cond_4

    move v4, v5

    goto :goto_0

    .line 120
    :cond_4
    iput v0, p3, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 121
    return v5
.end method

.method static decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "position"    # I
    .param p2, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;

    .line 79
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "position":I
    .local v0, "position":I
    aget-byte p1, p0, p1

    .line 80
    .local p1, "value":I
    if-ltz p1, :cond_0

    .line 81
    iput p1, p2, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 82
    return v0

    .line 84
    :cond_0
    invoke-static {p1, p0, v0, p2}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32(I[BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    return v1
.end method

.method static decodeVarint32List(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 3
    .param p0, "tag"    # I
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p5, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 272
    .local p4, "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p4

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    .line 273
    .local v0, "output":Lcom/google/protobuf/IntArrayList;
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 274
    iget v1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v0, v1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 275
    :goto_0
    if-ge p2, p3, :cond_1

    .line 276
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 277
    .local v1, "nextPosition":I
    iget v2, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v2, :cond_0

    .line 278
    goto :goto_1

    .line 280
    :cond_0
    invoke-static {p1, v1, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 281
    iget v2, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v0, v2}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 282
    .end local v1    # "nextPosition":I
    goto :goto_0

    .line 283
    :cond_1
    :goto_1
    return p2
.end method

.method static decodeVarint64(J[BILcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 7
    .param p0, "firstByte"    # J
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;

    .line 140
    const-wide/16 v0, 0x7f

    and-long/2addr v0, p0

    .line 141
    .local v0, "value":J
    add-int/lit8 v2, p3, 0x1

    .end local p3    # "position":I
    .local v2, "position":I
    aget-byte p3, p2, p3

    .line 142
    .local p3, "next":B
    const/4 v3, 0x7

    .line 143
    .local v3, "shift":I
    and-int/lit8 v4, p3, 0x7f

    int-to-long v4, v4

    const/4 v6, 0x7

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 144
    :goto_0
    if-gez p3, :cond_0

    .line 145
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "position":I
    .local v4, "position":I
    aget-byte p3, p2, v2

    .line 146
    add-int/lit8 v3, v3, 0x7

    .line 147
    and-int/lit8 v2, p3, 0x7f

    int-to-long v5, v2

    shl-long/2addr v5, v3

    or-long/2addr v0, v5

    move v2, v4

    goto :goto_0

    .line 149
    .end local v4    # "position":I
    .restart local v2    # "position":I
    :cond_0
    iput-wide v0, p4, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    .line 150
    return v2
.end method

.method static decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 5
    .param p0, "data"    # [B
    .param p1, "position"    # I
    .param p2, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;

    .line 129
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "position":I
    .local v0, "position":I
    aget-byte p1, p0, p1

    int-to-long v1, p1

    .line 130
    .local v1, "value":J
    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_0

    .line 131
    iput-wide v1, p2, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    .line 132
    return v0

    .line 134
    :cond_0
    invoke-static {v1, v2, p0, v0, p2}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64(J[BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    return p1
.end method

.method static decodeVarint64List(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 4
    .param p0, "tag"    # I
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p5, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 289
    .local p4, "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    move-object v0, p4

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    .line 290
    .local v0, "output":Lcom/google/protobuf/LongArrayList;
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 291
    iget-wide v1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 292
    :goto_0
    if-ge p2, p3, :cond_1

    .line 293
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 294
    .local v1, "nextPosition":I
    iget v2, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v2, :cond_0

    .line 295
    goto :goto_1

    .line 297
    :cond_0
    invoke-static {p1, v1, p5}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 298
    iget-wide v2, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 299
    .end local v1    # "nextPosition":I
    goto :goto_0

    .line 300
    :cond_1
    :goto_1
    return p2
.end method

.method static skipField(I[BIILcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 3
    .param p0, "tag"    # I
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p4, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1043
    invoke-static {p0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 1046
    invoke-static {p0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1073
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1051
    :pswitch_1
    add-int/lit8 v0, p2, 0x4

    return v0

    .line 1058
    :pswitch_2
    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v0, v0, 0x4

    .line 1059
    .local v0, "endGroup":I
    const/4 v1, 0x0

    .line 1060
    .local v1, "lastTag":I
    :goto_0
    if-ge p2, p3, :cond_1

    .line 1061
    invoke-static {p1, p2, p4}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 1062
    iget v1, p4, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 1063
    if-ne v1, v0, :cond_0

    .line 1064
    goto :goto_1

    .line 1066
    :cond_0
    invoke-static {v1, p1, p2, p3, p4}, Lcom/google/protobuf/ArrayDecoders;->skipField(I[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    goto :goto_0

    .line 1068
    :cond_1
    :goto_1
    if-gt p2, p3, :cond_2

    if-ne v1, v0, :cond_2

    .line 1071
    return p2

    .line 1069
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 1055
    .end local v0    # "endGroup":I
    .end local v1    # "lastTag":I
    :pswitch_3
    invoke-static {p1, p2, p4}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 1056
    iget v0, p4, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v0, p2

    return v0

    .line 1053
    :pswitch_4
    add-int/lit8 v0, p2, 0x8

    return v0

    .line 1048
    :pswitch_5
    invoke-static {p1, p2, p4}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 1049
    return p2

    .line 1044
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
