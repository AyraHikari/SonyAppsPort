.class final Lcom/google/android/gms/internal/gtm/zztf;
.super Lcom/google/android/gms/internal/gtm/zztl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gtm/zztl;"
    }
.end annotation


# instance fields
.field private final synthetic zzbef:Lcom/google/android/gms/internal/gtm/zztc;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/gtm/zztc;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zztf;->zzbef:Lcom/google/android/gms/internal/gtm/zztc;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zztl;-><init>(Lcom/google/android/gms/internal/gtm/zztc;Lcom/google/android/gms/internal/gtm/zztd;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/gtm/zztc;Lcom/google/android/gms/internal/gtm/zztd;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zztf;-><init>(Lcom/google/android/gms/internal/gtm/zztc;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzte;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztf;->zzbef:Lcom/google/android/gms/internal/gtm/zztc;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzte;-><init>(Lcom/google/android/gms/internal/gtm/zztc;Lcom/google/android/gms/internal/gtm/zztd;)V

    return-object v0
.end method
