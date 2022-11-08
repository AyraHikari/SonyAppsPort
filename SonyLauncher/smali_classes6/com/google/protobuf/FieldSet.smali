.class final Lcom/google/protobuf/FieldSet;
.super Ljava/lang/Object;
.source "FieldSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/FieldSet$FieldDescriptorLite;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FieldDescriptorType::",
        "Lcom/google/protobuf/FieldSet$FieldDescriptorLite<",
        "TFieldDescriptorType;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/FieldSet;


# instance fields
.field private final fields:Lcom/google/protobuf/SmallSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SmallSortedMap<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private hasLazyField:Z

.field private isImmutable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 102
    new-instance v0, Lcom/google/protobuf/FieldSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/FieldSet;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/FieldSet;->DEFAULT_INSTANCE:Lcom/google/protobuf/FieldSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 80
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/FieldSet;->hasLazyField:Z

    .line 81
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/google/protobuf/SmallSortedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    .line 82
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "dummy"    # Z

    .line 85
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/FieldSet;->hasLazyField:Z

    .line 86
    invoke-static {v0}, Lcom/google/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/google/protobuf/SmallSortedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    .line 87
    invoke-virtual {p0}, Lcom/google/protobuf/FieldSet;->makeImmutable()V

    .line 88
    return-void
.end method

.method private cloneFieldEntry(Ljava/util/Map;Ljava/util/Map$Entry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 201
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TFieldDescriptorType;Ljava/lang/Object;>;"
    .local p2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    .line 202
    .local v0, "key":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 203
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Lcom/google/protobuf/LazyField;

    if-eqz v2, :cond_0

    .line 204
    move-object v2, v1

    check-cast v2, Lcom/google/protobuf/LazyField;

    invoke-virtual {v2}, Lcom/google/protobuf/LazyField;->getValue()Lcom/google/protobuf/MessageLite;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 206
    :cond_0
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :goto_0
    return-void
.end method

.method private cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 498
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 499
    move-object v0, p1

    check-cast v0, [B

    .line 500
    .local v0, "bytes":[B
    array-length v1, v0

    new-array v1, v1, [B

    .line 501
    .local v1, "copy":[B
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 502
    return-object v1

    .line 504
    .end local v0    # "bytes":[B
    .end local v1    # "copy":[B
    :cond_0
    return-object p1
.end method

.method static computeElementSize(Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I
    .locals 2
    .param p0, "type"    # Lcom/google/protobuf/WireFormat$FieldType;
    .param p1, "number"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 803
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    .line 804
    .local v0, "tagSize":I
    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->GROUP:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne p0, v1, :cond_0

    .line 807
    mul-int/lit8 v0, v0, 0x2

    .line 809
    :cond_0
    invoke-static {p0, p2}, Lcom/google/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method static computeElementSizeNoTag(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I
    .locals 2
    .param p0, "type"    # Lcom/google/protobuf/WireFormat$FieldType;
    .param p1, "value"    # Ljava/lang/Object;

    .line 821
    sget-object v0, Lcom/google/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p0}, Lcom/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 880
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 873
    :pswitch_0
    instance-of v0, p1, Lcom/google/protobuf/Internal$EnumLite;

    if-eqz v0, :cond_0

    .line 874
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/Internal$EnumLite;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$EnumLite;->getNumber()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v0

    return v0

    .line 876
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v0

    return v0

    .line 863
    :pswitch_1
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result v0

    return v0

    .line 861
    :pswitch_2
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result v0

    return v0

    .line 859
    :pswitch_3
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed64SizeNoTag(J)I

    move-result v0

    return v0

    .line 857
    :pswitch_4
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed32SizeNoTag(I)I

    move-result v0

    return v0

    .line 855
    :pswitch_5
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v0

    return v0

    .line 843
    :pswitch_6
    instance-of v0, p1, Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_1

    .line 844
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v0

    return v0

    .line 846
    :cond_1
    move-object v0, p1

    check-cast v0, [B

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySizeNoTag([B)I

    move-result v0

    return v0

    .line 849
    :pswitch_7
    instance-of v0, p1, Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_2

    .line 850
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v0

    return v0

    .line 852
    :cond_2
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 866
    :pswitch_8
    instance-of v0, p1, Lcom/google/protobuf/LazyField;

    if-eqz v0, :cond_3

    .line 867
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LazyField;

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeLazyFieldSizeNoTag(Lcom/google/protobuf/LazyFieldLite;)I

    move-result v0

    return v0

    .line 869
    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Lcom/google/protobuf/MessageLite;)I

    move-result v0

    return v0

    .line 841
    :pswitch_9
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSizeNoTag(Lcom/google/protobuf/MessageLite;)I

    move-result v0

    return v0

    .line 839
    :pswitch_a
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSizeNoTag(Z)I

    move-result v0

    return v0

    .line 837
    :pswitch_b
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32SizeNoTag(I)I

    move-result v0

    return v0

    .line 835
    :pswitch_c
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64SizeNoTag(J)I

    move-result v0

    return v0

    .line 833
    :pswitch_d
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v0

    return v0

    .line 831
    :pswitch_e
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v0

    return v0

    .line 829
    :pswitch_f
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v0

    return v0

    .line 827
    :pswitch_10
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSizeNoTag(F)I

    move-result v0

    return v0

    .line 825
    :pswitch_11
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSizeNoTag(D)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static computeFieldSize(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/FieldSet$FieldDescriptorLite<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 885
    .local p0, "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "Lcom/google/protobuf/FieldSet$FieldDescriptorLite<*>;"
    invoke-interface {p0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v0

    .line 886
    .local v0, "type":Lcom/google/protobuf/WireFormat$FieldType;
    invoke-interface {p0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v1

    .line 887
    .local v1, "number":I
    invoke-interface {p0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 888
    invoke-interface {p0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 889
    const/4 v2, 0x0

    .line 890
    .local v2, "dataSize":I
    move-object v3, p1

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 891
    .local v4, "element":Ljava/lang/Object;
    invoke-static {v0, v4}, Lcom/google/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v2, v5

    .line 892
    .end local v4    # "element":Ljava/lang/Object;
    goto :goto_0

    .line 893
    :cond_0
    nop

    .line 894
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 895
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 893
    return v3

    .line 897
    .end local v2    # "dataSize":I
    :cond_1
    const/4 v2, 0x0

    .line 898
    .local v2, "size":I
    move-object v3, p1

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 899
    .restart local v4    # "element":Ljava/lang/Object;
    invoke-static {v0, v1, v4}, Lcom/google/protobuf/FieldSet;->computeElementSize(Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result v5

    add-int/2addr v2, v5

    .line 900
    .end local v4    # "element":Ljava/lang/Object;
    goto :goto_1

    .line 901
    :cond_2
    return v2

    .line 904
    .end local v2    # "size":I
    :cond_3
    invoke-static {v0, v1, p1}, Lcom/google/protobuf/FieldSet;->computeElementSize(Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result v2

    return v2
.end method

.method public static emptySet()Lcom/google/protobuf/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>()",
            "Lcom/google/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 98
    sget-object v0, Lcom/google/protobuf/FieldSet;->DEFAULT_INSTANCE:Lcom/google/protobuf/FieldSet;

    return-object v0
.end method

.method private getMessageSetSerializedSize(Ljava/util/Map$Entry;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 775
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    .line 776
    .local v0, "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 777
    .local v1, "value":Ljava/lang/Object;
    invoke-interface {v0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v2, v3, :cond_1

    .line 778
    invoke-interface {v0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 779
    invoke-interface {v0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 780
    instance-of v2, v1, Lcom/google/protobuf/LazyField;

    if-eqz v2, :cond_0

    .line 781
    nop

    .line 782
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v2

    move-object v3, v1

    check-cast v3, Lcom/google/protobuf/LazyField;

    .line 781
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeLazyFieldMessageSetExtensionSize(ILcom/google/protobuf/LazyFieldLite;)I

    move-result v2

    return v2

    .line 784
    :cond_0
    nop

    .line 785
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v2

    move-object v3, v1

    check-cast v3, Lcom/google/protobuf/MessageLite;

    .line 784
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSetExtensionSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    return v2

    .line 788
    :cond_1
    invoke-static {v0, v1}, Lcom/google/protobuf/FieldSet;->computeFieldSize(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v2

    return v2
.end method

.method static getWireFormatForFieldType(Lcom/google/protobuf/WireFormat$FieldType;Z)I
    .locals 1
    .param p0, "type"    # Lcom/google/protobuf/WireFormat$FieldType;
    .param p1, "isPacked"    # Z

    .line 480
    if-eqz p1, :cond_0

    .line 481
    const/4 v0, 0x2

    return v0

    .line 483
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v0

    return v0
.end method

.method private isInitialized(Ljava/util/Map$Entry;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 449
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    .line 450
    .local v0, "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {v0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_5

    .line 451
    invoke-interface {v0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 452
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    .line 453
    .local v4, "element":Lcom/google/protobuf/MessageLite;
    invoke-interface {v4}, Lcom/google/protobuf/MessageLite;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_0

    .line 454
    return v2

    .line 456
    .end local v4    # "element":Lcom/google/protobuf/MessageLite;
    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_1

    .line 458
    :cond_2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 459
    .local v1, "value":Ljava/lang/Object;
    instance-of v4, v1, Lcom/google/protobuf/MessageLite;

    if-eqz v4, :cond_3

    .line 460
    move-object v4, v1

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-interface {v4}, Lcom/google/protobuf/MessageLite;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_5

    .line 461
    return v2

    .line 463
    :cond_3
    instance-of v2, v1, Lcom/google/protobuf/LazyField;

    if-eqz v2, :cond_4

    .line 464
    return v3

    .line 466
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Wrong object type used with protocol message reflection."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 471
    .end local v1    # "value":Ljava/lang/Object;
    :cond_5
    :goto_1
    return v3
.end method

.method private mergeFromField(Ljava/util/Map$Entry;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 510
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    .line 511
    .local v0, "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 512
    .local v1, "otherValue":Ljava/lang/Object;
    instance-of v2, v1, Lcom/google/protobuf/LazyField;

    if-eqz v2, :cond_0

    .line 513
    move-object v2, v1

    check-cast v2, Lcom/google/protobuf/LazyField;

    invoke-virtual {v2}, Lcom/google/protobuf/LazyField;->getValue()Lcom/google/protobuf/MessageLite;

    move-result-object v1

    .line 516
    :cond_0
    invoke-interface {v0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 517
    invoke-virtual {p0, v0}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v2

    .line 518
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 519
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 521
    :cond_1
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 522
    .local v4, "element":Ljava/lang/Object;
    move-object v5, v2

    check-cast v5, Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/google/protobuf/FieldSet;->cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    .end local v4    # "element":Ljava/lang/Object;
    goto :goto_0

    .line 524
    :cond_2
    iget-object v3, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v3, v0, v2}, Lcom/google/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_2

    :cond_3
    invoke-interface {v0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v2, v3, :cond_5

    .line 526
    invoke-virtual {p0, v0}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v2

    .line 527
    .restart local v2    # "value":Ljava/lang/Object;
    if-nez v2, :cond_4

    .line 528
    iget-object v3, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-direct {p0, v1}, Lcom/google/protobuf/FieldSet;->cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/google/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 531
    :cond_4
    move-object v3, v2

    check-cast v3, Lcom/google/protobuf/MessageLite;

    .line 533
    invoke-interface {v3}, Lcom/google/protobuf/MessageLite;->toBuilder()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-interface {v0, v3, v4}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->internalMergeFrom(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v3

    .line 534
    invoke-interface {v3}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object v2

    .line 536
    iget-object v3, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v3, v0, v2}, Lcom/google/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    .end local v2    # "value":Ljava/lang/Object;
    :goto_1
    goto :goto_2

    .line 539
    :cond_5
    iget-object v2, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-direct {p0, v1}, Lcom/google/protobuf/FieldSet;->cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    :goto_2
    return-void
.end method

.method public static newFieldSet()Lcom/google/protobuf/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>()",
            "Lcom/google/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 92
    new-instance v0, Lcom/google/protobuf/FieldSet;

    invoke-direct {v0}, Lcom/google/protobuf/FieldSet;-><init>()V

    return-object v0
.end method

.method public static readPrimitiveField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "type"    # Lcom/google/protobuf/WireFormat$FieldType;
    .param p2, "checkUtf8"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 559
    if-eqz p2, :cond_0

    .line 560
    sget-object v0, Lcom/google/protobuf/WireFormat$Utf8Validation;->STRICT:Lcom/google/protobuf/WireFormat$Utf8Validation;

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/WireFormat;->readPrimitiveField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/WireFormat$FieldType;Lcom/google/protobuf/WireFormat$Utf8Validation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 562
    :cond_0
    sget-object v0, Lcom/google/protobuf/WireFormat$Utf8Validation;->LOOSE:Lcom/google/protobuf/WireFormat$Utf8Validation;

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/WireFormat;->readPrimitiveField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/WireFormat$FieldType;Lcom/google/protobuf/WireFormat$Utf8Validation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static verifyType(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 4
    .param p0, "type"    # Lcom/google/protobuf/WireFormat$FieldType;
    .param p1, "value"    # Ljava/lang/Object;

    .line 377
    invoke-static {p1}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const/4 v0, 0x0

    .line 380
    .local v0, "isValid":Z
    sget-object v1, Lcom/google/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    invoke-virtual {p0}, Lcom/google/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 408
    :pswitch_0
    instance-of v1, p1, Lcom/google/protobuf/MessageLite;

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/google/protobuf/LazyField;

    if-eqz v1, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    move v0, v2

    goto :goto_0

    .line 404
    :pswitch_1
    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_2

    instance-of v1, p1, Lcom/google/protobuf/Internal$EnumLite;

    if-eqz v1, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    move v0, v2

    .line 405
    goto :goto_0

    .line 400
    :pswitch_2
    instance-of v1, p1, Lcom/google/protobuf/ByteString;

    if-nez v1, :cond_4

    instance-of v1, p1, [B

    if-eqz v1, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    move v0, v2

    .line 401
    goto :goto_0

    .line 397
    :pswitch_3
    instance-of v0, p1, Ljava/lang/String;

    .line 398
    goto :goto_0

    .line 394
    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 395
    goto :goto_0

    .line 391
    :pswitch_5
    instance-of v0, p1, Ljava/lang/Double;

    .line 392
    goto :goto_0

    .line 388
    :pswitch_6
    instance-of v0, p1, Ljava/lang/Float;

    .line 389
    goto :goto_0

    .line 385
    :pswitch_7
    instance-of v0, p1, Ljava/lang/Long;

    .line 386
    goto :goto_0

    .line 382
    :pswitch_8
    instance-of v0, p1, Ljava/lang/Integer;

    .line 383
    nop

    .line 412
    :goto_0
    if-eqz v0, :cond_6

    .line 423
    return-void

    .line 420
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Wrong object type used with protocol message reflection."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static writeElement(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V
    .locals 1
    .param p0, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .param p1, "type"    # Lcom/google/protobuf/WireFormat$FieldType;
    .param p2, "number"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 622
    sget-object v0, Lcom/google/protobuf/WireFormat$FieldType;->GROUP:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne p1, v0, :cond_0

    .line 623
    move-object v0, p3

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    goto :goto_0

    .line 625
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/google/protobuf/WireFormat$FieldType;Z)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 626
    invoke-static {p0, p1, p3}, Lcom/google/protobuf/FieldSet;->writeElementNoTag(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 628
    :goto_0
    return-void
.end method

.method static writeElementNoTag(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 2
    .param p0, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .param p1, "type"    # Lcom/google/protobuf/WireFormat$FieldType;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 641
    sget-object v0, Lcom/google/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Lcom/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 703
    :pswitch_0
    instance-of v0, p2, Lcom/google/protobuf/Internal$EnumLite;

    if-eqz v0, :cond_0

    .line 704
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/Internal$EnumLite;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$EnumLite;->getNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    goto/16 :goto_0

    .line 706
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    goto/16 :goto_0

    .line 699
    :pswitch_1
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeSInt64NoTag(J)V

    .line 700
    goto/16 :goto_0

    .line 696
    :pswitch_2
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeSInt32NoTag(I)V

    .line 697
    goto/16 :goto_0

    .line 693
    :pswitch_3
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeSFixed64NoTag(J)V

    .line 694
    goto/16 :goto_0

    .line 690
    :pswitch_4
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeSFixed32NoTag(I)V

    .line 691
    goto/16 :goto_0

    .line 687
    :pswitch_5
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 688
    goto/16 :goto_0

    .line 680
    :pswitch_6
    instance-of v0, p2, Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_1

    .line 681
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 683
    :cond_1
    move-object v0, p2

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeByteArrayNoTag([B)V

    .line 685
    goto/16 :goto_0

    .line 673
    :pswitch_7
    instance-of v0, p2, Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_2

    .line 674
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 676
    :cond_2
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeStringNoTag(Ljava/lang/String;)V

    .line 678
    goto :goto_0

    .line 670
    :pswitch_8
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessageNoTag(Lcom/google/protobuf/MessageLite;)V

    .line 671
    goto :goto_0

    .line 667
    :pswitch_9
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeGroupNoTag(Lcom/google/protobuf/MessageLite;)V

    .line 668
    goto :goto_0

    .line 664
    :pswitch_a
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBoolNoTag(Z)V

    .line 665
    goto :goto_0

    .line 661
    :pswitch_b
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    .line 662
    goto :goto_0

    .line 658
    :pswitch_c
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    .line 659
    goto :goto_0

    .line 655
    :pswitch_d
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    .line 656
    goto :goto_0

    .line 652
    :pswitch_e
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    .line 653
    goto :goto_0

    .line 649
    :pswitch_f
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64NoTag(J)V

    .line 650
    goto :goto_0

    .line 646
    :pswitch_10
    move-object v0, p2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloatNoTag(F)V

    .line 647
    goto :goto_0

    .line 643
    :pswitch_11
    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDoubleNoTag(D)V

    .line 644
    nop

    .line 710
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static writeField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStream;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/FieldSet$FieldDescriptorLite<",
            "*>;",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/CodedOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 716
    .local p0, "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "Lcom/google/protobuf/FieldSet$FieldDescriptorLite<*>;"
    invoke-interface {p0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v0

    .line 717
    .local v0, "type":Lcom/google/protobuf/WireFormat$FieldType;
    invoke-interface {p0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v1

    .line 718
    .local v1, "number":I
    invoke-interface {p0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 719
    move-object v2, p1

    check-cast v2, Ljava/util/List;

    .line 720
    .local v2, "valueList":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 721
    const/4 v3, 0x2

    invoke-virtual {p2, v1, v3}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 723
    const/4 v3, 0x0

    .line 724
    .local v3, "dataSize":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 725
    .local v5, "element":Ljava/lang/Object;
    invoke-static {v0, v5}, Lcom/google/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v3, v6

    .line 726
    .end local v5    # "element":Ljava/lang/Object;
    goto :goto_0

    .line 727
    :cond_0
    invoke-virtual {p2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 729
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 730
    .restart local v5    # "element":Ljava/lang/Object;
    invoke-static {p2, v0, v5}, Lcom/google/protobuf/FieldSet;->writeElementNoTag(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 731
    .end local v5    # "element":Ljava/lang/Object;
    goto :goto_1

    .line 732
    .end local v3    # "dataSize":I
    :cond_1
    goto :goto_3

    .line 733
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 734
    .local v4, "element":Ljava/lang/Object;
    invoke-static {p2, v0, v1, v4}, Lcom/google/protobuf/FieldSet;->writeElement(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    .line 735
    .end local v4    # "element":Ljava/lang/Object;
    goto :goto_2

    .line 737
    .end local v2    # "valueList":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_3
    :goto_3
    goto :goto_4

    .line 738
    :cond_4
    instance-of v2, p1, Lcom/google/protobuf/LazyField;

    if-eqz v2, :cond_5

    .line 739
    move-object v2, p1

    check-cast v2, Lcom/google/protobuf/LazyField;

    invoke-virtual {v2}, Lcom/google/protobuf/LazyField;->getValue()Lcom/google/protobuf/MessageLite;

    move-result-object v2

    invoke-static {p2, v0, v1, v2}, Lcom/google/protobuf/FieldSet;->writeElement(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    goto :goto_4

    .line 741
    :cond_5
    invoke-static {p2, v0, v1, p1}, Lcom/google/protobuf/FieldSet;->writeElement(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    .line 744
    :goto_4
    return-void
.end method

.method private writeMessageSetTo(Ljava/util/Map$Entry;Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .param p2, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/protobuf/CodedOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 591
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    .line 592
    .local v0, "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {v0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_1

    .line 593
    invoke-interface {v0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 594
    invoke-interface {v0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 595
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 596
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Lcom/google/protobuf/LazyField;

    if-eqz v2, :cond_0

    .line 597
    move-object v2, v1

    check-cast v2, Lcom/google/protobuf/LazyField;

    invoke-virtual {v2}, Lcom/google/protobuf/LazyField;->getValue()Lcom/google/protobuf/MessageLite;

    move-result-object v1

    .line 599
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v2

    move-object v3, v1

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessageSetExtension(ILcom/google/protobuf/MessageLite;)V

    .line 600
    .end local v1    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 601
    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/google/protobuf/FieldSet;->writeField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStream;)V

    .line 603
    :goto_0
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .locals 3
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 350
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/protobuf/FieldSet;->verifyType(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 357
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 359
    .local v0, "existingValue":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 360
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v2, p1, v1}, Lcom/google/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 363
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 366
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    return-void

    .line 351
    .end local v0    # "existingValue":Ljava/lang/Object;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 177
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    iget-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/protobuf/SmallSortedMap;->clear()V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/FieldSet;->hasLazyField:Z

    .line 179
    return-void
.end method

.method public clearField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)V"
        }
    .end annotation

    .line 286
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    iget-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SmallSortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/protobuf/SmallSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/FieldSet;->hasLazyField:Z

    .line 290
    :cond_0
    return-void
.end method

.method public clone()Lcom/google/protobuf/FieldSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/FieldSet<",
            "TFieldDescriptorType;>;"
        }
    .end annotation

    .line 158
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    invoke-static {}, Lcom/google/protobuf/FieldSet;->newFieldSet()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    .line 159
    .local v0, "clone":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/google/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 161
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    .line 162
    .local v3, "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 159
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    .end local v3    # "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/google/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 165
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    .line 166
    .restart local v3    # "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 167
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    .end local v3    # "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    goto :goto_1

    .line 168
    :cond_1
    iget-boolean v1, p0, Lcom/google/protobuf/FieldSet;->hasLazyField:Z

    iput-boolean v1, v0, Lcom/google/protobuf/FieldSet;->hasLazyField:Z

    .line 169
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/FieldSet;->clone()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    return-object v0
.end method

.method descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 227
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    iget-boolean v0, p0, Lcom/google/protobuf/FieldSet;->hasLazyField:Z

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Lcom/google/protobuf/LazyField$LazyIterator;

    iget-object v1, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/google/protobuf/SmallSortedMap;->descendingEntrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyField$LazyIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/protobuf/SmallSortedMap;->descendingEntrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 131
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    if-ne p0, p1, :cond_0

    .line 132
    const/4 v0, 0x1

    return v0

    .line 135
    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/FieldSet;

    if-nez v0, :cond_1

    .line 136
    const/4 v0, 0x0

    return v0

    .line 139
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/FieldSet;

    .line 140
    .local v0, "other":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    iget-object v1, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    iget-object v2, v0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/SmallSortedMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 183
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    iget-boolean v0, p0, Lcom/google/protobuf/FieldSet;->hasLazyField:Z

    if-eqz v0, :cond_3

    .line 184
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/google/protobuf/SmallSortedMap;

    move-result-object v0

    .line 185
    .local v0, "result":Lcom/google/protobuf/SmallSortedMap;, "Lcom/google/protobuf/SmallSortedMap<TFieldDescriptorType;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/google/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 186
    iget-object v2, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/google/protobuf/FieldSet;->cloneFieldEntry(Ljava/util/Map;Ljava/util/Map$Entry;)V

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/google/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 189
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-direct {p0, v0, v2}, Lcom/google/protobuf/FieldSet;->cloneFieldEntry(Ljava/util/Map;Ljava/util/Map$Entry;)V

    .line 190
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    goto :goto_1

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/google/protobuf/SmallSortedMap;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    invoke-virtual {v0}, Lcom/google/protobuf/SmallSortedMap;->makeImmutable()V

    .line 194
    :cond_2
    return-object v0

    .line 196
    .end local v0    # "result":Lcom/google/protobuf/SmallSortedMap;, "Lcom/google/protobuf/SmallSortedMap<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/protobuf/SmallSortedMap;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method public getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 248
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    iget-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 249
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/protobuf/LazyField;

    if-eqz v1, :cond_0

    .line 250
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/LazyField;

    invoke-virtual {v1}, Lcom/google/protobuf/LazyField;->getValue()Lcom/google/protobuf/MessageLite;

    move-result-object v1

    return-object v1

    .line 252
    :cond_0
    return-object v0
.end method

.method public getMessageSetSerializedSize()I
    .locals 4

    .line 764
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v0, 0x0

    .line 765
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/google/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 766
    iget-object v2, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/protobuf/FieldSet;->getMessageSetSerializedSize(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v0, v2

    .line 765
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 768
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/google/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 769
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-direct {p0, v2}, Lcom/google/protobuf/FieldSet;->getMessageSetSerializedSize(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v0, v3

    .line 770
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    goto :goto_1

    .line 771
    :cond_1
    return v0
.end method

.method public getRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;
    .locals 2
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 309
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 316
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 319
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 317
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 310
    .end local v0    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRepeatedFieldCount(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)I"
        }
    .end annotation

    .line 294
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 300
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 301
    const/4 v1, 0x0

    return v1

    .line 303
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    return v1

    .line 295
    .end local v0    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 751
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v0, 0x0

    .line 752
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/google/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 753
    iget-object v2, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 754
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/FieldSet;->computeFieldSize(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 752
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 756
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/google/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 757
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/FieldSet;->computeFieldSize(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 758
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    goto :goto_1

    .line 759
    :cond_1
    return v0
.end method

.method public hasField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)Z"
        }
    .end annotation

    .line 235
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 236
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hasField() can only be called on non-repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 145
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    iget-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/protobuf/SmallSortedMap;->hashCode()I

    move-result v0

    return v0
.end method

.method isEmpty()Z
    .locals 1

    .line 106
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    iget-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/protobuf/SmallSortedMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isImmutable()Z
    .locals 1

    .line 126
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    iget-boolean v0, p0, Lcom/google/protobuf/FieldSet;->isImmutable:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 4

    .line 434
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/google/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 435
    iget-object v1, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/protobuf/FieldSet;->isInitialized(Ljava/util/Map$Entry;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 436
    return v2

    .line 434
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 439
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 440
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-direct {p0, v1}, Lcom/google/protobuf/FieldSet;->isInitialized(Ljava/util/Map$Entry;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 441
    return v2

    .line 443
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_2
    goto :goto_1

    .line 444
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 215
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    iget-boolean v0, p0, Lcom/google/protobuf/FieldSet;->hasLazyField:Z

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Lcom/google/protobuf/LazyField$LazyIterator;

    iget-object v1, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/google/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyField$LazyIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public makeImmutable()V
    .locals 1

    .line 112
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    iget-boolean v0, p0, Lcom/google/protobuf/FieldSet;->isImmutable:Z

    if-eqz v0, :cond_0

    .line 113
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/protobuf/SmallSortedMap;->makeImmutable()V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/FieldSet;->isImmutable:Z

    .line 117
    return-void
.end method

.method public mergeFrom(Lcom/google/protobuf/FieldSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/FieldSet<",
            "TFieldDescriptorType;>;)V"
        }
    .end annotation

    .line 489
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "other":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/google/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 490
    iget-object v1, p1, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/protobuf/FieldSet;->mergeFromField(Ljava/util/Map$Entry;)V

    .line 489
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 492
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p1, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 493
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-direct {p0, v1}, Lcom/google/protobuf/FieldSet;->mergeFromField(Ljava/util/Map$Entry;)V

    .line 494
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    goto :goto_1

    .line 495
    :cond_1
    return-void
.end method

.method public setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .locals 4
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 260
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v0, "newList":Ljava/util/List;
    move-object v1, p2

    check-cast v1, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 270
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 271
    .local v2, "element":Ljava/lang/Object;
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/protobuf/FieldSet;->verifyType(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 272
    .end local v2    # "element":Ljava/lang/Object;
    goto :goto_0

    .line 273
    :cond_0
    move-object p2, v0

    .line 274
    .end local v0    # "newList":Ljava/util/List;
    goto :goto_1

    .line 262
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_2
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/protobuf/FieldSet;->verifyType(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 278
    :goto_1
    instance-of v0, p2, Lcom/google/protobuf/LazyField;

    if-eqz v0, :cond_3

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/FieldSet;->hasLazyField:Z

    .line 281
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    return-void
.end method

.method public setRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V
    .locals 2
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 330
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 336
    .local v0, "list":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 340
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/google/protobuf/FieldSet;->verifyType(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 341
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 342
    return-void

    .line 337
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 331
    .end local v0    # "list":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeMessageSetTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 580
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/google/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/google/protobuf/FieldSet;->writeMessageSetTo(Ljava/util/Map$Entry;Lcom/google/protobuf/CodedOutputStream;)V

    .line 580
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 583
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 584
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-direct {p0, v1, p1}, Lcom/google/protobuf/FieldSet;->writeMessageSetTo(Ljava/util/Map$Entry;Lcom/google/protobuf/CodedOutputStream;)V

    .line 585
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    goto :goto_1

    .line 586
    :cond_1
    return-void
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 569
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/google/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 570
    iget-object v1, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    .line 571
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/google/protobuf/FieldSet;->writeField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStream;)V

    .line 569
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 573
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 574
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/google/protobuf/FieldSet;->writeField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStream;)V

    .line 575
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    goto :goto_1

    .line 576
    :cond_1
    return-void
.end method
