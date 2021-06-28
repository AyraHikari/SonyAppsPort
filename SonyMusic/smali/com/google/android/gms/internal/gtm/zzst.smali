.class final Lcom/google/android/gms/internal/gtm/zzst;
.super Ljava/lang/Object;


# static fields
.field private static final zzbdp:Lcom/google/android/gms/internal/gtm/zzsr;

.field private static final zzbdq:Lcom/google/android/gms/internal/gtm/zzsr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzst;->zzqr()Lcom/google/android/gms/internal/gtm/zzsr;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzst;->zzbdp:Lcom/google/android/gms/internal/gtm/zzsr;

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzss;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzss;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzst;->zzbdq:Lcom/google/android/gms/internal/gtm/zzsr;

    return-void
.end method

.method static zzqp()Lcom/google/android/gms/internal/gtm/zzsr;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzst;->zzbdp:Lcom/google/android/gms/internal/gtm/zzsr;

    return-object v0
.end method

.method static zzqq()Lcom/google/android/gms/internal/gtm/zzsr;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzst;->zzbdq:Lcom/google/android/gms/internal/gtm/zzsr;

    return-object v0
.end method

.method private static zzqr()Lcom/google/android/gms/internal/gtm/zzsr;
    .locals 3

    :try_start_0
    const-string v0, "com.google.protobuf.NewInstanceSchemaFull"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzsr;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
