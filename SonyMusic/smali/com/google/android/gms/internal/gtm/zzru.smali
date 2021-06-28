.class abstract Lcom/google/android/gms/internal/gtm/zzru;
.super Ljava/lang/Object;


# static fields
.field private static final zzbch:Lcom/google/android/gms/internal/gtm/zzru;

.field private static final zzbci:Lcom/google/android/gms/internal/gtm/zzru;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzrw;-><init>(Lcom/google/android/gms/internal/gtm/zzrv;)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzru;->zzbch:Lcom/google/android/gms/internal/gtm/zzru;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrx;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzrx;-><init>(Lcom/google/android/gms/internal/gtm/zzrv;)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzru;->zzbci:Lcom/google/android/gms/internal/gtm/zzru;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/gtm/zzrv;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzru;-><init>()V

    return-void
.end method

.method static zzqc()Lcom/google/android/gms/internal/gtm/zzru;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzru;->zzbch:Lcom/google/android/gms/internal/gtm/zzru;

    return-object v0
.end method

.method static zzqd()Lcom/google/android/gms/internal/gtm/zzru;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzru;->zzbci:Lcom/google/android/gms/internal/gtm/zzru;

    return-object v0
.end method


# virtual methods
.method abstract zza(Ljava/lang/Object;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end method

.method abstract zza(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method

.method abstract zzb(Ljava/lang/Object;J)V
.end method
