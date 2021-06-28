.class final Lcom/google/android/gms/internal/gtm/zzak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzvw:Lcom/google/android/gms/internal/gtm/zzae;

.field private final synthetic zzwb:Lcom/google/android/gms/internal/gtm/zzbw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzae;Lcom/google/android/gms/internal/gtm/zzbw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzak;->zzvw:Lcom/google/android/gms/internal/gtm/zzae;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzak;->zzwb:Lcom/google/android/gms/internal/gtm/zzbw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzak;->zzvw:Lcom/google/android/gms/internal/gtm/zzae;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzae;->zza(Lcom/google/android/gms/internal/gtm/zzae;)Lcom/google/android/gms/internal/gtm/zzbb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzak;->zzwb:Lcom/google/android/gms/internal/gtm/zzbw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzbb;->zzb(Lcom/google/android/gms/internal/gtm/zzbw;)V

    return-void
.end method
