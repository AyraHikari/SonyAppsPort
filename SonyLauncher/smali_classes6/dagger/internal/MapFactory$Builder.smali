.class public final Ldagger/internal/MapFactory$Builder;
.super Ldagger/internal/AbstractMapFactory$Builder;
.source "MapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/internal/MapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ldagger/internal/AbstractMapFactory$Builder<",
        "TK;TV;TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .line 66
    .local p0, "this":Ldagger/internal/MapFactory$Builder;, "Ldagger/internal/MapFactory$Builder<TK;TV;>;"
    invoke-direct {p0, p1}, Ldagger/internal/AbstractMapFactory$Builder;-><init>(I)V

    .line 67
    return-void
.end method

.method synthetic constructor <init>(ILdagger/internal/MapFactory$Builder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Ldagger/internal/MapFactory$Builder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public build()Ldagger/internal/MapFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/internal/MapFactory<",
            "TK;TV;>;"
        }
    .end annotation

    .line 83
    .local p0, "this":Ldagger/internal/MapFactory$Builder;, "Ldagger/internal/MapFactory$Builder<TK;TV;>;"
    new-instance v0, Ldagger/internal/MapFactory;

    iget-object v1, p0, Ldagger/internal/MapFactory$Builder;->map:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldagger/internal/MapFactory;-><init>(Ljava/util/Map;Ldagger/internal/MapFactory-IA;)V

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/AbstractMapFactory$Builder;
    .locals 0

    .line 64
    .local p0, "this":Ldagger/internal/MapFactory$Builder;, "Ldagger/internal/MapFactory$Builder<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ldagger/internal/MapFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapFactory$Builder;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapFactory$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljavax/inject/Provider<",
            "TV;>;)",
            "Ldagger/internal/MapFactory$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 71
    .local p0, "this":Ldagger/internal/MapFactory$Builder;, "Ldagger/internal/MapFactory$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "providerOfValue":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TV;>;"
    invoke-super {p0, p1, p2}, Ldagger/internal/AbstractMapFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/AbstractMapFactory$Builder;

    .line 72
    return-object p0
.end method

.method public bridge synthetic putAll(Ljavax/inject/Provider;)Ldagger/internal/AbstractMapFactory$Builder;
    .locals 0

    .line 64
    .local p0, "this":Ldagger/internal/MapFactory$Builder;, "Ldagger/internal/MapFactory$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Ldagger/internal/MapFactory$Builder;->putAll(Ljavax/inject/Provider;)Ldagger/internal/MapFactory$Builder;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljavax/inject/Provider;)Ldagger/internal/MapFactory$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "TK;TV;>;>;)",
            "Ldagger/internal/MapFactory$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 77
    .local p0, "this":Ldagger/internal/MapFactory$Builder;, "Ldagger/internal/MapFactory$Builder<TK;TV;>;"
    .local p1, "mapFactory":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ljava/util/Map<TK;TV;>;>;"
    invoke-super {p0, p1}, Ldagger/internal/AbstractMapFactory$Builder;->putAll(Ljavax/inject/Provider;)Ldagger/internal/AbstractMapFactory$Builder;

    .line 78
    return-object p0
.end method
