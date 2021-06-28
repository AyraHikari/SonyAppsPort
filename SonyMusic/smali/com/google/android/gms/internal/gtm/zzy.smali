.class public final Lcom/google/android/gms/internal/gtm/zzy;
.super Lcom/google/android/gms/analytics/zzi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/zzi<",
        "Lcom/google/android/gms/internal/gtm/zzy;",
        ">;"
    }
.end annotation


# instance fields
.field public zzuq:Ljava/lang/String;

.field public zzur:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzi;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "description"

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzy;->zzuq:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fatal"

    .line 4
    iget-boolean v2, p0, Lcom/google/android/gms/internal/gtm/zzy;->zzur:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/analytics/zzi;->zza(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/analytics/zzi;)V
    .locals 1

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzy;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzy;->zzuq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzy;->zzuq:Ljava/lang/String;

    .line 8
    iput-object v0, p1, Lcom/google/android/gms/internal/gtm/zzy;->zzuq:Ljava/lang/String;

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzy;->zzur:Z

    if-eqz v0, :cond_1

    .line 10
    iput-boolean v0, p1, Lcom/google/android/gms/internal/gtm/zzy;->zzur:Z

    :cond_1
    return-void
.end method
