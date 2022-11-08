.class public final Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.super Ljava/lang/Object;
.source "ReflectiveTypeAdapterFactory.java"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;,
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    }
.end annotation


# instance fields
.field private final constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

.field private final excluder:Lcom/google/gson/internal/Excluder;

.field private final fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

.field private final jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/FieldNamingStrategy;Lcom/google/gson/internal/Excluder;Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;)V
    .locals 0
    .param p1, "constructorConstructor"    # Lcom/google/gson/internal/ConstructorConstructor;
    .param p2, "fieldNamingPolicy"    # Lcom/google/gson/FieldNamingStrategy;
    .param p3, "excluder"    # Lcom/google/gson/internal/Excluder;
    .param p4, "jsonAdapterFactory"    # Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    .line 57
    iput-object p2, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    .line 58
    iput-object p3, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/google/gson/internal/Excluder;

    .line 59
    iput-object p4, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 60
    return-void
.end method

.method private createBoundField(Lcom/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/gson/reflect/TypeToken;ZZ)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .locals 19
    .param p1, "context"    # Lcom/google/gson/Gson;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "name"    # Ljava/lang/String;
    .param p5, "serialize"    # Z
    .param p6, "deserialize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Lcom/google/gson/reflect/TypeToken<",
            "*>;ZZ)",
            "Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;"
        }
    .end annotation

    .line 106
    .local p4, "fieldType":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<*>;"
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p4

    invoke-virtual/range {p4 .. p4}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gson/internal/Primitives;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v14

    .line 108
    .local v14, "isPrimitive":Z
    const-class v0, Lcom/google/gson/annotations/JsonAdapter;

    move-object/from16 v15, p2

    invoke-virtual {v15, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/google/gson/annotations/JsonAdapter;

    .line 109
    .local v10, "annotation":Lcom/google/gson/annotations/JsonAdapter;
    const/4 v0, 0x0

    .line 110
    .local v0, "mapped":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    if-eqz v10, :cond_0

    .line 111
    iget-object v1, v11, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    iget-object v2, v11, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v1, v2, v12, v13, v10}, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->getTypeAdapter(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/annotations/JsonAdapter;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    .line 114
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v6, v1

    .line 115
    .local v6, "jsonAdapterPresent":Z
    if-nez v0, :cond_2

    invoke-virtual {v12, v13}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    :cond_2
    move-object/from16 v16, v0

    .line 117
    .end local v0    # "mapped":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    .local v16, "mapped":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    move-object/from16 v7, v16

    .line 118
    .local v7, "typeAdapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    new-instance v17, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p2

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    move-object/from16 v18, v10

    .end local v10    # "annotation":Lcom/google/gson/annotations/JsonAdapter;
    .local v18, "annotation":Lcom/google/gson/annotations/JsonAdapter;
    move v10, v14

    invoke-direct/range {v0 .. v10}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;-><init>(Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcom/google/gson/TypeAdapter;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Z)V

    return-object v17
.end method

.method static excludeField(Ljava/lang/reflect/Field;ZLcom/google/gson/internal/Excluder;)Z
    .locals 1
    .param p0, "f"    # Ljava/lang/reflect/Field;
    .param p1, "serialize"    # Z
    .param p2, "excluder"    # Lcom/google/gson/internal/Excluder;

    .line 67
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/google/gson/internal/Excluder;->excludeClass(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p0, p1}, Lcom/google/gson/internal/Excluder;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getBoundFields(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;
    .locals 22
    .param p1, "context"    # Lcom/google/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;"
        }
    .end annotation

    .line 143
    .local p2, "type":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<*>;"
    .local p3, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v7, p0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v8, v0

    .line 144
    .local v8, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    return-object v8

    .line 148
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v9

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 149
    .end local p2    # "type":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<*>;"
    .end local p3    # "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v9, "declaredType":Ljava/lang/reflect/Type;
    .local v10, "type":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<*>;"
    .local v11, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v0, Ljava/lang/Object;

    if-eq v11, v0, :cond_7

    .line 150
    invoke-virtual {v11}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v12

    .line 151
    .local v12, "fields":[Ljava/lang/reflect/Field;
    array-length v13, v12

    const/4 v14, 0x0

    move v15, v14

    :goto_1
    if-ge v15, v13, :cond_6

    aget-object v6, v12, v15

    .line 152
    .local v6, "field":Ljava/lang/reflect/Field;
    const/4 v0, 0x1

    invoke-virtual {v7, v6, v0}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v1

    .line 153
    .local v1, "serialize":Z
    invoke-virtual {v7, v6, v14}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v16

    .line 154
    .local v16, "deserialize":Z
    if-nez v1, :cond_1

    if-nez v16, :cond_1

    .line 155
    goto/16 :goto_5

    .line 157
    :cond_1
    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 158
    invoke-virtual {v10}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v0, v11, v2}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v17

    .line 159
    .local v17, "fieldType":Ljava/lang/reflect/Type;
    invoke-direct {v7, v6}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getFieldNames(Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v5

    .line 160
    .local v5, "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 161
    .local v0, "previous":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    const/4 v2, 0x0

    move-object v4, v0

    move v3, v2

    .end local v0    # "previous":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .local v3, "i":I
    .local v4, "previous":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 162
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 163
    .local v2, "name":Ljava/lang/String;
    if-eqz v3, :cond_2

    const/4 v0, 0x0

    move/from16 v18, v0

    .end local v1    # "serialize":Z
    .local v0, "serialize":Z
    goto :goto_3

    .end local v0    # "serialize":Z
    .restart local v1    # "serialize":Z
    :cond_2
    move/from16 v18, v1

    .line 164
    .end local v1    # "serialize":Z
    .local v18, "serialize":Z
    :goto_3
    nop

    .line 165
    invoke-static/range {v17 .. v17}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v19

    .line 164
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 p2, v2

    .end local v2    # "name":Ljava/lang/String;
    .local p2, "name":Ljava/lang/String;
    move-object v2, v6

    move/from16 v20, v3

    .end local v3    # "i":I
    .local v20, "i":I
    move-object/from16 v3, p2

    move-object v14, v4

    .end local v4    # "previous":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .local v14, "previous":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    move-object/from16 v4, v19

    move-object/from16 v19, v5

    .end local v5    # "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v19, "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v5, v18

    move-object/from16 v21, v6

    .end local v6    # "field":Ljava/lang/reflect/Field;
    .local v21, "field":Ljava/lang/reflect/Field;
    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->createBoundField(Lcom/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/gson/reflect/TypeToken;ZZ)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    move-result-object v0

    .line 166
    .local v0, "boundField":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    move-object/from16 v1, p2

    .end local p2    # "name":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    .line 167
    .local v2, "replaced":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    if-nez v14, :cond_3

    move-object v3, v2

    move-object v4, v3

    .end local v14    # "previous":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .local v3, "previous":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    goto :goto_4

    .end local v3    # "previous":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .restart local v14    # "previous":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    :cond_3
    move-object v4, v14

    .line 161
    .end local v0    # "boundField":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "replaced":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .end local v14    # "previous":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .restart local v4    # "previous":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    :goto_4
    add-int/lit8 v3, v20, 0x1

    move/from16 v1, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v21

    const/4 v14, 0x0

    .end local v20    # "i":I
    .local v3, "i":I
    goto :goto_2

    .end local v18    # "serialize":Z
    .end local v19    # "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "field":Ljava/lang/reflect/Field;
    .local v1, "serialize":Z
    .restart local v5    # "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "field":Ljava/lang/reflect/Field;
    :cond_4
    move/from16 v20, v3

    move-object v14, v4

    move-object/from16 v19, v5

    move-object/from16 v21, v6

    .line 169
    .end local v3    # "i":I
    .end local v4    # "previous":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .end local v5    # "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .restart local v14    # "previous":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .restart local v19    # "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "field":Ljava/lang/reflect/Field;
    if-nez v14, :cond_5

    .line 151
    .end local v1    # "serialize":Z
    .end local v14    # "previous":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .end local v16    # "deserialize":Z
    .end local v17    # "fieldType":Ljava/lang/reflect/Type;
    .end local v19    # "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "field":Ljava/lang/reflect/Field;
    :goto_5
    add-int/lit8 v15, v15, 0x1

    const/4 v14, 0x0

    goto/16 :goto_1

    .line 170
    .restart local v1    # "serialize":Z
    .restart local v14    # "previous":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .restart local v16    # "deserialize":Z
    .restart local v17    # "fieldType":Ljava/lang/reflect/Type;
    .restart local v19    # "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "field":Ljava/lang/reflect/Field;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " declares multiple JSON fields named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v14, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    .end local v1    # "serialize":Z
    .end local v14    # "previous":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .end local v16    # "deserialize":Z
    .end local v17    # "fieldType":Ljava/lang/reflect/Type;
    .end local v19    # "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "field":Ljava/lang/reflect/Field;
    :cond_6
    invoke-virtual {v10}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v11, v1}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v10

    .line 175
    invoke-virtual {v10}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v11

    .line 176
    .end local v12    # "fields":[Ljava/lang/reflect/Field;
    goto/16 :goto_0

    .line 177
    :cond_7
    return-object v8
.end method

.method private getFieldNames(Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 7
    .param p1, "f"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    const-class v0, Lcom/google/gson/annotations/SerializedName;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/gson/annotations/SerializedName;

    .line 73
    .local v0, "annotation":Lcom/google/gson/annotations/SerializedName;
    if-nez v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    invoke-interface {v1, p1}, Lcom/google/gson/FieldNamingStrategy;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 78
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Lcom/google/gson/annotations/SerializedName;->value()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "serializedName":Ljava/lang/String;
    invoke-interface {v0}, Lcom/google/gson/annotations/SerializedName;->alternate()[Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "alternates":[Ljava/lang/String;
    array-length v3, v2

    if-nez v3, :cond_1

    .line 81
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 84
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .local v3, "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    .line 87
    .local v6, "alternate":Ljava/lang/String;
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v6    # "alternate":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 89
    :cond_2
    return-object v3
.end method


# virtual methods
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 4
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

    .line 93
    .local p2, "type":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 95
    .local v0, "raw":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    const/4 v1, 0x0

    return-object v1

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v1, p2}, Lcom/google/gson/internal/ConstructorConstructor;->get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;

    move-result-object v1

    .line 100
    .local v1, "constructor":Lcom/google/gson/internal/ObjectConstructor;, "Lcom/google/gson/internal/ObjectConstructor<TT;>;"
    new-instance v2, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getBoundFields(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;-><init>(Lcom/google/gson/internal/ObjectConstructor;Ljava/util/Map;)V

    return-object v2
.end method

.method public excludeField(Ljava/lang/reflect/Field;Z)Z
    .locals 1
    .param p1, "f"    # Ljava/lang/reflect/Field;
    .param p2, "serialize"    # Z

    .line 63
    iget-object v0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/google/gson/internal/Excluder;

    invoke-static {p1, p2, v0}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;ZLcom/google/gson/internal/Excluder;)Z

    move-result v0

    return v0
.end method
