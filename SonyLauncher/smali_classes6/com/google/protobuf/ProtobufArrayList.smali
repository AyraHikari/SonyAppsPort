.class final Lcom/google/protobuf/ProtobufArrayList;
.super Lcom/google/protobuf/AbstractProtobufList;
.source "ProtobufArrayList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/protobuf/AbstractProtobufList<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Lcom/google/protobuf/ProtobufArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/ProtobufArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Lcom/google/protobuf/ProtobufArrayList;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/google/protobuf/ProtobufArrayList;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/google/protobuf/ProtobufArrayList;->EMPTY_LIST:Lcom/google/protobuf/ProtobufArrayList;

    .line 44
    invoke-virtual {v0}, Lcom/google/protobuf/ProtobufArrayList;->makeImmutable()V

    .line 45
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 55
    .local p0, "this":Lcom/google/protobuf/ProtobufArrayList;, "Lcom/google/protobuf/ProtobufArrayList<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/protobuf/ProtobufArrayList;-><init>(Ljava/util/List;)V

    .line 56
    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/google/protobuf/ProtobufArrayList;, "Lcom/google/protobuf/ProtobufArrayList<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0}, Lcom/google/protobuf/AbstractProtobufList;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/protobuf/ProtobufArrayList;->list:Ljava/util/List;

    .line 60
    return-void
.end method

.method public static emptyList()Lcom/google/protobuf/ProtobufArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/protobuf/ProtobufArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/google/protobuf/ProtobufArrayList;->EMPTY_LIST:Lcom/google/protobuf/ProtobufArrayList;

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/google/protobuf/ProtobufArrayList;, "Lcom/google/protobuf/ProtobufArrayList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/google/protobuf/ProtobufArrayList;->ensureIsMutable()V

    .line 75
    iget-object v0, p0, Lcom/google/protobuf/ProtobufArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 76
    iget v0, p0, Lcom/google/protobuf/ProtobufArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/ProtobufArrayList;->modCount:I

    .line 77
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 81
    .local p0, "this":Lcom/google/protobuf/ProtobufArrayList;, "Lcom/google/protobuf/ProtobufArrayList<TE;>;"
    iget-object v0, p0, Lcom/google/protobuf/ProtobufArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;
    .locals 0

    .line 38
    .local p0, "this":Lcom/google/protobuf/ProtobufArrayList;, "Lcom/google/protobuf/ProtobufArrayList<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/ProtobufArrayList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/ProtobufArrayList;

    move-result-object p1

    return-object p1
.end method

.method public mutableCopyWithCapacity(I)Lcom/google/protobuf/ProtobufArrayList;
    .locals 2
    .param p1, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/protobuf/ProtobufArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lcom/google/protobuf/ProtobufArrayList;, "Lcom/google/protobuf/ProtobufArrayList<TE;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/ProtobufArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 68
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<TE;>;"
    iget-object v1, p0, Lcom/google/protobuf/ProtobufArrayList;->list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 69
    new-instance v1, Lcom/google/protobuf/ProtobufArrayList;

    invoke-direct {v1, v0}, Lcom/google/protobuf/ProtobufArrayList;-><init>(Ljava/util/List;)V

    return-object v1

    .line 65
    .end local v0    # "newList":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/google/protobuf/ProtobufArrayList;, "Lcom/google/protobuf/ProtobufArrayList<TE;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/ProtobufArrayList;->ensureIsMutable()V

    .line 87
    iget-object v0, p0, Lcom/google/protobuf/ProtobufArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 88
    .local v0, "toReturn":Ljava/lang/Object;, "TE;"
    iget v1, p0, Lcom/google/protobuf/ProtobufArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/ProtobufArrayList;->modCount:I

    .line 89
    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 94
    .local p0, "this":Lcom/google/protobuf/ProtobufArrayList;, "Lcom/google/protobuf/ProtobufArrayList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/google/protobuf/ProtobufArrayList;->ensureIsMutable()V

    .line 95
    iget-object v0, p0, Lcom/google/protobuf/ProtobufArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 96
    .local v0, "toReturn":Ljava/lang/Object;, "TE;"
    iget v1, p0, Lcom/google/protobuf/ProtobufArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/ProtobufArrayList;->modCount:I

    .line 97
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 102
    .local p0, "this":Lcom/google/protobuf/ProtobufArrayList;, "Lcom/google/protobuf/ProtobufArrayList<TE;>;"
    iget-object v0, p0, Lcom/google/protobuf/ProtobufArrayList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
