.class Lcom/google/android/gms/internal/cast/zzee;
.super Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
        "Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionResult;",
        "Lcom/google/android/gms/internal/cast/zzeh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzabo:Lcom/google/android/gms/internal/cast/zzdx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzdx;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzee;->zzabo:Lcom/google/android/gms/internal/cast/zzdx;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzdx;->zzc(Lcom/google/android/gms/internal/cast/zzdx;)Lcom/google/android/gms/common/api/Api;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/cast/zzef;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/cast/zzef;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/cast/zzeh;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzee;->zza(Lcom/google/android/gms/internal/cast/zzeh;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/cast/zzeh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
