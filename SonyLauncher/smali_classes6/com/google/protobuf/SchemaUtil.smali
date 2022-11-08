.class final Lcom/google/protobuf/SchemaUtil;
.super Ljava/lang/Object;
.source "SchemaUtil.java"


# static fields
.field private static final DEFAULT_LOOK_UP_START_NUMBER:I = 0x28

.field private static final GENERATED_MESSAGE_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final PROTO2_UNKNOWN_FIELD_SET_SCHEMA:Lcom/google/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field

.field private static final PROTO3_UNKNOWN_FIELD_SET_SCHEMA:Lcom/google/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field

.field private static final UNKNOWN_FIELD_SET_LITE_SCHEMA:Lcom/google/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    invoke-static {}, Lcom/google/protobuf/SchemaUtil;->getGeneratedMessageClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 46
    nop

    .line 47
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/protobuf/SchemaUtil;->getUnknownFieldSetSchema(Z)Lcom/google/protobuf/UnknownFieldSchema;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/SchemaUtil;->PROTO2_UNKNOWN_FIELD_SET_SCHEMA:Lcom/google/protobuf/UnknownFieldSchema;

    .line 48
    nop

    .line 49
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/protobuf/SchemaUtil;->getUnknownFieldSetSchema(Z)Lcom/google/protobuf/UnknownFieldSchema;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/SchemaUtil;->PROTO3_UNKNOWN_FIELD_SET_SCHEMA:Lcom/google/protobuf/UnknownFieldSchema;

    .line 50
    new-instance v0, Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    invoke-direct {v0}, Lcom/google/protobuf/UnknownFieldSetLiteSchema;-><init>()V

    sput-object v0, Lcom/google/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_LITE_SCHEMA:Lcom/google/protobuf/UnknownFieldSchema;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static computeSizeBoolList(ILjava/util/List;Z)I
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p2, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 626
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 627
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 628
    const/4 v1, 0x0

    return v1

    .line 630
    :cond_0
    if-eqz p2, :cond_1

    .line 632
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    .line 633
    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 632
    return v1

    .line 635
    :cond_1
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    mul-int/2addr v1, v0

    return v1
.end method

.method static computeSizeBoolListNoTag(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 622
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method static computeSizeByteStringList(ILjava/util/List;)I
    .locals 4
    .param p0, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;)I"
        }
    .end annotation

    .line 711
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/ByteString;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 712
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 713
    const/4 v1, 0x0

    return v1

    .line 715
    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    mul-int/2addr v1, v0

    .line 716
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 717
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/ByteString;

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 716
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 719
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method static computeSizeEnumList(ILjava/util/List;Z)I
    .locals 4
    .param p0, "fieldNumber"    # I
    .param p2, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 461
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 462
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 463
    const/4 v1, 0x0

    return v1

    .line 465
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    move-result v1

    .line 467
    .local v1, "size":I
    if-eqz p2, :cond_1

    .line 468
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 469
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 468
    return v2

    .line 471
    :cond_1
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2
.end method

.method static computeSizeEnumListNoTag(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 440
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 441
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 442
    const/4 v1, 0x0

    return v1

    .line 445
    :cond_0
    const/4 v1, 0x0

    .line 447
    .local v1, "size":I
    instance-of v2, p0, Lcom/google/protobuf/IntArrayList;

    if-eqz v2, :cond_2

    .line 448
    move-object v2, p0

    check-cast v2, Lcom/google/protobuf/IntArrayList;

    .line 449
    .local v2, "primitiveList":Lcom/google/protobuf/IntArrayList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 450
    invoke-virtual {v2, v3}, Lcom/google/protobuf/IntArrayList;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 449
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 452
    .end local v2    # "primitiveList":Lcom/google/protobuf/IntArrayList;
    .end local v3    # "i":I
    :cond_1
    goto :goto_2

    .line 453
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 454
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 453
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 457
    .end local v2    # "i":I
    :cond_3
    :goto_2
    return v1
.end method

.method static computeSizeFixed32List(ILjava/util/List;Z)I
    .locals 4
    .param p0, "fieldNumber"    # I
    .param p2, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 589
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 590
    .local v0, "length":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 591
    return v1

    .line 593
    :cond_0
    if-eqz p2, :cond_1

    .line 594
    mul-int/lit8 v1, v0, 0x4

    .line 595
    .local v1, "dataSize":I
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 596
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 595
    return v2

    .line 598
    .end local v1    # "dataSize":I
    :cond_1
    invoke-static {p0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v1

    mul-int/2addr v1, v0

    return v1
.end method

.method static computeSizeFixed32ListNoTag(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 585
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method static computeSizeFixed64List(ILjava/util/List;Z)I
    .locals 4
    .param p0, "fieldNumber"    # I
    .param p2, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 607
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 608
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 609
    const/4 v1, 0x0

    return v1

    .line 611
    :cond_0
    if-eqz p2, :cond_1

    .line 612
    mul-int/lit8 v1, v0, 0x8

    .line 613
    .local v1, "dataSize":I
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 614
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 613
    return v2

    .line 616
    .end local v1    # "dataSize":I
    :cond_1
    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v1

    mul-int/2addr v1, v0

    return v1
.end method

.method static computeSizeFixed64ListNoTag(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 603
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method static computeSizeGroupList(ILjava/util/List;)I
    .locals 4
    .param p0, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/protobuf/MessageLite;",
            ">;)I"
        }
    .end annotation

    .line 723
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/MessageLite;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 724
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 725
    const/4 v1, 0x0

    return v1

    .line 727
    :cond_0
    const/4 v1, 0x0

    .line 728
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 729
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {p0, v3}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 728
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 731
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method static computeSizeGroupList(ILjava/util/List;Lcom/google/protobuf/Schema;)I
    .locals 4
    .param p0, "fieldNumber"    # I
    .param p2, "schema"    # Lcom/google/protobuf/Schema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/protobuf/MessageLite;",
            ">;",
            "Lcom/google/protobuf/Schema;",
            ")I"
        }
    .end annotation

    .line 735
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/MessageLite;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 736
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 737
    const/4 v1, 0x0

    return v1

    .line 739
    :cond_0
    const/4 v1, 0x0

    .line 740
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 741
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {p0, v3, p2}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I

    move-result v3

    add-int/2addr v1, v3

    .line 740
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 743
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method static computeSizeInt32List(ILjava/util/List;Z)I
    .locals 4
    .param p0, "fieldNumber"    # I
    .param p2, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 497
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 498
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 499
    const/4 v1, 0x0

    return v1

    .line 501
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    move-result v1

    .line 503
    .local v1, "size":I
    if-eqz p2, :cond_1

    .line 504
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 505
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 504
    return v2

    .line 507
    :cond_1
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2
.end method

.method static computeSizeInt32ListNoTag(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 476
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 477
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 478
    const/4 v1, 0x0

    return v1

    .line 481
    :cond_0
    const/4 v1, 0x0

    .line 483
    .local v1, "size":I
    instance-of v2, p0, Lcom/google/protobuf/IntArrayList;

    if-eqz v2, :cond_2

    .line 484
    move-object v2, p0

    check-cast v2, Lcom/google/protobuf/IntArrayList;

    .line 485
    .local v2, "primitiveList":Lcom/google/protobuf/IntArrayList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 486
    invoke-virtual {v2, v3}, Lcom/google/protobuf/IntArrayList;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 485
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 488
    .end local v2    # "primitiveList":Lcom/google/protobuf/IntArrayList;
    .end local v3    # "i":I
    :cond_1
    goto :goto_2

    .line 489
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 490
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 489
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 493
    .end local v2    # "i":I
    :cond_3
    :goto_2
    return v1
.end method

.method static computeSizeInt64List(ILjava/util/List;Z)I
    .locals 4
    .param p0, "fieldNumber"    # I
    .param p2, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 353
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 354
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 355
    const/4 v1, 0x0

    return v1

    .line 357
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    move-result v1

    .line 359
    .local v1, "size":I
    if-eqz p2, :cond_1

    .line 360
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 361
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 360
    return v2

    .line 363
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v2, v1

    return v2
.end method

.method static computeSizeInt64ListNoTag(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 332
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 333
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 334
    const/4 v1, 0x0

    return v1

    .line 337
    :cond_0
    const/4 v1, 0x0

    .line 339
    .local v1, "size":I
    instance-of v2, p0, Lcom/google/protobuf/LongArrayList;

    if-eqz v2, :cond_2

    .line 340
    move-object v2, p0

    check-cast v2, Lcom/google/protobuf/LongArrayList;

    .line 341
    .local v2, "primitiveList":Lcom/google/protobuf/LongArrayList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 342
    invoke-virtual {v2, v3}, Lcom/google/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v4

    add-int/2addr v1, v4

    .line 341
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 344
    .end local v2    # "primitiveList":Lcom/google/protobuf/LongArrayList;
    .end local v3    # "i":I
    :cond_1
    goto :goto_2

    .line 345
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 346
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v1, v3

    .line 345
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 349
    .end local v2    # "i":I
    :cond_3
    :goto_2
    return v1
.end method

.method static computeSizeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)I
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "schema"    # Lcom/google/protobuf/Schema;

    .line 669
    instance-of v0, p1, Lcom/google/protobuf/LazyFieldLite;

    if-eqz v0, :cond_0

    .line 670
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LazyFieldLite;

    invoke-static {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->computeLazyFieldSize(ILcom/google/protobuf/LazyFieldLite;)I

    move-result v0

    return v0

    .line 672
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {p0, v0, p2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I

    move-result v0

    return v0
.end method

.method static computeSizeMessageList(ILjava/util/List;)I
    .locals 5
    .param p0, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 677
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 678
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 679
    const/4 v1, 0x0

    return v1

    .line 681
    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    mul-int/2addr v1, v0

    .line 682
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 683
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 684
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lcom/google/protobuf/LazyFieldLite;

    if-eqz v4, :cond_1

    .line 685
    move-object v4, v3

    check-cast v4, Lcom/google/protobuf/LazyFieldLite;

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeLazyFieldSizeNoTag(Lcom/google/protobuf/LazyFieldLite;)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_1

    .line 687
    :cond_1
    move-object v4, v3

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Lcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v1, v4

    .line 682
    .end local v3    # "value":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 690
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method static computeSizeMessageList(ILjava/util/List;Lcom/google/protobuf/Schema;)I
    .locals 5
    .param p0, "fieldNumber"    # I
    .param p2, "schema"    # Lcom/google/protobuf/Schema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/protobuf/Schema;",
            ")I"
        }
    .end annotation

    .line 694
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 695
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 696
    const/4 v1, 0x0

    return v1

    .line 698
    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    mul-int/2addr v1, v0

    .line 699
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 700
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 701
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lcom/google/protobuf/LazyFieldLite;

    if-eqz v4, :cond_1

    .line 702
    move-object v4, v3

    check-cast v4, Lcom/google/protobuf/LazyFieldLite;

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeLazyFieldSizeNoTag(Lcom/google/protobuf/LazyFieldLite;)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_1

    .line 704
    :cond_1
    move-object v4, v3

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, p2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I

    move-result v4

    add-int/2addr v1, v4

    .line 699
    .end local v3    # "value":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 707
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method static computeSizeSInt32List(ILjava/util/List;Z)I
    .locals 4
    .param p0, "fieldNumber"    # I
    .param p2, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 569
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 570
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 571
    const/4 v1, 0x0

    return v1

    .line 574
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    move-result v1

    .line 576
    .local v1, "size":I
    if-eqz p2, :cond_1

    .line 577
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 578
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 577
    return v2

    .line 580
    :cond_1
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2
.end method

.method static computeSizeSInt32ListNoTag(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 548
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 549
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 550
    const/4 v1, 0x0

    return v1

    .line 553
    :cond_0
    const/4 v1, 0x0

    .line 555
    .local v1, "size":I
    instance-of v2, p0, Lcom/google/protobuf/IntArrayList;

    if-eqz v2, :cond_2

    .line 556
    move-object v2, p0

    check-cast v2, Lcom/google/protobuf/IntArrayList;

    .line 557
    .local v2, "primitiveList":Lcom/google/protobuf/IntArrayList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 558
    invoke-virtual {v2, v3}, Lcom/google/protobuf/IntArrayList;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 557
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 560
    .end local v2    # "primitiveList":Lcom/google/protobuf/IntArrayList;
    .end local v3    # "i":I
    :cond_1
    goto :goto_2

    .line 561
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 562
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 561
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 565
    .end local v2    # "i":I
    :cond_3
    :goto_2
    return v1
.end method

.method static computeSizeSInt64List(ILjava/util/List;Z)I
    .locals 4
    .param p0, "fieldNumber"    # I
    .param p2, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 425
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 426
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 427
    const/4 v1, 0x0

    return v1

    .line 429
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    move-result v1

    .line 431
    .local v1, "size":I
    if-eqz p2, :cond_1

    .line 432
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 433
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 432
    return v2

    .line 435
    :cond_1
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2
.end method

.method static computeSizeSInt64ListNoTag(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 404
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 405
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 406
    const/4 v1, 0x0

    return v1

    .line 409
    :cond_0
    const/4 v1, 0x0

    .line 411
    .local v1, "size":I
    instance-of v2, p0, Lcom/google/protobuf/LongArrayList;

    if-eqz v2, :cond_2

    .line 412
    move-object v2, p0

    check-cast v2, Lcom/google/protobuf/LongArrayList;

    .line 413
    .local v2, "primitiveList":Lcom/google/protobuf/LongArrayList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 414
    invoke-virtual {v2, v3}, Lcom/google/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result v4

    add-int/2addr v1, v4

    .line 413
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 416
    .end local v2    # "primitiveList":Lcom/google/protobuf/LongArrayList;
    .end local v3    # "i":I
    :cond_1
    goto :goto_2

    .line 417
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 418
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v1, v3

    .line 417
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 421
    .end local v2    # "i":I
    :cond_3
    :goto_2
    return v1
.end method

.method static computeSizeStringList(ILjava/util/List;)I
    .locals 6
    .param p0, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 640
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 641
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 642
    const/4 v1, 0x0

    return v1

    .line 644
    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    mul-int/2addr v1, v0

    .line 645
    .local v1, "size":I
    instance-of v2, p1, Lcom/google/protobuf/LazyStringList;

    if-eqz v2, :cond_3

    .line 646
    move-object v2, p1

    check-cast v2, Lcom/google/protobuf/LazyStringList;

    .line 647
    .local v2, "lazyList":Lcom/google/protobuf/LazyStringList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 648
    invoke-interface {v2, v3}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v4

    .line 649
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Lcom/google/protobuf/ByteString;

    if-eqz v5, :cond_1

    .line 650
    move-object v5, v4

    check-cast v5, Lcom/google/protobuf/ByteString;

    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_1

    .line 652
    :cond_1
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 647
    .end local v4    # "value":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 655
    .end local v2    # "lazyList":Lcom/google/protobuf/LazyStringList;
    .end local v3    # "i":I
    :cond_2
    goto :goto_4

    .line 656
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_5

    .line 657
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 658
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lcom/google/protobuf/ByteString;

    if-eqz v4, :cond_4

    .line 659
    move-object v4, v3

    check-cast v4, Lcom/google/protobuf/ByteString;

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_3

    .line 661
    :cond_4
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    .line 656
    .end local v3    # "value":Ljava/lang/Object;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 665
    .end local v2    # "i":I
    :cond_5
    :goto_4
    return v1
.end method

.method static computeSizeUInt32List(ILjava/util/List;Z)I
    .locals 4
    .param p0, "fieldNumber"    # I
    .param p2, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 533
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 534
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 535
    const/4 v1, 0x0

    return v1

    .line 537
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    move-result v1

    .line 539
    .local v1, "size":I
    if-eqz p2, :cond_1

    .line 540
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 541
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 540
    return v2

    .line 543
    :cond_1
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2
.end method

.method static computeSizeUInt32ListNoTag(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 512
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 513
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 514
    const/4 v1, 0x0

    return v1

    .line 517
    :cond_0
    const/4 v1, 0x0

    .line 519
    .local v1, "size":I
    instance-of v2, p0, Lcom/google/protobuf/IntArrayList;

    if-eqz v2, :cond_2

    .line 520
    move-object v2, p0

    check-cast v2, Lcom/google/protobuf/IntArrayList;

    .line 521
    .local v2, "primitiveList":Lcom/google/protobuf/IntArrayList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 522
    invoke-virtual {v2, v3}, Lcom/google/protobuf/IntArrayList;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 521
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 524
    .end local v2    # "primitiveList":Lcom/google/protobuf/IntArrayList;
    .end local v3    # "i":I
    :cond_1
    goto :goto_2

    .line 525
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 526
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 525
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 529
    .end local v2    # "i":I
    :cond_3
    :goto_2
    return v1
.end method

.method static computeSizeUInt64List(ILjava/util/List;Z)I
    .locals 4
    .param p0, "fieldNumber"    # I
    .param p2, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 389
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 390
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 391
    const/4 v1, 0x0

    return v1

    .line 393
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    move-result v1

    .line 395
    .local v1, "size":I
    if-eqz p2, :cond_1

    .line 396
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 397
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 396
    return v2

    .line 399
    :cond_1
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2
.end method

.method static computeSizeUInt64ListNoTag(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 368
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 369
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 370
    const/4 v1, 0x0

    return v1

    .line 373
    :cond_0
    const/4 v1, 0x0

    .line 375
    .local v1, "size":I
    instance-of v2, p0, Lcom/google/protobuf/LongArrayList;

    if-eqz v2, :cond_2

    .line 376
    move-object v2, p0

    check-cast v2, Lcom/google/protobuf/LongArrayList;

    .line 377
    .local v2, "primitiveList":Lcom/google/protobuf/LongArrayList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 378
    invoke-virtual {v2, v3}, Lcom/google/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v4

    add-int/2addr v1, v4

    .line 377
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 380
    .end local v2    # "primitiveList":Lcom/google/protobuf/LongArrayList;
    .end local v3    # "i":I
    :cond_1
    goto :goto_2

    .line 381
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 382
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v1, v3

    .line 381
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 385
    .end local v2    # "i":I
    :cond_3
    :goto_2
    return v1
.end method

.method static filterUnknownEnumList(ILjava/util/List;Lcom/google/protobuf/Internal$EnumLiteMap;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .locals 5
    .param p0, "number"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "*>;TUB;",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 909
    .local p1, "enumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "enumMap":Lcom/google/protobuf/Internal$EnumLiteMap;, "Lcom/google/protobuf/Internal$EnumLiteMap<*>;"
    .local p3, "unknownFields":Ljava/lang/Object;, "TUB;"
    .local p4, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    if-nez p2, :cond_0

    .line 910
    return-object p3

    .line 913
    :cond_0
    instance-of v0, p1, Ljava/util/RandomAccess;

    if-eqz v0, :cond_5

    .line 914
    const/4 v0, 0x0

    .line 915
    .local v0, "writePos":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 916
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "readPos":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 917
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 918
    .local v3, "enumValue":I
    invoke-interface {p2, v3}, Lcom/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 919
    if-eq v2, v0, :cond_1

    .line 920
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 922
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 924
    :cond_2
    invoke-static {p0, v3, p3, p4}, Lcom/google/protobuf/SchemaUtil;->storeUnknownEnum(IILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p3

    .line 916
    .end local v3    # "enumValue":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 927
    .end local v2    # "readPos":I
    :cond_3
    if-eq v0, v1, :cond_4

    .line 928
    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 930
    .end local v0    # "writePos":I
    .end local v1    # "size":I
    :cond_4
    goto :goto_3

    .line 931
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 932
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 933
    .local v1, "enumValue":I
    invoke-interface {p2, v1}, Lcom/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;

    move-result-object v2

    if-nez v2, :cond_6

    .line 934
    invoke-static {p0, v1, p3, p4}, Lcom/google/protobuf/SchemaUtil;->storeUnknownEnum(IILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p3

    .line 935
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 937
    .end local v1    # "enumValue":I
    :cond_6
    goto :goto_2

    .line 939
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_7
    :goto_3
    return-object p3
.end method

.method static filterUnknownEnumList(ILjava/util/List;Lcom/google/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .locals 5
    .param p0, "number"    # I
    .param p2, "enumVerifier"    # Lcom/google/protobuf/Internal$EnumVerifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/protobuf/Internal$EnumVerifier;",
            "TUB;",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 949
    .local p1, "enumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "unknownFields":Ljava/lang/Object;, "TUB;"
    .local p4, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    if-nez p2, :cond_0

    .line 950
    return-object p3

    .line 953
    :cond_0
    instance-of v0, p1, Ljava/util/RandomAccess;

    if-eqz v0, :cond_5

    .line 954
    const/4 v0, 0x0

    .line 955
    .local v0, "writePos":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 956
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "readPos":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 957
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 958
    .local v3, "enumValue":I
    invoke-interface {p2, v3}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 959
    if-eq v2, v0, :cond_1

    .line 960
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 962
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 964
    :cond_2
    invoke-static {p0, v3, p3, p4}, Lcom/google/protobuf/SchemaUtil;->storeUnknownEnum(IILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p3

    .line 956
    .end local v3    # "enumValue":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 967
    .end local v2    # "readPos":I
    :cond_3
    if-eq v0, v1, :cond_4

    .line 968
    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 970
    .end local v0    # "writePos":I
    .end local v1    # "size":I
    :cond_4
    goto :goto_3

    .line 971
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 972
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 973
    .local v1, "enumValue":I
    invoke-interface {p2, v1}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 974
    invoke-static {p0, v1, p3, p4}, Lcom/google/protobuf/SchemaUtil;->storeUnknownEnum(IILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p3

    .line 975
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 977
    .end local v1    # "enumValue":I
    :cond_6
    goto :goto_2

    .line 979
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_7
    :goto_3
    return-object p3
.end method

.method private static getGeneratedMessageClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 811
    :try_start_0
    const-string v0, "com.google.protobuf.GeneratedMessageV3"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 812
    :catchall_0
    move-exception v0

    .line 813
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method

.method static getMapDefaultEntry(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 827
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 828
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/google/protobuf/SchemaUtil;->toCamelCase(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "DefaultEntryHolder"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 829
    .local v0, "holder":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 830
    .local v2, "fields":[Ljava/lang/reflect/Field;
    array-length v3, v2

    if-ne v3, v1, :cond_0

    .line 837
    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-static {v1}, Lcom/google/protobuf/UnsafeUtil;->getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 831
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to look up map field default entry holder class for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 835
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p1    # "name":Ljava/lang/String;
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    .end local v0    # "holder":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .restart local p0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 839
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getUnknownFieldSetSchema(Z)Lcom/google/protobuf/UnknownFieldSchema;
    .locals 6
    .param p0, "proto3"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation

    .line 799
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/google/protobuf/SchemaUtil;->getUnknownFieldSetSchemaClass()Ljava/lang/Class;

    move-result-object v1

    .line 800
    .local v1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_0

    .line 801
    return-object v0

    .line 803
    :cond_0
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UnknownFieldSchema;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 804
    .end local v1    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v1

    .line 805
    .local v1, "t":Ljava/lang/Throwable;
    return-object v0
.end method

.method private static getUnknownFieldSetSchemaClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 819
    :try_start_0
    const-string v0, "com.google.protobuf.UnknownFieldSetSchema"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 820
    :catchall_0
    move-exception v0

    .line 821
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method

.method static mergeExtensions(Lcom/google/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "FT::",
            "Lcom/google/protobuf/FieldSet$FieldDescriptorLite<",
            "TFT;>;>(",
            "Lcom/google/protobuf/ExtensionSchema<",
            "TFT;>;TT;TT;)V"
        }
    .end annotation

    .line 887
    .local p0, "schema":Lcom/google/protobuf/ExtensionSchema;, "Lcom/google/protobuf/ExtensionSchema<TFT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p2}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v0

    .line 888
    .local v0, "otherExtensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFT;>;"
    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 889
    invoke-virtual {p0, p1}, Lcom/google/protobuf/ExtensionSchema;->getMutableExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v1

    .line 890
    .local v1, "messageExtensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFT;>;"
    invoke-virtual {v1, v0}, Lcom/google/protobuf/FieldSet;->mergeFrom(Lcom/google/protobuf/FieldSet;)V

    .line 892
    .end local v1    # "messageExtensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFT;>;"
    :cond_0
    return-void
.end method

.method static mergeMap(Lcom/google/protobuf/MapFieldSchema;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 2
    .param p0, "mapFieldSchema"    # Lcom/google/protobuf/MapFieldSchema;
    .param p3, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/MapFieldSchema;",
            "TT;TT;J)V"
        }
    .end annotation

    .line 879
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "o":Ljava/lang/Object;, "TT;"
    nop

    .line 881
    invoke-static {p1, p3, p4}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, p4}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 880
    invoke-interface {p0, v0, v1}, Lcom/google/protobuf/MapFieldSchema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 882
    .local v0, "merged":Ljava/lang/Object;
    invoke-static {p1, p3, p4, v0}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 883
    return-void
.end method

.method static mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;TT;)V"
        }
    .end annotation

    .line 896
    .local p0, "schema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 897
    .local v0, "messageUnknowns":Ljava/lang/Object;, "TUT;"
    invoke-virtual {p0, p2}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 898
    .local v1, "otherUnknowns":Ljava/lang/Object;, "TUT;"
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/UnknownFieldSchema;->merge(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 899
    .local v2, "merged":Ljava/lang/Object;, "TUT;"
    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/UnknownFieldSchema;->setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 900
    return-void
.end method

.method public static proto2UnknownFieldSetSchema()Lcom/google/protobuf/UnknownFieldSchema;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation

    .line 786
    sget-object v0, Lcom/google/protobuf/SchemaUtil;->PROTO2_UNKNOWN_FIELD_SET_SCHEMA:Lcom/google/protobuf/UnknownFieldSchema;

    return-object v0
.end method

.method public static proto3UnknownFieldSetSchema()Lcom/google/protobuf/UnknownFieldSchema;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation

    .line 790
    sget-object v0, Lcom/google/protobuf/SchemaUtil;->PROTO3_UNKNOWN_FIELD_SET_SCHEMA:Lcom/google/protobuf/UnknownFieldSchema;

    return-object v0
.end method

.method public static requireGeneratedMessage(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 62
    .local p0, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    :goto_0
    return-void
.end method

.method static safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 875
    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static shouldUseTableSwitch(III)Z
    .locals 13
    .param p0, "lo"    # I
    .param p1, "hi"    # I
    .param p2, "numFields"    # I

    .line 775
    const/4 v0, 0x1

    const/16 v1, 0x28

    if-ge p1, v1, :cond_0

    .line 776
    return v0

    .line 778
    :cond_0
    int-to-long v1, p1

    int-to-long v3, p0

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 779
    .local v1, "tableSpaceCost":J
    const-wide/16 v3, 0x3

    .line 780
    .local v3, "tableTimeCost":J
    const-wide/16 v5, 0x2

    int-to-long v7, p2

    mul-long/2addr v7, v5

    const-wide/16 v5, 0x3

    add-long/2addr v7, v5

    .line 781
    .local v7, "lookupSpaceCost":J
    int-to-long v9, p2

    add-long/2addr v9, v5

    .line 782
    .local v9, "lookupTimeCost":J
    mul-long v11, v3, v5

    add-long/2addr v11, v1

    mul-long/2addr v5, v9

    add-long/2addr v5, v7

    cmp-long v5, v11, v5

    if-gtz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static shouldUseTableSwitch([Lcom/google/protobuf/FieldInfo;)Z
    .locals 3
    .param p0, "fields"    # [Lcom/google/protobuf/FieldInfo;

    .line 754
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 755
    return v1

    .line 758
    :cond_0
    aget-object v0, p0, v1

    invoke-virtual {v0}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v0

    .line 759
    .local v0, "lo":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p0, v1

    invoke-virtual {v1}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v1

    .line 760
    .local v1, "hi":I
    array-length v2, p0

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/SchemaUtil;->shouldUseTableSwitch(III)Z

    move-result v2

    return v2
.end method

.method static storeUnknownEnum(IILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .locals 2
    .param p0, "number"    # I
    .param p1, "enumValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(IITUB;",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 985
    .local p2, "unknownFields":Ljava/lang/Object;, "TUB;"
    .local p3, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    if-nez p2, :cond_0

    .line 986
    invoke-virtual {p3}, Lcom/google/protobuf/UnknownFieldSchema;->newBuilder()Ljava/lang/Object;

    move-result-object p2

    .line 988
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p3, p2, p0, v0, v1}, Lcom/google/protobuf/UnknownFieldSchema;->addVarint(Ljava/lang/Object;IJ)V

    .line 989
    return-object p2
.end method

.method static toCamelCase(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "capNext"    # Z

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 845
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 846
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 848
    .local v2, "c":C
    const/16 v3, 0x61

    if-gt v3, v2, :cond_1

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_1

    .line 849
    if-eqz p1, :cond_0

    .line 850
    add-int/lit8 v3, v2, -0x20

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 852
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 854
    :goto_1
    const/4 p1, 0x0

    goto :goto_3

    .line 855
    :cond_1
    const/16 v3, 0x41

    if-gt v3, v2, :cond_3

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_3

    .line 856
    if-nez v1, :cond_2

    if-nez p1, :cond_2

    .line 858
    add-int/lit8 v3, v2, 0x20

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 860
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 862
    :goto_2
    const/4 p1, 0x0

    goto :goto_3

    .line 863
    :cond_3
    const/16 v3, 0x30

    if-gt v3, v2, :cond_4

    const/16 v3, 0x39

    if-gt v2, v3, :cond_4

    .line 864
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 865
    const/4 p1, 0x1

    goto :goto_3

    .line 867
    :cond_4
    const/4 p1, 0x1

    .line 845
    .end local v2    # "c":C
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 870
    .end local v1    # "i":I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static unknownFieldSetLiteSchema()Lcom/google/protobuf/UnknownFieldSchema;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation

    .line 794
    sget-object v0, Lcom/google/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_LITE_SCHEMA:Lcom/google/protobuf/UnknownFieldSchema;

    return-object v0
.end method

.method public static writeBool(IZLcom/google/protobuf/Writer;)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Z
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    if-eqz p1, :cond_0

    .line 150
    const/4 v0, 0x1

    invoke-interface {p2, p0, v0}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    .line 152
    :cond_0
    return-void
.end method

.method public static writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeBoolList(ILjava/util/List;Z)V

    .line 278
    :cond_0
    return-void
.end method

.method public static writeBytes(ILcom/google/protobuf/ByteString;Lcom/google/protobuf/Writer;)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Lcom/google/protobuf/ByteString;
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 174
    :cond_0
    return-void
.end method

.method public static writeBytesList(ILjava/util/List;Lcom/google/protobuf/Writer;)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/ByteString;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeBytesList(ILjava/util/List;)V

    .line 292
    :cond_0
    return-void
.end method

.method public static writeDouble(IDLcom/google/protobuf/Writer;)V
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # D
    .param p3, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {p3, p0, p1, p2}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    .line 74
    :cond_0
    return-void
.end method

.method public static writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeDoubleList(ILjava/util/List;Z)V

    .line 187
    :cond_0
    return-void
.end method

.method public static writeEnum(IILcom/google/protobuf/Writer;)V
    .locals 0
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    if-eqz p1, :cond_0

    .line 144
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    .line 146
    :cond_0
    return-void
.end method

.method public static writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeEnumList(ILjava/util/List;Z)V

    .line 271
    :cond_0
    return-void
.end method

.method public static writeFixed32(IILcom/google/protobuf/Writer;)V
    .locals 0
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    if-eqz p1, :cond_0

    .line 132
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    .line 134
    :cond_0
    return-void
.end method

.method public static writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeFixed32List(ILjava/util/List;Z)V

    .line 257
    :cond_0
    return-void
.end method

.method public static writeFixed64(IJLcom/google/protobuf/Writer;)V
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J
    .param p3, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {p3, p0, p1, p2}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    .line 104
    :cond_0
    return-void
.end method

.method public static writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeFixed64List(ILjava/util/List;Z)V

    .line 222
    :cond_0
    return-void
.end method

.method public static writeFloat(IFLcom/google/protobuf/Writer;)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # F
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    .line 80
    :cond_0
    return-void
.end method

.method public static writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeFloatList(ILjava/util/List;Z)V

    .line 194
    :cond_0
    return-void
.end method

.method public static writeGroupList(ILjava/util/List;Lcom/google/protobuf/Writer;)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeGroupList(ILjava/util/List;)V

    .line 322
    :cond_0
    return-void
.end method

.method public static writeGroupList(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/Schema;)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "schema"    # Lcom/google/protobuf/Schema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/protobuf/Writer;",
            "Lcom/google/protobuf/Schema;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeGroupList(ILjava/util/List;Lcom/google/protobuf/Schema;)V

    .line 329
    :cond_0
    return-void
.end method

.method public static writeInt32(IILcom/google/protobuf/Writer;)V
    .locals 0
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    if-eqz p1, :cond_0

    .line 114
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    .line 116
    :cond_0
    return-void
.end method

.method public static writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeInt32List(ILjava/util/List;Z)V

    .line 236
    :cond_0
    return-void
.end method

.method public static writeInt64(IJLcom/google/protobuf/Writer;)V
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J
    .param p3, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {p3, p0, p1, p2}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    .line 86
    :cond_0
    return-void
.end method

.method public static writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeInt64List(ILjava/util/List;Z)V

    .line 201
    :cond_0
    return-void
.end method

.method public static writeLazyFieldList(ILjava/util/List;Lcom/google/protobuf/Writer;)V
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 312
    .local v1, "item":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lcom/google/protobuf/LazyFieldLite;

    invoke-virtual {v2, p2, p0}, Lcom/google/protobuf/LazyFieldLite;->writeTo(Lcom/google/protobuf/Writer;I)V

    .line 313
    .end local v1    # "item":Ljava/lang/Object;
    goto :goto_0

    .line 315
    :cond_0
    return-void
.end method

.method public static writeMessage(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 0
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    if-eqz p1, :cond_0

    .line 178
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    .line 180
    :cond_0
    return-void
.end method

.method public static writeMessageList(ILjava/util/List;Lcom/google/protobuf/Writer;)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeMessageList(ILjava/util/List;)V

    .line 299
    :cond_0
    return-void
.end method

.method public static writeMessageList(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/Schema;)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "schema"    # Lcom/google/protobuf/Schema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/protobuf/Writer;",
            "Lcom/google/protobuf/Schema;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeMessageList(ILjava/util/List;Lcom/google/protobuf/Schema;)V

    .line 306
    :cond_0
    return-void
.end method

.method public static writeSFixed32(IILcom/google/protobuf/Writer;)V
    .locals 0
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    if-eqz p1, :cond_0

    .line 138
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    .line 140
    :cond_0
    return-void
.end method

.method public static writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeSFixed32List(ILjava/util/List;Z)V

    .line 264
    :cond_0
    return-void
.end method

.method public static writeSFixed64(IJLcom/google/protobuf/Writer;)V
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J
    .param p3, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {p3, p0, p1, p2}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    .line 110
    :cond_0
    return-void
.end method

.method public static writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeSFixed64List(ILjava/util/List;Z)V

    .line 229
    :cond_0
    return-void
.end method

.method public static writeSInt32(IILcom/google/protobuf/Writer;)V
    .locals 0
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    if-eqz p1, :cond_0

    .line 126
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    .line 128
    :cond_0
    return-void
.end method

.method public static writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeSInt32List(ILjava/util/List;Z)V

    .line 250
    :cond_0
    return-void
.end method

.method public static writeSInt64(IJLcom/google/protobuf/Writer;)V
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J
    .param p3, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 96
    invoke-interface {p3, p0, p1, p2}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    .line 98
    :cond_0
    return-void
.end method

.method public static writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeSInt64List(ILjava/util/List;Z)V

    .line 215
    :cond_0
    return-void
.end method

.method public static writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 156
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0, p2}, Lcom/google/protobuf/SchemaUtil;->writeStringInternal(ILjava/lang/String;Lcom/google/protobuf/Writer;)V

    goto :goto_0

    .line 158
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-static {p0, v0, p2}, Lcom/google/protobuf/SchemaUtil;->writeBytes(ILcom/google/protobuf/ByteString;Lcom/google/protobuf/Writer;)V

    .line 160
    :goto_0
    return-void
.end method

.method private static writeStringInternal(ILjava/lang/String;Lcom/google/protobuf/Writer;)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeString(ILjava/lang/String;)V

    .line 167
    :cond_0
    return-void
.end method

.method public static writeStringList(ILjava/util/List;Lcom/google/protobuf/Writer;)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeStringList(ILjava/util/List;)V

    .line 285
    :cond_0
    return-void
.end method

.method public static writeUInt32(IILcom/google/protobuf/Writer;)V
    .locals 0
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    if-eqz p1, :cond_0

    .line 120
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    .line 122
    :cond_0
    return-void
.end method

.method public static writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeUInt32List(ILjava/util/List;Z)V

    .line 243
    :cond_0
    return-void
.end method

.method public static writeUInt64(IJLcom/google/protobuf/Writer;)V
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J
    .param p3, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {p3, p0, p1, p2}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    .line 92
    :cond_0
    return-void
.end method

.method public static writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeUInt64List(ILjava/util/List;Z)V

    .line 208
    :cond_0
    return-void
.end method
