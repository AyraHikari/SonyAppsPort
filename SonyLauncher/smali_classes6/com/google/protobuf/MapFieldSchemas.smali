.class final Lcom/google/protobuf/MapFieldSchemas;
.super Ljava/lang/Object;
.source "MapFieldSchemas.java"


# static fields
.field private static final FULL_SCHEMA:Lcom/google/protobuf/MapFieldSchema;

.field private static final LITE_SCHEMA:Lcom/google/protobuf/MapFieldSchema;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    invoke-static {}, Lcom/google/protobuf/MapFieldSchemas;->loadSchemaForFullRuntime()Lcom/google/protobuf/MapFieldSchema;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MapFieldSchemas;->FULL_SCHEMA:Lcom/google/protobuf/MapFieldSchema;

    .line 35
    new-instance v0, Lcom/google/protobuf/MapFieldSchemaLite;

    invoke-direct {v0}, Lcom/google/protobuf/MapFieldSchemaLite;-><init>()V

    sput-object v0, Lcom/google/protobuf/MapFieldSchemas;->LITE_SCHEMA:Lcom/google/protobuf/MapFieldSchema;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static full()Lcom/google/protobuf/MapFieldSchema;
    .locals 1

    .line 38
    sget-object v0, Lcom/google/protobuf/MapFieldSchemas;->FULL_SCHEMA:Lcom/google/protobuf/MapFieldSchema;

    return-object v0
.end method

.method static lite()Lcom/google/protobuf/MapFieldSchema;
    .locals 1

    .line 42
    sget-object v0, Lcom/google/protobuf/MapFieldSchemas;->LITE_SCHEMA:Lcom/google/protobuf/MapFieldSchema;

    return-object v0
.end method

.method private static loadSchemaForFullRuntime()Lcom/google/protobuf/MapFieldSchema;
    .locals 3

    .line 47
    :try_start_0
    const-string v0, "com.google.protobuf.MapFieldSchemaFull"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 48
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MapFieldSchema;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 49
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method
