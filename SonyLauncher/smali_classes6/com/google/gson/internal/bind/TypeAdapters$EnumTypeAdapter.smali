.class final Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EnumTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum<",
        "TT;>;>",
        "Lcom/google/gson/TypeAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final constantToName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final nameToConstant:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 793
    .local p0, "this":Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;, "Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter<TT;>;"
    .local p1, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 790
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->nameToConstant:Ljava/util/Map;

    .line 791
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->constantToName:Ljava/util/Map;

    .line 795
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 796
    .local v4, "constant":Ljava/lang/Enum;, "TT;"
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    .line 797
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const-class v7, Lcom/google/gson/annotations/SerializedName;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/google/gson/annotations/SerializedName;

    .line 798
    .local v6, "annotation":Lcom/google/gson/annotations/SerializedName;
    if-eqz v6, :cond_0

    .line 799
    invoke-interface {v6}, Lcom/google/gson/annotations/SerializedName;->value()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 800
    invoke-interface {v6}, Lcom/google/gson/annotations/SerializedName;->alternate()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_0

    aget-object v10, v7, v9

    .line 801
    .local v10, "alternate":Ljava/lang/String;
    iget-object v11, p0, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->nameToConstant:Ljava/util/Map;

    invoke-interface {v11, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    nop

    .end local v10    # "alternate":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 804
    :cond_0
    iget-object v7, p0, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->nameToConstant:Ljava/util/Map;

    invoke-interface {v7, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    iget-object v7, p0, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->constantToName:Ljava/util/Map;

    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    nop

    .end local v4    # "constant":Ljava/lang/Enum;, "TT;"
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "annotation":Lcom/google/gson/annotations/SerializedName;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 809
    :cond_1
    nop

    .line 810
    return-void

    .line 807
    :catch_0
    move-exception v0

    .line 808
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Enum;
    .locals 2
    .param p1, "in"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 812
    .local p0, "this":Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;, "Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter<TT;>;"
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 813
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 814
    const/4 v0, 0x0

    return-object v0

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->nameToConstant:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 789
    .local p0, "this":Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;, "Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Enum;)V
    .locals 1
    .param p1, "out"    # Lcom/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 820
    .local p0, "this":Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;, "Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter<TT;>;"
    .local p2, "value":Ljava/lang/Enum;, "TT;"
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->constantToName:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 821
    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 789
    .local p0, "this":Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;, "Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter<TT;>;"
    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Enum;)V

    return-void
.end method
