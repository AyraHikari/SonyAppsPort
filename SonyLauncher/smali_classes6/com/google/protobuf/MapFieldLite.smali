.class public final Lcom/google/protobuf/MapFieldLite;
.super Ljava/util/LinkedHashMap;
.source "MapFieldLite.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_MAP_FIELD:Lcom/google/protobuf/MapFieldLite;


# instance fields
.field private isMutable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/google/protobuf/MapFieldLite;

    invoke-direct {v0}, Lcom/google/protobuf/MapFieldLite;-><init>()V

    sput-object v0, Lcom/google/protobuf/MapFieldLite;->EMPTY_MAP_FIELD:Lcom/google/protobuf/MapFieldLite;

    .line 64
    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->makeImmutable()V

    .line 65
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 51
    .local p0, "this":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/MapFieldLite;->isMutable:Z

    .line 53
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    .local p1, "mapData":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/MapFieldLite;->isMutable:Z

    .line 58
    return-void
.end method

.method static calculateHashCodeForMap(Ljava/util/Map;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)I"
        }
    .end annotation

    .line 177
    .local p0, "a":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v0, 0x0

    .line 178
    .local v0, "result":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 179
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    nop

    .line 180
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/MapFieldLite;->calculateHashCodeForObject(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/MapFieldLite;->calculateHashCodeForObject(Ljava/lang/Object;)I

    move-result v4

    xor-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 181
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 182
    :cond_0
    return v0
.end method

.method private static calculateHashCodeForObject(Ljava/lang/Object;)I
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;

    .line 162
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 163
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashCode([B)I

    move-result v0

    return v0

    .line 166
    :cond_0
    instance-of v0, p0, Lcom/google/protobuf/Internal$EnumLite;

    if-nez v0, :cond_1

    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 167
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private static checkForNullKeysAndValues(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 119
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 120
    .local v1, "key":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .end local v1    # "key":Ljava/lang/Object;
    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method

.method private static copy(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;

    .line 191
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 192
    move-object v0, p0

    check-cast v0, [B

    .line 193
    .local v0, "data":[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    return-object v1

    .line 195
    .end local v0    # "data":[B
    :cond_0
    return-object p0
.end method

.method static copy(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 205
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 206
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 207
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/MapFieldLite;->copy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 209
    :cond_0
    return-object v0
.end method

.method public static emptyMapField()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/protobuf/MapFieldLite<",
            "TK;TV;>;"
        }
    .end annotation

    .line 70
    sget-object v0, Lcom/google/protobuf/MapFieldLite;->EMPTY_MAP_FIELD:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private ensureMutable()V
    .locals 1

    .line 231
    .local p0, "this":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    return-void

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 126
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 127
    move-object v0, p0

    check-cast v0, [B

    move-object v1, p1

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    .line 129
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static equals(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 137
    .local p0, "a":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "b":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 138
    return v0

    .line 140
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    .line 141
    return v3

    .line 143
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 144
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 145
    return v3

    .line 147
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/MapFieldLite;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 148
    return v3

    .line 150
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_3
    goto :goto_0

    .line 151
    :cond_4
    return v0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 88
    .local p0, "this":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/protobuf/MapFieldLite;->ensureMutable()V

    .line 89
    invoke-super {p0}, Ljava/util/LinkedHashMap;->clear()V

    .line 90
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 83
    .local p0, "this":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MapFieldLite;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 158
    .local p0, "this":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    invoke-static {p0, v0}, Lcom/google/protobuf/MapFieldLite;->equals(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 187
    .local p0, "this":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    invoke-static {p0}, Lcom/google/protobuf/MapFieldLite;->calculateHashCodeForMap(Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public isMutable()Z
    .locals 1

    .line 227
    .local p0, "this":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    iget-boolean v0, p0, Lcom/google/protobuf/MapFieldLite;->isMutable:Z

    return v0
.end method

.method public makeImmutable()V
    .locals 1

    .line 222
    .local p0, "this":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MapFieldLite;->isMutable:Z

    .line 223
    return-void
.end method

.method public mergeFrom(Lcom/google/protobuf/MapFieldLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/MapFieldLite<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    .local p1, "other":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/protobuf/MapFieldLite;->ensureMutable()V

    .line 75
    invoke-virtual {p1}, Lcom/google/protobuf/MapFieldLite;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MapFieldLite;->putAll(Ljava/util/Map;)V

    .line 78
    :cond_0
    return-void
.end method

.method public mutableCopy()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "TK;TV;>;"
        }
    .end annotation

    .line 214
    .local p0, "this":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MapFieldLite;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/protobuf/MapFieldLite;

    invoke-direct {v0}, Lcom/google/protobuf/MapFieldLite;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/MapFieldLite;

    invoke-direct {v0, p0}, Lcom/google/protobuf/MapFieldLite;-><init>(Ljava/util/Map;)V

    :goto_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 94
    .local p0, "this":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lcom/google/protobuf/MapFieldLite;->ensureMutable()V

    .line 95
    invoke-static {p1}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {p2}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    .line 102
    .local p0, "this":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/MapFieldLite;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 107
    .local p0, "this":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Lcom/google/protobuf/MapFieldLite;->ensureMutable()V

    .line 108
    invoke-static {p1}, Lcom/google/protobuf/MapFieldLite;->checkForNullKeysAndValues(Ljava/util/Map;)V

    .line 109
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 110
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/protobuf/MapFieldLite;->ensureMutable()V

    .line 115
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
