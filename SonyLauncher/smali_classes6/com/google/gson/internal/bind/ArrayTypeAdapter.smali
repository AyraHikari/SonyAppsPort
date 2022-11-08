.class public final Lcom/google/gson/internal/bind/ArrayTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "ArrayTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/TypeAdapter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/google/gson/TypeAdapterFactory;


# instance fields
.field private final componentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final componentTypeAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/google/gson/internal/bind/ArrayTypeAdapter$1;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/ArrayTypeAdapter$1;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/ArrayTypeAdapter;->FACTORY:Lcom/google/gson/TypeAdapterFactory;

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/Class;)V
    .locals 1
    .param p1, "context"    # Lcom/google/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/TypeAdapter<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 57
    .local p0, "this":Lcom/google/gson/internal/bind/ArrayTypeAdapter;, "Lcom/google/gson/internal/bind/ArrayTypeAdapter<TE;>;"
    .local p2, "componentTypeAdapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<TE;>;"
    .local p3, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 58
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/gson/internal/bind/ArrayTypeAdapter;->componentTypeAdapter:Lcom/google/gson/TypeAdapter;

    .line 60
    iput-object p3, p0, Lcom/google/gson/internal/bind/ArrayTypeAdapter;->componentType:Ljava/lang/Class;

    .line 61
    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 4
    .param p1, "in"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    .local p0, "this":Lcom/google/gson/internal/bind/ArrayTypeAdapter;, "Lcom/google/gson/internal/bind/ArrayTypeAdapter<TE;>;"
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 65
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 71
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/google/gson/internal/bind/ArrayTypeAdapter;->componentTypeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v1, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    .line 73
    .local v1, "instance":Ljava/lang/Object;, "TE;"
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .end local v1    # "instance":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    .line 76
    iget-object v1, p0, Lcom/google/gson/internal/bind/ArrayTypeAdapter;->componentType:Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 77
    .local v1, "array":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 78
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 80
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 4
    .param p1, "out"    # Lcom/google/gson/stream/JsonWriter;
    .param p2, "array"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    .local p0, "this":Lcom/google/gson/internal/bind/ArrayTypeAdapter;, "Lcom/google/gson/internal/bind/ArrayTypeAdapter<TE;>;"
    if-nez p2, :cond_0

    .line 86
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 87
    return-void

    .line 90
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 92
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 93
    .local v2, "value":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Lcom/google/gson/internal/bind/ArrayTypeAdapter;->componentTypeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v3, p1, v2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 91
    .end local v2    # "value":Ljava/lang/Object;, "TE;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    .line 96
    return-void
.end method
