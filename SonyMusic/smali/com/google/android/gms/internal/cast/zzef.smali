.class final Lcom/google/android/gms/internal/cast/zzef;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionResult;


# instance fields
.field private final zzbz:Landroid/view/Display;

.field private final zzhf:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Landroid/view/Display;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzef;->zzhf:Lcom/google/android/gms/common/api/Status;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzef;->zzbz:Landroid/view/Display;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzef;->zzhf:Lcom/google/android/gms/common/api/Status;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzef;->zzbz:Landroid/view/Display;

    return-void
.end method


# virtual methods
.method public final getPresentationDisplay()Landroid/view/Display;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzef;->zzbz:Landroid/view/Display;

    return-object v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzef;->zzhf:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
