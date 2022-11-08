.class public Lcom/google/protobuf/Internal$MapAdapter;
.super Ljava/util/AbstractMap;
.source "Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Internal$MapAdapter$EntryAdapter;,
        Lcom/google/protobuf/Internal$MapAdapter$IteratorAdapter;,
        Lcom/google/protobuf/Internal$MapAdapter$SetAdapter;,
        Lcom/google/protobuf/Internal$MapAdapter$Converter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "RealValue:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final realMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TRealValue;>;"
        }
    .end annotation
.end field

.field private final valueConverter:Lcom/google/protobuf/Internal$MapAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$MapAdapter$Converter<",
            "TRealValue;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/google/protobuf/Internal$MapAdapter$Converter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TRealValue;>;",
            "Lcom/google/protobuf/Internal$MapAdapter$Converter<",
            "TRealValue;TV;>;)V"
        }
    .end annotation

    .line 448
    .local p0, "this":Lcom/google/protobuf/Internal$MapAdapter;, "Lcom/google/protobuf/Internal$MapAdapter<TK;TV;TRealValue;>;"
    .local p1, "realMap":Ljava/util/Map;, "Ljava/util/Map<TK;TRealValue;>;"
    .local p2, "valueConverter":Lcom/google/protobuf/Internal$MapAdapter$Converter;, "Lcom/google/protobuf/Internal$MapAdapter$Converter<TRealValue;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 449
    iput-object p1, p0, Lcom/google/protobuf/Internal$MapAdapter;->realMap:Ljava/util/Map;

    .line 450
    iput-object p2, p0, Lcom/google/protobuf/Internal$MapAdapter;->valueConverter:Lcom/google/protobuf/Internal$MapAdapter$Converter;

    .line 451
    return-void
.end method

.method static synthetic access$000(Lcom/google/protobuf/Internal$MapAdapter;)Lcom/google/protobuf/Internal$MapAdapter$Converter;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Internal$MapAdapter;

    .line 421
    iget-object v0, p0, Lcom/google/protobuf/Internal$MapAdapter;->valueConverter:Lcom/google/protobuf/Internal$MapAdapter$Converter;

    return-object v0
.end method

.method public static newEnumConverter(Lcom/google/protobuf/Internal$EnumLiteMap;Lcom/google/protobuf/Internal$EnumLite;)Lcom/google/protobuf/Internal$MapAdapter$Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/Internal$EnumLite;",
            ">(",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "TT;>;TT;)",
            "Lcom/google/protobuf/Internal$MapAdapter$Converter<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation

    .line 431
    .local p0, "enumMap":Lcom/google/protobuf/Internal$EnumLiteMap;, "Lcom/google/protobuf/Internal$EnumLiteMap<TT;>;"
    .local p1, "unrecognizedValue":Lcom/google/protobuf/Internal$EnumLite;, "TT;"
    new-instance v0, Lcom/google/protobuf/Internal$MapAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/Internal$MapAdapter$1;-><init>(Lcom/google/protobuf/Internal$EnumLiteMap;Lcom/google/protobuf/Internal$EnumLite;)V

    return-object v0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 474
    .local p0, "this":Lcom/google/protobuf/Internal$MapAdapter;, "Lcom/google/protobuf/Internal$MapAdapter<TK;TV;TRealValue;>;"
    new-instance v0, Lcom/google/protobuf/Internal$MapAdapter$SetAdapter;

    iget-object v1, p0, Lcom/google/protobuf/Internal$MapAdapter;->realMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/Internal$MapAdapter$SetAdapter;-><init>(Lcom/google/protobuf/Internal$MapAdapter;Ljava/util/Set;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 456
    .local p0, "this":Lcom/google/protobuf/Internal$MapAdapter;, "Lcom/google/protobuf/Internal$MapAdapter<TK;TV;TRealValue;>;"
    iget-object v0, p0, Lcom/google/protobuf/Internal$MapAdapter;->realMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 457
    .local v0, "result":Ljava/lang/Object;, "TRealValue;"
    if-nez v0, :cond_0

    .line 458
    const/4 v1, 0x0

    return-object v1

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/Internal$MapAdapter;->valueConverter:Lcom/google/protobuf/Internal$MapAdapter$Converter;

    invoke-interface {v1, v0}, Lcom/google/protobuf/Internal$MapAdapter$Converter;->doForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 465
    .local p0, "this":Lcom/google/protobuf/Internal$MapAdapter;, "Lcom/google/protobuf/Internal$MapAdapter<TK;TV;TRealValue;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/protobuf/Internal$MapAdapter;->realMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/protobuf/Internal$MapAdapter;->valueConverter:Lcom/google/protobuf/Internal$MapAdapter$Converter;

    invoke-interface {v1, p2}, Lcom/google/protobuf/Internal$MapAdapter$Converter;->doBackward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 466
    .local v0, "oldValue":Ljava/lang/Object;, "TRealValue;"
    if-nez v0, :cond_0

    .line 467
    const/4 v1, 0x0

    return-object v1

    .line 469
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/Internal$MapAdapter;->valueConverter:Lcom/google/protobuf/Internal$MapAdapter$Converter;

    invoke-interface {v1, v0}, Lcom/google/protobuf/Internal$MapAdapter$Converter;->doForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
