.class final Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaFull;
.super Lcom/google/protobuf/ListFieldSchema;
.source "ListFieldSchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ListFieldSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListFieldSchemaFull"
.end annotation


# static fields
.field private static final UNMODIFIABLE_LIST_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaFull;->UNMODIFIABLE_LIST_CLASS:Ljava/lang/Class;

    .line 65
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/ListFieldSchema;-><init>(Lcom/google/protobuf/ListFieldSchema$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/ListFieldSchema$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/ListFieldSchema$1;

    .line 63
    invoke-direct {p0}, Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaFull;-><init>()V

    return-void
.end method

.method static getList(Ljava/lang/Object;J)Ljava/util/List;
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
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 141
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static mutableListAt(Ljava/lang/Object;JI)Ljava/util/List;
    .locals 3
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "additionalCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "JI)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 95
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaFull;->getList(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 96
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TL;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    instance-of v1, v0, Lcom/google/protobuf/LazyStringList;

    if-eqz v1, :cond_0

    .line 98
    new-instance v1, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v1, p3}, Lcom/google/protobuf/LazyStringArrayList;-><init>(I)V

    move-object v0, v1

    goto :goto_0

    .line 99
    :cond_0
    instance-of v1, v0, Lcom/google/protobuf/PrimitiveNonBoxingCollection;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lcom/google/protobuf/Internal$ProtobufList;

    if-eqz v1, :cond_1

    .line 100
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1, p3}, Lcom/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v1

    .line 104
    :goto_0
    invoke-static {p0, p1, p2, v0}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 105
    :cond_2
    sget-object v1, Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaFull;->UNMODIFIABLE_LIST_CLASS:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    .local v1, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TL;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 108
    move-object v0, v1

    .line 109
    invoke-static {p0, p1, p2, v0}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 110
    .end local v1    # "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TL;>;"
    goto :goto_1

    :cond_3
    instance-of v1, v0, Lcom/google/protobuf/UnmodifiableLazyStringList;

    if-eqz v1, :cond_5

    .line 111
    new-instance v1, Lcom/google/protobuf/LazyStringArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>(I)V

    .line 112
    .local v1, "newList":Lcom/google/protobuf/LazyStringArrayList;
    move-object v2, v0

    check-cast v2, Lcom/google/protobuf/UnmodifiableLazyStringList;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/LazyStringArrayList;->addAll(Ljava/util/Collection;)Z

    .line 113
    move-object v0, v1

    .line 114
    invoke-static {p0, p1, p2, v0}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 115
    .end local v1    # "newList":Lcom/google/protobuf/LazyStringArrayList;
    :cond_4
    goto :goto_1

    :cond_5
    instance-of v1, v0, Lcom/google/protobuf/PrimitiveNonBoxingCollection;

    if-eqz v1, :cond_4

    instance-of v1, v0, Lcom/google/protobuf/Internal$ProtobufList;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/Internal$ProtobufList;

    .line 117
    invoke-interface {v1}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_6

    .line 118
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-interface {v1, v2}, Lcom/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 119
    invoke-static {p0, p1, p2, v0}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 121
    :cond_6
    :goto_1
    return-object v0
.end method


# virtual methods
.method makeImmutableListAt(Ljava/lang/Object;J)V
    .locals 4
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 75
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 76
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v1, 0x0

    .line 77
    .local v1, "immutable":Ljava/lang/Object;
    instance-of v2, v0, Lcom/google/protobuf/LazyStringList;

    if-eqz v2, :cond_0

    .line 78
    move-object v2, v0

    check-cast v2, Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    goto :goto_0

    .line 79
    :cond_0
    sget-object v2, Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaFull;->UNMODIFIABLE_LIST_CLASS:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    return-void

    .line 82
    :cond_1
    instance-of v2, v0, Lcom/google/protobuf/PrimitiveNonBoxingCollection;

    if-eqz v2, :cond_3

    instance-of v2, v0, Lcom/google/protobuf/Internal$ProtobufList;

    if-eqz v2, :cond_3

    .line 83
    move-object v2, v0

    check-cast v2, Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    move-object v2, v0

    check-cast v2, Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 86
    :cond_2
    return-void

    .line 88
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 90
    :goto_0
    invoke-static {p1, p2, p3, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 91
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

    .line 126
    invoke-static {p2, p3, p4}, Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaFull;->getList(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 127
    .local v0, "other":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, p3, p4, v1}, Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaFull;->mutableListAt(Ljava/lang/Object;JI)Ljava/util/List;

    move-result-object v1

    .line 129
    .local v1, "mine":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 130
    .local v2, "size":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 131
    .local v3, "otherSize":I
    if-lez v2, :cond_0

    if-lez v3, :cond_0

    .line 132
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 135
    :cond_0
    if-lez v2, :cond_1

    move-object v4, v1

    goto :goto_0

    :cond_1
    move-object v4, v0

    .line 136
    .local v4, "merged":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :goto_0
    invoke-static {p1, p3, p4, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 137
    return-void
.end method

.method mutableListAt(Ljava/lang/Object;J)Ljava/util/List;
    .locals 1
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

    .line 70
    const/16 v0, 0xa

    invoke-static {p1, p2, p3, v0}, Lcom/google/protobuf/ListFieldSchema$ListFieldSchemaFull;->mutableListAt(Ljava/lang/Object;JI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
