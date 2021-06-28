.class final Lcom/google/android/gms/internal/gtm/zztk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private pos:I

.field private zzbee:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final synthetic zzbef:Lcom/google/android/gms/internal/gtm/zztc;

.field private zzbej:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/gtm/zztc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzbef:Lcom/google/android/gms/internal/gtm/zztc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->pos:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/gtm/zztc;Lcom/google/android/gms/internal/gtm/zztd;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zztk;-><init>(Lcom/google/android/gms/internal/gtm/zztc;)V

    return-void
.end method

.method private final zzrf()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzbee:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzbef:Lcom/google/android/gms/internal/gtm/zztc;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zztc;->zzc(Lcom/google/android/gms/internal/gtm/zztc;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzbee:Ljava/util/Iterator;

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzbee:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 3

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->pos:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzbef:Lcom/google/android/gms/internal/gtm/zztc;

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zztc;->zzb(Lcom/google/android/gms/internal/gtm/zztc;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzbef:Lcom/google/android/gms/internal/gtm/zztc;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zztc;->zzc(Lcom/google/android/gms/internal/gtm/zztc;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zztk;->zzrf()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzbej:Z

    .line 19
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->pos:I

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzbef:Lcom/google/android/gms/internal/gtm/zztc;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zztc;->zzb(Lcom/google/android/gms/internal/gtm/zztc;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzbef:Lcom/google/android/gms/internal/gtm/zztc;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zztc;->zzb(Lcom/google/android/gms/internal/gtm/zztc;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zztk;->zzrf()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final remove()V
    .locals 3

    .line 6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzbej:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzbej:Z

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzbef:Lcom/google/android/gms/internal/gtm/zztc;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zztc;->zza(Lcom/google/android/gms/internal/gtm/zztc;)V

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->pos:I

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzbef:Lcom/google/android/gms/internal/gtm/zztc;

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zztc;->zzb(Lcom/google/android/gms/internal/gtm/zztc;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzbef:Lcom/google/android/gms/internal/gtm/zztc;

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/gtm/zztk;->pos:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zztc;->zza(Lcom/google/android/gms/internal/gtm/zztc;I)Ljava/lang/Object;

    return-void

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zztk;->zzrf()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() was called before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
