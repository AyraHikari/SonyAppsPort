.class public final Lcom/google/android/gms/cast/zzaf;
.super Ljava/lang/Object;


# static fields
.field private static final zzcy:Lcom/google/android/gms/common/Feature;

.field public static final zzcz:[Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "client_side_logging"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/cast/zzaf;->zzcy:Lcom/google/android/gms/common/Feature;

    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lcom/google/android/gms/common/Feature;

    sget-object v1, Lcom/google/android/gms/cast/zzaf;->zzcy:Lcom/google/android/gms/common/Feature;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/cast/zzaf;->zzcz:[Lcom/google/android/gms/common/Feature;

    return-void
.end method
