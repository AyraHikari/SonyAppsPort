.class public final Lcom/google/android/gms/internal/cast/zzeg;
.super Lcom/google/android/gms/internal/cast/zzeb;


# instance fields
.field private final synthetic zzabq:Lcom/google/android/gms/internal/cast/zzee;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/cast/zzee;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzeg;->zzabq:Lcom/google/android/gms/internal/cast/zzee;

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzeb;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisconnected()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzdx;->zzeq()Lcom/google/android/gms/internal/cast/zzdo;

    move-result-object v0

    const-string v1, "onDisconnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzdo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzeg;->zzabq:Lcom/google/android/gms/internal/cast/zzee;

    iget-object v0, v0, Lcom/google/android/gms/internal/cast/zzee;->zzabo:Lcom/google/android/gms/internal/cast/zzdx;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzdx;->zza(Lcom/google/android/gms/internal/cast/zzdx;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzeg;->zzabq:Lcom/google/android/gms/internal/cast/zzee;

    new-instance v1, Lcom/google/android/gms/internal/cast/zzef;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/cast/zzef;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public final onError(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzdx;->zzeq()Lcom/google/android/gms/internal/cast/zzdo;

    move-result-object v0

    const-string v1, "onError: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzdo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzeg;->zzabq:Lcom/google/android/gms/internal/cast/zzee;

    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzee;->zzabo:Lcom/google/android/gms/internal/cast/zzdx;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzdx;->zza(Lcom/google/android/gms/internal/cast/zzdx;)V

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzeg;->zzabq:Lcom/google/android/gms/internal/cast/zzee;

    new-instance v0, Lcom/google/android/gms/internal/cast/zzef;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzef;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
