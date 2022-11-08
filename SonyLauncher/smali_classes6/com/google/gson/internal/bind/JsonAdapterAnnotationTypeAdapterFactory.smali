.class public final Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;
.super Ljava/lang/Object;
.source "JsonAdapterAnnotationTypeAdapterFactory.java"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# instance fields
.field private final constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/ConstructorConstructor;)V
    .locals 0
    .param p1, "constructorConstructor"    # Lcom/google/gson/internal/ConstructorConstructor;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    .line 39
    return-void
.end method


# virtual methods
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 3
    .param p1, "gson"    # Lcom/google/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 44
    .local p2, "targetType":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 45
    .local v0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const-class v1, Lcom/google/gson/annotations/JsonAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/google/gson/annotations/JsonAdapter;

    .line 46
    .local v1, "annotation":Lcom/google/gson/annotations/JsonAdapter;
    if-nez v1, :cond_0

    .line 47
    const/4 v2, 0x0

    return-object v2

    .line 49
    :cond_0
    iget-object v2, p0, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    invoke-virtual {p0, v2, p1, p2, v1}, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->getTypeAdapter(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/annotations/JsonAdapter;)Lcom/google/gson/TypeAdapter;

    move-result-object v2

    return-object v2
.end method

.method getTypeAdapter(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/annotations/JsonAdapter;)Lcom/google/gson/TypeAdapter;
    .locals 9
    .param p1, "constructorConstructor"    # Lcom/google/gson/internal/ConstructorConstructor;
    .param p2, "gson"    # Lcom/google/gson/Gson;
    .param p4, "annotation"    # Lcom/google/gson/annotations/JsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/ConstructorConstructor;",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken<",
            "*>;",
            "Lcom/google/gson/annotations/JsonAdapter;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "*>;"
        }
    .end annotation

    .line 55
    .local p3, "type":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<*>;"
    invoke-interface {p4}, Lcom/google/gson/annotations/JsonAdapter;->value()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/internal/ConstructorConstructor;->get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v0

    .line 58
    .local v0, "instance":Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/gson/TypeAdapter;

    if-eqz v1, :cond_0

    .line 59
    move-object v1, v0

    check-cast v1, Lcom/google/gson/TypeAdapter;

    .local v1, "typeAdapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    goto :goto_2

    .line 60
    .end local v1    # "typeAdapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    :cond_0
    instance-of v1, v0, Lcom/google/gson/TypeAdapterFactory;

    if-eqz v1, :cond_1

    .line 61
    move-object v1, v0

    check-cast v1, Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v1, p2, p3}, Lcom/google/gson/TypeAdapterFactory;->create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    .restart local v1    # "typeAdapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    goto :goto_2

    .line 62
    .end local v1    # "typeAdapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    :cond_1
    instance-of v1, v0, Lcom/google/gson/JsonSerializer;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcom/google/gson/JsonDeserializer;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 71
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "@JsonAdapter value must be TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer reference."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_3
    :goto_0
    instance-of v1, v0, Lcom/google/gson/JsonSerializer;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/google/gson/JsonSerializer;

    move-object v4, v1

    goto :goto_1

    :cond_4
    move-object v4, v2

    .line 66
    .local v4, "serializer":Lcom/google/gson/JsonSerializer;, "Lcom/google/gson/JsonSerializer<*>;"
    :goto_1
    instance-of v1, v0, Lcom/google/gson/JsonDeserializer;

    if-eqz v1, :cond_5

    move-object v2, v0

    check-cast v2, Lcom/google/gson/JsonDeserializer;

    :cond_5
    move-object v5, v2

    .line 69
    .local v5, "deserializer":Lcom/google/gson/JsonDeserializer;, "Lcom/google/gson/JsonDeserializer<*>;"
    new-instance v1, Lcom/google/gson/internal/bind/TreeTypeAdapter;

    const/4 v8, 0x0

    move-object v3, v1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/google/gson/internal/bind/TreeTypeAdapter;-><init>(Lcom/google/gson/JsonSerializer;Lcom/google/gson/JsonDeserializer;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/TypeAdapterFactory;)V

    .line 70
    .end local v4    # "serializer":Lcom/google/gson/JsonSerializer;, "Lcom/google/gson/JsonSerializer<*>;"
    .end local v5    # "deserializer":Lcom/google/gson/JsonDeserializer;, "Lcom/google/gson/JsonDeserializer<*>;"
    .restart local v1    # "typeAdapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    nop

    .line 76
    :goto_2
    if-eqz v1, :cond_6

    invoke-interface {p4}, Lcom/google/gson/annotations/JsonAdapter;->nullSafe()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 77
    invoke-virtual {v1}, Lcom/google/gson/TypeAdapter;->nullSafe()Lcom/google/gson/TypeAdapter;

    move-result-object v1

    .line 80
    :cond_6
    return-object v1
.end method
