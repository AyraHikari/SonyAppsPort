.class final Lcom/google/protobuf/MessageSchema;
.super Ljava/lang/Object;
.source "MessageSchema.java"

# interfaces
.implements Lcom/google/protobuf/Schema;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Schema<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_INT_ARRAY:[I

.field private static final UNSAFE:Lsun/misc/Unsafe;


# instance fields
.field private final buffer:[I

.field private final checkInitializedCount:I

.field private final defaultInstance:Lcom/google/protobuf/MessageLite;

.field private final extensionSchema:Lcom/google/protobuf/ExtensionSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation
.end field

.field private final hasExtensions:Z

.field private final intArray:[I

.field private final listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

.field private final lite:Z

.field private final mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

.field private final maxFieldNumber:I

.field private final minFieldNumber:I

.field private final newInstanceSchema:Lcom/google/protobuf/NewInstanceSchema;

.field private final objects:[Ljava/lang/Object;

.field private final proto3:Z

.field private final repeatedFieldOffsetStart:I

.field private final unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field

.field private final useCachedSizeField:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 92
    new-array v0, v0, [I

    sput-object v0, Lcom/google/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    .line 101
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/protobuf/MessageLite;ZZ[IIILcom/google/protobuf/NewInstanceSchema;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/protobuf/MessageLite;",
            "ZZ[III",
            "Lcom/google/protobuf/NewInstanceSchema;",
            "Lcom/google/protobuf/ListFieldSchema;",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/google/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/google/protobuf/MapFieldSchema;",
            ")V"
        }
    .end annotation

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 191
    iput-object p2, p0, Lcom/google/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    .line 192
    iput p3, p0, Lcom/google/protobuf/MessageSchema;->minFieldNumber:I

    .line 193
    iput p4, p0, Lcom/google/protobuf/MessageSchema;->maxFieldNumber:I

    .line 195
    instance-of p1, p5, Lcom/google/protobuf/GeneratedMessageLite;

    iput-boolean p1, p0, Lcom/google/protobuf/MessageSchema;->lite:Z

    .line 196
    iput-boolean p6, p0, Lcom/google/protobuf/MessageSchema;->proto3:Z

    if-eqz p14, :cond_0

    .line 197
    invoke-virtual {p14, p5}, Lcom/google/protobuf/ExtensionSchema;->hasExtensions(Lcom/google/protobuf/MessageLite;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    .line 198
    iput-boolean p7, p0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 200
    iput-object p8, p0, Lcom/google/protobuf/MessageSchema;->intArray:[I

    .line 201
    iput p9, p0, Lcom/google/protobuf/MessageSchema;->checkInitializedCount:I

    .line 202
    iput p10, p0, Lcom/google/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    .line 204
    iput-object p11, p0, Lcom/google/protobuf/MessageSchema;->newInstanceSchema:Lcom/google/protobuf/NewInstanceSchema;

    .line 205
    iput-object p12, p0, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 206
    iput-object p13, p0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    .line 207
    iput-object p14, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    .line 208
    iput-object p5, p0, Lcom/google/protobuf/MessageSchema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    .line 209
    iput-object p15, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    return-void
.end method

.method private arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 5744
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static booleanAt(Ljava/lang/Object;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 5719
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method private decodeMapEntry([BIILcom/google/protobuf/MapEntryLite$Metadata;Ljava/util/Map;Lcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([BII",
            "Lcom/google/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v7, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v0, p2

    move-object/from16 v10, p6

    .line 4419
    invoke-static {p1, v0, v10}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4420
    iget v1, v10, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-ltz v1, :cond_4

    sub-int v2, v8, v0

    if-gt v1, v2, :cond_4

    add-int v11, v0, v1

    .line 4425
    iget-object v1, v9, Lcom/google/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    .line 4426
    iget-object v2, v9, Lcom/google/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    move-object v12, v1

    move-object v13, v2

    :goto_0
    if-ge v0, v11, :cond_2

    add-int/lit8 v1, v0, 0x1

    .line 4428
    aget-byte v0, v7, v0

    if-gez v0, :cond_0

    .line 4430
    invoke-static {v0, p1, v1, v10}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32(I[BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4431
    iget v1, v10, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    move v2, v0

    move v0, v1

    goto :goto_1

    :cond_0
    move v2, v1

    :goto_1
    ushr-int/lit8 v1, v0, 0x3

    and-int/lit8 v3, v0, 0x7

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 4445
    :pswitch_0
    iget-object v1, v9, Lcom/google/protobuf/MapEntryLite$Metadata;->valueType:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/google/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v1

    if-ne v3, v1, :cond_1

    .line 4446
    iget-object v4, v9, Lcom/google/protobuf/MapEntryLite$Metadata;->valueType:Lcom/google/protobuf/WireFormat$FieldType;

    iget-object v0, v9, Lcom/google/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 4452
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p3

    move-object/from16 v6, p6

    .line 4447
    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/MessageSchema;->decodeMapEntryValue([BIILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4454
    iget-object v13, v10, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    goto :goto_0

    .line 4437
    :pswitch_1
    iget-object v1, v9, Lcom/google/protobuf/MapEntryLite$Metadata;->keyType:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/google/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v1

    if-ne v3, v1, :cond_1

    .line 4438
    iget-object v4, v9, Lcom/google/protobuf/MapEntryLite$Metadata;->keyType:Lcom/google/protobuf/WireFormat$FieldType;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p3

    move-object/from16 v6, p6

    .line 4439
    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/MessageSchema;->decodeMapEntryValue([BIILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4440
    iget-object v12, v10, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    goto :goto_0

    .line 4461
    :cond_1
    :goto_2
    invoke-static {v0, p1, v2, v8, v10}, Lcom/google/protobuf/ArrayDecoders;->skipField(I[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto :goto_0

    :cond_2
    if-ne v0, v11, :cond_3

    move-object/from16 v0, p5

    .line 4466
    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v11

    .line 4464
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 4422
    :cond_4
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private decodeMapEntryValue([BIILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class<",
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

    .line 4351
    sget-object v0, Lcom/google/protobuf/MessageSchema$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, v0, p4

    packed-switch p4, :pswitch_data_0

    .line 4405
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4402
    :pswitch_0
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/ArrayDecoders;->decodeStringRequireUtf8([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    goto/16 :goto_1

    .line 4398
    :pswitch_1
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 4399
    iget-wide p2, p6, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {p2, p3}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p6, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    goto/16 :goto_1

    .line 4394
    :pswitch_2
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 4395
    iget p2, p6, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {p2}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p6, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    goto/16 :goto_1

    .line 4391
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object p4

    invoke-virtual {p4, p5}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object p4

    .line 4390
    invoke-static {p4, p1, p2, p3, p6}, Lcom/google/protobuf/ArrayDecoders;->decodeMessageField(Lcom/google/protobuf/Schema;[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    goto :goto_1

    .line 4385
    :pswitch_4
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 4386
    iget-wide p2, p6, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p6, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    goto :goto_1

    .line 4380
    :pswitch_5
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 4381
    iget p2, p6, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p6, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    goto :goto_1

    .line 4374
    :pswitch_6
    invoke-static {p1, p2}, Lcom/google/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p6, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    add-int/lit8 p1, p2, 0x4

    goto :goto_1

    .line 4370
    :pswitch_7
    invoke-static {p1, p2}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p6, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    add-int/lit8 p1, p2, 0x8

    goto :goto_1

    .line 4365
    :pswitch_8
    invoke-static {p1, p2}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p6, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    add-int/lit8 p1, p2, 0x4

    goto :goto_1

    .line 4360
    :pswitch_9
    invoke-static {p1, p2}, Lcom/google/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p6, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    add-int/lit8 p1, p2, 0x8

    goto :goto_1

    .line 4357
    :pswitch_a
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/ArrayDecoders;->decodeBytes([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    goto :goto_1

    .line 4353
    :pswitch_b
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 4354
    iget-wide p2, p6, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 p4, 0x0

    cmp-long v0, p2, p4

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p6, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    :goto_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static doubleAt(Ljava/lang/Object;J)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 5703
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method private equals(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 807
    invoke-direct {p0, p3}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    .line 808
    invoke-static {v0}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 810
    invoke-static {v0}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    return v4

    .line 927
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->isOneofCaseEqual(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 929
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 928
    invoke-static {p1, p2}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 908
    :pswitch_1
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 907
    invoke-static {p1, p2}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 905
    :pswitch_2
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 904
    invoke-static {p1, p2}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 868
    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 870
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 869
    invoke-static {p1, p2}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3

    .line 865
    :pswitch_4
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 866
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p3, v5, p1

    if-nez p3, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3

    .line 862
    :pswitch_5
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 863
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3

    .line 859
    :pswitch_6
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 860
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p3, v5, p1

    if-nez p3, :cond_4

    const/4 v3, 0x1

    :cond_4
    return v3

    .line 856
    :pswitch_7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 857
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_5

    const/4 v3, 0x1

    :cond_5
    return v3

    .line 853
    :pswitch_8
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 854
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_6

    const/4 v3, 0x1

    :cond_6
    return v3

    .line 850
    :pswitch_9
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 851
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_7

    const/4 v3, 0x1

    :cond_7
    return v3

    .line 846
    :pswitch_a
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 848
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 847
    invoke-static {p1, p2}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 v3, 0x1

    :cond_8
    return v3

    .line 842
    :pswitch_b
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 844
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 843
    invoke-static {p1, p2}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 v3, 0x1

    :cond_9
    return v3

    .line 838
    :pswitch_c
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 840
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 839
    invoke-static {p1, p2}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 v3, 0x1

    :cond_a
    return v3

    .line 835
    :pswitch_d
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 836
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result p2

    if-ne p1, p2, :cond_b

    const/4 v3, 0x1

    :cond_b
    return v3

    .line 832
    :pswitch_e
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 833
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_c

    const/4 v3, 0x1

    :cond_c
    return v3

    .line 829
    :pswitch_f
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 830
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p3, v5, p1

    if-nez p3, :cond_d

    const/4 v3, 0x1

    :cond_d
    return v3

    .line 826
    :pswitch_10
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 827
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_e

    const/4 v3, 0x1

    :cond_e
    return v3

    .line 823
    :pswitch_11
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_f

    .line 824
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p3, v5, p1

    if-nez p3, :cond_f

    const/4 v3, 0x1

    :cond_f
    return v3

    .line 820
    :pswitch_12
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_10

    .line 821
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p3, v5, p1

    if-nez p3, :cond_10

    const/4 v3, 0x1

    :cond_10
    return v3

    .line 816
    :pswitch_13
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_11

    .line 817
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    .line 818
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    if-ne p1, p2, :cond_11

    const/4 v3, 0x1

    :cond_11
    return v3

    .line 812
    :pswitch_14
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 813
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    .line 814
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    cmp-long p3, v5, p1

    if-nez p3, :cond_12

    const/4 v3, 0x1

    :cond_12
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 5452
    invoke-direct {p0, p2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v2

    .line 5453
    invoke-direct {p0, p2}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    .line 5454
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    .line 5458
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v4

    if-nez v4, :cond_1

    return-object p3

    .line 5462
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v0, p1}, Lcom/google/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    move-object v0, p0

    move v1, p2

    move-object v5, p3

    move-object v6, p4

    .line 5465
    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/MessageSchema;->filterUnknownEnumMap(IILjava/util/Map;Lcom/google/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final filterUnknownEnumMap(IILjava/util/Map;Lcom/google/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/protobuf/Internal$EnumVerifier;",
            "TUB;",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 5478
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 5479
    invoke-direct {p0, p1}, Lcom/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$Metadata;

    move-result-object p1

    .line 5480
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5481
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5482
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p4, v1}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p5, :cond_1

    .line 5484
    invoke-virtual {p6}, Lcom/google/protobuf/UnknownFieldSchema;->newBuilder()Ljava/lang/Object;

    move-result-object p5

    .line 5487
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/MapEntryLite;->computeSerializedSize(Lcom/google/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 5488
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->newCodedBuilder(I)Lcom/google/protobuf/ByteString$CodedBuilder;

    move-result-object v1

    .line 5489
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString$CodedBuilder;->getCodedOutput()Lcom/google/protobuf/CodedOutputStream;

    move-result-object v2

    .line 5491
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, p1, v3, v0}, Lcom/google/protobuf/MapEntryLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5496
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString$CodedBuilder;->build()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p6, p5, p2, v0}, Lcom/google/protobuf/UnknownFieldSchema;->addLengthDelimited(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V

    .line 5497
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5494
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    return-object p5
.end method

.method private static floatAt(Ljava/lang/Object;J)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 5707
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method private getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 4857
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/protobuf/Internal$EnumVerifier;

    return-object p1
.end method

.method private getMapFieldDefaultEntry(I)Ljava/lang/Object;
    .locals 1

    .line 4853
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    aget-object p1, v0, p1

    return-object p1
.end method

.method private getMessageFieldSchema(I)Lcom/google/protobuf/Schema;
    .locals 3

    .line 4842
    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    .line 4843
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/protobuf/Schema;

    if-eqz v0, :cond_0

    return-object v0

    .line 4847
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v0

    .line 4848
    iget-object v1, p0, Lcom/google/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method static getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 2

    .line 4334
    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 4335
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4336
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->newInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v0

    .line 4337
    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    :cond_0
    return-object v0
.end method

.method private getSerializedSizeProto2(Ljava/lang/Object;)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1416
    sget-object v2, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 1419
    :goto_0
    iget-object v8, v0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    array-length v8, v8

    if-ge v4, v8, :cond_14

    .line 1420
    invoke-direct {v0, v4}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v8

    .line 1421
    invoke-direct {v0, v4}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    .line 1423
    invoke-static {v8}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v10

    const/16 v11, 0x11

    const v12, 0xfffff

    const/4 v13, 0x1

    if-gt v10, v11, :cond_1

    .line 1427
    iget-object v11, v0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v14, v4, 0x2

    aget v11, v11, v14

    and-int/2addr v12, v11

    ushr-int/lit8 v14, v11, 0x14

    shl-int v14, v13, v14

    if-eq v12, v6, :cond_0

    int-to-long v6, v12

    .line 1432
    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    move v6, v12

    :cond_0
    move v15, v14

    goto :goto_1

    .line 1434
    :cond_1
    iget-boolean v11, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v11, :cond_2

    sget-object v11, Lcom/google/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 1435
    invoke-virtual {v11}, Lcom/google/protobuf/FieldType;->id()I

    move-result v11

    if-lt v10, v11, :cond_2

    sget-object v11, Lcom/google/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 1436
    invoke-virtual {v11}, Lcom/google/protobuf/FieldType;->id()I

    move-result v11

    if-gt v10, v11, :cond_2

    .line 1437
    iget-object v11, v0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v14, v4, 0x2

    aget v11, v11, v14

    and-int/2addr v11, v12

    const/4 v15, 0x0

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    const/4 v15, 0x0

    .line 1440
    :goto_1
    invoke-static {v8}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v13

    const/4 v8, 0x0

    move-wide/from16 v16, v13

    const-wide/16 v12, 0x0

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_2

    .line 1959
    :pswitch_0
    invoke-direct {v0, v1, v9, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_13

    move-wide/from16 v12, v16

    .line 1963
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/protobuf/MessageLite;

    .line 1964
    invoke-direct {v0, v4}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v10

    .line 1961
    invoke-static {v9, v8, v10}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_1
    move-wide/from16 v12, v16

    .line 1954
    invoke-direct {v0, v1, v9, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1955
    invoke-static {v1, v12, v13}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_2
    move-wide/from16 v12, v16

    .line 1949
    invoke-direct {v0, v1, v9, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1950
    invoke-static {v1, v12, v13}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {v9, v8}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    .line 1944
    :pswitch_3
    invoke-direct {v0, v1, v9, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1945
    invoke-static {v9, v12, v13}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    .line 1939
    :pswitch_4
    invoke-direct {v0, v1, v9, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1940
    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_5
    move-wide/from16 v12, v16

    .line 1934
    invoke-direct {v0, v1, v9, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1935
    invoke-static {v1, v12, v13}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {v9, v8}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_6
    move-wide/from16 v12, v16

    .line 1929
    invoke-direct {v0, v1, v9, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1930
    invoke-static {v1, v12, v13}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {v9, v8}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_7
    move-wide/from16 v12, v16

    .line 1922
    invoke-direct {v0, v1, v9, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1925
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/protobuf/ByteString;

    .line 1924
    invoke-static {v9, v8}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_8
    move-wide/from16 v12, v16

    .line 1916
    invoke-direct {v0, v1, v9, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1917
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1918
    invoke-direct {v0, v4}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v10

    invoke-static {v9, v8, v10}, Lcom/google/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_9
    move-wide/from16 v12, v16

    .line 1906
    invoke-direct {v0, v1, v9, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1907
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1908
    instance-of v10, v8, Lcom/google/protobuf/ByteString;

    if-eqz v10, :cond_3

    .line 1909
    check-cast v8, Lcom/google/protobuf/ByteString;

    invoke-static {v9, v8}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    .line 1911
    :cond_3
    check-cast v8, Ljava/lang/String;

    invoke-static {v9, v8}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    .line 1901
    :pswitch_a
    invoke-direct {v0, v1, v9, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_13

    const/4 v8, 0x1

    .line 1902
    invoke-static {v9, v8}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    .line 1896
    :pswitch_b
    invoke-direct {v0, v1, v9, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1897
    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    .line 1891
    :pswitch_c
    invoke-direct {v0, v1, v9, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1892
    invoke-static {v9, v12, v13}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_d
    move-wide/from16 v12, v16

    .line 1886
    invoke-direct {v0, v1, v9, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1887
    invoke-static {v1, v12, v13}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {v9, v8}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_e
    move-wide/from16 v12, v16

    .line 1881
    invoke-direct {v0, v1, v9, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1882
    invoke-static {v1, v12, v13}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_f
    move-wide/from16 v12, v16

    .line 1876
    invoke-direct {v0, v1, v9, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1877
    invoke-static {v1, v12, v13}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    .line 1871
    :pswitch_10
    invoke-direct {v0, v1, v9, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 1872
    invoke-static {v9, v8}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    .line 1866
    :pswitch_11
    invoke-direct {v0, v1, v9, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_13

    const-wide/16 v10, 0x0

    .line 1867
    invoke-static {v9, v10, v11}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_12
    move-wide/from16 v12, v16

    .line 1861
    iget-object v8, v0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 1863
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    invoke-direct {v0, v4}, Lcom/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v11

    .line 1862
    invoke-interface {v8, v9, v10, v11}, Lcom/google/protobuf/MapFieldSchema;->getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_13
    move-wide/from16 v12, v16

    .line 1856
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1857
    invoke-direct {v0, v4}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v10

    .line 1854
    invoke-static {v9, v8, v10}, Lcom/google/protobuf/SchemaUtil;->computeSizeGroupList(ILjava/util/List;Lcom/google/protobuf/Schema;)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_14
    move-wide/from16 v12, v16

    .line 1840
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1839
    invoke-static {v8}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_13

    .line 1842
    iget-boolean v10, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v10, :cond_4

    int-to-long v10, v11

    .line 1843
    invoke-virtual {v2, v1, v10, v11, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1846
    :cond_4
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v9

    .line 1847
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v5, v9

    goto/16 :goto_2

    :pswitch_15
    move-wide/from16 v12, v16

    .line 1824
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1823
    invoke-static {v8}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_13

    .line 1826
    iget-boolean v10, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v10, :cond_5

    int-to-long v10, v11

    .line 1827
    invoke-virtual {v2, v1, v10, v11, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1830
    :cond_5
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v9

    .line 1831
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v5, v9

    goto/16 :goto_2

    :pswitch_16
    move-wide/from16 v12, v16

    .line 1808
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1807
    invoke-static {v8}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_13

    .line 1810
    iget-boolean v10, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v10, :cond_6

    int-to-long v10, v11

    .line 1811
    invoke-virtual {v2, v1, v10, v11, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1814
    :cond_6
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v9

    .line 1815
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v5, v9

    goto/16 :goto_2

    :pswitch_17
    move-wide/from16 v12, v16

    .line 1792
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1791
    invoke-static {v8}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_13

    .line 1794
    iget-boolean v10, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v10, :cond_7

    int-to-long v10, v11

    .line 1795
    invoke-virtual {v2, v1, v10, v11, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1798
    :cond_7
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v9

    .line 1799
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v5, v9

    goto/16 :goto_2

    :pswitch_18
    move-wide/from16 v12, v16

    .line 1776
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1775
    invoke-static {v8}, Lcom/google/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_13

    .line 1778
    iget-boolean v10, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v10, :cond_8

    int-to-long v10, v11

    .line 1779
    invoke-virtual {v2, v1, v10, v11, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1782
    :cond_8
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v9

    .line 1783
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v5, v9

    goto/16 :goto_2

    :pswitch_19
    move-wide/from16 v12, v16

    .line 1760
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1759
    invoke-static {v8}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_13

    .line 1762
    iget-boolean v10, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v10, :cond_9

    int-to-long v10, v11

    .line 1763
    invoke-virtual {v2, v1, v10, v11, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1766
    :cond_9
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v9

    .line 1767
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v5, v9

    goto/16 :goto_2

    :pswitch_1a
    move-wide/from16 v12, v16

    .line 1744
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1743
    invoke-static {v8}, Lcom/google/protobuf/SchemaUtil;->computeSizeBoolListNoTag(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_13

    .line 1746
    iget-boolean v10, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v10, :cond_a

    int-to-long v10, v11

    .line 1747
    invoke-virtual {v2, v1, v10, v11, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1750
    :cond_a
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v9

    .line 1751
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v5, v9

    goto/16 :goto_2

    :pswitch_1b
    move-wide/from16 v12, v16

    .line 1728
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1727
    invoke-static {v8}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_13

    .line 1730
    iget-boolean v10, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v10, :cond_b

    int-to-long v10, v11

    .line 1731
    invoke-virtual {v2, v1, v10, v11, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1734
    :cond_b
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v9

    .line 1735
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v5, v9

    goto/16 :goto_2

    :pswitch_1c
    move-wide/from16 v12, v16

    .line 1712
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1711
    invoke-static {v8}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_13

    .line 1714
    iget-boolean v10, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v10, :cond_c

    int-to-long v10, v11

    .line 1715
    invoke-virtual {v2, v1, v10, v11, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1718
    :cond_c
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v9

    .line 1719
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v5, v9

    goto/16 :goto_2

    :pswitch_1d
    move-wide/from16 v12, v16

    .line 1696
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1695
    invoke-static {v8}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_13

    .line 1698
    iget-boolean v10, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v10, :cond_d

    int-to-long v10, v11

    .line 1699
    invoke-virtual {v2, v1, v10, v11, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1702
    :cond_d
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v9

    .line 1703
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v5, v9

    goto/16 :goto_2

    :pswitch_1e
    move-wide/from16 v12, v16

    .line 1680
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1679
    invoke-static {v8}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_13

    .line 1682
    iget-boolean v10, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v10, :cond_e

    int-to-long v10, v11

    .line 1683
    invoke-virtual {v2, v1, v10, v11, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1686
    :cond_e
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v9

    .line 1687
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v5, v9

    goto/16 :goto_2

    :pswitch_1f
    move-wide/from16 v12, v16

    .line 1664
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1663
    invoke-static {v8}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_13

    .line 1666
    iget-boolean v10, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v10, :cond_f

    int-to-long v10, v11

    .line 1667
    invoke-virtual {v2, v1, v10, v11, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1670
    :cond_f
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v9

    .line 1671
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v5, v9

    goto/16 :goto_2

    :pswitch_20
    move-wide/from16 v12, v16

    .line 1648
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1647
    invoke-static {v8}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_13

    .line 1650
    iget-boolean v10, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v10, :cond_10

    int-to-long v10, v11

    .line 1651
    invoke-virtual {v2, v1, v10, v11, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1654
    :cond_10
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v9

    .line 1655
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v5, v9

    goto/16 :goto_2

    :pswitch_21
    move-wide/from16 v12, v16

    .line 1632
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1631
    invoke-static {v8}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_13

    .line 1634
    iget-boolean v10, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v10, :cond_11

    int-to-long v10, v11

    .line 1635
    invoke-virtual {v2, v1, v10, v11, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1638
    :cond_11
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v9

    .line 1639
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v5, v9

    goto/16 :goto_2

    :pswitch_22
    move-wide/from16 v12, v16

    .line 1626
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1625
    invoke-static {v9, v8, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt64List(ILjava/util/List;Z)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_23
    move-wide/from16 v12, v16

    .line 1621
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1620
    invoke-static {v9, v8, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt32List(ILjava/util/List;Z)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_24
    move-wide/from16 v12, v16

    .line 1616
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1615
    invoke-static {v9, v8, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_25
    move-wide/from16 v12, v16

    .line 1611
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1610
    invoke-static {v9, v8, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_26
    move-wide/from16 v12, v16

    .line 1606
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1605
    invoke-static {v9, v8, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeEnumList(ILjava/util/List;Z)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_27
    move-wide/from16 v12, v16

    .line 1601
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1600
    invoke-static {v9, v8, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt32List(ILjava/util/List;Z)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_28
    move-wide/from16 v12, v16

    .line 1596
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1595
    invoke-static {v9, v8}, Lcom/google/protobuf/SchemaUtil;->computeSizeByteStringList(ILjava/util/List;)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_29
    move-wide/from16 v12, v16

    .line 1591
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {v0, v4}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v10

    .line 1590
    invoke-static {v9, v8, v10}, Lcom/google/protobuf/SchemaUtil;->computeSizeMessageList(ILjava/util/List;Lcom/google/protobuf/Schema;)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_2a
    move-wide/from16 v12, v16

    .line 1586
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8}, Lcom/google/protobuf/SchemaUtil;->computeSizeStringList(ILjava/util/List;)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_2b
    move-wide/from16 v12, v16

    .line 1582
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1581
    invoke-static {v9, v8, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeBoolList(ILjava/util/List;Z)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_2c
    move-wide/from16 v12, v16

    .line 1577
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1576
    invoke-static {v9, v8, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_2d
    move-wide/from16 v12, v16

    .line 1572
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1571
    invoke-static {v9, v8, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_2e
    move-wide/from16 v12, v16

    .line 1567
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1566
    invoke-static {v9, v8, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt32List(ILjava/util/List;Z)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_2f
    move-wide/from16 v12, v16

    .line 1562
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1561
    invoke-static {v9, v8, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt64List(ILjava/util/List;Z)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_30
    move-wide/from16 v12, v16

    .line 1557
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1556
    invoke-static {v9, v8, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt64List(ILjava/util/List;Z)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_31
    move-wide/from16 v12, v16

    .line 1552
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1551
    invoke-static {v9, v8, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_32
    move-wide/from16 v12, v16

    .line 1547
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1546
    invoke-static {v9, v8, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_33
    move-wide/from16 v12, v16

    and-int v8, v7, v15

    if-eqz v8, :cond_13

    .line 1540
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/protobuf/MessageLite;

    .line 1541
    invoke-direct {v0, v4}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v10

    .line 1538
    invoke-static {v9, v8, v10}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_34
    move-wide/from16 v12, v16

    and-int v8, v7, v15

    if-eqz v8, :cond_13

    .line 1532
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_35
    move-wide/from16 v12, v16

    and-int v8, v7, v15

    if-eqz v8, :cond_13

    .line 1527
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {v9, v8}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_36
    and-int v8, v7, v15

    if-eqz v8, :cond_13

    .line 1522
    invoke-static {v9, v12, v13}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_37
    and-int v8, v7, v15

    if-eqz v8, :cond_13

    .line 1517
    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_38
    move-wide/from16 v12, v16

    and-int v8, v7, v15

    if-eqz v8, :cond_13

    .line 1512
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {v9, v8}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_39
    move-wide/from16 v12, v16

    and-int v8, v7, v15

    if-eqz v8, :cond_13

    .line 1507
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {v9, v8}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_3a
    move-wide/from16 v12, v16

    and-int v8, v7, v15

    if-eqz v8, :cond_13

    .line 1501
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/protobuf/ByteString;

    .line 1502
    invoke-static {v9, v8}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_3b
    move-wide/from16 v12, v16

    and-int v8, v7, v15

    if-eqz v8, :cond_13

    .line 1495
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1496
    invoke-direct {v0, v4}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v10

    invoke-static {v9, v8, v10}, Lcom/google/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_3c
    move-wide/from16 v12, v16

    and-int v8, v7, v15

    if-eqz v8, :cond_13

    .line 1485
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1486
    instance-of v10, v8, Lcom/google/protobuf/ByteString;

    if-eqz v10, :cond_12

    .line 1487
    check-cast v8, Lcom/google/protobuf/ByteString;

    invoke-static {v9, v8}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    .line 1489
    :cond_12
    check-cast v8, Ljava/lang/String;

    invoke-static {v9, v8}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_2

    :pswitch_3d
    and-int v8, v7, v15

    if-eqz v8, :cond_13

    const/4 v8, 0x1

    .line 1480
    invoke-static {v9, v8}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v8

    add-int/2addr v5, v8

    goto :goto_2

    :pswitch_3e
    and-int v8, v7, v15

    if-eqz v8, :cond_13

    .line 1475
    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v8

    add-int/2addr v5, v8

    goto :goto_2

    :pswitch_3f
    and-int v8, v7, v15

    if-eqz v8, :cond_13

    .line 1470
    invoke-static {v9, v12, v13}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v8

    add-int/2addr v5, v8

    goto :goto_2

    :pswitch_40
    move-wide/from16 v12, v16

    and-int v8, v7, v15

    if-eqz v8, :cond_13

    .line 1465
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {v9, v8}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v5, v8

    goto :goto_2

    :pswitch_41
    move-wide/from16 v12, v16

    and-int v8, v7, v15

    if-eqz v8, :cond_13

    .line 1460
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v8

    add-int/2addr v5, v8

    goto :goto_2

    :pswitch_42
    move-wide/from16 v12, v16

    and-int v8, v7, v15

    if-eqz v8, :cond_13

    .line 1455
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v8

    add-int/2addr v5, v8

    goto :goto_2

    :pswitch_43
    and-int v10, v7, v15

    if-eqz v10, :cond_13

    .line 1450
    invoke-static {v9, v8}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v8

    add-int/2addr v5, v8

    goto :goto_2

    :pswitch_44
    and-int v8, v7, v15

    if-eqz v8, :cond_13

    const-wide/16 v10, 0x0

    .line 1445
    invoke-static {v9, v10, v11}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v8

    add-int/2addr v5, v8

    :cond_13
    :goto_2
    add-int/lit8 v4, v4, 0x3

    goto/16 :goto_0

    .line 1972
    :cond_14
    iget-object v2, v0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-direct {v0, v2, v1}, Lcom/google/protobuf/MessageSchema;->getUnknownFieldsSerializedSize(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v5, v2

    .line 1974
    iget-boolean v2, v0, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v2, :cond_15

    .line 1975
    iget-object v2, v0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/FieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v5, v1

    :cond_15
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

.method private getSerializedSizeProto3(Ljava/lang/Object;)I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    .line 1982
    sget-object v2, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1984
    :goto_0
    iget-object v6, v0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    array-length v6, v6

    if-ge v4, v6, :cond_12

    .line 1985
    invoke-direct {p0, v4}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v6

    .line 1986
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v7

    .line 1987
    invoke-direct {p0, v4}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v8

    .line 1989
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    .line 1990
    sget-object v6, Lcom/google/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 1991
    invoke-virtual {v6}, Lcom/google/protobuf/FieldType;->id()I

    move-result v6

    if-lt v7, v6, :cond_0

    sget-object v6, Lcom/google/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 1992
    invoke-virtual {v6}, Lcom/google/protobuf/FieldType;->id()I

    move-result v6

    if-gt v7, v6, :cond_0

    iget-object v6, v0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v11, v4, 0x2

    aget v6, v6, v11

    const v11, 0xfffff

    and-int/2addr v6, v11

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    const/4 v11, 0x1

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_2

    .line 2495
    :pswitch_0
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2499
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/MessageLite;

    .line 2500
    invoke-direct {p0, v4}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v7

    .line 2497
    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2490
    :pswitch_1
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2491
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2485
    :pswitch_2
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2486
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2480
    :pswitch_3
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2481
    invoke-static {v8, v13, v14}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2475
    :pswitch_4
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2476
    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2470
    :pswitch_5
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2471
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2465
    :pswitch_6
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2466
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2458
    :pswitch_7
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2461
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/ByteString;

    .line 2460
    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2452
    :pswitch_8
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2453
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 2454
    invoke-direct {p0, v4}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v7

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2442
    :pswitch_9
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2443
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 2444
    instance-of v7, v6, Lcom/google/protobuf/ByteString;

    if-eqz v7, :cond_1

    .line 2445
    check-cast v6, Lcom/google/protobuf/ByteString;

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2447
    :cond_1
    check-cast v6, Ljava/lang/String;

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2437
    :pswitch_a
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2438
    invoke-static {v8, v11}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2432
    :pswitch_b
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2433
    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2427
    :pswitch_c
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2428
    invoke-static {v8, v13, v14}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2422
    :pswitch_d
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2423
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2417
    :pswitch_e
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2418
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2412
    :pswitch_f
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2413
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2407
    :pswitch_10
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2408
    invoke-static {v8, v12}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2402
    :pswitch_11
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    const-wide/16 v6, 0x0

    .line 2403
    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2397
    :pswitch_12
    iget-object v6, v0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 2399
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v4}, Lcom/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v9

    .line 2398
    invoke-interface {v6, v8, v7, v9}, Lcom/google/protobuf/MapFieldSchema;->getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2393
    :pswitch_13
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v4}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v7

    .line 2392
    invoke-static {v8, v6, v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeGroupList(ILjava/util/List;Lcom/google/protobuf/Schema;)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2378
    :pswitch_14
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2377
    invoke-static {v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    .line 2380
    iget-boolean v9, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v9, :cond_2

    int-to-long v9, v6

    .line 2381
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2384
    :cond_2
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    .line 2385
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2362
    :pswitch_15
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2361
    invoke-static {v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    .line 2364
    iget-boolean v9, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v9, :cond_3

    int-to-long v9, v6

    .line 2365
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2368
    :cond_3
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    .line 2369
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2346
    :pswitch_16
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2345
    invoke-static {v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    .line 2348
    iget-boolean v9, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v9, :cond_4

    int-to-long v9, v6

    .line 2349
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2352
    :cond_4
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    .line 2353
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2330
    :pswitch_17
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2329
    invoke-static {v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    .line 2332
    iget-boolean v9, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v9, :cond_5

    int-to-long v9, v6

    .line 2333
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2336
    :cond_5
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    .line 2337
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2314
    :pswitch_18
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2313
    invoke-static {v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    .line 2316
    iget-boolean v9, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v9, :cond_6

    int-to-long v9, v6

    .line 2317
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2320
    :cond_6
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    .line 2321
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2298
    :pswitch_19
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2297
    invoke-static {v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    .line 2300
    iget-boolean v9, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v9, :cond_7

    int-to-long v9, v6

    .line 2301
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2304
    :cond_7
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    .line 2305
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2282
    :pswitch_1a
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2281
    invoke-static {v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeBoolListNoTag(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    .line 2284
    iget-boolean v9, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v9, :cond_8

    int-to-long v9, v6

    .line 2285
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2288
    :cond_8
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    .line 2289
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2266
    :pswitch_1b
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2265
    invoke-static {v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    .line 2268
    iget-boolean v9, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v9, :cond_9

    int-to-long v9, v6

    .line 2269
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2272
    :cond_9
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    .line 2273
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2250
    :pswitch_1c
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2249
    invoke-static {v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    .line 2252
    iget-boolean v9, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v9, :cond_a

    int-to-long v9, v6

    .line 2253
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2256
    :cond_a
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    .line 2257
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2234
    :pswitch_1d
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2233
    invoke-static {v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    .line 2236
    iget-boolean v9, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v9, :cond_b

    int-to-long v9, v6

    .line 2237
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2240
    :cond_b
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    .line 2241
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2218
    :pswitch_1e
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2217
    invoke-static {v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    .line 2220
    iget-boolean v9, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v9, :cond_c

    int-to-long v9, v6

    .line 2221
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2224
    :cond_c
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    .line 2225
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2202
    :pswitch_1f
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2201
    invoke-static {v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    .line 2204
    iget-boolean v9, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v9, :cond_d

    int-to-long v9, v6

    .line 2205
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2208
    :cond_d
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    .line 2209
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2186
    :pswitch_20
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2185
    invoke-static {v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    .line 2188
    iget-boolean v9, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v9, :cond_e

    int-to-long v9, v6

    .line 2189
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2192
    :cond_e
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    .line 2193
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2170
    :pswitch_21
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2169
    invoke-static {v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    .line 2172
    iget-boolean v9, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v9, :cond_f

    int-to-long v9, v6

    .line 2173
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2176
    :cond_f
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    .line 2177
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2164
    :pswitch_22
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt64List(ILjava/util/List;Z)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2160
    :pswitch_23
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    .line 2159
    invoke-static {v8, v6, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt32List(ILjava/util/List;Z)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2155
    :pswitch_24
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2152
    :pswitch_25
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2149
    :pswitch_26
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    .line 2148
    invoke-static {v8, v6, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeEnumList(ILjava/util/List;Z)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2144
    :pswitch_27
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    .line 2143
    invoke-static {v8, v6, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt32List(ILjava/util/List;Z)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2139
    :pswitch_28
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    .line 2138
    invoke-static {v8, v6}, Lcom/google/protobuf/SchemaUtil;->computeSizeByteStringList(ILjava/util/List;)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2134
    :pswitch_29
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v4}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v7

    .line 2133
    invoke-static {v8, v6, v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeMessageList(ILjava/util/List;Lcom/google/protobuf/Schema;)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2129
    :pswitch_2a
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/google/protobuf/SchemaUtil;->computeSizeStringList(ILjava/util/List;)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2126
    :pswitch_2b
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeBoolList(ILjava/util/List;Z)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2123
    :pswitch_2c
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2120
    :pswitch_2d
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2117
    :pswitch_2e
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    .line 2116
    invoke-static {v8, v6, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt32List(ILjava/util/List;Z)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2112
    :pswitch_2f
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt64List(ILjava/util/List;Z)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2108
    :pswitch_30
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt64List(ILjava/util/List;Z)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2104
    :pswitch_31
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2101
    :pswitch_32
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2092
    :pswitch_33
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2096
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/MessageLite;

    .line 2097
    invoke-direct {p0, v4}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v7

    .line 2094
    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2086
    :pswitch_34
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2088
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2081
    :pswitch_35
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2082
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2076
    :pswitch_36
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2077
    invoke-static {v8, v13, v14}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2071
    :pswitch_37
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2072
    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2066
    :pswitch_38
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2067
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2061
    :pswitch_39
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2062
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2055
    :pswitch_3a
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2056
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/ByteString;

    .line 2057
    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2049
    :pswitch_3b
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2050
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 2051
    invoke-direct {p0, v4}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v7

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2039
    :pswitch_3c
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2040
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 2041
    instance-of v7, v6, Lcom/google/protobuf/ByteString;

    if-eqz v7, :cond_10

    .line 2042
    check-cast v6, Lcom/google/protobuf/ByteString;

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2044
    :cond_10
    check-cast v6, Ljava/lang/String;

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_2

    .line 2034
    :pswitch_3d
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2035
    invoke-static {v8, v11}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_2

    .line 2029
    :pswitch_3e
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2030
    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_2

    .line 2024
    :pswitch_3f
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2025
    invoke-static {v8, v13, v14}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_2

    .line 2019
    :pswitch_40
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2020
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_2

    .line 2013
    :pswitch_41
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2015
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_2

    .line 2008
    :pswitch_42
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2009
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_2

    .line 2003
    :pswitch_43
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2004
    invoke-static {v8, v12}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_2

    .line 1998
    :pswitch_44
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    const-wide/16 v6, 0x0

    .line 1999
    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v6

    add-int/2addr v5, v6

    :cond_11
    :goto_2
    add-int/lit8 v4, v4, 0x3

    goto/16 :goto_0

    .line 2508
    :cond_12
    iget-object v2, v0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-direct {p0, v2, v1}, Lcom/google/protobuf/MessageSchema;->getUnknownFieldsSerializedSize(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v5, v1

    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

.method private getUnknownFieldsSerializedSize(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 2515
    invoke-virtual {p1, p2}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 2516
    invoke-virtual {p1, p2}, Lcom/google/protobuf/UnknownFieldSchema;->getSerializedSize(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private static intAt(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 5711
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method private static isEnforceUtf8(I)Z
    .locals 1

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isFieldPresent(Ljava/lang/Object;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 5756
    iget-boolean v0, p0, Lcom/google/protobuf/MessageSchema;->proto3:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    .line 5757
    invoke-direct {p0, p2}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result p2

    .line 5758
    invoke-static {p2}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    .line 5759
    invoke-static {p2}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result p2

    const-wide/16 v5, 0x0

    packed-switch p2, :pswitch_data_0

    .line 5804
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 5802
    :pswitch_0
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 5800
    :pswitch_1
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 5798
    :pswitch_2
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 5796
    :pswitch_3
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    .line 5794
    :pswitch_4
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    .line 5792
    :pswitch_5
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1

    .line 5790
    :pswitch_6
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1

    .line 5788
    :pswitch_7
    sget-object p2, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-static {p1, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 5786
    :pswitch_8
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1

    .line 5777
    :pswitch_9
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 5778
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_8

    .line 5779
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 5780
    :cond_8
    instance-of p2, p1, Lcom/google/protobuf/ByteString;

    if-eqz p2, :cond_9

    .line 5781
    sget-object p2, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-virtual {p2, p1}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 5783
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 5775
    :pswitch_a
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 5773
    :pswitch_b
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_a

    const/4 v1, 0x1

    :cond_a
    return v1

    .line 5771
    :pswitch_c
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1

    .line 5769
    :pswitch_d
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1

    .line 5767
    :pswitch_e
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1

    .line 5765
    :pswitch_f
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1

    .line 5763
    :pswitch_10
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1

    .line 5761
    :pswitch_11
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v3, 0x0

    cmpl-double v0, p1, v3

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1

    .line 5807
    :cond_11
    invoke-direct {p0, p2}, Lcom/google/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result p2

    ushr-int/lit8 v0, p2, 0x14

    shl-int v0, v2, v0

    const v3, 0xfffff

    and-int/2addr p2, v3

    int-to-long v3, p2

    .line 5809
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method private isFieldPresent(Ljava/lang/Object;III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)Z"
        }
    .end annotation

    .line 5748
    iget-boolean v0, p0, Lcom/google/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_0

    .line 5749
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p3, p4

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static isInitialized(Ljava/lang/Object;ILcom/google/protobuf/Schema;)Z
    .locals 2

    .line 5575
    invoke-static {p1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 5576
    invoke-interface {p2, p0}, Lcom/google/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isListInitialized(Ljava/lang/Object;II)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)Z"
        }
    .end annotation

    .line 5581
    invoke-static {p2}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 5582
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 5586
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v1, 0x0

    .line 5587
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5588
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 5589
    invoke-interface {p2, v2}, Lcom/google/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return p3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private isMapInitialized(Ljava/lang/Object;II)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 5597
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-static {p2}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/MapFieldSchema;->forMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 5598
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 5601
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object p2

    .line 5602
    iget-object p3, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {p3, p2}, Lcom/google/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$Metadata;

    move-result-object p2

    .line 5603
    iget-object p2, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->valueType:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {p2}, Lcom/google/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object p2

    sget-object p3, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-eq p2, p3, :cond_1

    return v0

    :cond_1
    const/4 p2, 0x0

    .line 5608
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    if-nez p2, :cond_3

    .line 5610
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object p2

    .line 5612
    :cond_3
    invoke-interface {p2, p3}, Lcom/google/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_4
    return v0
.end method

.method private isOneofCaseEqual(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 5833
    invoke-direct {p0, p3}, Lcom/google/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 5834
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    .line 5835
    invoke-static {p2, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isOneofPresent(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 5828
    invoke-direct {p0, p3}, Lcom/google/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 5829
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static isRequired(I)Z
    .locals 1

    const/high16 v0, 0x10000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static listAt(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 2520
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static longAt(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 5715
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private mergeFromHelper(Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/google/protobuf/FieldSet$FieldDescriptorLite<",
            "TET;>;>(",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;",
            "Lcom/google/protobuf/ExtensionSchema<",
            "TET;>;TT;",
            "Lcom/google/protobuf/Reader;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v0, p4

    move-object/from16 v11, p5

    const/4 v12, 0x0

    move-object v13, v12

    move-object v14, v13

    .line 3862
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->getFieldNumber()I

    move-result v1

    .line 3863
    invoke-direct {v8, v1}, Lcom/google/protobuf/MessageSchema;->positionForFieldNumber(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v3, :cond_c

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_3

    .line 4322
    iget v0, v8, Lcom/google/protobuf/MessageSchema;->checkInitializedCount:I

    :goto_1
    iget v1, v8, Lcom/google/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v0, v1, :cond_1

    .line 4323
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->intArray:[I

    aget v1, v1, v0

    .line 4324
    invoke-direct {v8, v10, v1, v13, v9}, Lcom/google/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-eqz v13, :cond_2

    .line 4327
    invoke-virtual {v9, v10, v13}, Lcom/google/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 3869
    :cond_3
    :try_start_1
    iget-boolean v2, v8, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    if-nez v2, :cond_4

    move-object/from16 v15, p2

    move-object v3, v12

    goto :goto_2

    :cond_4
    iget-object v2, v8, Lcom/google/protobuf/MessageSchema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    move-object/from16 v15, p2

    .line 3872
    invoke-virtual {v15, v11, v2, v1}, Lcom/google/protobuf/ExtensionSchema;->findExtensionByNumber(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_6

    if-nez v14, :cond_5

    .line 3876
    invoke-virtual/range {p2 .. p3}, Lcom/google/protobuf/ExtensionSchema;->getMutableExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v1

    move-object v14, v1

    :cond_5
    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v4, p5

    move-object v5, v14

    move-object v6, v13

    move-object/from16 v7, p1

    .line 3879
    invoke-virtual/range {v1 .. v7}, Lcom/google/protobuf/ExtensionSchema;->parseExtension(Lcom/google/protobuf/Reader;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_0

    .line 3888
    :cond_6
    invoke-virtual {v9, v0}, Lcom/google/protobuf/UnknownFieldSchema;->shouldDiscardUnknownFields(Lcom/google/protobuf/Reader;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3889
    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->skipField()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_0

    :cond_7
    if-nez v13, :cond_8

    .line 3894
    invoke-virtual {v9, v10}, Lcom/google/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 3897
    :cond_8
    invoke-virtual {v9, v13, v0}, Lcom/google/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_9

    goto :goto_0

    .line 4322
    :cond_9
    iget v0, v8, Lcom/google/protobuf/MessageSchema;->checkInitializedCount:I

    :goto_3
    iget v1, v8, Lcom/google/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v0, v1, :cond_a

    .line 4323
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->intArray:[I

    aget v1, v1, v0

    .line 4324
    invoke-direct {v8, v10, v1, v13, v9}, Lcom/google/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    if-eqz v13, :cond_b

    .line 4327
    invoke-virtual {v9, v10, v13}, Lcom/google/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    return-void

    :cond_c
    move-object/from16 v15, p2

    .line 3904
    :try_start_2
    invoke-direct {v8, v3}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3907
    :try_start_3
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    if-nez v13, :cond_14

    .line 4297
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/UnknownFieldSchema;->newBuilder()Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_7

    .line 4290
    :pswitch_0
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    .line 4291
    invoke-direct {v8, v3}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v2

    invoke-interface {v0, v2, v11}, Lcom/google/protobuf/Reader;->readGroupBySchemaWithCheck(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    .line 4288
    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4292
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 4284
    :pswitch_1
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readSInt64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 4283
    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4285
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 4279
    :pswitch_2
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readSInt32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4278
    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4280
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 4274
    :pswitch_3
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readSFixed64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 4273
    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4275
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 4269
    :pswitch_4
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readSFixed32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4268
    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4270
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 4255
    :pswitch_5
    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readEnum()I

    move-result v2

    .line 4256
    invoke-direct {v8, v3}, Lcom/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 4257
    invoke-interface {v5, v2}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_4

    .line 4262
    :cond_d
    invoke-static {v1, v2, v13, v9}, Lcom/google/protobuf/SchemaUtil;->storeUnknownEnum(IILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_0

    .line 4258
    :cond_e
    :goto_4
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4259
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 4250
    :pswitch_6
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readUInt32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4249
    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4251
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 4245
    :pswitch_7
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4246
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 4227
    :pswitch_8
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 4230
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v5

    invoke-static {v10, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 4232
    invoke-direct {v8, v3}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v5

    .line 4231
    invoke-interface {v0, v5, v11}, Lcom/google/protobuf/Reader;->readMessageBySchemaWithCheck(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v5

    .line 4229
    invoke-static {v2, v5}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 4233
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 4237
    :cond_f
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    .line 4239
    invoke-direct {v8, v3}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v2

    .line 4238
    invoke-interface {v0, v2, v11}, Lcom/google/protobuf/Reader;->readMessageBySchemaWithCheck(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    .line 4235
    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4240
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 4242
    :goto_5
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 4223
    :pswitch_9
    invoke-direct {v8, v10, v4, v0}, Lcom/google/protobuf/MessageSchema;->readString(Ljava/lang/Object;ILcom/google/protobuf/Reader;)V

    .line 4224
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 4219
    :pswitch_a
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readBool()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 4218
    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4220
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 4214
    :pswitch_b
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readFixed32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4213
    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4215
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 4209
    :pswitch_c
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readFixed64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 4208
    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4210
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 4204
    :pswitch_d
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readInt32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4203
    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4205
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 4199
    :pswitch_e
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readUInt64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 4198
    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4200
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 4194
    :pswitch_f
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readInt64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 4193
    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4195
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 4189
    :pswitch_10
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readFloat()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 4188
    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4190
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 4184
    :pswitch_11
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 4183
    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4185
    invoke-direct {v8, v10, v1, v3}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 4180
    :pswitch_12
    invoke-direct {v8, v3}, Lcom/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/MessageSchema;->mergeMap(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Reader;)V

    goto/16 :goto_0

    .line 4173
    :pswitch_13
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    .line 4175
    invoke-direct {v8, v3}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v6

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-wide v3, v4

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    .line 4171
    invoke-direct/range {v1 .. v7}, Lcom/google/protobuf/MessageSchema;->readGroupList(Ljava/lang/Object;JLcom/google/protobuf/Reader;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    .line 4166
    :pswitch_14
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4167
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4166
    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->readSInt64List(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4162
    :pswitch_15
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4163
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4162
    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->readSInt32List(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4158
    :pswitch_16
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4159
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4158
    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->readSFixed64List(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4154
    :pswitch_17
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4155
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4154
    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->readSFixed32List(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4141
    :pswitch_18
    iget-object v2, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4142
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    invoke-virtual {v2, v10, v4, v5}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4143
    invoke-interface {v0, v2}, Lcom/google/protobuf/Reader;->readEnumList(Ljava/util/List;)V

    .line 4148
    invoke-direct {v8, v3}, Lcom/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v3

    .line 4145
    invoke-static {v1, v2, v3, v13, v9}, Lcom/google/protobuf/SchemaUtil;->filterUnknownEnumList(ILjava/util/List;Lcom/google/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_0

    .line 4136
    :pswitch_19
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4137
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4136
    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->readUInt32List(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4132
    :pswitch_1a
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4133
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4132
    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->readBoolList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4128
    :pswitch_1b
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4129
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4128
    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->readFixed32List(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4124
    :pswitch_1c
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4125
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4124
    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->readFixed64List(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4120
    :pswitch_1d
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4121
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4120
    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->readInt32List(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4116
    :pswitch_1e
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4117
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4116
    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->readUInt64List(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4112
    :pswitch_1f
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4113
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4112
    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->readInt64List(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4108
    :pswitch_20
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4109
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4108
    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->readFloatList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4104
    :pswitch_21
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4105
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4104
    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->readDoubleList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4100
    :pswitch_22
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4101
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4100
    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->readSInt64List(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4096
    :pswitch_23
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4097
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4096
    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->readSInt32List(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4092
    :pswitch_24
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4093
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4092
    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->readSFixed64List(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4088
    :pswitch_25
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4089
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4088
    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->readSFixed32List(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4075
    :pswitch_26
    iget-object v2, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4076
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    invoke-virtual {v2, v10, v4, v5}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4077
    invoke-interface {v0, v2}, Lcom/google/protobuf/Reader;->readEnumList(Ljava/util/List;)V

    .line 4082
    invoke-direct {v8, v3}, Lcom/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v3

    .line 4079
    invoke-static {v1, v2, v3, v13, v9}, Lcom/google/protobuf/SchemaUtil;->filterUnknownEnumList(ILjava/util/List;Lcom/google/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_0

    .line 4070
    :pswitch_27
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4071
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4070
    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->readUInt32List(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4066
    :pswitch_28
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4067
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4066
    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->readBytesList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4061
    :pswitch_29
    invoke-direct {v8, v3}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move v3, v4

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    .line 4057
    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/MessageSchema;->readMessageList(Ljava/lang/Object;ILcom/google/protobuf/Reader;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    .line 4053
    :pswitch_2a
    invoke-direct {v8, v10, v4, v0}, Lcom/google/protobuf/MessageSchema;->readStringList(Ljava/lang/Object;ILcom/google/protobuf/Reader;)V

    goto/16 :goto_0

    .line 4049
    :pswitch_2b
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4050
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4049
    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->readBoolList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4045
    :pswitch_2c
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4046
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4045
    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->readFixed32List(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4041
    :pswitch_2d
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4042
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4041
    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->readFixed64List(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4037
    :pswitch_2e
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4038
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4037
    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->readInt32List(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4033
    :pswitch_2f
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4034
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4033
    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->readUInt64List(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4029
    :pswitch_30
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4030
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4029
    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->readInt64List(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4025
    :pswitch_31
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4026
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4025
    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->readFloatList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4021
    :pswitch_32
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4022
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4021
    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->readDoubleList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4003
    :pswitch_33
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 4006
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-static {v10, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 4008
    invoke-direct {v8, v3}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v2

    .line 4007
    invoke-interface {v0, v2, v11}, Lcom/google/protobuf/Reader;->readGroupBySchemaWithCheck(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    .line 4005
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4009
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-static {v10, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    .line 4013
    :cond_10
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 4015
    invoke-direct {v8, v3}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v4

    .line 4014
    invoke-interface {v0, v4, v11}, Lcom/google/protobuf/Reader;->readGroupBySchemaWithCheck(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    .line 4011
    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4016
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 3998
    :pswitch_34
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readSInt64()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 3999
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 3994
    :pswitch_35
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readSInt32()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3995
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 3990
    :pswitch_36
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readSFixed64()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 3991
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 3986
    :pswitch_37
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readSFixed32()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3987
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 3973
    :pswitch_38
    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readEnum()I

    move-result v2

    .line 3974
    invoke-direct {v8, v3}, Lcom/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 3975
    invoke-interface {v5, v2}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_6

    .line 3980
    :cond_11
    invoke-static {v1, v2, v13, v9}, Lcom/google/protobuf/SchemaUtil;->storeUnknownEnum(IILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_0

    .line 3976
    :cond_12
    :goto_6
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3977
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 3968
    :pswitch_39
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readUInt32()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3969
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 3964
    :pswitch_3a
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3965
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 3946
    :pswitch_3b
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3949
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-static {v10, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 3951
    invoke-direct {v8, v3}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v2

    .line 3950
    invoke-interface {v0, v2, v11}, Lcom/google/protobuf/Reader;->readMessageBySchemaWithCheck(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    .line 3948
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3952
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-static {v10, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    .line 3956
    :cond_13
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 3958
    invoke-direct {v8, v3}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v4

    .line 3957
    invoke-interface {v0, v4, v11}, Lcom/google/protobuf/Reader;->readMessageBySchemaWithCheck(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    .line 3954
    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3959
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 3941
    :pswitch_3c
    invoke-direct {v8, v10, v4, v0}, Lcom/google/protobuf/MessageSchema;->readString(Ljava/lang/Object;ILcom/google/protobuf/Reader;)V

    .line 3942
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 3937
    :pswitch_3d
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readBool()Z

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    .line 3938
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 3933
    :pswitch_3e
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readFixed32()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3934
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 3929
    :pswitch_3f
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readFixed64()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 3930
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 3925
    :pswitch_40
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readInt32()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3926
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 3921
    :pswitch_41
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readUInt64()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 3922
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 3917
    :pswitch_42
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readInt64()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 3918
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 3913
    :pswitch_43
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readFloat()F

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    .line 3914
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 3909
    :pswitch_44
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readDouble()D

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    .line 3910
    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 4299
    :cond_14
    :goto_7
    invoke-virtual {v9, v13, v0}, Lcom/google/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;)Z

    move-result v1
    :try_end_3
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_0

    .line 4322
    iget v0, v8, Lcom/google/protobuf/MessageSchema;->checkInitializedCount:I

    :goto_8
    iget v1, v8, Lcom/google/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v0, v1, :cond_15

    .line 4323
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->intArray:[I

    aget v1, v1, v0

    .line 4324
    invoke-direct {v8, v10, v1, v13, v9}, Lcom/google/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_15
    if-eqz v13, :cond_16

    .line 4327
    invoke-virtual {v9, v10, v13}, Lcom/google/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    return-void

    .line 4307
    :catch_0
    :try_start_4
    invoke-virtual {v9, v0}, Lcom/google/protobuf/UnknownFieldSchema;->shouldDiscardUnknownFields(Lcom/google/protobuf/Reader;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 4308
    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->skipField()Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v1, :cond_0

    .line 4322
    iget v0, v8, Lcom/google/protobuf/MessageSchema;->checkInitializedCount:I

    :goto_9
    iget v1, v8, Lcom/google/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v0, v1, :cond_17

    .line 4323
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->intArray:[I

    aget v1, v1, v0

    .line 4324
    invoke-direct {v8, v10, v1, v13, v9}, Lcom/google/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_17
    if-eqz v13, :cond_18

    .line 4327
    invoke-virtual {v9, v10, v13}, Lcom/google/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    return-void

    :cond_19
    if-nez v13, :cond_1a

    .line 4313
    :try_start_5
    invoke-virtual {v9, v10}, Lcom/google/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    .line 4315
    :cond_1a
    invoke-virtual {v9, v13, v0}, Lcom/google/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;)Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v1, :cond_0

    .line 4322
    iget v0, v8, Lcom/google/protobuf/MessageSchema;->checkInitializedCount:I

    :goto_a
    iget v1, v8, Lcom/google/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v0, v1, :cond_1b

    .line 4323
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->intArray:[I

    aget v1, v1, v0

    .line 4324
    invoke-direct {v8, v10, v1, v13, v9}, Lcom/google/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1b
    if-eqz v13, :cond_1c

    .line 4327
    invoke-virtual {v9, v10, v13}, Lcom/google/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    return-void

    :catchall_0
    move-exception v0

    .line 4322
    iget v1, v8, Lcom/google/protobuf/MessageSchema;->checkInitializedCount:I

    :goto_b
    iget v2, v8, Lcom/google/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v1, v2, :cond_1d

    .line 4323
    iget-object v2, v8, Lcom/google/protobuf/MessageSchema;->intArray:[I

    aget v2, v2, v1

    .line 4324
    invoke-direct {v8, v10, v2, v13, v9}, Lcom/google/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1d
    if-eqz v13, :cond_1e

    .line 4327
    invoke-virtual {v9, v10, v13}, Lcom/google/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4329
    :cond_1e
    throw v0

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

.method private final mergeMap(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Reader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "Lcom/google/protobuf/Reader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5429
    invoke-direct {p0, p2}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result p2

    invoke-static {p2}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    .line 5430
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 5436
    iget-object p2, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {p2, p3}, Lcom/google/protobuf/MapFieldSchema;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 5437
    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 5438
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v2, p2}, Lcom/google/protobuf/MapFieldSchema;->isImmutable(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5440
    iget-object v2, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v2, p3}, Lcom/google/protobuf/MapFieldSchema;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 5441
    iget-object v3, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v3, v2, p2}, Lcom/google/protobuf/MapFieldSchema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5442
    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p2, v2

    .line 5444
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 5445
    invoke-interface {p1, p2}, Lcom/google/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 5446
    invoke-interface {p2, p3}, Lcom/google/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$Metadata;

    move-result-object p2

    .line 5444
    invoke-interface {p5, p1, p2, p4}, Lcom/google/protobuf/Reader;->readMap(Ljava/util/Map;Lcom/google/protobuf/MapEntryLite$Metadata;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1367
    invoke-direct {p0, p3}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    .line 1368
    invoke-static {v0}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    .line 1370
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 1374
    :cond_0
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 1375
    invoke-static {p2, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 1377
    invoke-static {v2, p2}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 1378
    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1379
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 1381
    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1382
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1387
    invoke-direct {p0, p3}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    .line 1388
    invoke-direct {p0, p3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v1

    .line 1389
    invoke-static {v0}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    .line 1391
    invoke-direct {p0, p2, v1, p3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1395
    :cond_0
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 1396
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 1398
    invoke-static {v0, p2}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 1399
    invoke-static {p1, v2, v3, p2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1400
    invoke-direct {p0, p1, v1, p3}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 1402
    invoke-static {p1, v2, v3, p2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1403
    invoke-direct {p0, p1, v1, p3}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private mergeSingleField(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1184
    invoke-direct {p0, p3}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    .line 1185
    invoke-static {v0}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 1186
    invoke-direct {p0, p3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 1188
    invoke-static {v0}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1359
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 1353
    :pswitch_1
    invoke-direct {p0, p2, v3, p3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1354
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1355
    invoke-direct {p0, p1, v3, p3}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 1344
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 1337
    :pswitch_3
    invoke-direct {p0, p2, v3, p3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1338
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1339
    invoke-direct {p0, p1, v3, p3}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 1326
    :pswitch_4
    iget-object p3, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-static {p3, p1, p2, v1, v2}, Lcom/google/protobuf/SchemaUtil;->mergeMap(Lcom/google/protobuf/MapFieldSchema;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_0

    .line 1323
    :pswitch_5
    iget-object p3, p0, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    invoke-virtual {p3, p1, p2, v1, v2}, Lcom/google/protobuf/ListFieldSchema;->mergeListsAt(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_0

    .line 1289
    :pswitch_6
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 1283
    :pswitch_7
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1284
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1285
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 1277
    :pswitch_8
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1278
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1279
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 1271
    :pswitch_9
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1272
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1273
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 1265
    :pswitch_a
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1266
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1267
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 1259
    :pswitch_b
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1260
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1261
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 1253
    :pswitch_c
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1254
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1255
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 1247
    :pswitch_d
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1248
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1249
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 1244
    :pswitch_e
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 1238
    :pswitch_f
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1239
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1240
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 1232
    :pswitch_10
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1233
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    .line 1234
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 1226
    :pswitch_11
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1227
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1228
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_0

    .line 1220
    :pswitch_12
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1221
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1222
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_0

    .line 1214
    :pswitch_13
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1215
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1216
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_0

    .line 1208
    :pswitch_14
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1209
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1210
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_0

    .line 1202
    :pswitch_15
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1203
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1204
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_0

    .line 1196
    :pswitch_16
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1197
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    .line 1198
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_0

    .line 1190
    :pswitch_17
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1191
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    .line 1192
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static newSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/NewInstanceSchema;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/MessageSchema;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/protobuf/MessageInfo;",
            "Lcom/google/protobuf/NewInstanceSchema;",
            "Lcom/google/protobuf/ListFieldSchema;",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/google/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/google/protobuf/MapFieldSchema;",
            ")",
            "Lcom/google/protobuf/MessageSchema<",
            "TT;>;"
        }
    .end annotation

    .line 220
    instance-of p0, p1, Lcom/google/protobuf/RawMessageInfo;

    if-eqz p0, :cond_0

    .line 221
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/RawMessageInfo;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->newSchemaForRawMessageInfo(Lcom/google/protobuf/RawMessageInfo;Lcom/google/protobuf/NewInstanceSchema;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/MessageSchema;

    move-result-object p0

    return-object p0

    .line 230
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/StructuralMessageInfo;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->newSchemaForMessageInfo(Lcom/google/protobuf/StructuralMessageInfo;Lcom/google/protobuf/NewInstanceSchema;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/MessageSchema;

    move-result-object p0

    return-object p0
.end method

.method static newSchemaForMessageInfo(Lcom/google/protobuf/StructuralMessageInfo;Lcom/google/protobuf/NewInstanceSchema;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/MessageSchema;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/StructuralMessageInfo;",
            "Lcom/google/protobuf/NewInstanceSchema;",
            "Lcom/google/protobuf/ListFieldSchema;",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/google/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/google/protobuf/MapFieldSchema;",
            ")",
            "Lcom/google/protobuf/MessageSchema<",
            "TT;>;"
        }
    .end annotation

    .line 619
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/StructuralMessageInfo;->getSyntax()Lcom/google/protobuf/ProtoSyntax;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/ProtoSyntax;->PROTO3:Lcom/google/protobuf/ProtoSyntax;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 620
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/StructuralMessageInfo;->getFields()[Lcom/google/protobuf/FieldInfo;

    move-result-object v0

    .line 623
    array-length v1, v0

    const/4 v3, 0x0

    if-nez v1, :cond_6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 631
    array-length v1, v0

    mul-int/lit8 v4, v1, 0x3

    .line 633
    new-array v4, v4, [I

    mul-int/lit8 v1, v1, 0x2

    .line 634
    new-array v5, v1, [Ljava/lang/Object;

    .line 638
    array-length v1, v0

    if-gtz v1, :cond_5

    .line 652
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/StructuralMessageInfo;->getCheckInitialized()[I

    move-result-object v1

    if-nez v1, :cond_1

    .line 654
    sget-object v1, Lcom/google/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    .line 659
    :cond_1
    array-length v8, v0

    if-gtz v8, :cond_4

    if-nez v3, :cond_2

    .line 686
    sget-object v0, Lcom/google/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    goto :goto_1

    :cond_2
    move-object v0, v3

    :goto_1
    if-nez v3, :cond_3

    .line 689
    sget-object v3, Lcom/google/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    .line 691
    :cond_3
    array-length v8, v1

    array-length v10, v0

    add-int/2addr v8, v10

    array-length v10, v3

    add-int/2addr v8, v10

    new-array v11, v8, [I

    .line 693
    array-length v8, v1

    invoke-static {v1, v2, v11, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 694
    array-length v8, v1

    array-length v10, v0

    invoke-static {v0, v2, v11, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 696
    array-length v8, v1

    array-length v10, v0

    add-int/2addr v8, v10

    array-length v10, v3

    invoke-static {v3, v2, v11, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 703
    new-instance v2, Lcom/google/protobuf/MessageSchema;

    .line 708
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/StructuralMessageInfo;->getDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v8

    const/4 v10, 0x1

    array-length v12, v1

    array-length v1, v1

    array-length v0, v0

    add-int v13, v1, v0

    move-object v3, v2

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    invoke-direct/range {v3 .. v18}, Lcom/google/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILcom/google/protobuf/MessageLite;ZZ[IIILcom/google/protobuf/NewInstanceSchema;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)V

    return-object v2

    .line 660
    :cond_4
    aget-object v0, v0, v2

    .line 661
    invoke-virtual {v0}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    throw v3

    .line 638
    :cond_5
    aget-object v0, v0, v2

    .line 639
    invoke-virtual {v0}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    throw v3

    .line 627
    :cond_6
    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    throw v3
.end method

.method static newSchemaForRawMessageInfo(Lcom/google/protobuf/RawMessageInfo;Lcom/google/protobuf/NewInstanceSchema;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/MessageSchema;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/RawMessageInfo;",
            "Lcom/google/protobuf/NewInstanceSchema;",
            "Lcom/google/protobuf/ListFieldSchema;",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/google/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/google/protobuf/MapFieldSchema;",
            ")",
            "Lcom/google/protobuf/MessageSchema<",
            "TT;>;"
        }
    .end annotation

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/RawMessageInfo;->getSyntax()Lcom/google/protobuf/ProtoSyntax;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/ProtoSyntax;->PROTO3:Lcom/google/protobuf/ProtoSyntax;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 249
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/RawMessageInfo;->getStringInfo()Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 253
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v6, 0xd800

    if-lt v4, v6, :cond_2

    and-int/lit16 v4, v4, 0x1fff

    move v7, v4

    const/4 v4, 0x1

    const/16 v8, 0xd

    :goto_1
    add-int/lit8 v9, v4, 0x1

    .line 257
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_1

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v8

    or-int/2addr v7, v4

    add-int/lit8 v8, v8, 0xd

    move v4, v9

    goto :goto_1

    :cond_1
    shl-int/2addr v4, v8

    or-int/2addr v4, v7

    goto :goto_2

    :cond_2
    const/4 v9, 0x1

    :goto_2
    add-int/lit8 v7, v9, 0x1

    .line 265
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_4

    and-int/lit16 v8, v8, 0x1fff

    const/16 v9, 0xd

    :goto_3
    add-int/lit8 v11, v7, 0x1

    .line 269
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v8, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v11

    goto :goto_3

    :cond_3
    shl-int/2addr v7, v9

    or-int/2addr v8, v7

    goto :goto_4

    :cond_4
    move v11, v7

    :goto_4
    if-nez v8, :cond_5

    .line 296
    sget-object v7, Lcom/google/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    move-object v12, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    goto/16 :goto_12

    :cond_5
    add-int/lit8 v7, v11, 0x1

    .line 299
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_7

    and-int/lit16 v8, v8, 0x1fff

    const/16 v9, 0xd

    :goto_5
    add-int/lit8 v11, v7, 0x1

    .line 303
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_6

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v8, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v11

    goto :goto_5

    :cond_6
    shl-int/2addr v7, v9

    or-int/2addr v7, v8

    goto :goto_6

    :cond_7
    move v11, v7

    move v7, v8

    :goto_6
    add-int/lit8 v8, v11, 0x1

    .line 311
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_9

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_7
    add-int/lit8 v12, v8, 0x1

    .line 315
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_8

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v11

    or-int/2addr v9, v8

    add-int/lit8 v11, v11, 0xd

    move v8, v12

    goto :goto_7

    :cond_8
    shl-int/2addr v8, v11

    or-int/2addr v9, v8

    goto :goto_8

    :cond_9
    move v12, v8

    :goto_8
    add-int/lit8 v8, v12, 0x1

    .line 323
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_b

    and-int/lit16 v11, v11, 0x1fff

    const/16 v12, 0xd

    :goto_9
    add-int/lit8 v13, v8, 0x1

    .line 327
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_a

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v12

    or-int/2addr v11, v8

    add-int/lit8 v12, v12, 0xd

    move v8, v13

    goto :goto_9

    :cond_a
    shl-int/2addr v8, v12

    or-int/2addr v8, v11

    move v11, v8

    goto :goto_a

    :cond_b
    move v13, v8

    :goto_a
    add-int/lit8 v8, v13, 0x1

    .line 335
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    const/16 v13, 0xd

    :goto_b
    add-int/lit8 v14, v8, 0x1

    .line 339
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_c

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v13

    or-int/2addr v12, v8

    add-int/lit8 v13, v13, 0xd

    move v8, v14

    goto :goto_b

    :cond_c
    shl-int/2addr v8, v13

    or-int/2addr v8, v12

    move v12, v8

    goto :goto_c

    :cond_d
    move v14, v8

    :goto_c
    add-int/lit8 v8, v14, 0x1

    .line 347
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    const/16 v14, 0xd

    :goto_d
    add-int/lit8 v15, v8, 0x1

    .line 351
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_e

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v14

    or-int/2addr v13, v8

    add-int/lit8 v14, v14, 0xd

    move v8, v15

    goto :goto_d

    :cond_e
    shl-int/2addr v8, v14

    or-int/2addr v8, v13

    move v13, v8

    goto :goto_e

    :cond_f
    move v15, v8

    :goto_e
    add-int/lit8 v8, v15, 0x1

    .line 359
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    const/16 v15, 0xd

    :goto_f
    add-int/lit8 v16, v8, 0x1

    .line 363
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_10

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v15

    or-int/2addr v14, v8

    add-int/lit8 v15, v15, 0xd

    move/from16 v8, v16

    goto :goto_f

    :cond_10
    shl-int/2addr v8, v15

    or-int/2addr v8, v14

    move v14, v8

    move/from16 v8, v16

    :cond_11
    add-int/lit8 v15, v8, 0x1

    .line 371
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_13

    and-int/lit16 v8, v8, 0x1fff

    const/16 v16, 0xd

    :goto_10
    add-int/lit8 v17, v15, 0x1

    .line 375
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_12

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v8, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_10

    :cond_12
    shl-int v15, v15, v16

    or-int/2addr v8, v15

    move/from16 v15, v17

    :cond_13
    add-int/lit8 v16, v15, 0x1

    .line 383
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_15

    and-int/lit16 v15, v15, 0x1fff

    const/16 v17, 0xd

    move/from16 v34, v16

    move/from16 v16, v15

    move/from16 v15, v34

    :goto_11
    add-int/lit8 v18, v15, 0x1

    .line 387
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_14

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v17

    or-int v16, v16, v15

    add-int/lit8 v17, v17, 0xd

    move/from16 v15, v18

    goto :goto_11

    :cond_14
    shl-int v15, v15, v17

    or-int v15, v16, v15

    move/from16 v16, v18

    :cond_15
    add-int v17, v15, v14

    add-int v8, v17, v8

    .line 394
    new-array v8, v8, [I

    mul-int/lit8 v17, v7, 0x2

    add-int v9, v17, v9

    move/from16 v34, v16

    move/from16 v16, v7

    move v7, v11

    move/from16 v11, v34

    move/from16 v35, v12

    move-object v12, v8

    move/from16 v8, v35

    .line 399
    :goto_12
    sget-object v2, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/RawMessageInfo;->getObjects()[Ljava/lang/Object;

    move-result-object v18

    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/RawMessageInfo;->getDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    mul-int/lit8 v3, v13, 0x3

    .line 403
    new-array v3, v3, [I

    mul-int/lit8 v13, v13, 0x2

    .line 404
    new-array v13, v13, [Ljava/lang/Object;

    add-int/2addr v14, v15

    move/from16 v23, v14

    move/from16 v22, v15

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_13
    if-ge v11, v1, :cond_33

    add-int/lit8 v24, v11, 0x1

    .line 415
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_17

    and-int/lit16 v11, v11, 0x1fff

    const/16 v25, 0xd

    move/from16 v34, v24

    move/from16 v24, v11

    move/from16 v11, v34

    :goto_14
    add-int/lit8 v26, v11, 0x1

    .line 419
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_16

    and-int/lit16 v11, v11, 0x1fff

    shl-int v11, v11, v25

    or-int v24, v24, v11

    add-int/lit8 v25, v25, 0xd

    move/from16 v11, v26

    goto :goto_14

    :cond_16
    shl-int v11, v11, v25

    or-int v11, v24, v11

    move/from16 v6, v26

    goto :goto_15

    :cond_17
    move/from16 v6, v24

    :goto_15
    add-int/lit8 v25, v6, 0x1

    .line 427
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v26, v1

    const v1, 0xd800

    if-lt v6, v1, :cond_19

    and-int/lit16 v6, v6, 0x1fff

    const/16 v27, 0xd

    move/from16 v34, v25

    move/from16 v25, v6

    move/from16 v6, v34

    :goto_16
    add-int/lit8 v28, v6, 0x1

    .line 431
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v1, :cond_18

    and-int/lit16 v1, v6, 0x1fff

    shl-int v1, v1, v27

    or-int v25, v25, v1

    add-int/lit8 v27, v27, 0xd

    move/from16 v6, v28

    const v1, 0xd800

    goto :goto_16

    :cond_18
    shl-int v1, v6, v27

    or-int v6, v25, v1

    move/from16 v1, v28

    goto :goto_17

    :cond_19
    move/from16 v1, v25

    :goto_17
    move/from16 v25, v14

    and-int/lit16 v14, v6, 0xff

    move/from16 v27, v15

    and-int/lit16 v15, v6, 0x400

    if-eqz v15, :cond_1a

    add-int/lit8 v15, v20, 0x1

    .line 441
    aput v21, v12, v20

    move/from16 v20, v15

    :cond_1a
    const/16 v15, 0x33

    move/from16 v30, v10

    if-lt v14, v15, :cond_22

    add-int/lit8 v15, v1, 0x1

    .line 450
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v10, 0xd800

    if-lt v1, v10, :cond_1c

    and-int/lit16 v1, v1, 0x1fff

    const/16 v32, 0xd

    :goto_18
    add-int/lit8 v33, v15, 0x1

    .line 454
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v10, :cond_1b

    and-int/lit16 v10, v15, 0x1fff

    shl-int v10, v10, v32

    or-int/2addr v1, v10

    add-int/lit8 v32, v32, 0xd

    move/from16 v15, v33

    const v10, 0xd800

    goto :goto_18

    :cond_1b
    shl-int v10, v15, v32

    or-int/2addr v1, v10

    move/from16 v15, v33

    :cond_1c
    add-int/lit8 v10, v14, -0x33

    move/from16 v32, v15

    const/16 v15, 0x9

    if-eq v10, v15, :cond_1f

    const/16 v15, 0x11

    if-ne v10, v15, :cond_1d

    goto :goto_19

    :cond_1d
    const/16 v15, 0xc

    if-ne v10, v15, :cond_1e

    and-int/lit8 v10, v4, 0x1

    const/4 v15, 0x1

    if-ne v10, v15, :cond_1e

    .line 469
    div-int/lit8 v10, v21, 0x3

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v15

    add-int/lit8 v15, v9, 0x1

    aget-object v9, v18, v9

    aput-object v9, v13, v10

    goto :goto_1a

    :cond_1e
    move v15, v9

    goto :goto_1a

    .line 465
    :cond_1f
    :goto_19
    div-int/lit8 v10, v21, 0x3

    mul-int/lit8 v10, v10, 0x2

    const/4 v15, 0x1

    add-int/2addr v10, v15

    add-int/lit8 v15, v9, 0x1

    aget-object v9, v18, v9

    aput-object v9, v13, v10

    :goto_1a
    mul-int/lit8 v1, v1, 0x2

    .line 475
    aget-object v9, v18, v1

    .line 476
    instance-of v10, v9, Ljava/lang/reflect/Field;

    if-eqz v10, :cond_20

    .line 477
    check-cast v9, Ljava/lang/reflect/Field;

    goto :goto_1b

    .line 479
    :cond_20
    check-cast v9, Ljava/lang/String;

    invoke-static {v5, v9}, Lcom/google/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 484
    aput-object v9, v18, v1

    .line 487
    :goto_1b
    invoke-virtual {v2, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v10, v9

    add-int/lit8 v1, v1, 0x1

    .line 491
    aget-object v9, v18, v1

    move/from16 v28, v10

    .line 492
    instance-of v10, v9, Ljava/lang/reflect/Field;

    if-eqz v10, :cond_21

    .line 493
    check-cast v9, Ljava/lang/reflect/Field;

    goto :goto_1c

    .line 495
    :cond_21
    check-cast v9, Ljava/lang/String;

    invoke-static {v5, v9}, Lcom/google/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 496
    aput-object v9, v18, v1

    .line 499
    :goto_1c
    invoke-virtual {v2, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v1, v9

    move-object/from16 v31, v0

    move v0, v4

    move v10, v15

    move/from16 v9, v28

    move/from16 v29, v32

    move/from16 v28, v8

    move-object v8, v5

    move v5, v1

    const/4 v1, 0x0

    goto/16 :goto_25

    :cond_22
    add-int/lit8 v10, v9, 0x1

    .line 502
    aget-object v9, v18, v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v5, v9}, Lcom/google/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/16 v15, 0x9

    if-eq v14, v15, :cond_2a

    const/16 v15, 0x11

    if-ne v14, v15, :cond_23

    goto/16 :goto_1f

    :cond_23
    const/16 v15, 0x1b

    if-eq v14, v15, :cond_29

    const/16 v15, 0x31

    if-ne v14, v15, :cond_24

    goto :goto_1e

    :cond_24
    const/16 v15, 0xc

    if-eq v14, v15, :cond_28

    const/16 v15, 0x1e

    if-eq v14, v15, :cond_28

    const/16 v15, 0x2c

    if-ne v14, v15, :cond_25

    goto :goto_1d

    :cond_25
    const/16 v15, 0x32

    if-ne v14, v15, :cond_27

    add-int/lit8 v15, v22, 0x1

    .line 515
    aput v21, v12, v22

    .line 516
    div-int/lit8 v22, v21, 0x3

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v28, v10, 0x1

    aget-object v10, v18, v10

    aput-object v10, v13, v22

    and-int/lit16 v10, v6, 0x800

    if-eqz v10, :cond_26

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v10, v28, 0x1

    .line 518
    aget-object v28, v18, v28

    aput-object v28, v13, v22

    move/from16 v28, v8

    move/from16 v22, v15

    goto :goto_20

    :cond_26
    move/from16 v22, v15

    move/from16 v10, v28

    move/from16 v28, v8

    goto :goto_20

    :cond_27
    move/from16 v28, v8

    const/4 v8, 0x1

    goto :goto_20

    :cond_28
    :goto_1d
    and-int/lit8 v15, v4, 0x1

    move/from16 v28, v8

    const/4 v8, 0x1

    if-ne v15, v8, :cond_2b

    .line 512
    div-int/lit8 v15, v21, 0x3

    mul-int/lit8 v15, v15, 0x2

    add-int/2addr v15, v8

    add-int/lit8 v19, v10, 0x1

    aget-object v10, v18, v10

    aput-object v10, v13, v15

    move/from16 v10, v19

    goto :goto_20

    :cond_29
    :goto_1e
    move/from16 v28, v8

    const/4 v8, 0x1

    .line 507
    div-int/lit8 v15, v21, 0x3

    mul-int/lit8 v15, v15, 0x2

    add-int/2addr v15, v8

    add-int/lit8 v19, v10, 0x1

    aget-object v10, v18, v10

    aput-object v10, v13, v15

    move/from16 v10, v19

    goto :goto_20

    :cond_2a
    :goto_1f
    move/from16 v28, v8

    const/4 v8, 0x1

    .line 504
    div-int/lit8 v15, v21, 0x3

    mul-int/lit8 v15, v15, 0x2

    add-int/2addr v15, v8

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v19

    aput-object v19, v13, v15

    .line 522
    :cond_2b
    :goto_20
    invoke-virtual {v2, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v9, v8

    and-int/lit8 v8, v4, 0x1

    const/4 v15, 0x1

    if-ne v8, v15, :cond_2f

    const/16 v8, 0x11

    if-gt v14, v8, :cond_2f

    add-int/lit8 v8, v1, 0x1

    .line 524
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v15, 0xd800

    if-lt v1, v15, :cond_2d

    and-int/lit16 v1, v1, 0x1fff

    const/16 v24, 0xd

    :goto_21
    add-int/lit8 v29, v8, 0x1

    .line 528
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v15, :cond_2c

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v24

    or-int/2addr v1, v8

    add-int/lit8 v24, v24, 0xd

    move/from16 v8, v29

    goto :goto_21

    :cond_2c
    shl-int v8, v8, v24

    or-int/2addr v1, v8

    goto :goto_22

    :cond_2d
    move/from16 v29, v8

    :goto_22
    mul-int/lit8 v8, v16, 0x2

    .line 537
    div-int/lit8 v24, v1, 0x20

    add-int v8, v8, v24

    .line 538
    aget-object v15, v18, v8

    move-object/from16 v31, v0

    .line 539
    instance-of v0, v15, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2e

    .line 540
    check-cast v15, Ljava/lang/reflect/Field;

    move v0, v4

    move-object v8, v5

    goto :goto_23

    .line 542
    :cond_2e
    check-cast v15, Ljava/lang/String;

    invoke-static {v5, v15}, Lcom/google/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    .line 543
    aput-object v15, v18, v8

    move v0, v4

    move-object v8, v5

    .line 546
    :goto_23
    invoke-virtual {v2, v15}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v5, v4

    .line 547
    rem-int/lit8 v1, v1, 0x20

    goto :goto_24

    :cond_2f
    move-object/from16 v31, v0

    move v0, v4

    move-object v8, v5

    move/from16 v29, v1

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_24
    const/16 v4, 0x12

    if-lt v14, v4, :cond_30

    const/16 v4, 0x31

    if-gt v14, v4, :cond_30

    add-int/lit8 v4, v23, 0x1

    .line 556
    aput v9, v12, v23

    move/from16 v23, v4

    :cond_30
    :goto_25
    add-int/lit8 v4, v21, 0x1

    .line 560
    aput v11, v3, v21

    add-int/lit8 v11, v4, 0x1

    and-int/lit16 v15, v6, 0x200

    if-eqz v15, :cond_31

    const/high16 v15, 0x20000000

    goto :goto_26

    :cond_31
    const/4 v15, 0x0

    :goto_26
    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_32

    const/high16 v6, 0x10000000

    goto :goto_27

    :cond_32
    const/4 v6, 0x0

    :goto_27
    or-int/2addr v6, v15

    shl-int/lit8 v14, v14, 0x14

    or-int/2addr v6, v14

    or-int/2addr v6, v9

    .line 561
    aput v6, v3, v4

    add-int/lit8 v21, v11, 0x1

    shl-int/lit8 v1, v1, 0x14

    or-int/2addr v1, v5

    .line 566
    aput v1, v3, v11

    move v4, v0

    move-object v5, v8

    move v9, v10

    move/from16 v14, v25

    move/from16 v1, v26

    move/from16 v15, v27

    move/from16 v8, v28

    move/from16 v11, v29

    move/from16 v10, v30

    move-object/from16 v0, v31

    const v6, 0xd800

    goto/16 :goto_13

    :cond_33
    move/from16 v28, v8

    move/from16 v30, v10

    move/from16 v25, v14

    move/from16 v27, v15

    .line 569
    new-instance v0, Lcom/google/protobuf/MessageSchema;

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/RawMessageInfo;->getDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v9

    const/4 v11, 0x0

    move-object v4, v0

    move-object v5, v3

    move-object v6, v13

    move/from16 v13, v27

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-direct/range {v4 .. v19}, Lcom/google/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILcom/google/protobuf/MessageLite;ZZ[IIILcom/google/protobuf/NewInstanceSchema;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)V

    return-object v0
.end method

.method private numberAt(I)I
    .locals 1

    .line 5675
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    aget p1, v0, p1

    return p1
.end method

.method private static offset(I)J
    .locals 2

    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method private static oneofBooleanAt(Ljava/lang/Object;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 5739
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static oneofDoubleAt(Ljava/lang/Object;J)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 5723
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static oneofFloatAt(Ljava/lang/Object;J)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 5727
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static oneofIntAt(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 5731
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static oneofLongAt(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 5735
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private parseMapField(Ljava/lang/Object;[BIIIJLcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v7, p0

    move-object v0, p1

    move-wide v1, p6

    .line 4657
    sget-object v3, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    move v4, p5

    .line 4658
    invoke-direct {p0, p5}, Lcom/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v4

    .line 4659
    invoke-virtual {v3, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 4660
    iget-object v6, v7, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v6, v5}, Lcom/google/protobuf/MapFieldSchema;->isImmutable(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4662
    iget-object v6, v7, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v6, v4}, Lcom/google/protobuf/MapFieldSchema;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 4663
    iget-object v8, v7, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v8, v6, v5}, Lcom/google/protobuf/MapFieldSchema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4664
    invoke-virtual {v3, p1, v1, v2, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v5, v6

    .line 4666
    :cond_0
    iget-object v0, v7, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 4670
    invoke-interface {v0, v4}, Lcom/google/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$Metadata;

    move-result-object v4

    iget-object v0, v7, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 4671
    invoke-interface {v0, v5}, Lcom/google/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object/from16 v6, p8

    .line 4666
    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/MessageSchema;->decodeMapEntry([BIILcom/google/protobuf/MapEntryLite$Metadata;Ljava/util/Map;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    return v0
.end method

.method private parseOneofField(Ljava/lang/Object;[BIIIIIIIJILcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    .line 4689
    sget-object v12, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 4690
    iget-object v7, v0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v13, v6, 0x2

    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    const/4 v7, 0x3

    if-ne v5, v7, :cond_a

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    .line 4821
    invoke-direct {v0, v6}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v7

    move-object/from16 v7, p13

    .line 4820
    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/ArrayDecoders;->decodeGroupField(Lcom/google/protobuf/Schema;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4823
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 4824
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    if-nez v15, :cond_1

    .line 4827
    iget-object v3, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 4829
    :cond_1
    iget-object v3, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4830
    invoke-static {v15, v3}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 4829
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4832
    :goto_1
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_1
    if-nez v5, :cond_a

    .line 4811
    invoke-static {v3, v4, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4812
    iget-wide v3, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4813
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_2
    if-nez v5, :cond_a

    .line 4804
    invoke-static {v3, v4, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4805
    iget v3, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v3}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4806
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_3
    if-nez v5, :cond_a

    .line 4790
    invoke-static {v3, v4, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 4791
    iget v4, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 4792
    invoke-direct {v0, v6}, Lcom/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 4793
    invoke-interface {v5, v4}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 4798
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    goto :goto_3

    .line 4794
    :cond_3
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4795
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_3
    move v2, v3

    goto/16 :goto_a

    :pswitch_4
    if-ne v5, v15, :cond_a

    .line 4783
    invoke-static {v3, v4, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeBytes([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4784
    iget-object v3, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4785
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_5
    if-ne v5, v15, :cond_a

    .line 4767
    invoke-direct {v0, v6}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v2

    move/from16 v5, p4

    .line 4766
    invoke-static {v2, v3, v4, v5, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeMessageField(Lcom/google/protobuf/Schema;[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4769
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_4

    .line 4770
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_4

    :cond_4
    const/4 v15, 0x0

    :goto_4
    if-nez v15, :cond_5

    .line 4773
    iget-object v3, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 4775
    :cond_5
    iget-object v3, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4776
    invoke-static {v15, v3}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 4775
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4778
    :goto_5
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_6
    if-ne v5, v15, :cond_a

    .line 4747
    invoke-static {v3, v4, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4748
    iget v4, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-nez v4, :cond_6

    const-string v3, ""

    .line 4750
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :cond_6
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_8

    add-int v5, v2, v4

    .line 4753
    invoke-static {v3, v2, v5}, Lcom/google/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_6

    .line 4754
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 4756
    :cond_8
    :goto_6
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 4757
    invoke-virtual {v12, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v4

    .line 4760
    :goto_7
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_7
    if-nez v5, :cond_a

    .line 4740
    invoke-static {v3, v4, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4741
    iget-wide v3, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_9

    const/4 v15, 0x1

    goto :goto_8

    :cond_9
    const/4 v15, 0x0

    :goto_8
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4742
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_8
    if-ne v5, v7, :cond_a

    .line 4733
    invoke-static/range {p2 .. p3}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x4

    .line 4735
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :pswitch_9
    const/4 v2, 0x1

    if-ne v5, v2, :cond_a

    .line 4725
    invoke-static/range {p2 .. p3}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x8

    .line 4727
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :pswitch_a
    if-nez v5, :cond_a

    .line 4717
    invoke-static {v3, v4, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4718
    iget v3, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4719
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :pswitch_b
    if-nez v5, :cond_a

    .line 4709
    invoke-static {v3, v4, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4710
    iget-wide v3, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4711
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :pswitch_c
    if-ne v5, v7, :cond_a

    .line 4701
    invoke-static/range {p2 .. p3}, Lcom/google/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x4

    .line 4703
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :pswitch_d
    const/4 v2, 0x1

    if-ne v5, v2, :cond_a

    .line 4694
    invoke-static/range {p2 .. p3}, Lcom/google/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x8

    .line 4696
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :cond_a
    :goto_9
    move v2, v4

    :goto_a
    return v2

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseProto3Message(Ljava/lang/Object;[BIILcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    .line 5177
    sget-object v9, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v13, :cond_1e

    add-int/lit8 v3, v0, 0x1

    .line 5182
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 5184
    invoke-static {v0, v12, v3, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32(I[BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5185
    iget v3, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    move v8, v0

    move/from16 v17, v3

    goto :goto_1

    :cond_0
    move/from16 v17, v0

    move v8, v3

    :goto_1
    ushr-int/lit8 v7, v17, 0x3

    and-int/lit8 v6, v17, 0x7

    if-le v7, v1, :cond_1

    .line 5190
    div-int/lit8 v2, v2, 0x3

    invoke-direct {v15, v7, v2}, Lcom/google/protobuf/MessageSchema;->positionForFieldNumber(II)I

    move-result v0

    move v4, v0

    goto :goto_2

    .line 5192
    :cond_1
    invoke-direct {v15, v7}, Lcom/google/protobuf/MessageSchema;->positionForFieldNumber(I)I

    move-result v0

    move v4, v0

    :goto_2
    if-ne v4, v10, :cond_2

    move/from16 v24, v7

    move v2, v8

    move-object/from16 v18, v9

    const/16 v19, 0x0

    const/16 v26, -0x1

    goto/16 :goto_9

    .line 5199
    :cond_2
    iget-object v0, v15, Lcom/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v1, v4, 0x1

    aget v5, v0, v1

    .line 5200
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v3

    .line 5201
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    const/16 v0, 0x11

    const/4 v10, 0x2

    if-gt v3, v0, :cond_13

    const/4 v0, 0x1

    packed-switch v3, :pswitch_data_0

    move/from16 v19, v4

    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    const/16 v26, -0x1

    goto/16 :goto_8

    :pswitch_0
    if-nez v6, :cond_3

    .line 5307
    invoke-static {v12, v8, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v6

    move-wide/from16 v19, v1

    .line 5308
    iget-wide v0, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    .line 5309
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v21

    move-object v0, v9

    move-wide/from16 v2, v19

    move-object/from16 v1, p1

    move v10, v4

    move-wide/from16 v4, v21

    .line 5308
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v0, v6

    move v1, v7

    move v2, v10

    const/4 v10, -0x1

    goto :goto_0

    :cond_3
    move/from16 v19, v4

    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    const/16 v26, -0x1

    goto/16 :goto_8

    :pswitch_1
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_4

    .line 5299
    invoke-static {v12, v8, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5300
    iget v1, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 5301
    invoke-static {v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v1

    .line 5300
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v1, v7

    move v2, v10

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_4
    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    move/from16 v19, v10

    const/16 v26, -0x1

    goto/16 :goto_8

    :pswitch_2
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_5

    .line 5292
    invoke-static {v12, v8, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5293
    iget v1, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v1, v7

    move v2, v10

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_5
    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    move/from16 v19, v10

    const/16 v26, -0x1

    goto/16 :goto_8

    :pswitch_3
    move-wide v2, v1

    if-ne v6, v10, :cond_6

    .line 5285
    invoke-static {v12, v8, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeBytes([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5286
    iget-object v1, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v2, v4

    move v1, v7

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_6
    move/from16 v19, v4

    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    const/16 v26, -0x1

    goto/16 :goto_8

    :pswitch_4
    move-wide v2, v1

    if-ne v6, v10, :cond_8

    .line 5272
    invoke-direct {v15, v4}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v0

    .line 5271
    invoke-static {v0, v12, v8, v13, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeMessageField(Lcom/google/protobuf/Schema;[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5273
    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    .line 5275
    iget-object v1, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    .line 5277
    :cond_7
    iget-object v5, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 5278
    invoke-static {v1, v5}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5277
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_3
    move v2, v4

    move v1, v7

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_8
    move/from16 v19, v4

    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    const/16 v26, -0x1

    goto/16 :goto_8

    :pswitch_5
    move-wide v2, v1

    if-ne v6, v10, :cond_a

    const/high16 v0, 0x20000000

    and-int/2addr v0, v5

    if-nez v0, :cond_9

    .line 5260
    invoke-static {v12, v8, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeString([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto :goto_4

    .line 5262
    :cond_9
    invoke-static {v12, v8, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeStringRequireUtf8([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5264
    :goto_4
    iget-object v1, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v2, v4

    move v1, v7

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_a
    move/from16 v19, v4

    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    const/16 v26, -0x1

    goto/16 :goto_8

    :pswitch_6
    move-wide v2, v1

    if-nez v6, :cond_c

    .line 5252
    invoke-static {v12, v8, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 5253
    iget-wide v5, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v19, 0x0

    cmp-long v8, v5, v19

    if-eqz v8, :cond_b

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    :goto_5
    invoke-static {v14, v2, v3, v0}, Lcom/google/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    move v0, v1

    move v2, v4

    move v1, v7

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_c
    move/from16 v19, v4

    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    const/16 v26, -0x1

    goto/16 :goto_8

    :pswitch_7
    move-wide v2, v1

    const/4 v0, 0x5

    if-ne v6, v0, :cond_d

    .line 5245
    invoke-static {v12, v8}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v0

    invoke-virtual {v9, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v8, 0x4

    move v2, v4

    move v1, v7

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_d
    move/from16 v19, v4

    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    const/16 v26, -0x1

    goto/16 :goto_8

    :pswitch_8
    move-wide v2, v1

    if-ne v6, v0, :cond_e

    .line 5237
    invoke-static {v12, v8}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v5

    move-object v0, v9

    move-object/from16 v1, p1

    move v10, v4

    move-wide v4, v5

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v8, 0x8

    move v1, v7

    move v2, v10

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_e
    move/from16 v19, v4

    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    const/16 v26, -0x1

    goto/16 :goto_8

    :pswitch_9
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_f

    .line 5229
    invoke-static {v12, v8, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5230
    iget v1, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v1, v7

    move v2, v10

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_f
    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    move/from16 v19, v10

    const/16 v26, -0x1

    goto/16 :goto_8

    :pswitch_a
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_10

    .line 5221
    invoke-static {v12, v8, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v6

    .line 5222
    iget-wide v4, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v0, v6

    move v1, v7

    move v2, v10

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_10
    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    move/from16 v19, v10

    const/16 v26, -0x1

    goto/16 :goto_8

    :pswitch_b
    move-wide v2, v1

    move v10, v4

    const/4 v0, 0x5

    if-ne v6, v0, :cond_11

    .line 5213
    invoke-static {v12, v8}, Lcom/google/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v0

    invoke-static {v14, v2, v3, v0}, Lcom/google/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v8, 0x4

    move v1, v7

    move v2, v10

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_11
    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    move/from16 v19, v10

    const/16 v26, -0x1

    goto/16 :goto_8

    :pswitch_c
    move-wide v2, v1

    move v10, v4

    if-ne v6, v0, :cond_12

    .line 5206
    invoke-static {v12, v8}, Lcom/google/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v0

    invoke-static {v14, v2, v3, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v8, 0x8

    move v1, v7

    move v2, v10

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_12
    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    move/from16 v19, v10

    const/16 v26, -0x1

    goto/16 :goto_8

    :cond_13
    const/16 v0, 0x1b

    if-ne v3, v0, :cond_17

    if-ne v6, v10, :cond_16

    .line 5319
    invoke-virtual {v9, v14, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Internal$ProtobufList;

    .line 5320
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v3

    if-nez v3, :cond_15

    .line 5321
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_14

    const/16 v3, 0xa

    goto :goto_6

    :cond_14
    mul-int/lit8 v3, v3, 0x2

    .line 5323
    :goto_6
    invoke-interface {v0, v3}, Lcom/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 5325
    invoke-virtual {v9, v14, v1, v2, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v5, v0

    goto :goto_7

    :cond_15
    move-object v5, v0

    .line 5329
    :goto_7
    invoke-direct {v15, v4}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v8

    move/from16 v19, v4

    move/from16 v4, p4

    move-object/from16 v6, p5

    .line 5328
    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/ArrayDecoders;->decodeMessageList(Lcom/google/protobuf/Schema;I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move v1, v7

    move/from16 v2, v19

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_16
    move/from16 v19, v4

    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    const/16 v26, -0x1

    goto/16 :goto_8

    :cond_17
    move/from16 v19, v4

    const/16 v0, 0x31

    if-gt v3, v0, :cond_19

    int-to-long v4, v5

    move-object/from16 v0, p0

    move-wide/from16 v20, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v10, v3

    move v3, v8

    move-wide/from16 v22, v4

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 p3, v6

    move v6, v7

    move/from16 v24, v7

    move/from16 v7, p3

    move v15, v8

    move/from16 v8, v19

    move-object/from16 v18, v9

    move/from16 v25, v10

    const/16 v26, -0x1

    move-wide/from16 v9, v22

    move/from16 v11, v25

    move-wide/from16 v12, v20

    move-object/from16 v14, p5

    .line 5336
    invoke-direct/range {v0 .. v14}, Lcom/google/protobuf/MessageSchema;->parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-eq v0, v15, :cond_18

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move-object/from16 v11, p5

    move-object/from16 v9, v18

    move/from16 v2, v19

    move/from16 v1, v24

    const/4 v10, -0x1

    move/from16 v13, p4

    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_18
    move v2, v0

    goto/16 :goto_9

    :cond_19
    move-wide/from16 v20, v1

    move/from16 v25, v3

    move/from16 p3, v6

    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    const/16 v26, -0x1

    const/16 v0, 0x32

    move/from16 v9, v25

    if-ne v9, v0, :cond_1c

    move/from16 v7, p3

    if-ne v7, v10, :cond_1b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move-wide/from16 v6, v20

    move-object/from16 v8, p5

    .line 5355
    invoke-direct/range {v0 .. v8}, Lcom/google/protobuf/MessageSchema;->parseMapField(Ljava/lang/Object;[BIIIJLcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-eq v0, v15, :cond_1a

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move-object/from16 v11, p5

    move-object/from16 v9, v18

    move/from16 v2, v19

    move/from16 v1, v24

    const/4 v10, -0x1

    move/from16 v13, p4

    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_1a
    move v2, v0

    goto :goto_9

    :cond_1b
    :goto_8
    move v2, v15

    goto :goto_9

    :cond_1c
    move/from16 v7, p3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move v8, v5

    move/from16 v5, v17

    move/from16 v6, v24

    move-wide/from16 v10, v20

    move/from16 v12, v19

    move-object/from16 v13, p5

    .line 5363
    invoke-direct/range {v0 .. v13}, Lcom/google/protobuf/MessageSchema;->parseOneofField(Ljava/lang/Object;[BIIIIIIIJILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-eq v0, v15, :cond_1d

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move-object/from16 v11, p5

    move-object/from16 v9, v18

    move/from16 v2, v19

    move/from16 v1, v24

    const/4 v10, -0x1

    move/from16 v13, p4

    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_1d
    move v2, v0

    .line 5382
    :goto_9
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    .line 5381
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/ArrayDecoders;->decodeUnknownField(I[BIILcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move-object/from16 v11, p5

    move-object/from16 v9, v18

    move/from16 v2, v19

    move/from16 v1, v24

    const/4 v10, -0x1

    move/from16 v13, p4

    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_1e
    move v1, v13

    if-ne v0, v1, :cond_1f

    return v0

    .line 5385
    :cond_1f
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move/from16 v2, p7

    move/from16 v8, p8

    move-wide/from16 v5, p12

    move-object/from16 v7, p14

    .line 4485
    sget-object v9, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v9, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/protobuf/Internal$ProtobufList;

    .line 4486
    invoke-interface {v9}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v10

    const/4 v11, 0x2

    if-nez v10, :cond_1

    .line 4487
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_0

    const/16 v10, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v10, v10, 0x2

    .line 4489
    :goto_0
    invoke-interface {v9, v10}, Lcom/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v9

    .line 4491
    sget-object v10, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v10, p1, v5, v6, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v5, 0x5

    const/4 v6, 0x1

    packed-switch p11, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const/4 v1, 0x3

    if-ne v2, v1, :cond_f

    .line 4633
    invoke-direct {p0, v8}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v9

    move-object/from16 p12, p14

    .line 4632
    invoke-static/range {p6 .. p12}, Lcom/google/protobuf/ArrayDecoders;->decodeGroupList(Lcom/google/protobuf/Schema;I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_1
    if-ne v2, v11, :cond_2

    .line 4624
    invoke-static {p2, p3, v9, v7}, Lcom/google/protobuf/ArrayDecoders;->decodePackedSInt64List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :cond_2
    if-nez v2, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v9

    move-object/from16 p10, p14

    .line 4626
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/ArrayDecoders;->decodeSInt64List(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_2
    if-ne v2, v11, :cond_3

    .line 4616
    invoke-static {p2, p3, v9, v7}, Lcom/google/protobuf/ArrayDecoders;->decodePackedSInt32List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :cond_3
    if-nez v2, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v9

    move-object/from16 p10, p14

    .line 4618
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/ArrayDecoders;->decodeSInt32List(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_3
    if-ne v2, v11, :cond_4

    .line 4588
    invoke-static {p2, p3, v9, v7}, Lcom/google/protobuf/ArrayDecoders;->decodePackedVarint32List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto :goto_1

    :cond_4
    if-nez v2, :cond_f

    move/from16 v2, p5

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object v6, v9

    move-object/from16 v7, p14

    .line 4590
    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32List(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4594
    :goto_1
    check-cast v1, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object v3, v1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 4595
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v4

    if-ne v3, v4, :cond_5

    const/4 v3, 0x0

    .line 4606
    :cond_5
    invoke-direct {p0, v8}, Lcom/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v4

    iget-object v5, v0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    move/from16 v6, p6

    .line 4603
    invoke-static {v6, v9, v4, v3, v5}, Lcom/google/protobuf/SchemaUtil;->filterUnknownEnumList(ILjava/util/List;Lcom/google/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/UnknownFieldSetLite;

    if-eqz v3, :cond_6

    .line 4610
    iput-object v3, v1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    :cond_6
    move v1, v2

    goto/16 :goto_3

    :pswitch_4
    if-ne v2, v11, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v9

    move-object/from16 p10, p14

    .line 4582
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/ArrayDecoders;->decodeBytesList(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_5
    if-ne v2, v11, :cond_f

    .line 4571
    invoke-direct {p0, v8}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v9

    move-object/from16 p12, p14

    .line 4570
    invoke-static/range {p6 .. p12}, Lcom/google/protobuf/ArrayDecoders;->decodeMessageList(Lcom/google/protobuf/Schema;I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_6
    if-ne v2, v11, :cond_f

    const-wide/32 v1, 0x20000000

    and-long v1, p9, v1

    const-wide/16 v5, 0x0

    cmp-long v8, v1, v5

    if-nez v8, :cond_7

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v9

    move-object/from16 p10, p14

    .line 4561
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/ArrayDecoders;->decodeStringList(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :cond_7
    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v9

    move-object/from16 p10, p14

    .line 4563
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/ArrayDecoders;->decodeStringListRequireUtf8(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_7
    if-ne v2, v11, :cond_8

    .line 4553
    invoke-static {p2, p3, v9, v7}, Lcom/google/protobuf/ArrayDecoders;->decodePackedBoolList([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :cond_8
    if-nez v2, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v9

    move-object/from16 p10, p14

    .line 4555
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/ArrayDecoders;->decodeBoolList(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_8
    if-ne v2, v11, :cond_9

    .line 4545
    invoke-static {p2, p3, v9, v7}, Lcom/google/protobuf/ArrayDecoders;->decodePackedFixed32List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :cond_9
    if-ne v2, v5, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v9

    move-object/from16 p10, p14

    .line 4547
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32List(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_9
    if-ne v2, v11, :cond_a

    .line 4535
    invoke-static {p2, p3, v9, v7}, Lcom/google/protobuf/ArrayDecoders;->decodePackedFixed64List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :cond_a
    if-ne v2, v6, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v9

    move-object/from16 p10, p14

    .line 4537
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64List(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_a
    if-ne v2, v11, :cond_b

    .line 4525
    invoke-static {p2, p3, v9, v7}, Lcom/google/protobuf/ArrayDecoders;->decodePackedVarint32List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :cond_b
    if-nez v2, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v9

    move-object/from16 p10, p14

    .line 4527
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32List(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto :goto_3

    :pswitch_b
    if-ne v2, v11, :cond_c

    .line 4515
    invoke-static {p2, p3, v9, v7}, Lcom/google/protobuf/ArrayDecoders;->decodePackedVarint64List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto :goto_3

    :cond_c
    if-nez v2, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v9

    move-object/from16 p10, p14

    .line 4517
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64List(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto :goto_3

    :pswitch_c
    if-ne v2, v11, :cond_d

    .line 4505
    invoke-static {p2, p3, v9, v7}, Lcom/google/protobuf/ArrayDecoders;->decodePackedFloatList([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto :goto_3

    :cond_d
    if-ne v2, v5, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v9

    move-object/from16 p10, p14

    .line 4507
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/ArrayDecoders;->decodeFloatList(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto :goto_3

    :pswitch_d
    if-ne v2, v11, :cond_e

    .line 4497
    invoke-static {p2, p3, v9, v7}, Lcom/google/protobuf/ArrayDecoders;->decodePackedDoubleList([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto :goto_3

    :cond_e
    if-ne v2, v6, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v9

    move-object/from16 p10, p14

    .line 4499
    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/ArrayDecoders;->decodeDoubleList(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto :goto_3

    :cond_f
    :goto_2
    move v1, v4

    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private positionForFieldNumber(I)I
    .locals 1

    .line 5844
    iget v0, p0, Lcom/google/protobuf/MessageSchema;->minFieldNumber:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/protobuf/MessageSchema;->maxFieldNumber:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 5845
    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/MessageSchema;->slowPositionForFieldNumber(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private positionForFieldNumber(II)I
    .locals 1

    .line 5851
    iget v0, p0, Lcom/google/protobuf/MessageSchema;->minFieldNumber:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/protobuf/MessageSchema;->maxFieldNumber:I

    if-gt p1, v0, :cond_0

    .line 5852
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/MessageSchema;->slowPositionForFieldNumber(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private presenceMaskAndOffsetAt(I)I
    .locals 1

    .line 5683
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private readGroupList(Ljava/lang/Object;JLcom/google/protobuf/Reader;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J",
            "Lcom/google/protobuf/Reader;",
            "Lcom/google/protobuf/Schema<",
            "TE;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5670
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 5671
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    .line 5670
    invoke-interface {p4, p1, p5, p6}, Lcom/google/protobuf/Reader;->readGroupList(Ljava/util/List;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private readMessageList(Ljava/lang/Object;ILcom/google/protobuf/Reader;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Lcom/google/protobuf/Reader;",
            "Lcom/google/protobuf/Schema<",
            "TE;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5658
    invoke-static {p2}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    .line 5659
    iget-object p2, p0, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 5660
    invoke-virtual {p2, p1, v0, v1}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    .line 5659
    invoke-interface {p3, p1, p4, p5}, Lcom/google/protobuf/Reader;->readMessageList(Ljava/util/List;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private readString(Ljava/lang/Object;ILcom/google/protobuf/Reader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5628
    invoke-static {p2}, Lcom/google/protobuf/MessageSchema;->isEnforceUtf8(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5630
    invoke-static {p2}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/google/protobuf/Reader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 5631
    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/MessageSchema;->lite:Z

    if-eqz v0, :cond_1

    .line 5634
    invoke-static {p2}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/google/protobuf/Reader;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 5638
    :cond_1
    invoke-static {p2}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/google/protobuf/Reader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private readStringList(Ljava/lang/Object;ILcom/google/protobuf/Reader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5643
    invoke-static {p2}, Lcom/google/protobuf/MessageSchema;->isEnforceUtf8(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5644
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 5645
    invoke-static {p2}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    .line 5644
    invoke-interface {p3, p1}, Lcom/google/protobuf/Reader;->readStringListRequireUtf8(Ljava/util/List;)V

    goto :goto_0

    .line 5647
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    invoke-static {p2}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/protobuf/Reader;->readStringList(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private static reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 589
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 593
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 594
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 595
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 602
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    return-void
.end method

.method private setFieldPresent(Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 5814
    iget-boolean v0, p0, Lcom/google/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_0

    return-void

    .line 5818
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result p2

    const/4 v0, 0x1

    ushr-int/lit8 v1, p2, 0x14

    shl-int/2addr v0, v1

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    .line 5824
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    or-int/2addr p2, v0

    .line 5821
    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method private setOneofPresent(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 5839
    invoke-direct {p0, p3}, Lcom/google/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 5840
    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method private slowPositionForFieldNumber(II)I
    .locals 4

    .line 5858
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x3

    .line 5863
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    if-ne p1, v3, :cond_0

    return v2

    :cond_0
    if-ge p1, v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    move v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move p2, v1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private static type(I)I
    .locals 1

    const/high16 v0, 0xff00000

    and-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x14

    return p0
.end method

.method private typeAndOffsetAt(I)I
    .locals 1

    .line 5679
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private writeFieldsInAscendingOrderProto2(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 17
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2544
    iget-boolean v3, v0, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v3, :cond_0

    .line 2545
    iget-object v3, v0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v3, v1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v3

    .line 2546
    invoke-virtual {v3}, Lcom/google/protobuf/FieldSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2547
    invoke-virtual {v3}, Lcom/google/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2548
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, -0x1

    .line 2553
    iget-object v7, v0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    array-length v7, v7

    .line 2554
    sget-object v8, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    move-object v10, v5

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v5, v7, :cond_18

    .line 2556
    invoke-direct {v0, v5}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v12

    .line 2557
    invoke-direct {v0, v5}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v13

    .line 2558
    invoke-static {v12}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v14

    .line 2562
    iget-boolean v15, v0, Lcom/google/protobuf/MessageSchema;->proto3:Z

    if-nez v15, :cond_2

    const/16 v15, 0x11

    if-gt v14, v15, :cond_2

    .line 2563
    iget-object v15, v0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v16, v5, 0x2

    aget v15, v15, v16

    const v16, 0xfffff

    and-int v9, v15, v16

    if-eq v9, v6, :cond_1

    move/from16 v16, v5

    int-to-long v4, v9

    .line 2567
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v11

    move v6, v9

    goto :goto_2

    :cond_1
    move/from16 v16, v5

    :goto_2
    ushr-int/lit8 v4, v15, 0x14

    const/4 v5, 0x1

    shl-int v9, v5, v4

    goto :goto_3

    :cond_2
    move/from16 v16, v5

    const/4 v9, 0x0

    :goto_3
    if-eqz v10, :cond_4

    .line 2573
    iget-object v4, v0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v4, v10}, Lcom/google/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v4

    if-gt v4, v13, :cond_4

    .line 2574
    iget-object v4, v0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v4, v2, v10}, Lcom/google/protobuf/ExtensionSchema;->serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 2575
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v10, v4

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    goto :goto_3

    .line 2577
    :cond_4
    invoke-static {v12}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    packed-switch v14, :pswitch_data_0

    move/from16 v12, v16

    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_0
    move/from16 v12, v16

    .line 2899
    invoke-direct {v0, v1, v13, v12}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2901
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v5

    .line 2900
    invoke-interface {v2, v13, v4, v5}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_1
    move/from16 v12, v16

    .line 2894
    invoke-direct {v0, v1, v13, v12}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2895
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_2
    move/from16 v12, v16

    .line 2889
    invoke-direct {v0, v1, v13, v12}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2890
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_3
    move/from16 v12, v16

    .line 2884
    invoke-direct {v0, v1, v13, v12}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2885
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_4
    move/from16 v12, v16

    .line 2879
    invoke-direct {v0, v1, v13, v12}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2880
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_5
    move/from16 v12, v16

    .line 2874
    invoke-direct {v0, v1, v13, v12}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2875
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_6
    move/from16 v12, v16

    .line 2869
    invoke-direct {v0, v1, v13, v12}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 2870
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_7
    move/from16 v12, v16

    .line 2864
    invoke-direct {v0, v1, v13, v12}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 2865
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_8
    move/from16 v12, v16

    .line 2858
    invoke-direct {v0, v1, v13, v12}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 2859
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2860
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v5

    invoke-interface {v2, v13, v4, v5}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_d
    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_9
    move/from16 v12, v16

    .line 2853
    invoke-direct {v0, v1, v13, v12}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 2854
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v13, v4, v2}, Lcom/google/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_e
    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_a
    move/from16 v12, v16

    .line 2848
    invoke-direct {v0, v1, v13, v12}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 2849
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_f
    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_b
    move/from16 v12, v16

    .line 2843
    invoke-direct {v0, v1, v13, v12}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 2844
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_10
    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_c
    move/from16 v12, v16

    .line 2838
    invoke-direct {v0, v1, v13, v12}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 2839
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_11
    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_d
    move/from16 v12, v16

    .line 2833
    invoke-direct {v0, v1, v13, v12}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 2834
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_12
    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_e
    move/from16 v12, v16

    .line 2828
    invoke-direct {v0, v1, v13, v12}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 2829
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_13
    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_f
    move/from16 v12, v16

    .line 2823
    invoke-direct {v0, v1, v13, v12}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 2824
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_10
    move/from16 v12, v16

    .line 2818
    invoke-direct {v0, v1, v13, v12}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 2819
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_15
    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_11
    move/from16 v12, v16

    .line 2813
    invoke-direct {v0, v1, v13, v12}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 2814
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_16
    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_12
    move/from16 v12, v16

    .line 2810
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v13, v4, v12}, Lcom/google/protobuf/MessageSchema;->writeMapHelper(Lcom/google/protobuf/Writer;ILjava/lang/Object;I)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_13
    move/from16 v12, v16

    .line 2803
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    .line 2804
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2806
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v5

    .line 2802
    invoke-static {v9, v4, v2, v5}, Lcom/google/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/Schema;)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_14
    move/from16 v12, v16

    .line 2799
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v13, 0x1

    .line 2798
    invoke-static {v9, v4, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_15
    move/from16 v12, v16

    const/4 v13, 0x1

    .line 2795
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2794
    invoke-static {v9, v4, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_16
    move/from16 v12, v16

    const/4 v13, 0x1

    .line 2791
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2790
    invoke-static {v9, v4, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_17
    move/from16 v12, v16

    const/4 v13, 0x1

    .line 2787
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2786
    invoke-static {v9, v4, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_18
    move/from16 v12, v16

    const/4 v13, 0x1

    .line 2783
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2782
    invoke-static {v9, v4, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_19
    move/from16 v12, v16

    const/4 v13, 0x1

    .line 2779
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2778
    invoke-static {v9, v4, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_1a
    move/from16 v12, v16

    const/4 v13, 0x1

    .line 2775
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2774
    invoke-static {v9, v4, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_1b
    move/from16 v12, v16

    const/4 v13, 0x1

    .line 2770
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2769
    invoke-static {v9, v4, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_1c
    move/from16 v12, v16

    const/4 v13, 0x1

    .line 2766
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2765
    invoke-static {v9, v4, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_1d
    move/from16 v12, v16

    const/4 v13, 0x1

    .line 2762
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2761
    invoke-static {v9, v4, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_1e
    move/from16 v12, v16

    const/4 v13, 0x1

    .line 2758
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2757
    invoke-static {v9, v4, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_1f
    move/from16 v12, v16

    const/4 v13, 0x1

    .line 2754
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2753
    invoke-static {v9, v4, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_20
    move/from16 v12, v16

    const/4 v13, 0x1

    .line 2750
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2749
    invoke-static {v9, v4, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_21
    move/from16 v12, v16

    const/4 v13, 0x1

    .line 2746
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2745
    invoke-static {v9, v4, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_22
    move/from16 v12, v16

    .line 2741
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v13, 0x0

    .line 2740
    invoke-static {v9, v4, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_23
    move/from16 v12, v16

    const/4 v13, 0x0

    .line 2737
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2736
    invoke-static {v9, v4, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_24
    move/from16 v12, v16

    const/4 v13, 0x0

    .line 2733
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2732
    invoke-static {v9, v4, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_25
    move/from16 v12, v16

    const/4 v13, 0x0

    .line 2729
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2728
    invoke-static {v9, v4, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_26
    move/from16 v12, v16

    const/4 v13, 0x0

    .line 2725
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2724
    invoke-static {v9, v4, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_27
    move/from16 v12, v16

    const/4 v13, 0x0

    .line 2721
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2720
    invoke-static {v9, v4, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_28
    move/from16 v12, v16

    .line 2717
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2716
    invoke-static {v9, v4, v2}, Lcom/google/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_29
    move/from16 v12, v16

    .line 2710
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    .line 2711
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2713
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v5

    .line 2709
    invoke-static {v9, v4, v2, v5}, Lcom/google/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/Schema;)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_2a
    move/from16 v12, v16

    .line 2706
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2705
    invoke-static {v9, v4, v2}, Lcom/google/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    const/4 v14, 0x0

    goto/16 :goto_4

    :pswitch_2b
    move/from16 v12, v16

    .line 2702
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v14, 0x0

    .line 2701
    invoke-static {v9, v4, v2, v14}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_2c
    move/from16 v12, v16

    const/4 v14, 0x0

    .line 2698
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2697
    invoke-static {v9, v4, v2, v14}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_2d
    move/from16 v12, v16

    const/4 v14, 0x0

    .line 2694
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2693
    invoke-static {v9, v4, v2, v14}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_2e
    move/from16 v12, v16

    const/4 v14, 0x0

    .line 2690
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2689
    invoke-static {v9, v4, v2, v14}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_2f
    move/from16 v12, v16

    const/4 v14, 0x0

    .line 2686
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2685
    invoke-static {v9, v4, v2, v14}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_30
    move/from16 v12, v16

    const/4 v14, 0x0

    .line 2682
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2681
    invoke-static {v9, v4, v2, v14}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_31
    move/from16 v12, v16

    const/4 v14, 0x0

    .line 2678
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2677
    invoke-static {v9, v4, v2, v14}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_32
    move/from16 v12, v16

    const/4 v14, 0x0

    .line 2674
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2673
    invoke-static {v9, v4, v2, v14}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_33
    move/from16 v12, v16

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_17

    .line 2669
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v5

    .line 2668
    invoke-interface {v2, v13, v4, v5}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_4

    :pswitch_34
    move/from16 v12, v16

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_17

    .line 2663
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_4

    :pswitch_35
    move/from16 v12, v16

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_17

    .line 2658
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_4

    :pswitch_36
    move/from16 v12, v16

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_17

    .line 2653
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_4

    :pswitch_37
    move/from16 v12, v16

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_17

    .line 2648
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_4

    :pswitch_38
    move/from16 v12, v16

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_17

    .line 2643
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_4

    :pswitch_39
    move/from16 v12, v16

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_17

    .line 2638
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_4

    :pswitch_3a
    move/from16 v12, v16

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_17

    .line 2633
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_4

    :pswitch_3b
    move/from16 v12, v16

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_17

    .line 2627
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2628
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v5

    invoke-interface {v2, v13, v4, v5}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_4

    :pswitch_3c
    move/from16 v12, v16

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_17

    .line 2622
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v13, v4, v2}, Lcom/google/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_4

    :pswitch_3d
    move/from16 v12, v16

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_17

    .line 2617
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/MessageSchema;->booleanAt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    goto :goto_4

    :pswitch_3e
    move/from16 v12, v16

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_17

    .line 2612
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto :goto_4

    :pswitch_3f
    move/from16 v12, v16

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_17

    .line 2607
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_4

    :pswitch_40
    move/from16 v12, v16

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_17

    .line 2602
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto :goto_4

    :pswitch_41
    move/from16 v12, v16

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_17

    .line 2597
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_4

    :pswitch_42
    move/from16 v12, v16

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_17

    .line 2592
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_4

    :pswitch_43
    move/from16 v12, v16

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_17

    .line 2587
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/MessageSchema;->floatAt(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    goto :goto_4

    :pswitch_44
    move/from16 v12, v16

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_17

    .line 2582
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/MessageSchema;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    :cond_17
    :goto_4
    add-int/lit8 v5, v12, 0x3

    goto/16 :goto_1

    :cond_18
    :goto_5
    if-eqz v10, :cond_1a

    .line 2910
    iget-object v4, v0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v4, v2, v10}, Lcom/google/protobuf/ExtensionSchema;->serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 2911
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v10, v4

    goto :goto_5

    :cond_19
    const/4 v10, 0x0

    goto :goto_5

    .line 2913
    :cond_1a
    iget-object v3, v0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-direct {v0, v3, v1, v2}, Lcom/google/protobuf/MessageSchema;->writeUnknownInMessageTo(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

.method private writeFieldsInAscendingOrderProto3(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 12
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

    .line 2920
    iget-boolean v0, p0, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2921
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v0

    .line 2922
    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2923
    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2924
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    move-object v0, v1

    move-object v2, v0

    .line 2928
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    array-length v3, v3

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_4

    .line 2930
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v6

    .line 2931
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    :goto_2
    if-eqz v5, :cond_2

    .line 2934
    iget-object v8, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v8, v5}, Lcom/google/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v8

    if-gt v8, v7, :cond_2

    .line 2935
    iget-object v8, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v8, p2, v5}, Lcom/google/protobuf/ExtensionSchema;->serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 2936
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    move-object v5, v1

    goto :goto_2

    .line 2939
    :cond_2
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v8

    const/4 v9, 0x1

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_3

    .line 3351
    :pswitch_0
    invoke-direct {p0, p1, v7, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3354
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 3355
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v8

    .line 3352
    invoke-interface {p2, v7, v6, v8}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_3

    .line 3346
    :pswitch_1
    invoke-direct {p0, p1, v7, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3347
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_3

    .line 3341
    :pswitch_2
    invoke-direct {p0, p1, v7, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3342
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_3

    .line 3336
    :pswitch_3
    invoke-direct {p0, p1, v7, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3337
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_3

    .line 3331
    :pswitch_4
    invoke-direct {p0, p1, v7, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3332
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_3

    .line 3326
    :pswitch_5
    invoke-direct {p0, p1, v7, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3327
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_3

    .line 3321
    :pswitch_6
    invoke-direct {p0, p1, v7, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3322
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_3

    .line 3315
    :pswitch_7
    invoke-direct {p0, p1, v7, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3317
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/ByteString;

    .line 3316
    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_3

    .line 3309
    :pswitch_8
    invoke-direct {p0, p1, v7, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3310
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 3311
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v8

    invoke-interface {p2, v7, v6, v8}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_3

    .line 3304
    :pswitch_9
    invoke-direct {p0, p1, v7, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3305
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v7, v6, p2}, Lcom/google/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_3

    .line 3299
    :pswitch_a
    invoke-direct {p0, p1, v7, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3300
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_3

    .line 3294
    :pswitch_b
    invoke-direct {p0, p1, v7, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3295
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_3

    .line 3289
    :pswitch_c
    invoke-direct {p0, p1, v7, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3290
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_3

    .line 3284
    :pswitch_d
    invoke-direct {p0, p1, v7, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3285
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_3

    .line 3279
    :pswitch_e
    invoke-direct {p0, p1, v7, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3280
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_3

    .line 3274
    :pswitch_f
    invoke-direct {p0, p1, v7, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3275
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_3

    .line 3269
    :pswitch_10
    invoke-direct {p0, p1, v7, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3270
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_3

    .line 3264
    :pswitch_11
    invoke-direct {p0, p1, v7, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3265
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_3

    .line 3261
    :pswitch_12
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, p2, v7, v6, v2}, Lcom/google/protobuf/MessageSchema;->writeMapHelper(Lcom/google/protobuf/Writer;ILjava/lang/Object;I)V

    goto/16 :goto_3

    .line 3254
    :pswitch_13
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3255
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3257
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v8

    .line 3253
    invoke-static {v7, v6, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_3

    .line 3247
    :pswitch_14
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3248
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3246
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3240
    :pswitch_15
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3241
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3239
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3233
    :pswitch_16
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3234
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3232
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3226
    :pswitch_17
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3227
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3225
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3219
    :pswitch_18
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3220
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3218
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3212
    :pswitch_19
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3213
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3211
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3205
    :pswitch_1a
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3206
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3204
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3197
    :pswitch_1b
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3198
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3196
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3190
    :pswitch_1c
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3191
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3189
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3183
    :pswitch_1d
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3184
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3182
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3176
    :pswitch_1e
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3177
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3175
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3169
    :pswitch_1f
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3170
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3168
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3162
    :pswitch_20
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3163
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3161
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3155
    :pswitch_21
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3156
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3154
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3147
    :pswitch_22
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3148
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3146
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3140
    :pswitch_23
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3141
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3139
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3133
    :pswitch_24
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3134
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3132
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3126
    :pswitch_25
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3127
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3125
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3119
    :pswitch_26
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3120
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3118
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3112
    :pswitch_27
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3113
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3111
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3106
    :pswitch_28
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3107
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3105
    invoke-static {v7, v6, p2}, Lcom/google/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_3

    .line 3099
    :pswitch_29
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3100
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3102
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v8

    .line 3098
    invoke-static {v7, v6, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_3

    .line 3093
    :pswitch_2a
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3094
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3092
    invoke-static {v7, v6, p2}, Lcom/google/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_3

    .line 3086
    :pswitch_2b
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3087
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3085
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3079
    :pswitch_2c
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3080
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3078
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3072
    :pswitch_2d
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3073
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3071
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3065
    :pswitch_2e
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3066
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3064
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3058
    :pswitch_2f
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3059
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3057
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3051
    :pswitch_30
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3052
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3050
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3044
    :pswitch_31
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3045
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3043
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3037
    :pswitch_32
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3038
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3036
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3028
    :pswitch_33
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3031
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 3032
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v8

    .line 3029
    invoke-interface {p2, v7, v6, v8}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_3

    .line 3023
    :pswitch_34
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3024
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_3

    .line 3018
    :pswitch_35
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3019
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_3

    .line 3013
    :pswitch_36
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3014
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_3

    .line 3008
    :pswitch_37
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3009
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_3

    .line 3003
    :pswitch_38
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3004
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_3

    .line 2998
    :pswitch_39
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2999
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_3

    .line 2992
    :pswitch_3a
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2994
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/ByteString;

    .line 2993
    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_3

    .line 2986
    :pswitch_3b
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2987
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 2988
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v8

    invoke-interface {p2, v7, v6, v8}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_3

    .line 2981
    :pswitch_3c
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2982
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v7, v6, p2}, Lcom/google/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_3

    .line 2976
    :pswitch_3d
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2977
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/MessageSchema;->booleanAt(Ljava/lang/Object;J)Z

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_3

    .line 2971
    :pswitch_3e
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2972
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto :goto_3

    .line 2966
    :pswitch_3f
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2967
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_3

    .line 2961
    :pswitch_40
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2962
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto :goto_3

    .line 2956
    :pswitch_41
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2957
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_3

    .line 2951
    :pswitch_42
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2952
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_3

    .line 2946
    :pswitch_43
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2947
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/MessageSchema;->floatAt(Ljava/lang/Object;J)F

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    goto :goto_3

    .line 2941
    :pswitch_44
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2942
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/MessageSchema;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_1

    :cond_4
    :goto_4
    if-eqz v5, :cond_6

    .line 3364
    iget-object v2, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v2, p2, v5}, Lcom/google/protobuf/ExtensionSchema;->serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 3365
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    move-object v5, v2

    goto :goto_4

    :cond_5
    move-object v5, v1

    goto :goto_4

    .line 3367
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/protobuf/MessageSchema;->writeUnknownInMessageTo(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

.method private writeFieldsInDescendingOrder(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 10
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

    .line 3372
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/protobuf/MessageSchema;->writeUnknownInMessageTo(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 3376
    iget-boolean v0, p0, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3377
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v0

    .line 3378
    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3379
    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3380
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    move-object v0, v1

    move-object v2, v0

    .line 3384
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x3

    :goto_1
    if-ltz v3, :cond_4

    .line 3385
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v4

    .line 3386
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    :goto_2
    if-eqz v2, :cond_2

    .line 3389
    iget-object v6, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v6, v2}, Lcom/google/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v6

    if-le v6, v5, :cond_2

    .line 3390
    iget-object v6, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v6, p2, v2}, Lcom/google/protobuf/ExtensionSchema;->serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 3391
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    move-object v2, v1

    goto :goto_2

    .line 3394
    :cond_2
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_3

    .line 3805
    :pswitch_0
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3808
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 3809
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v6

    .line 3806
    invoke-interface {p2, v5, v4, v6}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_3

    .line 3800
    :pswitch_1
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3801
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_3

    .line 3795
    :pswitch_2
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3796
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_3

    .line 3790
    :pswitch_3
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3791
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_3

    .line 3785
    :pswitch_4
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3786
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_3

    .line 3780
    :pswitch_5
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3781
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_3

    .line 3775
    :pswitch_6
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3776
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_3

    .line 3769
    :pswitch_7
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3771
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    .line 3770
    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_3

    .line 3763
    :pswitch_8
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3764
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 3765
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v6

    invoke-interface {p2, v5, v4, v6}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_3

    .line 3758
    :pswitch_9
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3759
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v5, v4, p2}, Lcom/google/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_3

    .line 3753
    :pswitch_a
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3754
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_3

    .line 3748
    :pswitch_b
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3749
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_3

    .line 3743
    :pswitch_c
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3744
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_3

    .line 3738
    :pswitch_d
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3739
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_3

    .line 3733
    :pswitch_e
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3734
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_3

    .line 3728
    :pswitch_f
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3729
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_3

    .line 3723
    :pswitch_10
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3724
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_3

    .line 3718
    :pswitch_11
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3719
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_3

    .line 3715
    :pswitch_12
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, p2, v5, v4, v3}, Lcom/google/protobuf/MessageSchema;->writeMapHelper(Lcom/google/protobuf/Writer;ILjava/lang/Object;I)V

    goto/16 :goto_3

    .line 3708
    :pswitch_13
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3709
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3711
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v6

    .line 3707
    invoke-static {v5, v4, p2, v6}, Lcom/google/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_3

    .line 3701
    :pswitch_14
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3702
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3700
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3694
    :pswitch_15
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3695
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3693
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3687
    :pswitch_16
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3688
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3686
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3680
    :pswitch_17
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3681
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3679
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3673
    :pswitch_18
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3674
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3672
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3666
    :pswitch_19
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3667
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3665
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3659
    :pswitch_1a
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3660
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3658
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3651
    :pswitch_1b
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3652
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3650
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3644
    :pswitch_1c
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3645
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3643
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3637
    :pswitch_1d
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3638
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3636
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3630
    :pswitch_1e
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3631
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3629
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3623
    :pswitch_1f
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3624
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3622
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3616
    :pswitch_20
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3617
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3615
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3609
    :pswitch_21
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3610
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3608
    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3602
    :pswitch_22
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3603
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3601
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3595
    :pswitch_23
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3596
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3594
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3588
    :pswitch_24
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3589
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3587
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3581
    :pswitch_25
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3582
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3580
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3574
    :pswitch_26
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3575
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3573
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3567
    :pswitch_27
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3568
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3566
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3561
    :pswitch_28
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3562
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3560
    invoke-static {v5, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_3

    .line 3554
    :pswitch_29
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3555
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3557
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v6

    .line 3553
    invoke-static {v5, v4, p2, v6}, Lcom/google/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_3

    .line 3548
    :pswitch_2a
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3549
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3547
    invoke-static {v5, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_3

    .line 3541
    :pswitch_2b
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3542
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3540
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3534
    :pswitch_2c
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3535
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3533
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3527
    :pswitch_2d
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3528
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3526
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3520
    :pswitch_2e
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3521
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3519
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3513
    :pswitch_2f
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3514
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3512
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3506
    :pswitch_30
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3507
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3505
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3499
    :pswitch_31
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3500
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3498
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3492
    :pswitch_32
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3493
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3491
    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_3

    .line 3483
    :pswitch_33
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3486
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 3487
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v6

    .line 3484
    invoke-interface {p2, v5, v4, v6}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_3

    .line 3478
    :pswitch_34
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3479
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_3

    .line 3473
    :pswitch_35
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3474
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_3

    .line 3468
    :pswitch_36
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3469
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_3

    .line 3463
    :pswitch_37
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3464
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_3

    .line 3458
    :pswitch_38
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3459
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_3

    .line 3453
    :pswitch_39
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3454
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_3

    .line 3447
    :pswitch_3a
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3449
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    .line 3448
    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_3

    .line 3441
    :pswitch_3b
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3442
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 3443
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v6

    invoke-interface {p2, v5, v4, v6}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_3

    .line 3436
    :pswitch_3c
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3437
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v5, v4, p2}, Lcom/google/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_3

    .line 3431
    :pswitch_3d
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3432
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->booleanAt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_3

    .line 3426
    :pswitch_3e
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3427
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto :goto_3

    .line 3421
    :pswitch_3f
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3422
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_3

    .line 3416
    :pswitch_40
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3417
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto :goto_3

    .line 3411
    :pswitch_41
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3412
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_3

    .line 3406
    :pswitch_42
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3407
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_3

    .line 3401
    :pswitch_43
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3402
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->floatAt(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    goto :goto_3

    .line 3396
    :pswitch_44
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3397
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, -0x3

    goto/16 :goto_1

    :cond_4
    :goto_4
    if-eqz v2, :cond_6

    .line 3817
    iget-object p1, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {p1, p2, v2}, Lcom/google/protobuf/ExtensionSchema;->serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 3818
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    move-object v2, p1

    goto :goto_4

    :cond_5
    move-object v2, v1

    goto :goto_4

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

.method private writeMapHelper(Lcom/google/protobuf/Writer;ILjava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Writer;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 3826
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 3828
    invoke-direct {p0, p4}, Lcom/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v0, p4}, Lcom/google/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$Metadata;

    move-result-object p4

    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 3829
    invoke-interface {v0, p3}, Lcom/google/protobuf/MapFieldSchema;->forMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    .line 3826
    invoke-interface {p1, p2, p4, p3}, Lcom/google/protobuf/Writer;->writeMap(ILcom/google/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5620
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5621
    check-cast p2, Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lcom/google/protobuf/Writer;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 5623
    :cond_0
    check-cast p2, Lcom/google/protobuf/ByteString;

    invoke-interface {p3, p1, p2}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :goto_0
    return-void
.end method

.method private writeUnknownInMessageTo(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3835
    invoke-virtual {p1, p2}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/UnknownFieldSchema;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 785
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 787
    invoke-direct {p0, p1, p2, v2}, Lcom/google/protobuf/MessageSchema;->equals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    .line 792
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 793
    iget-object v2, p0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v2, p2}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 794
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 798
    :cond_2
    iget-boolean v0, p0, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_3

    .line 799
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p1

    .line 800
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v0, p2}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p2

    .line 801
    invoke-virtual {p1, p2}, Lcom/google/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public getSerializedSize(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1409
    iget-boolean v0, p0, Lcom/google/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/protobuf/MessageSchema;->getSerializedSizeProto3(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/protobuf/MessageSchema;->getSerializedSizeProto2(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public hashCode(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 939
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 941
    invoke-direct {p0, v1}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v3

    .line 942
    invoke-direct {p0, v1}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 944
    invoke-static {v3}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v5

    .line 946
    invoke-static {v3}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v3

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 1146
    :pswitch_0
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1147
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 1148
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 1141
    :pswitch_1
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 1142
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 1136
    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 1137
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 1131
    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 1132
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 1126
    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 1127
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 1121
    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 1122
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 1116
    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 1117
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 1111
    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 1112
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 1105
    :pswitch_8
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1106
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 1107
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 1099
    :pswitch_9
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 1101
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 1094
    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 1095
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 1089
    :pswitch_b
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 1090
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 1084
    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 1085
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 1079
    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 1080
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 1074
    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 1075
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 1069
    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 1070
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 1064
    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 1065
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 1057
    :pswitch_11
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 1060
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    .line 1054
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    .line 1051
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 1012
    :pswitch_14
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1014
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto/16 :goto_1

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    .line 1006
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    .line 1003
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    .line 1000
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    .line 997
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    .line 994
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    .line 991
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    .line 988
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 980
    :pswitch_1c
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 982
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_1

    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    .line 975
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    .line 972
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    .line 969
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    .line 966
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    .line 963
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    .line 960
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    .line 957
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    .line 954
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    .line 951
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 950
    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    add-int/2addr v2, v3

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_3
    mul-int/lit8 v2, v2, 0x35

    .line 1157
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    .line 1159
    iget-boolean v0, p0, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_4

    mul-int/lit8 v2, v2, 0x35

    .line 1160
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/FieldSet;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    :cond_4
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
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

.method public final isInitialized(Ljava/lang/Object;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 5507
    :goto_0
    iget v4, p0, Lcom/google/protobuf/MessageSchema;->checkInitializedCount:I

    const/4 v5, 0x1

    if-ge v1, v4, :cond_7

    .line 5508
    iget-object v4, p0, Lcom/google/protobuf/MessageSchema;->intArray:[I

    aget v4, v4, v1

    .line 5509
    invoke-direct {p0, v4}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v6

    .line 5511
    invoke-direct {p0, v4}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v7

    .line 5515
    iget-boolean v8, p0, Lcom/google/protobuf/MessageSchema;->proto3:Z

    if-nez v8, :cond_0

    .line 5516
    iget-object v8, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v9, v4, 0x2

    aget v8, v8, v9

    const v9, 0xfffff

    and-int/2addr v9, v8

    ushr-int/lit8 v8, v8, 0x14

    shl-int/2addr v5, v8

    if-eq v9, v2, :cond_1

    .line 5521
    sget-object v2, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    int-to-long v10, v9

    invoke-virtual {v2, p1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    move v3, v2

    move v2, v9

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 5525
    :cond_1
    :goto_1
    invoke-static {v7}, Lcom/google/protobuf/MessageSchema;->isRequired(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 5526
    invoke-direct {p0, p1, v4, v3, v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;III)Z

    move-result v8

    if-nez v8, :cond_2

    return v0

    .line 5534
    :cond_2
    invoke-static {v7}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v8

    const/16 v9, 0x9

    if-eq v8, v9, :cond_5

    const/16 v9, 0x11

    if-eq v8, v9, :cond_5

    const/16 v5, 0x1b

    if-eq v8, v5, :cond_4

    const/16 v5, 0x3c

    if-eq v8, v5, :cond_3

    const/16 v5, 0x44

    if-eq v8, v5, :cond_3

    packed-switch v8, :pswitch_data_0

    goto :goto_2

    .line 5556
    :pswitch_0
    invoke-direct {p0, p1, v7, v4}, Lcom/google/protobuf/MessageSchema;->isMapInitialized(Ljava/lang/Object;II)Z

    move-result v4

    if-nez v4, :cond_6

    return v0

    .line 5550
    :cond_3
    invoke-direct {p0, p1, v6, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 5551
    invoke-direct {p0, v4}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v4

    invoke-static {p1, v7, v4}, Lcom/google/protobuf/MessageSchema;->isInitialized(Ljava/lang/Object;ILcom/google/protobuf/Schema;)Z

    move-result v4

    if-nez v4, :cond_6

    return v0

    .line 5544
    :cond_4
    :pswitch_1
    invoke-direct {p0, p1, v7, v4}, Lcom/google/protobuf/MessageSchema;->isListInitialized(Ljava/lang/Object;II)Z

    move-result v4

    if-nez v4, :cond_6

    return v0

    .line 5537
    :cond_5
    invoke-direct {p0, p1, v4, v3, v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 5538
    invoke-direct {p0, v4}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v4

    invoke-static {p1, v7, v4}, Lcom/google/protobuf/MessageSchema;->isInitialized(Ljava/lang/Object;ILcom/google/protobuf/Schema;)Z

    move-result v4

    if-nez v4, :cond_6

    return v0

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 5565
    :cond_7
    iget-boolean v1, p0, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v1, :cond_8

    .line 5566
    iget-object v1, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/FieldSet;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_8

    return v0

    :cond_8
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public makeImmutable(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 5403
    iget v0, p0, Lcom/google/protobuf/MessageSchema;->checkInitializedCount:I

    :goto_0
    iget v1, p0, Lcom/google/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v0, v1, :cond_1

    .line 5404
    iget-object v1, p0, Lcom/google/protobuf/MessageSchema;->intArray:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 5405
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 5409
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v4, v3}, Lcom/google/protobuf/MapFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5411
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->intArray:[I

    array-length v0, v0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 5413
    iget-object v2, p0, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    iget-object v3, p0, Lcom/google/protobuf/MessageSchema;->intArray:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/protobuf/ListFieldSchema;->makeImmutableListAt(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5415
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSchema;->makeImmutable(Ljava/lang/Object;)V

    .line 5416
    iget-boolean v0, p0, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_3

    .line 5417
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ExtensionSchema;->makeImmutable(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Reader;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 3844
    iget-object v1, p0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    iget-object v2, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->mergeFromHelper(Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void

    .line 3842
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    .line 1171
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1173
    invoke-direct {p0, p1, p2, v0}, Lcom/google/protobuf/MessageSchema;->mergeSingleField(Ljava/lang/Object;Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 1176
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/SchemaUtil;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1178
    iget-boolean v0, p0, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_1

    .line 1179
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/SchemaUtil;->mergeExtensions(Lcom/google/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 1169
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;[BIILcom/google/protobuf/ArrayDecoders$Registers;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5393
    iget-boolean v0, p0, Lcom/google/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_0

    .line 5394
    invoke-direct/range {p0 .. p5}, Lcom/google/protobuf/MessageSchema;->parseProto3Message(Ljava/lang/Object;[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    .line 5396
    invoke-virtual/range {v1 .. v7}, Lcom/google/protobuf/MessageSchema;->parseProto2Message(Ljava/lang/Object;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I

    :goto_0
    return-void
.end method

.method public newInstance()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 780
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->newInstanceSchema:Lcom/google/protobuf/NewInstanceSchema;

    iget-object v1, p0, Lcom/google/protobuf/MessageSchema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    invoke-interface {v0, v1}, Lcom/google/protobuf/NewInstanceSchema;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method parseProto2Message(Ljava/lang/Object;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    .line 4869
    sget-object v10, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    :goto_0
    if-ge v0, v13, :cond_24

    add-int/lit8 v3, v0, 0x1

    .line 4876
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 4878
    invoke-static {v0, v12, v3, v9}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32(I[BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4879
    iget v3, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    move v4, v0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    move v4, v3

    :goto_1
    ushr-int/lit8 v3, v5, 0x3

    and-int/lit8 v0, v5, 0x7

    const/4 v8, 0x3

    if-le v3, v1, :cond_1

    .line 4884
    div-int/2addr v2, v8

    invoke-direct {v15, v3, v2}, Lcom/google/protobuf/MessageSchema;->positionForFieldNumber(II)I

    move-result v1

    move v2, v1

    const/4 v1, -0x1

    goto :goto_2

    .line 4886
    :cond_1
    invoke-direct {v15, v3}, Lcom/google/protobuf/MessageSchema;->positionForFieldNumber(I)I

    move-result v1

    move v2, v1

    const/4 v1, -0x1

    :goto_2
    if-ne v2, v1, :cond_2

    move/from16 v17, v3

    move v2, v4

    move v8, v5

    move/from16 v22, v6

    move/from16 v19, v7

    move-object/from16 v28, v10

    move v0, v11

    const/16 v20, 0x0

    goto/16 :goto_e

    .line 4893
    :cond_2
    iget-object v1, v15, Lcom/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v18, v2, 0x1

    aget v1, v1, v18

    .line 4894
    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v8

    .line 4895
    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v11

    move/from16 v18, v5

    const/16 v5, 0x11

    move/from16 v19, v1

    if-gt v8, v5, :cond_16

    .line 4898
    iget-object v5, v15, Lcom/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v20, v2, 0x2

    aget v5, v5, v20

    ushr-int/lit8 v20, v5, 0x14

    const/4 v1, 0x1

    shl-int v20, v1, v20

    const v22, 0xfffff

    and-int v5, v5, v22

    if-eq v5, v7, :cond_4

    const/4 v13, -0x1

    if-eq v7, v13, :cond_3

    move/from16 v17, v2

    int-to-long v1, v7

    .line 4905
    invoke-virtual {v10, v14, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3

    :cond_3
    move/from16 v17, v2

    :goto_3
    int-to-long v1, v5

    .line 4908
    invoke-virtual {v10, v14, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    move v6, v1

    move v7, v5

    goto :goto_4

    :cond_4
    move/from16 v17, v2

    const/4 v13, -0x1

    :goto_4
    const/4 v1, 0x5

    packed-switch v8, :pswitch_data_0

    move v11, v4

    move/from16 v8, v17

    move/from16 v13, v18

    move-object/from16 v12, p2

    const/16 v18, -0x1

    move/from16 v17, v3

    goto/16 :goto_a

    :pswitch_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    shl-int/lit8 v0, v3, 0x3

    or-int/lit8 v5, v0, 0x4

    move/from16 v2, v17

    .line 5048
    invoke-direct {v15, v2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v0

    move-object/from16 v1, p2

    move v8, v2

    move v2, v4

    move/from16 v17, v3

    move/from16 v3, p4

    move v4, v5

    move/from16 v13, v18

    move-object/from16 v5, p6

    .line 5047
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/ArrayDecoders;->decodeGroupField(Lcom/google/protobuf/Schema;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    and-int v1, v6, v20

    if-nez v1, :cond_5

    .line 5050
    iget-object v1, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v10, v14, v11, v12, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 5056
    :cond_5
    invoke-virtual {v10, v14, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 5055
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5052
    invoke-virtual {v10, v14, v11, v12, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_5
    or-int v6, v6, v20

    move v2, v8

    move v3, v13

    move/from16 v1, v17

    move/from16 v11, p5

    move-object/from16 v12, p2

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_6
    move/from16 v8, v17

    move/from16 v13, v18

    move/from16 v17, v3

    move v11, v4

    move-object/from16 v12, p2

    const/16 v18, -0x1

    goto/16 :goto_a

    :pswitch_1
    move/from16 v8, v17

    move/from16 v13, v18

    move/from16 v17, v3

    if-nez v0, :cond_7

    move-wide v2, v11

    move-object/from16 v12, p2

    .line 5035
    invoke-static {v12, v4, v9}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v11

    .line 5036
    iget-wide v0, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    .line 5037
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v4

    move-object v0, v10

    move-object/from16 v1, p1

    .line 5036
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v20

    move v2, v8

    move v0, v11

    move v3, v13

    move/from16 v1, v17

    move/from16 v11, p5

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_7
    move-object/from16 v12, p2

    move v11, v4

    const/16 v18, -0x1

    goto/16 :goto_a

    :pswitch_2
    move/from16 v8, v17

    move/from16 v13, v18

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    if-nez v0, :cond_8

    .line 5026
    invoke-static {v12, v4, v9}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5027
    iget v1, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 5028
    invoke-static {v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v1

    .line 5027
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v6, v6, v20

    move v2, v8

    move v3, v13

    move/from16 v1, v17

    move/from16 v11, p5

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_8
    move v11, v4

    const/16 v18, -0x1

    goto/16 :goto_a

    :pswitch_3
    move/from16 v8, v17

    move/from16 v13, v18

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    if-nez v0, :cond_b

    .line 5011
    invoke-static {v12, v4, v9}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5012
    iget v1, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 5013
    invoke-direct {v15, v8}, Lcom/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 5014
    invoke-interface {v4, v1}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_6

    .line 5019
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v13, v1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    move v2, v8

    move v3, v13

    move/from16 v1, v17

    move/from16 v11, p5

    move/from16 v13, p4

    goto/16 :goto_0

    .line 5015
    :cond_a
    :goto_6
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v6, v6, v20

    move v2, v8

    move v3, v13

    move/from16 v1, v17

    move/from16 v11, p5

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_b
    move v11, v4

    const/16 v18, -0x1

    goto/16 :goto_a

    :pswitch_4
    move/from16 v8, v17

    move/from16 v13, v18

    const/4 v1, 0x2

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    if-ne v0, v1, :cond_c

    .line 5003
    invoke-static {v12, v4, v9}, Lcom/google/protobuf/ArrayDecoders;->decodeBytes([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5004
    iget-object v1, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v6, v6, v20

    move v2, v8

    move v3, v13

    move/from16 v1, v17

    move/from16 v11, p5

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_c
    move v11, v4

    const/16 v18, -0x1

    goto/16 :goto_a

    :pswitch_5
    move/from16 v8, v17

    move/from16 v13, v18

    const/4 v1, 0x2

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    if-ne v0, v1, :cond_e

    .line 4987
    invoke-direct {v15, v8}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v0

    move/from16 v11, p4

    const/16 v18, -0x1

    .line 4986
    invoke-static {v0, v12, v4, v11, v9}, Lcom/google/protobuf/ArrayDecoders;->decodeMessageField(Lcom/google/protobuf/Schema;[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    and-int v1, v6, v20

    if-nez v1, :cond_d

    .line 4989
    iget-object v1, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    .line 4995
    :cond_d
    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4994
    invoke-static {v1, v4}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4991
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_7
    or-int v6, v6, v20

    move v2, v8

    move v3, v13

    move/from16 v1, v17

    move v13, v11

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_e
    move/from16 v11, p4

    const/16 v18, -0x1

    move v11, v4

    goto/16 :goto_a

    :pswitch_6
    move/from16 v8, v17

    move/from16 v13, v18

    const/4 v1, 0x2

    const/16 v18, -0x1

    move/from16 v17, v3

    move-wide v2, v11

    move/from16 v11, p4

    move-object/from16 v12, p2

    if-ne v0, v1, :cond_10

    const/high16 v0, 0x20000000

    and-int v0, v19, v0

    if-nez v0, :cond_f

    .line 4974
    invoke-static {v12, v4, v9}, Lcom/google/protobuf/ArrayDecoders;->decodeString([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto :goto_8

    .line 4976
    :cond_f
    invoke-static {v12, v4, v9}, Lcom/google/protobuf/ArrayDecoders;->decodeStringRequireUtf8([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4978
    :goto_8
    iget-object v1, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v6, v6, v20

    move v2, v8

    move v3, v13

    move/from16 v1, v17

    move v13, v11

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_10
    move v11, v4

    goto/16 :goto_a

    :pswitch_7
    move/from16 v8, v17

    move/from16 v13, v18

    const/16 v18, -0x1

    move/from16 v17, v3

    move-wide v2, v11

    move/from16 v11, p4

    move-object/from16 v12, p2

    if-nez v0, :cond_12

    .line 4965
    invoke-static {v12, v4, v9}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4966
    iget-wide v4, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v23, 0x0

    cmp-long v1, v4, v23

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_9

    :cond_11
    const/4 v1, 0x0

    :goto_9
    invoke-static {v14, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    or-int v6, v6, v20

    move v2, v8

    move v3, v13

    move/from16 v1, v17

    move v13, v11

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_12
    move v11, v4

    goto/16 :goto_a

    :pswitch_8
    move/from16 v8, v17

    move/from16 v13, v18

    const/16 v18, -0x1

    move/from16 v17, v3

    move-wide v2, v11

    move/from16 v11, p4

    move-object/from16 v12, p2

    if-ne v0, v1, :cond_13

    .line 4957
    invoke-static {v12, v4}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v0

    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    or-int v6, v6, v20

    move v2, v8

    move v3, v13

    move/from16 v1, v17

    move v13, v11

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_13
    move v11, v4

    goto/16 :goto_a

    :pswitch_9
    move/from16 v8, v17

    move/from16 v13, v18

    const/4 v1, 0x1

    const/16 v18, -0x1

    move/from16 v17, v3

    move-wide v2, v11

    move/from16 v11, p4

    move-object/from16 v12, p2

    if-ne v0, v1, :cond_14

    .line 4948
    invoke-static {v12, v4}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v21

    move-object v0, v10

    move-object/from16 v1, p1

    move v11, v4

    move-wide/from16 v4, v21

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v11, 0x8

    or-int v6, v6, v20

    move v2, v8

    move v3, v13

    move/from16 v1, v17

    move/from16 v11, p5

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_14
    move v11, v4

    goto/16 :goto_a

    :pswitch_a
    move/from16 v8, v17

    move/from16 v13, v18

    const/16 v18, -0x1

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    move v11, v4

    if-nez v0, :cond_15

    .line 4939
    invoke-static {v12, v11, v9}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4940
    iget v1, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v6, v6, v20

    move v2, v8

    move v3, v13

    move/from16 v1, v17

    move/from16 v11, p5

    move/from16 v13, p4

    goto/16 :goto_0

    :pswitch_b
    move/from16 v8, v17

    move/from16 v13, v18

    const/16 v18, -0x1

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    move v11, v4

    if-nez v0, :cond_15

    .line 4930
    invoke-static {v12, v11, v9}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v11

    .line 4931
    iget-wide v4, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v20

    move v2, v8

    move v0, v11

    move v3, v13

    move/from16 v1, v17

    move/from16 v11, p5

    move/from16 v13, p4

    goto/16 :goto_0

    :pswitch_c
    move/from16 v8, v17

    move/from16 v13, v18

    const/16 v18, -0x1

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    move v11, v4

    if-ne v0, v1, :cond_15

    .line 4921
    invoke-static {v12, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v0

    invoke-static {v14, v2, v3, v0}, Lcom/google/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v11, 0x4

    or-int v6, v6, v20

    move v2, v8

    move v3, v13

    move/from16 v1, v17

    move/from16 v11, p5

    move/from16 v13, p4

    goto/16 :goto_0

    :pswitch_d
    move/from16 v8, v17

    move/from16 v13, v18

    const/4 v1, 0x1

    const/16 v18, -0x1

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    move v11, v4

    if-ne v0, v1, :cond_15

    .line 4913
    invoke-static {v12, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v0

    invoke-static {v14, v2, v3, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v11, 0x8

    or-int v6, v6, v20

    move v2, v8

    move v3, v13

    move/from16 v1, v17

    move/from16 v11, p5

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_15
    :goto_a
    move/from16 v22, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move-object/from16 v28, v10

    move v2, v11

    move v8, v13

    move/from16 v0, p5

    goto/16 :goto_e

    :cond_16
    move v5, v2

    move/from16 v17, v3

    move-wide v2, v11

    move/from16 v13, v18

    move-object/from16 v12, p2

    const/16 v18, -0x1

    move v11, v4

    const/16 v1, 0x1b

    if-ne v8, v1, :cond_1a

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 5069
    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Internal$ProtobufList;

    .line 5070
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_18

    .line 5071
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_17

    const/16 v1, 0xa

    goto :goto_b

    :cond_17
    mul-int/lit8 v1, v1, 0x2

    .line 5073
    :goto_b
    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 5075
    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v8, v0

    goto :goto_c

    :cond_18
    move-object v8, v0

    .line 5079
    :goto_c
    invoke-direct {v15, v5}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v0

    move v1, v13

    move-object/from16 v2, p2

    move v3, v11

    move/from16 v4, p4

    move/from16 v20, v5

    move-object v5, v8

    move/from16 v22, v6

    move-object/from16 v6, p6

    .line 5078
    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/ArrayDecoders;->decodeMessageList(Lcom/google/protobuf/Schema;I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move v3, v13

    move/from16 v1, v17

    move/from16 v2, v20

    move/from16 v6, v22

    move/from16 v11, p5

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_19
    move/from16 v20, v5

    move/from16 v22, v6

    move/from16 v19, v7

    move-object/from16 v28, v10

    move v15, v11

    move/from16 v18, v13

    goto/16 :goto_d

    :cond_1a
    move/from16 v20, v5

    move/from16 v22, v6

    const/16 v1, 0x31

    if-gt v8, v1, :cond_1c

    move/from16 v1, v19

    int-to-long v5, v1

    move v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v23, v2

    move-object/from16 v2, p2

    move v3, v11

    move/from16 p3, v4

    move/from16 v4, p4

    move-wide/from16 v25, v5

    move v5, v13

    move/from16 v6, v17

    move/from16 v19, v7

    move/from16 v7, p3

    move/from16 v27, v8

    move/from16 v8, v20

    move-object/from16 v28, v10

    move-wide/from16 v9, v25

    move v15, v11

    move/from16 v11, v27

    move/from16 v18, v13

    move-wide/from16 v12, v23

    move-object/from16 v14, p6

    .line 5086
    invoke-direct/range {v0 .. v14}, Lcom/google/protobuf/MessageSchema;->parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-eq v0, v15, :cond_1b

    move-object/from16 v12, p2

    move/from16 v1, v17

    move/from16 v3, v18

    move/from16 v7, v19

    move/from16 v2, v20

    move/from16 v6, v22

    move-object/from16 v10, v28

    move-object/from16 v9, p6

    move/from16 v11, p5

    move/from16 v13, p4

    move-object/from16 v14, p1

    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_1b
    move v2, v0

    move/from16 v8, v18

    move/from16 v0, p5

    goto/16 :goto_e

    :cond_1c
    move/from16 p3, v0

    move-wide/from16 v23, v2

    move/from16 v27, v8

    move-object/from16 v28, v10

    move v15, v11

    move/from16 v18, v13

    move/from16 v1, v19

    move/from16 v19, v7

    const/16 v0, 0x32

    move/from16 v9, v27

    if-ne v9, v0, :cond_1f

    move/from16 v7, p3

    const/4 v0, 0x2

    if-ne v7, v0, :cond_1e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v20

    move-wide/from16 v6, v23

    move-object/from16 v8, p6

    .line 5105
    invoke-direct/range {v0 .. v8}, Lcom/google/protobuf/MessageSchema;->parseMapField(Ljava/lang/Object;[BIIIJLcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-eq v0, v15, :cond_1d

    move-object/from16 v12, p2

    move/from16 v1, v17

    move/from16 v3, v18

    move/from16 v7, v19

    move/from16 v2, v20

    move/from16 v6, v22

    move-object/from16 v10, v28

    move-object/from16 v9, p6

    move/from16 v11, p5

    move/from16 v13, p4

    move-object/from16 v14, p1

    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_1d
    move v2, v0

    move/from16 v8, v18

    move/from16 v0, p5

    goto :goto_e

    :cond_1e
    :goto_d
    move v2, v15

    move/from16 v8, v18

    move/from16 v0, p5

    goto :goto_e

    :cond_1f
    move/from16 v7, p3

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v18

    move/from16 v6, v17

    move-wide/from16 v10, v23

    move/from16 v12, v20

    move-object/from16 v13, p6

    .line 5113
    invoke-direct/range {v0 .. v13}, Lcom/google/protobuf/MessageSchema;->parseOneofField(Ljava/lang/Object;[BIIIIIIIJILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-eq v0, v15, :cond_20

    move-object/from16 v12, p2

    move/from16 v1, v17

    move/from16 v3, v18

    move/from16 v7, v19

    move/from16 v2, v20

    move/from16 v6, v22

    move-object/from16 v10, v28

    move-object/from16 v9, p6

    move/from16 v11, p5

    move/from16 v13, p4

    move-object/from16 v14, p1

    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_20
    move v2, v0

    move/from16 v8, v18

    move/from16 v0, p5

    :goto_e
    if-ne v8, v0, :cond_21

    if-eqz v0, :cond_21

    move v10, v0

    move v3, v8

    move/from16 v0, v19

    move/from16 v1, v22

    const/4 v4, -0x1

    move-object/from16 v9, p0

    goto/16 :goto_10

    :cond_21
    move v10, v0

    move-object/from16 v9, p0

    .line 5135
    iget-boolean v0, v9, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_22

    move-object/from16 v11, p6

    iget-object v0, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 5136
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v1

    if-eq v0, v1, :cond_23

    .line 5137
    iget-object v5, v9, Lcom/google/protobuf/MessageSchema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    iget-object v6, v9, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    move v0, v8

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v7}, Lcom/google/protobuf/ArrayDecoders;->decodeExtensionOrUnknownField(I[BIILjava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto :goto_f

    :cond_22
    move-object/from16 v11, p6

    .line 5143
    :cond_23
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v4

    move v0, v8

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 5142
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/ArrayDecoders;->decodeUnknownField(I[BIILcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    :goto_f
    move-object/from16 v12, p2

    move v3, v8

    move-object v15, v9

    move-object v9, v11

    move/from16 v1, v17

    move/from16 v7, v19

    move/from16 v2, v20

    move/from16 v6, v22

    move/from16 v13, p4

    move-object/from16 v14, p1

    move v11, v10

    move-object/from16 v10, v28

    goto/16 :goto_0

    :cond_24
    move/from16 v22, v6

    move/from16 v19, v7

    move-object/from16 v28, v10

    move v10, v11

    move-object v9, v15

    move v2, v0

    move/from16 v0, v19

    move/from16 v1, v22

    const/4 v4, -0x1

    :goto_10
    if-eq v0, v4, :cond_25

    int-to-long v4, v0

    move-object/from16 v6, v28

    move-object/from16 v0, p1

    .line 5147
    invoke-virtual {v6, v0, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_11

    :cond_25
    move-object/from16 v0, p1

    :goto_11
    const/4 v1, 0x0

    .line 5150
    iget v4, v9, Lcom/google/protobuf/MessageSchema;->checkInitializedCount:I

    :goto_12
    iget v5, v9, Lcom/google/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v4, v5, :cond_26

    .line 5151
    iget-object v5, v9, Lcom/google/protobuf/MessageSchema;->intArray:[I

    aget v5, v5, v4

    iget-object v6, v9, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    .line 5152
    invoke-direct {v9, v0, v5, v1, v6}, Lcom/google/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/UnknownFieldSetLite;

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_26
    if-eqz v1, :cond_27

    .line 5159
    iget-object v4, v9, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    .line 5160
    invoke-virtual {v4, v0, v1}, Lcom/google/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    if-nez v10, :cond_29

    move/from16 v0, p4

    if-ne v2, v0, :cond_28

    goto :goto_13

    .line 5164
    :cond_28
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_29
    move/from16 v0, p4

    if-gt v2, v0, :cond_2a

    if-ne v3, v10, :cond_2a

    :goto_13
    return v2

    .line 5168
    :cond_2a
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 2
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

    .line 2529
    invoke-interface {p2}, Lcom/google/protobuf/Writer;->fieldOrder()Lcom/google/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/google/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_0

    .line 2530
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/MessageSchema;->writeFieldsInDescendingOrder(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto :goto_0

    .line 2532
    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_1

    .line 2533
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/MessageSchema;->writeFieldsInAscendingOrderProto3(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto :goto_0

    .line 2535
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/MessageSchema;->writeFieldsInAscendingOrderProto2(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    :goto_0
    return-void
.end method
