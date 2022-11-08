.class public final Lcom/google/gson/internal/ConstructorConstructor;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"


# instance fields
.field private final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/InstanceCreator<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/InstanceCreator<",
            "*>;>;)V"
        }
    .end annotation

    .line 51
    .local p1, "instanceCreators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    .line 53
    return-void
.end method

.method private newDefaultConstructor(Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/google/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    .line 99
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 100
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<-TT;>;"
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 103
    :cond_0
    new-instance v1, Lcom/google/gson/internal/ConstructorConstructor$3;

    invoke-direct {v1, p0, v0}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Lcom/google/gson/internal/ConstructorConstructor;Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 122
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<-TT;>;"
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
    .locals 3
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/google/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    .line 134
    .local p2, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    const-class v0, Ljava/util/SortedSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$4;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/ConstructorConstructor$4;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    return-object v0

    .line 141
    :cond_0
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$5;

    invoke-direct {v0, p0, p1}, Lcom/google/gson/internal/ConstructorConstructor$5;-><init>(Lcom/google/gson/internal/ConstructorConstructor;Ljava/lang/reflect/Type;)V

    return-object v0

    .line 157
    :cond_1
    const-class v0, Ljava/util/Set;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$6;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/ConstructorConstructor$6;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    return-object v0

    .line 163
    :cond_2
    const-class v0, Ljava/util/Queue;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 164
    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$7;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/ConstructorConstructor$7;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    return-object v0

    .line 170
    :cond_3
    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$8;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/ConstructorConstructor$8;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    return-object v0

    .line 178
    :cond_4
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 179
    const-class v0, Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 180
    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$9;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/ConstructorConstructor$9;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    return-object v0

    .line 185
    :cond_5
    const-class v0, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 186
    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$10;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/ConstructorConstructor$10;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    return-object v0

    .line 191
    :cond_6
    const-class v0, Ljava/util/SortedMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 192
    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$11;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/ConstructorConstructor$11;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    return-object v0

    .line 197
    :cond_7
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_8

    const-class v0, Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 198
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 199
    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$12;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/ConstructorConstructor$12;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    return-object v0

    .line 205
    :cond_8
    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$13;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/ConstructorConstructor$13;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    return-object v0

    .line 213
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method private newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/google/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    .line 218
    .local p2, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$14;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/gson/internal/ConstructorConstructor$14;-><init>(Lcom/google/gson/internal/ConstructorConstructor;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v0
.end method


# virtual methods
.method public get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/google/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    .line 56
    .local p1, "typeToken":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 57
    .local v0, "type":Ljava/lang/reflect/Type;
    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 62
    .local v1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    iget-object v2, p0, Lcom/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/InstanceCreator;

    .line 63
    .local v2, "typeCreator":Lcom/google/gson/InstanceCreator;, "Lcom/google/gson/InstanceCreator<TT;>;"
    if-eqz v2, :cond_0

    .line 64
    new-instance v3, Lcom/google/gson/internal/ConstructorConstructor$1;

    invoke-direct {v3, p0, v2, v0}, Lcom/google/gson/internal/ConstructorConstructor$1;-><init>(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)V

    return-object v3

    .line 73
    :cond_0
    iget-object v3, p0, Lcom/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    .line 74
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/InstanceCreator;

    .line 75
    .local v3, "rawTypeCreator":Lcom/google/gson/InstanceCreator;, "Lcom/google/gson/InstanceCreator<TT;>;"
    if-eqz v3, :cond_1

    .line 76
    new-instance v4, Lcom/google/gson/internal/ConstructorConstructor$2;

    invoke-direct {v4, p0, v3, v0}, Lcom/google/gson/internal/ConstructorConstructor$2;-><init>(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)V

    return-object v4

    .line 83
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/gson/internal/ConstructorConstructor;->newDefaultConstructor(Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;

    move-result-object v4

    .line 84
    .local v4, "defaultConstructor":Lcom/google/gson/internal/ObjectConstructor;, "Lcom/google/gson/internal/ObjectConstructor<TT;>;"
    if-eqz v4, :cond_2

    .line 85
    return-object v4

    .line 88
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/google/gson/internal/ConstructorConstructor;->newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;

    move-result-object v5

    .line 89
    .local v5, "defaultImplementation":Lcom/google/gson/internal/ObjectConstructor;, "Lcom/google/gson/internal/ObjectConstructor<TT;>;"
    if-eqz v5, :cond_3

    .line 90
    return-object v5

    .line 94
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/google/gson/internal/ConstructorConstructor;->newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;

    move-result-object v6

    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
