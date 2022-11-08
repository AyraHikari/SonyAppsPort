.class public final Lcom/google/gson/internal/bind/MapTypeAdapterFactory;
.super Ljava/lang/Object;
.source "MapTypeAdapterFactory.java"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;
    }
.end annotation


# instance fields
.field final complexMapKeySerialization:Z

.field private final constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/ConstructorConstructor;Z)V
    .locals 0
    .param p1, "constructorConstructor"    # Lcom/google/gson/internal/ConstructorConstructor;
    .param p2, "complexMapKeySerialization"    # Z

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    .line 112
    iput-boolean p2, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;->complexMapKeySerialization:Z

    .line 113
    return-void
.end method

.method private getKeyAdapter(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .param p1, "context"    # Lcom/google/gson/Gson;
    .param p2, "keyType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "*>;"
        }
    .end annotation

    .line 140
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_1

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-static {p2}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    goto :goto_1

    .line 140
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->BOOLEAN_AS_STRING:Lcom/google/gson/TypeAdapter;

    :goto_1
    return-object v0
.end method


# virtual methods
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 18
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

    .line 116
    .local p2, "typeToken":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p2 .. p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v10

    .line 118
    .local v10, "type":Ljava/lang/reflect/Type;
    invoke-virtual/range {p2 .. p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v11

    .line 119
    .local v11, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    return-object v0

    .line 123
    :cond_0
    invoke-static {v10}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v12

    .line 124
    .local v12, "rawTypeOfSrc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v10, v12}, Lcom/google/gson/internal/$Gson$Types;->getMapKeyAndValueTypes(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v13

    .line 125
    .local v13, "keyAndValueTypes":[Ljava/lang/reflect/Type;
    const/4 v0, 0x0

    aget-object v1, v13, v0

    invoke-direct {v8, v9, v1}, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;->getKeyAdapter(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;)Lcom/google/gson/TypeAdapter;

    move-result-object v14

    .line 126
    .local v14, "keyAdapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    const/4 v1, 0x1

    aget-object v2, v13, v1

    invoke-static {v2}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v15

    .line 127
    .local v15, "valueAdapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    iget-object v2, v8, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    move-object/from16 v7, p2

    invoke-virtual {v2, v7}, Lcom/google/gson/internal/ConstructorConstructor;->get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;

    move-result-object v16

    .line 131
    .local v16, "constructor":Lcom/google/gson/internal/ObjectConstructor;, "Lcom/google/gson/internal/ObjectConstructor<TT;>;"
    new-instance v17, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;

    aget-object v3, v13, v0

    aget-object v5, v13, v1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v14

    move-object v6, v15

    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;-><init>(Lcom/google/gson/internal/bind/MapTypeAdapterFactory;Lcom/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter;Lcom/google/gson/internal/ObjectConstructor;)V

    .line 133
    .local v0, "result":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<TT;>;"
    return-object v0
.end method
