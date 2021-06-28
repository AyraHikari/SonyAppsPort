.class final enum Lcom/google/android/gms/internal/gtm/zzqy;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/gtm/zzqy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzbaa:Lcom/google/android/gms/internal/gtm/zzqy;

.field public static final enum zzbab:Lcom/google/android/gms/internal/gtm/zzqy;

.field public static final enum zzbac:Lcom/google/android/gms/internal/gtm/zzqy;

.field public static final enum zzbad:Lcom/google/android/gms/internal/gtm/zzqy;

.field private static final synthetic zzbaf:[Lcom/google/android/gms/internal/gtm/zzqy;


# instance fields
.field private final zzbae:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzqy;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/gtm/zzqy;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzqy;->zzbaa:Lcom/google/android/gms/internal/gtm/zzqy;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzqy;

    const-string v1, "VECTOR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/gtm/zzqy;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzqy;->zzbab:Lcom/google/android/gms/internal/gtm/zzqy;

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzqy;

    const-string v1, "PACKED_VECTOR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/google/android/gms/internal/gtm/zzqy;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzqy;->zzbac:Lcom/google/android/gms/internal/gtm/zzqy;

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzqy;

    const-string v1, "MAP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/gms/internal/gtm/zzqy;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzqy;->zzbad:Lcom/google/android/gms/internal/gtm/zzqy;

    const/4 v0, 0x4

    .line 9
    new-array v0, v0, [Lcom/google/android/gms/internal/gtm/zzqy;

    sget-object v1, Lcom/google/android/gms/internal/gtm/zzqy;->zzbaa:Lcom/google/android/gms/internal/gtm/zzqy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/gtm/zzqy;->zzbab:Lcom/google/android/gms/internal/gtm/zzqy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/gtm/zzqy;->zzbac:Lcom/google/android/gms/internal/gtm/zzqy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/gtm/zzqy;->zzbad:Lcom/google/android/gms/internal/gtm/zzqy;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzqy;->zzbaf:[Lcom/google/android/gms/internal/gtm/zzqy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-boolean p3, p0, Lcom/google/android/gms/internal/gtm/zzqy;->zzbae:Z

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/gtm/zzqy;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzqy;->zzbaf:[Lcom/google/android/gms/internal/gtm/zzqy;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/gtm/zzqy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/gtm/zzqy;

    return-object v0
.end method
