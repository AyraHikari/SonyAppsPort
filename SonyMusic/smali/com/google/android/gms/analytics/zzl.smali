.class final Lcom/google/android/gms/analytics/zzl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzsw:Lcom/google/android/gms/analytics/zzg;

.field private final synthetic zzsx:Lcom/google/android/gms/analytics/zzk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/zzk;Lcom/google/android/gms/analytics/zzg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/analytics/zzl;->zzsx:Lcom/google/android/gms/analytics/zzk;

    iput-object p2, p0, Lcom/google/android/gms/analytics/zzl;->zzsw:Lcom/google/android/gms/analytics/zzg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzl;->zzsw:Lcom/google/android/gms/analytics/zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzg;->zzap()Lcom/google/android/gms/analytics/zzj;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/analytics/zzl;->zzsw:Lcom/google/android/gms/analytics/zzg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzj;->zza(Lcom/google/android/gms/analytics/zzg;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzl;->zzsx:Lcom/google/android/gms/analytics/zzk;

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzk;->zza(Lcom/google/android/gms/analytics/zzk;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/zzn;

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/analytics/zzl;->zzsw:Lcom/google/android/gms/analytics/zzg;

    invoke-interface {v1, v2}, Lcom/google/android/gms/analytics/zzn;->zza(Lcom/google/android/gms/analytics/zzg;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzl;->zzsx:Lcom/google/android/gms/analytics/zzk;

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzl;->zzsw:Lcom/google/android/gms/analytics/zzg;

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/zzk;->zza(Lcom/google/android/gms/analytics/zzk;Lcom/google/android/gms/analytics/zzg;)V

    return-void
.end method
