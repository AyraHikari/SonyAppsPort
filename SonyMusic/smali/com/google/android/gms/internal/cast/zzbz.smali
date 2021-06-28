.class public abstract Lcom/google/android/gms/internal/cast/zzbz;
.super Lcom/google/android/gms/internal/cast/zzcl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/internal/cast/zzcl<",
        "TR;>;"
    }
.end annotation


# instance fields
.field protected zzxb:Lcom/google/android/gms/internal/cast/zzdu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzbs;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzbs;->zza(Lcom/google/android/gms/internal/cast/zzbs;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzcl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzbz;->execute()V

    return-void
.end method

.method public abstract execute()V
.end method
