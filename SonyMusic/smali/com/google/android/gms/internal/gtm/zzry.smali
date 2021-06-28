.class final Lcom/google/android/gms/internal/gtm/zzry;
.super Lcom/google/android/gms/internal/gtm/zzpo;

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzrj;
.implements Lcom/google/android/gms/internal/gtm/zzsv;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gtm/zzpo<",
        "Ljava/lang/Long;",
        ">;",
        "Lcom/google/android/gms/internal/gtm/zzrj<",
        "Ljava/lang/Long;",
        ">;",
        "Lcom/google/android/gms/internal/gtm/zzsv;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final zzbck:Lcom/google/android/gms/internal/gtm/zzry;


# instance fields
.field private size:I

.field private zzbcl:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 111
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzry;

    const/4 v1, 0x0

    new-array v2, v1, [J

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/gtm/zzry;-><init>([JI)V

    .line 112
    sput-object v0, Lcom/google/android/gms/internal/gtm/zzry;->zzbck:Lcom/google/android/gms/internal/gtm/zzry;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzpo;->zzmi()V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    .line 1
    new-array v0, v0, [J

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzry;-><init>([JI)V

    return-void
.end method

.method private constructor <init>([JI)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzpo;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzry;->zzbcl:[J

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/gtm/zzry;->size:I

    return-void
.end method

.method private final zzah(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 77
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzry;->size:I

    if-ge p1, v0, :cond_0

    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzry;->zzai(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzai(I)Ljava/lang/String;
    .locals 3

    .line 80
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzry;->size:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final zzk(IJ)V
    .locals 4

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzpo;->zzmz()V

    if-ltz p1, :cond_1

    .line 38
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzry;->size:I

    if-gt p1, v0, :cond_1

    .line 40
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzry;->zzbcl:[J

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    .line 41
    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x3

    .line 42
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 43
    new-array v0, v0, [J

    const/4 v2, 0x0

    .line 44
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzry;->zzbcl:[J

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/gtm/zzry;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzry;->zzbcl:[J

    .line 47
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzry;->zzbcl:[J

    aput-wide p2, v0, p1

    .line 48
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzry;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzry;->size:I

    .line 49
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    .line 39
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzry;->zzai(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final synthetic add(ILjava/lang/Object;)V
    .locals 2

    .line 100
    check-cast p2, Ljava/lang/Long;

    .line 101
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/gtm/zzry;->zzk(IJ)V

    return-void
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzpo;->zzmz()V

    .line 52
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzre;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzry;

    if-nez v0, :cond_0

    .line 54
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/gtm/zzpo;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 55
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzry;

    .line 56
    iget v0, p1, Lcom/google/android/gms/internal/gtm/zzry;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const v2, 0x7fffffff

    .line 58
    iget v3, p0, Lcom/google/android/gms/internal/gtm/zzry;->size:I

    sub-int/2addr v2, v3

    if-lt v2, v0, :cond_3

    add-int/2addr v3, v0

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzry;->zzbcl:[J

    array-length v2, v0

    if-le v3, v2, :cond_2

    .line 63
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzry;->zzbcl:[J

    .line 64
    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/gtm/zzry;->zzbcl:[J

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzry;->zzbcl:[J

    iget v4, p0, Lcom/google/android/gms/internal/gtm/zzry;->size:I

    iget p1, p1, Lcom/google/android/gms/internal/gtm/zzry;->size:I

    invoke-static {v0, v1, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iput v3, p0, Lcom/google/android/gms/internal/gtm/zzry;->size:I

    .line 66
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v0

    .line 60
    :cond_3
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 16
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/gtm/zzry;

    if-nez v1, :cond_1

    .line 17
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/gtm/zzpo;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 18
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzry;

    .line 19
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzry;->size:I

    iget v2, p1, Lcom/google/android/gms/internal/gtm/zzry;->size:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 21
    :cond_2
    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzry;->zzbcl:[J

    const/4 v1, 0x0

    .line 22
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzry;->size:I

    if-ge v1, v2, :cond_4

    .line 23
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzry;->zzbcl:[J

    aget-wide v4, v2, v1

    aget-wide v6, p1, v1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 2

    .line 109
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzry;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final getLong(I)J
    .locals 3

    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzry;->zzah(I)V

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzry;->zzbcl:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public final hashCode()I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 28
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzry;->size:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 29
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzry;->zzbcl:[J

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/gtm/zzre;->zzz(J)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 5

    .line 91
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzpo;->zzmz()V

    .line 92
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzry;->zzah(I)V

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzry;->zzbcl:[J

    aget-wide v1, v0, p1

    .line 94
    iget v3, p0, Lcom/google/android/gms/internal/gtm/zzry;->size:I

    add-int/lit8 v4, v3, -0x1

    if-ge p1, v4, :cond_0

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    .line 95
    invoke-static {v0, v4, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    :cond_0
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzry;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzry;->size:I

    .line 97
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 98
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 5

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzpo;->zzmz()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 69
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzry;->size:I

    if-ge v1, v2, :cond_1

    .line 70
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzry;->zzbcl:[J

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzry;->zzbcl:[J

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzry;->size:I

    sub-int/2addr v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzry;->size:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzry;->size:I

    .line 73
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/2addr p1, v3

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final removeRange(II)V
    .locals 2

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzpo;->zzmz()V

    if-lt p2, p1, :cond_0

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzry;->zzbcl:[J

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzry;->size:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzry;->size:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzry;->size:I

    .line 12
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "toIndex < fromIndex"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 81
    check-cast p2, Ljava/lang/Long;

    .line 82
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzpo;->zzmz()V

    .line 84
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzry;->zzah(I)V

    .line 85
    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzry;->zzbcl:[J

    aget-wide v2, p2, p1

    .line 86
    aput-wide v0, p2, p1

    .line 88
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzry;->size:I

    return v0
.end method

.method public final zzaa(J)V
    .locals 1

    .line 35
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzry;->size:I

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzry;->zzk(IJ)V

    return-void
.end method

.method public final synthetic zzaj(I)Lcom/google/android/gms/internal/gtm/zzrj;
    .locals 2

    .line 104
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzry;->size:I

    if-lt p1, v0, :cond_0

    .line 106
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzry;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzry;->zzbcl:[J

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzry;->size:I

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/gtm/zzry;-><init>([JI)V

    return-object v0

    .line 105
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
