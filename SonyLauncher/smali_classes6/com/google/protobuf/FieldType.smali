.class public final enum Lcom/google/protobuf/FieldType;
.super Ljava/lang/Enum;
.source "FieldType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/FieldType$Collection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/FieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/FieldType;

.field public static final enum BOOL:Lcom/google/protobuf/FieldType;

.field public static final enum BOOL_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum BOOL_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum BYTES:Lcom/google/protobuf/FieldType;

.field public static final enum BYTES_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum DOUBLE:Lcom/google/protobuf/FieldType;

.field public static final enum DOUBLE_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum DOUBLE_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field private static final EMPTY_TYPES:[Ljava/lang/reflect/Type;

.field public static final enum ENUM:Lcom/google/protobuf/FieldType;

.field public static final enum ENUM_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum ENUM_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum FIXED32:Lcom/google/protobuf/FieldType;

.field public static final enum FIXED32_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum FIXED32_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum FIXED64:Lcom/google/protobuf/FieldType;

.field public static final enum FIXED64_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum FIXED64_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum FLOAT:Lcom/google/protobuf/FieldType;

.field public static final enum FLOAT_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum FLOAT_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum GROUP:Lcom/google/protobuf/FieldType;

.field public static final enum GROUP_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum INT32:Lcom/google/protobuf/FieldType;

.field public static final enum INT32_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum INT32_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum INT64:Lcom/google/protobuf/FieldType;

.field public static final enum INT64_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum INT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum MAP:Lcom/google/protobuf/FieldType;

.field public static final enum MESSAGE:Lcom/google/protobuf/FieldType;

.field public static final enum MESSAGE_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum SFIXED32:Lcom/google/protobuf/FieldType;

.field public static final enum SFIXED32_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum SFIXED32_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum SFIXED64:Lcom/google/protobuf/FieldType;

.field public static final enum SFIXED64_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum SFIXED64_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum SINT32:Lcom/google/protobuf/FieldType;

.field public static final enum SINT32_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum SINT32_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum SINT64:Lcom/google/protobuf/FieldType;

.field public static final enum SINT64_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum SINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum STRING:Lcom/google/protobuf/FieldType;

.field public static final enum STRING_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum UINT32:Lcom/google/protobuf/FieldType;

.field public static final enum UINT32_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum UINT32_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum UINT64:Lcom/google/protobuf/FieldType;

.field public static final enum UINT64_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum UINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field private static final VALUES:[Lcom/google/protobuf/FieldType;


# instance fields
.field private final collection:Lcom/google/protobuf/FieldType$Collection;

.field private final elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final id:I

.field private final javaType:Lcom/google/protobuf/JavaType;

.field private final primitiveScalar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 62

    .line 42
    new-instance v6, Lcom/google/protobuf/FieldType;

    sget-object v4, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v5, Lcom/google/protobuf/JavaType;->DOUBLE:Lcom/google/protobuf/JavaType;

    const-string v1, "DOUBLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v6, Lcom/google/protobuf/FieldType;->DOUBLE:Lcom/google/protobuf/FieldType;

    .line 43
    new-instance v0, Lcom/google/protobuf/FieldType;

    sget-object v11, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v12, Lcom/google/protobuf/JavaType;->FLOAT:Lcom/google/protobuf/JavaType;

    const-string v8, "FLOAT"

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v0, Lcom/google/protobuf/FieldType;->FLOAT:Lcom/google/protobuf/FieldType;

    .line 44
    new-instance v1, Lcom/google/protobuf/FieldType;

    sget-object v17, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v18, Lcom/google/protobuf/JavaType;->LONG:Lcom/google/protobuf/JavaType;

    const-string v14, "INT64"

    const/4 v15, 0x2

    const/16 v16, 0x2

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v1, Lcom/google/protobuf/FieldType;->INT64:Lcom/google/protobuf/FieldType;

    .line 45
    new-instance v2, Lcom/google/protobuf/FieldType;

    sget-object v11, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v12, Lcom/google/protobuf/JavaType;->LONG:Lcom/google/protobuf/JavaType;

    const-string v8, "UINT64"

    const/4 v9, 0x3

    const/4 v10, 0x3

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v2, Lcom/google/protobuf/FieldType;->UINT64:Lcom/google/protobuf/FieldType;

    .line 46
    new-instance v3, Lcom/google/protobuf/FieldType;

    sget-object v17, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v18, Lcom/google/protobuf/JavaType;->INT:Lcom/google/protobuf/JavaType;

    const-string v14, "INT32"

    const/4 v15, 0x4

    const/16 v16, 0x4

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->INT32:Lcom/google/protobuf/FieldType;

    .line 47
    new-instance v4, Lcom/google/protobuf/FieldType;

    sget-object v11, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v12, Lcom/google/protobuf/JavaType;->LONG:Lcom/google/protobuf/JavaType;

    const-string v8, "FIXED64"

    const/4 v9, 0x5

    const/4 v10, 0x5

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v4, Lcom/google/protobuf/FieldType;->FIXED64:Lcom/google/protobuf/FieldType;

    .line 48
    new-instance v5, Lcom/google/protobuf/FieldType;

    sget-object v17, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v18, Lcom/google/protobuf/JavaType;->INT:Lcom/google/protobuf/JavaType;

    const-string v14, "FIXED32"

    const/4 v15, 0x6

    const/16 v16, 0x6

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v5, Lcom/google/protobuf/FieldType;->FIXED32:Lcom/google/protobuf/FieldType;

    .line 49
    new-instance v13, Lcom/google/protobuf/FieldType;

    sget-object v11, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v12, Lcom/google/protobuf/JavaType;->BOOLEAN:Lcom/google/protobuf/JavaType;

    const-string v8, "BOOL"

    const/4 v9, 0x7

    const/4 v10, 0x7

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v13, Lcom/google/protobuf/FieldType;->BOOL:Lcom/google/protobuf/FieldType;

    .line 50
    new-instance v7, Lcom/google/protobuf/FieldType;

    sget-object v18, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v19, Lcom/google/protobuf/JavaType;->STRING:Lcom/google/protobuf/JavaType;

    const-string v15, "STRING"

    const/16 v16, 0x8

    const/16 v17, 0x8

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v7, Lcom/google/protobuf/FieldType;->STRING:Lcom/google/protobuf/FieldType;

    .line 51
    new-instance v8, Lcom/google/protobuf/FieldType;

    sget-object v24, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v25, Lcom/google/protobuf/JavaType;->MESSAGE:Lcom/google/protobuf/JavaType;

    const-string v21, "MESSAGE"

    const/16 v22, 0x9

    const/16 v23, 0x9

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v8, Lcom/google/protobuf/FieldType;->MESSAGE:Lcom/google/protobuf/FieldType;

    .line 52
    new-instance v9, Lcom/google/protobuf/FieldType;

    sget-object v18, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v19, Lcom/google/protobuf/JavaType;->BYTE_STRING:Lcom/google/protobuf/JavaType;

    const-string v15, "BYTES"

    const/16 v16, 0xa

    const/16 v17, 0xa

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v9, Lcom/google/protobuf/FieldType;->BYTES:Lcom/google/protobuf/FieldType;

    .line 53
    new-instance v10, Lcom/google/protobuf/FieldType;

    sget-object v24, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v25, Lcom/google/protobuf/JavaType;->INT:Lcom/google/protobuf/JavaType;

    const-string v21, "UINT32"

    const/16 v22, 0xb

    const/16 v23, 0xb

    move-object/from16 v20, v10

    invoke-direct/range {v20 .. v25}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v10, Lcom/google/protobuf/FieldType;->UINT32:Lcom/google/protobuf/FieldType;

    .line 54
    new-instance v11, Lcom/google/protobuf/FieldType;

    sget-object v18, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v19, Lcom/google/protobuf/JavaType;->ENUM:Lcom/google/protobuf/JavaType;

    const-string v15, "ENUM"

    const/16 v16, 0xc

    const/16 v17, 0xc

    move-object v14, v11

    invoke-direct/range {v14 .. v19}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v11, Lcom/google/protobuf/FieldType;->ENUM:Lcom/google/protobuf/FieldType;

    .line 55
    new-instance v12, Lcom/google/protobuf/FieldType;

    sget-object v24, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v25, Lcom/google/protobuf/JavaType;->INT:Lcom/google/protobuf/JavaType;

    const-string v21, "SFIXED32"

    const/16 v22, 0xd

    const/16 v23, 0xd

    move-object/from16 v20, v12

    invoke-direct/range {v20 .. v25}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v12, Lcom/google/protobuf/FieldType;->SFIXED32:Lcom/google/protobuf/FieldType;

    .line 56
    new-instance v20, Lcom/google/protobuf/FieldType;

    sget-object v18, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v19, Lcom/google/protobuf/JavaType;->LONG:Lcom/google/protobuf/JavaType;

    const-string v15, "SFIXED64"

    const/16 v16, 0xe

    const/16 v17, 0xe

    move-object/from16 v14, v20

    invoke-direct/range {v14 .. v19}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v20, Lcom/google/protobuf/FieldType;->SFIXED64:Lcom/google/protobuf/FieldType;

    .line 57
    new-instance v14, Lcom/google/protobuf/FieldType;

    sget-object v25, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v26, Lcom/google/protobuf/JavaType;->INT:Lcom/google/protobuf/JavaType;

    const-string v22, "SINT32"

    const/16 v23, 0xf

    const/16 v24, 0xf

    move-object/from16 v21, v14

    invoke-direct/range {v21 .. v26}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v14, Lcom/google/protobuf/FieldType;->SINT32:Lcom/google/protobuf/FieldType;

    .line 58
    new-instance v15, Lcom/google/protobuf/FieldType;

    sget-object v31, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v32, Lcom/google/protobuf/JavaType;->LONG:Lcom/google/protobuf/JavaType;

    const-string v28, "SINT64"

    const/16 v29, 0x10

    const/16 v30, 0x10

    move-object/from16 v27, v15

    invoke-direct/range {v27 .. v32}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v15, Lcom/google/protobuf/FieldType;->SINT64:Lcom/google/protobuf/FieldType;

    .line 59
    new-instance v16, Lcom/google/protobuf/FieldType;

    sget-object v25, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v26, Lcom/google/protobuf/JavaType;->MESSAGE:Lcom/google/protobuf/JavaType;

    const-string v22, "GROUP"

    const/16 v23, 0x11

    const/16 v24, 0x11

    move-object/from16 v21, v16

    invoke-direct/range {v21 .. v26}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v16, Lcom/google/protobuf/FieldType;->GROUP:Lcom/google/protobuf/FieldType;

    .line 60
    new-instance v17, Lcom/google/protobuf/FieldType;

    sget-object v31, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v32, Lcom/google/protobuf/JavaType;->DOUBLE:Lcom/google/protobuf/JavaType;

    const-string v28, "DOUBLE_LIST"

    const/16 v29, 0x12

    const/16 v30, 0x12

    move-object/from16 v27, v17

    invoke-direct/range {v27 .. v32}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v17, Lcom/google/protobuf/FieldType;->DOUBLE_LIST:Lcom/google/protobuf/FieldType;

    .line 61
    new-instance v18, Lcom/google/protobuf/FieldType;

    sget-object v25, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v26, Lcom/google/protobuf/JavaType;->FLOAT:Lcom/google/protobuf/JavaType;

    const-string v22, "FLOAT_LIST"

    const/16 v23, 0x13

    const/16 v24, 0x13

    move-object/from16 v21, v18

    invoke-direct/range {v21 .. v26}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v18, Lcom/google/protobuf/FieldType;->FLOAT_LIST:Lcom/google/protobuf/FieldType;

    .line 62
    new-instance v19, Lcom/google/protobuf/FieldType;

    sget-object v31, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v32, Lcom/google/protobuf/JavaType;->LONG:Lcom/google/protobuf/JavaType;

    const-string v28, "INT64_LIST"

    const/16 v29, 0x14

    const/16 v30, 0x14

    move-object/from16 v27, v19

    invoke-direct/range {v27 .. v32}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v19, Lcom/google/protobuf/FieldType;->INT64_LIST:Lcom/google/protobuf/FieldType;

    .line 63
    new-instance v27, Lcom/google/protobuf/FieldType;

    sget-object v25, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v26, Lcom/google/protobuf/JavaType;->LONG:Lcom/google/protobuf/JavaType;

    const-string v22, "UINT64_LIST"

    const/16 v23, 0x15

    const/16 v24, 0x15

    move-object/from16 v21, v27

    invoke-direct/range {v21 .. v26}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v27, Lcom/google/protobuf/FieldType;->UINT64_LIST:Lcom/google/protobuf/FieldType;

    .line 64
    new-instance v21, Lcom/google/protobuf/FieldType;

    sget-object v32, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v33, Lcom/google/protobuf/JavaType;->INT:Lcom/google/protobuf/JavaType;

    const-string v29, "INT32_LIST"

    const/16 v30, 0x16

    const/16 v31, 0x16

    move-object/from16 v28, v21

    invoke-direct/range {v28 .. v33}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v21, Lcom/google/protobuf/FieldType;->INT32_LIST:Lcom/google/protobuf/FieldType;

    .line 65
    new-instance v22, Lcom/google/protobuf/FieldType;

    sget-object v38, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v39, Lcom/google/protobuf/JavaType;->LONG:Lcom/google/protobuf/JavaType;

    const-string v35, "FIXED64_LIST"

    const/16 v36, 0x17

    const/16 v37, 0x17

    move-object/from16 v34, v22

    invoke-direct/range {v34 .. v39}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v22, Lcom/google/protobuf/FieldType;->FIXED64_LIST:Lcom/google/protobuf/FieldType;

    .line 66
    new-instance v23, Lcom/google/protobuf/FieldType;

    sget-object v32, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v33, Lcom/google/protobuf/JavaType;->INT:Lcom/google/protobuf/JavaType;

    const-string v29, "FIXED32_LIST"

    const/16 v30, 0x18

    const/16 v31, 0x18

    move-object/from16 v28, v23

    invoke-direct/range {v28 .. v33}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v23, Lcom/google/protobuf/FieldType;->FIXED32_LIST:Lcom/google/protobuf/FieldType;

    .line 67
    new-instance v24, Lcom/google/protobuf/FieldType;

    sget-object v38, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v39, Lcom/google/protobuf/JavaType;->BOOLEAN:Lcom/google/protobuf/JavaType;

    const-string v35, "BOOL_LIST"

    const/16 v36, 0x19

    const/16 v37, 0x19

    move-object/from16 v34, v24

    invoke-direct/range {v34 .. v39}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v24, Lcom/google/protobuf/FieldType;->BOOL_LIST:Lcom/google/protobuf/FieldType;

    .line 68
    new-instance v25, Lcom/google/protobuf/FieldType;

    sget-object v32, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v33, Lcom/google/protobuf/JavaType;->STRING:Lcom/google/protobuf/JavaType;

    const-string v29, "STRING_LIST"

    const/16 v30, 0x1a

    const/16 v31, 0x1a

    move-object/from16 v28, v25

    invoke-direct/range {v28 .. v33}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v25, Lcom/google/protobuf/FieldType;->STRING_LIST:Lcom/google/protobuf/FieldType;

    .line 69
    new-instance v26, Lcom/google/protobuf/FieldType;

    sget-object v38, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v39, Lcom/google/protobuf/JavaType;->MESSAGE:Lcom/google/protobuf/JavaType;

    const-string v35, "MESSAGE_LIST"

    const/16 v36, 0x1b

    const/16 v37, 0x1b

    move-object/from16 v34, v26

    invoke-direct/range {v34 .. v39}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v26, Lcom/google/protobuf/FieldType;->MESSAGE_LIST:Lcom/google/protobuf/FieldType;

    .line 70
    new-instance v34, Lcom/google/protobuf/FieldType;

    sget-object v32, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v33, Lcom/google/protobuf/JavaType;->BYTE_STRING:Lcom/google/protobuf/JavaType;

    const-string v29, "BYTES_LIST"

    const/16 v30, 0x1c

    const/16 v31, 0x1c

    move-object/from16 v28, v34

    invoke-direct/range {v28 .. v33}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v34, Lcom/google/protobuf/FieldType;->BYTES_LIST:Lcom/google/protobuf/FieldType;

    .line 71
    new-instance v28, Lcom/google/protobuf/FieldType;

    sget-object v39, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v40, Lcom/google/protobuf/JavaType;->INT:Lcom/google/protobuf/JavaType;

    const-string v36, "UINT32_LIST"

    const/16 v37, 0x1d

    const/16 v38, 0x1d

    move-object/from16 v35, v28

    invoke-direct/range {v35 .. v40}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v28, Lcom/google/protobuf/FieldType;->UINT32_LIST:Lcom/google/protobuf/FieldType;

    .line 72
    new-instance v29, Lcom/google/protobuf/FieldType;

    sget-object v45, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v46, Lcom/google/protobuf/JavaType;->ENUM:Lcom/google/protobuf/JavaType;

    const-string v42, "ENUM_LIST"

    const/16 v43, 0x1e

    const/16 v44, 0x1e

    move-object/from16 v41, v29

    invoke-direct/range {v41 .. v46}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v29, Lcom/google/protobuf/FieldType;->ENUM_LIST:Lcom/google/protobuf/FieldType;

    .line 73
    new-instance v30, Lcom/google/protobuf/FieldType;

    sget-object v39, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v40, Lcom/google/protobuf/JavaType;->INT:Lcom/google/protobuf/JavaType;

    const-string v36, "SFIXED32_LIST"

    const/16 v37, 0x1f

    const/16 v38, 0x1f

    move-object/from16 v35, v30

    invoke-direct/range {v35 .. v40}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v30, Lcom/google/protobuf/FieldType;->SFIXED32_LIST:Lcom/google/protobuf/FieldType;

    .line 74
    new-instance v31, Lcom/google/protobuf/FieldType;

    sget-object v45, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v46, Lcom/google/protobuf/JavaType;->LONG:Lcom/google/protobuf/JavaType;

    const-string v42, "SFIXED64_LIST"

    const/16 v43, 0x20

    const/16 v44, 0x20

    move-object/from16 v41, v31

    invoke-direct/range {v41 .. v46}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v31, Lcom/google/protobuf/FieldType;->SFIXED64_LIST:Lcom/google/protobuf/FieldType;

    .line 75
    new-instance v32, Lcom/google/protobuf/FieldType;

    sget-object v39, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v40, Lcom/google/protobuf/JavaType;->INT:Lcom/google/protobuf/JavaType;

    const-string v36, "SINT32_LIST"

    const/16 v37, 0x21

    const/16 v38, 0x21

    move-object/from16 v35, v32

    invoke-direct/range {v35 .. v40}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v32, Lcom/google/protobuf/FieldType;->SINT32_LIST:Lcom/google/protobuf/FieldType;

    .line 76
    new-instance v33, Lcom/google/protobuf/FieldType;

    sget-object v45, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v46, Lcom/google/protobuf/JavaType;->LONG:Lcom/google/protobuf/JavaType;

    const-string v42, "SINT64_LIST"

    const/16 v43, 0x22

    const/16 v44, 0x22

    move-object/from16 v41, v33

    invoke-direct/range {v41 .. v46}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v33, Lcom/google/protobuf/FieldType;->SINT64_LIST:Lcom/google/protobuf/FieldType;

    .line 77
    new-instance v41, Lcom/google/protobuf/FieldType;

    sget-object v39, Lcom/google/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v40, Lcom/google/protobuf/JavaType;->DOUBLE:Lcom/google/protobuf/JavaType;

    const-string v36, "DOUBLE_LIST_PACKED"

    const/16 v37, 0x23

    const/16 v38, 0x23

    move-object/from16 v35, v41

    invoke-direct/range {v35 .. v40}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v41, Lcom/google/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 78
    new-instance v35, Lcom/google/protobuf/FieldType;

    sget-object v46, Lcom/google/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v47, Lcom/google/protobuf/JavaType;->FLOAT:Lcom/google/protobuf/JavaType;

    const-string v43, "FLOAT_LIST_PACKED"

    const/16 v44, 0x24

    const/16 v45, 0x24

    move-object/from16 v42, v35

    invoke-direct/range {v42 .. v47}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v35, Lcom/google/protobuf/FieldType;->FLOAT_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 79
    new-instance v36, Lcom/google/protobuf/FieldType;

    sget-object v52, Lcom/google/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v53, Lcom/google/protobuf/JavaType;->LONG:Lcom/google/protobuf/JavaType;

    const-string v49, "INT64_LIST_PACKED"

    const/16 v50, 0x25

    const/16 v51, 0x25

    move-object/from16 v48, v36

    invoke-direct/range {v48 .. v53}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v36, Lcom/google/protobuf/FieldType;->INT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 80
    new-instance v37, Lcom/google/protobuf/FieldType;

    sget-object v46, Lcom/google/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v47, Lcom/google/protobuf/JavaType;->LONG:Lcom/google/protobuf/JavaType;

    const-string v43, "UINT64_LIST_PACKED"

    const/16 v44, 0x26

    const/16 v45, 0x26

    move-object/from16 v42, v37

    invoke-direct/range {v42 .. v47}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v37, Lcom/google/protobuf/FieldType;->UINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 81
    new-instance v38, Lcom/google/protobuf/FieldType;

    sget-object v52, Lcom/google/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v53, Lcom/google/protobuf/JavaType;->INT:Lcom/google/protobuf/JavaType;

    const-string v49, "INT32_LIST_PACKED"

    const/16 v50, 0x27

    const/16 v51, 0x27

    move-object/from16 v48, v38

    invoke-direct/range {v48 .. v53}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v38, Lcom/google/protobuf/FieldType;->INT32_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 82
    new-instance v39, Lcom/google/protobuf/FieldType;

    sget-object v46, Lcom/google/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v47, Lcom/google/protobuf/JavaType;->LONG:Lcom/google/protobuf/JavaType;

    const-string v43, "FIXED64_LIST_PACKED"

    const/16 v44, 0x28

    const/16 v45, 0x28

    move-object/from16 v42, v39

    invoke-direct/range {v42 .. v47}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v39, Lcom/google/protobuf/FieldType;->FIXED64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 83
    new-instance v40, Lcom/google/protobuf/FieldType;

    sget-object v52, Lcom/google/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v53, Lcom/google/protobuf/JavaType;->INT:Lcom/google/protobuf/JavaType;

    const-string v49, "FIXED32_LIST_PACKED"

    const/16 v50, 0x29

    const/16 v51, 0x29

    move-object/from16 v48, v40

    invoke-direct/range {v48 .. v53}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v40, Lcom/google/protobuf/FieldType;->FIXED32_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 84
    new-instance v48, Lcom/google/protobuf/FieldType;

    sget-object v46, Lcom/google/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v47, Lcom/google/protobuf/JavaType;->BOOLEAN:Lcom/google/protobuf/JavaType;

    const-string v43, "BOOL_LIST_PACKED"

    const/16 v44, 0x2a

    const/16 v45, 0x2a

    move-object/from16 v42, v48

    invoke-direct/range {v42 .. v47}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v48, Lcom/google/protobuf/FieldType;->BOOL_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 85
    new-instance v42, Lcom/google/protobuf/FieldType;

    sget-object v53, Lcom/google/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v54, Lcom/google/protobuf/JavaType;->INT:Lcom/google/protobuf/JavaType;

    const-string v50, "UINT32_LIST_PACKED"

    const/16 v51, 0x2b

    const/16 v52, 0x2b

    move-object/from16 v49, v42

    invoke-direct/range {v49 .. v54}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v42, Lcom/google/protobuf/FieldType;->UINT32_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 86
    new-instance v43, Lcom/google/protobuf/FieldType;

    sget-object v59, Lcom/google/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v60, Lcom/google/protobuf/JavaType;->ENUM:Lcom/google/protobuf/JavaType;

    const-string v56, "ENUM_LIST_PACKED"

    const/16 v57, 0x2c

    const/16 v58, 0x2c

    move-object/from16 v55, v43

    invoke-direct/range {v55 .. v60}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v43, Lcom/google/protobuf/FieldType;->ENUM_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 87
    new-instance v44, Lcom/google/protobuf/FieldType;

    sget-object v53, Lcom/google/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v54, Lcom/google/protobuf/JavaType;->INT:Lcom/google/protobuf/JavaType;

    const-string v50, "SFIXED32_LIST_PACKED"

    const/16 v51, 0x2d

    const/16 v52, 0x2d

    move-object/from16 v49, v44

    invoke-direct/range {v49 .. v54}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v44, Lcom/google/protobuf/FieldType;->SFIXED32_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 88
    new-instance v45, Lcom/google/protobuf/FieldType;

    sget-object v59, Lcom/google/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v60, Lcom/google/protobuf/JavaType;->LONG:Lcom/google/protobuf/JavaType;

    const-string v56, "SFIXED64_LIST_PACKED"

    const/16 v57, 0x2e

    const/16 v58, 0x2e

    move-object/from16 v55, v45

    invoke-direct/range {v55 .. v60}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v45, Lcom/google/protobuf/FieldType;->SFIXED64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 89
    new-instance v46, Lcom/google/protobuf/FieldType;

    sget-object v53, Lcom/google/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v54, Lcom/google/protobuf/JavaType;->INT:Lcom/google/protobuf/JavaType;

    const-string v50, "SINT32_LIST_PACKED"

    const/16 v51, 0x2f

    const/16 v52, 0x2f

    move-object/from16 v49, v46

    invoke-direct/range {v49 .. v54}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v46, Lcom/google/protobuf/FieldType;->SINT32_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 90
    new-instance v47, Lcom/google/protobuf/FieldType;

    sget-object v59, Lcom/google/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v60, Lcom/google/protobuf/JavaType;->LONG:Lcom/google/protobuf/JavaType;

    const-string v56, "SINT64_LIST_PACKED"

    const/16 v57, 0x30

    const/16 v58, 0x30

    move-object/from16 v55, v47

    invoke-direct/range {v55 .. v60}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v47, Lcom/google/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 91
    new-instance v55, Lcom/google/protobuf/FieldType;

    sget-object v53, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v54, Lcom/google/protobuf/JavaType;->MESSAGE:Lcom/google/protobuf/JavaType;

    const-string v50, "GROUP_LIST"

    const/16 v51, 0x31

    const/16 v52, 0x31

    move-object/from16 v49, v55

    invoke-direct/range {v49 .. v54}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v55, Lcom/google/protobuf/FieldType;->GROUP_LIST:Lcom/google/protobuf/FieldType;

    .line 92
    new-instance v49, Lcom/google/protobuf/FieldType;

    sget-object v60, Lcom/google/protobuf/FieldType$Collection;->MAP:Lcom/google/protobuf/FieldType$Collection;

    sget-object v61, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    const-string v57, "MAP"

    const/16 v58, 0x32

    const/16 v59, 0x32

    move-object/from16 v56, v49

    invoke-direct/range {v56 .. v61}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v49, Lcom/google/protobuf/FieldType;->MAP:Lcom/google/protobuf/FieldType;

    .line 40
    move-object/from16 v50, v15

    const/16 v15, 0x33

    new-array v15, v15, [Lcom/google/protobuf/FieldType;

    move-object/from16 v51, v14

    const/4 v14, 0x0

    aput-object v6, v15, v14

    const/4 v6, 0x1

    aput-object v0, v15, v6

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v2, v15, v0

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v13, v15, v0

    const/16 v0, 0x8

    aput-object v7, v15, v0

    const/16 v0, 0x9

    aput-object v8, v15, v0

    const/16 v0, 0xa

    aput-object v9, v15, v0

    const/16 v0, 0xb

    aput-object v10, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v20, v15, v0

    const/16 v0, 0xf

    aput-object v51, v15, v0

    const/16 v0, 0x10

    aput-object v50, v15, v0

    const/16 v0, 0x11

    aput-object v16, v15, v0

    const/16 v0, 0x12

    aput-object v17, v15, v0

    const/16 v0, 0x13

    aput-object v18, v15, v0

    const/16 v0, 0x14

    aput-object v19, v15, v0

    const/16 v0, 0x15

    aput-object v27, v15, v0

    const/16 v0, 0x16

    aput-object v21, v15, v0

    const/16 v0, 0x17

    aput-object v22, v15, v0

    const/16 v0, 0x18

    aput-object v23, v15, v0

    const/16 v0, 0x19

    aput-object v24, v15, v0

    const/16 v0, 0x1a

    aput-object v25, v15, v0

    const/16 v0, 0x1b

    aput-object v26, v15, v0

    const/16 v0, 0x1c

    aput-object v34, v15, v0

    const/16 v0, 0x1d

    aput-object v28, v15, v0

    const/16 v0, 0x1e

    aput-object v29, v15, v0

    const/16 v0, 0x1f

    aput-object v30, v15, v0

    const/16 v0, 0x20

    aput-object v31, v15, v0

    const/16 v0, 0x21

    aput-object v32, v15, v0

    const/16 v0, 0x22

    aput-object v33, v15, v0

    const/16 v0, 0x23

    aput-object v41, v15, v0

    const/16 v0, 0x24

    aput-object v35, v15, v0

    const/16 v0, 0x25

    aput-object v36, v15, v0

    const/16 v0, 0x26

    aput-object v37, v15, v0

    const/16 v0, 0x27

    aput-object v38, v15, v0

    const/16 v0, 0x28

    aput-object v39, v15, v0

    const/16 v0, 0x29

    aput-object v40, v15, v0

    const/16 v0, 0x2a

    aput-object v48, v15, v0

    const/16 v0, 0x2b

    aput-object v42, v15, v0

    const/16 v0, 0x2c

    aput-object v43, v15, v0

    const/16 v0, 0x2d

    aput-object v44, v15, v0

    const/16 v0, 0x2e

    aput-object v45, v15, v0

    const/16 v0, 0x2f

    aput-object v46, v15, v0

    const/16 v0, 0x30

    aput-object v47, v15, v0

    const/16 v0, 0x31

    aput-object v55, v15, v0

    const/16 v0, 0x32

    aput-object v49, v15, v0

    sput-object v15, Lcom/google/protobuf/FieldType;->$VALUES:[Lcom/google/protobuf/FieldType;

    .line 216
    new-array v0, v14, [Ljava/lang/reflect/Type;

    sput-object v0, Lcom/google/protobuf/FieldType;->EMPTY_TYPES:[Ljava/lang/reflect/Type;

    .line 219
    invoke-static {}, Lcom/google/protobuf/FieldType;->values()[Lcom/google/protobuf/FieldType;

    move-result-object v0

    .line 220
    .local v0, "values":[Lcom/google/protobuf/FieldType;
    array-length v1, v0

    new-array v1, v1, [Lcom/google/protobuf/FieldType;

    sput-object v1, Lcom/google/protobuf/FieldType;->VALUES:[Lcom/google/protobuf/FieldType;

    .line 221
    array-length v1, v0

    :goto_0
    if-ge v14, v1, :cond_0

    aget-object v2, v0, v14

    .line 222
    .local v2, "type":Lcom/google/protobuf/FieldType;
    sget-object v3, Lcom/google/protobuf/FieldType;->VALUES:[Lcom/google/protobuf/FieldType;

    iget v4, v2, Lcom/google/protobuf/FieldType;->id:I

    aput-object v2, v3, v4

    .line 221
    .end local v2    # "type":Lcom/google/protobuf/FieldType;
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 224
    .end local v0    # "values":[Lcom/google/protobuf/FieldType;
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V
    .locals 1
    .param p3, "id"    # I
    .param p4, "collection"    # Lcom/google/protobuf/FieldType$Collection;
    .param p5, "javaType"    # Lcom/google/protobuf/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/protobuf/FieldType$Collection;",
            "Lcom/google/protobuf/JavaType;",
            ")V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 101
    iput p3, p0, Lcom/google/protobuf/FieldType;->id:I

    .line 102
    iput-object p4, p0, Lcom/google/protobuf/FieldType;->collection:Lcom/google/protobuf/FieldType$Collection;

    .line 103
    iput-object p5, p0, Lcom/google/protobuf/FieldType;->javaType:Lcom/google/protobuf/JavaType;

    .line 105
    sget-object p1, Lcom/google/protobuf/FieldType$1;->$SwitchMap$com$google$protobuf$FieldType$Collection:[I

    invoke-virtual {p4}, Lcom/google/protobuf/FieldType$Collection;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    .line 114
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/protobuf/FieldType;->elementType:Ljava/lang/Class;

    goto :goto_0

    .line 110
    :pswitch_0
    invoke-virtual {p5}, Lcom/google/protobuf/JavaType;->getBoxedType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/FieldType;->elementType:Ljava/lang/Class;

    .line 111
    goto :goto_0

    .line 107
    :pswitch_1
    invoke-virtual {p5}, Lcom/google/protobuf/JavaType;->getBoxedType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/FieldType;->elementType:Ljava/lang/Class;

    .line 108
    nop

    .line 118
    :goto_0
    const/4 p1, 0x0

    .line 119
    .local p1, "primitiveScalar":Z
    sget-object p2, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    if-ne p4, p2, :cond_0

    .line 120
    sget-object p2, Lcom/google/protobuf/FieldType$1;->$SwitchMap$com$google$protobuf$JavaType:[I

    invoke-virtual {p5}, Lcom/google/protobuf/JavaType;->ordinal()I

    move-result v0

    aget p2, p2, v0

    packed-switch p2, :pswitch_data_1

    .line 126
    const/4 p1, 0x1

    nop

    .line 130
    :cond_0
    :pswitch_2
    iput-boolean p1, p0, Lcom/google/protobuf/FieldType;->primitiveScalar:Z

    .line 131
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static forId(I)Lcom/google/protobuf/FieldType;
    .locals 2
    .param p0, "id"    # I

    .line 209
    if-ltz p0, :cond_1

    sget-object v0, Lcom/google/protobuf/FieldType;->VALUES:[Lcom/google/protobuf/FieldType;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    aget-object v0, v0, p0

    return-object v0

    .line 210
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getGenericSuperList(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 234
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 235
    .local v0, "genericInterfaces":[Ljava/lang/reflect/Type;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 236
    .local v3, "genericInterface":Ljava/lang/reflect/Type;
    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_0

    .line 237
    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 238
    .local v4, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 239
    .local v5, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/util/List;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 240
    return-object v3

    .line 235
    .end local v3    # "genericInterface":Ljava/lang/reflect/Type;
    .end local v4    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v5    # "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 247
    .local v1, "type":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_2

    .line 248
    move-object v2, v1

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 249
    .local v2, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 250
    .local v3, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljava/util/List;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 251
    return-object v1

    .line 256
    .end local v2    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v3    # "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getListParameter(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 10
    .param p1, "realTypes"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 271
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_9

    .line 273
    invoke-static {p0}, Lcom/google/protobuf/FieldType;->getGenericSuperList(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 274
    .local v0, "genericType":Ljava/lang/reflect/Type;
    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_6

    .line 276
    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 277
    .local v1, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 278
    .local v2, "superArgs":[Ljava/lang/reflect/Type;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_5

    .line 279
    aget-object v4, v2, v3

    .line 280
    .local v4, "superArg":Ljava/lang/reflect/Type;
    instance-of v5, v4, Ljava/lang/reflect/TypeVariable;

    if-eqz v5, :cond_4

    .line 283
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v5

    .line 284
    .local v5, "clazzParams":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    array-length v6, p1

    array-length v7, v5

    if-ne v6, v7, :cond_3

    .line 289
    const/4 v6, 0x0

    .line 290
    .local v6, "foundReplacement":Z
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    array-length v8, v5

    if-ge v7, v8, :cond_1

    .line 291
    aget-object v8, v5, v7

    if-ne v4, v8, :cond_0

    .line 292
    aget-object v8, p1, v7

    .line 293
    .local v8, "realType":Ljava/lang/reflect/Type;
    aput-object v8, v2, v3

    .line 294
    const/4 v6, 0x1

    .line 295
    goto :goto_3

    .line 290
    .end local v8    # "realType":Ljava/lang/reflect/Type;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 298
    .end local v7    # "j":I
    :cond_1
    :goto_3
    if-eqz v6, :cond_2

    goto :goto_4

    .line 299
    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to find replacement for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 285
    .end local v6    # "foundReplacement":Z
    :cond_3
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Type array mismatch"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 278
    .end local v4    # "superArg":Ljava/lang/reflect/Type;
    .end local v5    # "clazzParams":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 304
    .end local v3    # "i":I
    :cond_5
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 306
    .local v3, "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object p1, v2

    .line 307
    move-object p0, v3

    .line 308
    goto :goto_0

    .line 313
    .end local v1    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v2    # "superArgs":[Ljava/lang/reflect/Type;
    .end local v3    # "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    sget-object p1, Lcom/google/protobuf/FieldType;->EMPTY_TYPES:[Ljava/lang/reflect/Type;

    .line 314
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    :goto_5
    if-ge v1, v3, :cond_8

    aget-object v4, v2, v1

    .line 315
    .local v4, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Ljava/util/List;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 316
    move-object p0, v4

    .line 317
    goto :goto_0

    .line 314
    .end local v4    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 320
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 321
    .end local v0    # "genericType":Ljava/lang/reflect/Type;
    goto/16 :goto_0

    .line 323
    :cond_9
    array-length v0, p1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    .line 326
    aget-object v0, p1, v1

    return-object v0

    .line 324
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to identify parameter type for List<T>"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isValidForList(Ljava/lang/reflect/Field;)Z
    .locals 6
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 184
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 185
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/protobuf/FieldType;->javaType:Lcom/google/protobuf/JavaType;

    invoke-virtual {v1}, Lcom/google/protobuf/JavaType;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    const/4 v1, 0x0

    return v1

    .line 189
    :cond_0
    sget-object v1, Lcom/google/protobuf/FieldType;->EMPTY_TYPES:[Ljava/lang/reflect/Type;

    .line 190
    .local v1, "types":[Ljava/lang/reflect/Type;
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 191
    .local v2, "genericType":Ljava/lang/reflect/Type;
    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_1

    .line 192
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 194
    :cond_1
    invoke-static {v0, v1}, Lcom/google/protobuf/FieldType;->getListParameter(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 195
    .local v3, "listParameter":Ljava/lang/reflect/Type;
    instance-of v4, v3, Ljava/lang/Class;

    if-nez v4, :cond_2

    .line 197
    const/4 v4, 0x1

    return v4

    .line 199
    :cond_2
    iget-object v4, p0, Lcom/google/protobuf/FieldType;->elementType:Ljava/lang/Class;

    move-object v5, v3

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    return v4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/FieldType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 40
    const-class v0, Lcom/google/protobuf/FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/FieldType;

    return-object v0
.end method

.method public static values()[Lcom/google/protobuf/FieldType;
    .locals 1

    .line 40
    sget-object v0, Lcom/google/protobuf/FieldType;->$VALUES:[Lcom/google/protobuf/FieldType;

    invoke-virtual {v0}, [Lcom/google/protobuf/FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/FieldType;

    return-object v0
.end method


# virtual methods
.method public getJavaType()Lcom/google/protobuf/JavaType;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/google/protobuf/FieldType;->javaType:Lcom/google/protobuf/JavaType;

    return-object v0
.end method

.method public id()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/google/protobuf/FieldType;->id:I

    return v0
.end method

.method public isList()Z
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/google/protobuf/FieldType;->collection:Lcom/google/protobuf/FieldType$Collection;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldType$Collection;->isList()Z

    move-result v0

    return v0
.end method

.method public isMap()Z
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/google/protobuf/FieldType;->collection:Lcom/google/protobuf/FieldType$Collection;

    sget-object v1, Lcom/google/protobuf/FieldType$Collection;->MAP:Lcom/google/protobuf/FieldType$Collection;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPacked()Z
    .locals 2

    .line 148
    sget-object v0, Lcom/google/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$Collection;

    iget-object v1, p0, Lcom/google/protobuf/FieldType;->collection:Lcom/google/protobuf/FieldType$Collection;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/FieldType$Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPrimitiveScalar()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/google/protobuf/FieldType;->primitiveScalar:Z

    return v0
.end method

.method public isScalar()Z
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/google/protobuf/FieldType;->collection:Lcom/google/protobuf/FieldType$Collection;

    sget-object v1, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValidForField(Ljava/lang/reflect/Field;)Z
    .locals 2
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 176
    sget-object v0, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    iget-object v1, p0, Lcom/google/protobuf/FieldType;->collection:Lcom/google/protobuf/FieldType$Collection;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/FieldType$Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-direct {p0, p1}, Lcom/google/protobuf/FieldType;->isValidForList(Ljava/lang/reflect/Field;)Z

    move-result v0

    return v0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/FieldType;->javaType:Lcom/google/protobuf/JavaType;

    invoke-virtual {v0}, Lcom/google/protobuf/JavaType;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
