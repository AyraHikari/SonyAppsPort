.class final Lcom/google/android/gms/internal/gtm/zzsh;
.super Ljava/lang/Object;


# static fields
.field private static final zzbcu:Lcom/google/android/gms/internal/gtm/zzsf;

.field private static final zzbcv:Lcom/google/android/gms/internal/gtm/zzsf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzsh;->zzqk()Lcom/google/android/gms/internal/gtm/zzsf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzsh;->zzbcu:Lcom/google/android/gms/internal/gtm/zzsf;

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzsg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzsg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzsh;->zzbcv:Lcom/google/android/gms/internal/gtm/zzsf;

    return-void
.end method

.method static zzqi()Lcom/google/android/gms/internal/gtm/zzsf;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzsh;->zzbcu:Lcom/google/android/gms/internal/gtm/zzsf;

    return-object v0
.end method

.method static zzqj()Lcom/google/android/gms/internal/gtm/zzsf;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzsh;->zzbcv:Lcom/google/android/gms/internal/gtm/zzsf;

    return-object v0
.end method

.method private static zzqk()Lcom/google/android/gms/internal/gtm/zzsf;
    .locals 3

    :try_start_0
    const-string v0, "com.google.protobuf.MapFieldSchemaFull"

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

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzsf;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
