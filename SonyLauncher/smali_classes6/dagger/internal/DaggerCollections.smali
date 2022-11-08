.class public final Ldagger/internal/DaggerCollections;
.super Ljava/lang/Object;
.source "DaggerCollections.java"


# static fields
.field private static final MAX_POWER_OF_TWO:I = 0x40000000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateInitialCapacity(I)I
    .locals 2
    .param p0, "expectedSize"    # I

    .line 78
    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    .line 79
    add-int/lit8 v0, p0, 0x1

    return v0

    .line 81
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_1

    .line 85
    int-to-float v0, p0

    const/high16 v1, 0x3f400000    # 0.75f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 87
    :cond_1
    const v0, 0x7fffffff

    return v0
.end method

.method public static hasDuplicates(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    .line 54
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 55
    return v1

    .line 57
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 58
    .local v0, "asSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static newHashSetWithExpectedSize(I)Ljava/util/HashSet;
    .locals 2
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/HashSet<",
            "TT;>;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Ldagger/internal/DaggerCollections;->calculateInitialCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    return-object v0
.end method

.method public static newLinkedHashMapWithExpectedSize(I)Ljava/util/LinkedHashMap;
    .locals 2
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {p0}, Ldagger/internal/DaggerCollections;->calculateInitialCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-object v0
.end method

.method public static presizedList(I)Ljava/util/List;
    .locals 1
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 44
    if-nez p0, :cond_0

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 47
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method
