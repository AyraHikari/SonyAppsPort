.class final Lcom/google/android/gms/internal/cast/zzda;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzzm:Lcom/google/android/gms/internal/cast/zzct;

.field private final synthetic zzzq:Lcom/google/android/gms/internal/cast/zzcj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzcv;Lcom/google/android/gms/internal/cast/zzct;Lcom/google/android/gms/internal/cast/zzcj;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzda;->zzzm:Lcom/google/android/gms/internal/cast/zzct;

    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzda;->zzzq:Lcom/google/android/gms/internal/cast/zzcj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzda;->zzzm:Lcom/google/android/gms/internal/cast/zzct;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzda;->zzzq:Lcom/google/android/gms/internal/cast/zzcj;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cast/zzct;->zza(Lcom/google/android/gms/internal/cast/zzct;Lcom/google/android/gms/internal/cast/zzcj;)V

    return-void
.end method
