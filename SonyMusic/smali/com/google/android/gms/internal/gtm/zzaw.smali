.class final Lcom/google/android/gms/internal/gtm/zzaw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzxh:Lcom/google/android/gms/internal/gtm/zzce;

.field private final synthetic zzxi:Lcom/google/android/gms/internal/gtm/zzav;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzav;Lcom/google/android/gms/internal/gtm/zzce;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzxi:Lcom/google/android/gms/internal/gtm/zzav;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzxh:Lcom/google/android/gms/internal/gtm/zzce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzxi:Lcom/google/android/gms/internal/gtm/zzav;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzav;->zzxe:Lcom/google/android/gms/internal/gtm/zzat;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzat;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzxi:Lcom/google/android/gms/internal/gtm/zzav;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzav;->zzxe:Lcom/google/android/gms/internal/gtm/zzat;

    const-string v1, "Connected to service after a timeout"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzam;->zzr(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzxi:Lcom/google/android/gms/internal/gtm/zzav;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzav;->zzxe:Lcom/google/android/gms/internal/gtm/zzat;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzxh:Lcom/google/android/gms/internal/gtm/zzce;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzat;->zza(Lcom/google/android/gms/internal/gtm/zzat;Lcom/google/android/gms/internal/gtm/zzce;)V

    :cond_0
    return-void
.end method
