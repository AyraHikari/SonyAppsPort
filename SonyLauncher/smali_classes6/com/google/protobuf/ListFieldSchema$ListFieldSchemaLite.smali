.class final Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaLite;
.super Lcom/google/protobuf/ListFieldSchema;
.source "ListFieldSchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ListFieldSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListFieldSchemaLite"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/ListFieldSchema;-><init>(Lcom/google/protobuf/ListFieldSchema$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/ListFieldSchema$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/ListFieldSchema$1;

    .line 146
    invoke-direct {p0}, Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaLite;-><init>()V

    return-void
.end method

.method static getProtobufList(Ljava/lang/Object;J)Lcom/google/protobuf/Internal$ProtobufList;
    .locals 1
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "TE;>;"
        }
    .end annotation

    .line 187
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method


# virtual methods
.method makeImmutableListAt(Ljava/lang/Object;J)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 163
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaLite;->getProtobufList(Ljava/lang/Object;J)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 164
    .local v0, "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 165
    return-void
.end method

.method mergeListsAt(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "otherMsg"    # Ljava/lang/Object;
    .param p3, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 169
    invoke-static {p1, p3, p4}, Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaLite;->getProtobufList(Ljava/lang/Object;J)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 170
    .local v0, "mine":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<TE;>;"
    invoke-static {p2, p3, p4}, Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaLite;->getProtobufList(Ljava/lang/Object;J)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    .line 172
    .local v1, "other":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<TE;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    .line 173
    .local v2, "size":I
    invoke-interface {v1}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v3

    .line 174
    .local v3, "otherSize":I
    if-lez v2, :cond_1

    if-lez v3, :cond_1

    .line 175
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 176
    add-int v4, v2, v3

    invoke-interface {v0, v4}, Lcom/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 178
    :cond_0
    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$ProtobufList;->addAll(Ljava/util/Collection;)Z

    .line 181
    :cond_1
    if-lez v2, :cond_2

    move-object v4, v0

    goto :goto_0

    :cond_2
    move-object v4, v1

    .line 182
    .local v4, "merged":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<TE;>;"
    :goto_0
    invoke-static {p1, p3, p4, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 183
    return-void
.end method

.method mutableListAt(Ljava/lang/Object;J)Ljava/util/List;
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 150
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaLite;->getProtobufList(Ljava/lang/Object;J)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 151
    .local v0, "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<TL;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    .line 153
    .local v1, "size":I
    nop

    .line 155
    if-nez v1, :cond_0

    const/16 v2, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v2, v1, 0x2

    .line 154
    :goto_0
    invoke-interface {v0, v2}, Lcom/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 156
    invoke-static {p1, p2, p3, v0}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 158
    .end local v1    # "size":I
    :cond_1
    return-object v0
.end method
