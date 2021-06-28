.class public final Lcom/google/android/gms/internal/gtm/zzz;
.super Lcom/google/android/gms/analytics/zzi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/zzi<",
        "Lcom/google/android/gms/internal/gtm/zzz;",
        ">;"
    }
.end annotation


# instance fields
.field private zzus:Ljava/lang/String;

.field private zzut:Ljava/lang/String;

.field private zzuu:Ljava/lang/String;

.field private zzuv:Ljava/lang/String;

.field private zzuw:Z

.field private zzux:Ljava/lang/String;

.field private zzuy:Z

.field private zzuz:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzi;-><init>()V

    return-void
.end method


# virtual methods
.method public final setClientId(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzut:Ljava/lang/String;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuu:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "hitType"

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzus:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clientId"

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzut:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "userId"

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuu:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "androidAdId"

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuv:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AdTargetingEnabled"

    .line 7
    iget-boolean v2, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuw:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sessionControl"

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzux:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nonInteraction"

    .line 9
    iget-boolean v2, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuy:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sampleRate"

    .line 10
    iget-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuz:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/analytics/zzi;->zza(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuw:Z

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/analytics/zzi;)V
    .locals 6

    .line 32
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzz;

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzus:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzus:Ljava/lang/String;

    .line 35
    iput-object v0, p1, Lcom/google/android/gms/internal/gtm/zzz;->zzus:Ljava/lang/String;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzut:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzut:Ljava/lang/String;

    .line 38
    iput-object v0, p1, Lcom/google/android/gms/internal/gtm/zzz;->zzut:Ljava/lang/String;

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuu:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuu:Ljava/lang/String;

    .line 41
    iput-object v0, p1, Lcom/google/android/gms/internal/gtm/zzz;->zzuu:Ljava/lang/String;

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuv:Ljava/lang/String;

    .line 44
    iput-object v0, p1, Lcom/google/android/gms/internal/gtm/zzz;->zzuv:Ljava/lang/String;

    .line 45
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuw:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 47
    iput-boolean v1, p1, Lcom/google/android/gms/internal/gtm/zzz;->zzuw:Z

    .line 48
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzux:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzux:Ljava/lang/String;

    .line 50
    iput-object v0, p1, Lcom/google/android/gms/internal/gtm/zzz;->zzux:Ljava/lang/String;

    .line 51
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuy:Z

    if-eqz v0, :cond_6

    .line 53
    iput-boolean v0, p1, Lcom/google/android/gms/internal/gtm/zzz;->zzuy:Z

    .line 54
    :cond_6
    iget-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuz:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_8

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_7

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    :goto_0
    const-string v0, "Sample rate must be between 0% and 100%"

    .line 56
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 57
    iput-wide v2, p1, Lcom/google/android/gms/internal/gtm/zzz;->zzuz:D

    :cond_8
    return-void
.end method

.method public final zzb(Z)V
    .locals 0

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuy:Z

    return-void
.end method

.method public final zzbs()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzus:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbt()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzut:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbu()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuu:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbv()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuv:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbw()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuw:Z

    return v0
.end method

.method public final zzbx()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzux:Ljava/lang/String;

    return-object v0
.end method

.method public final zzby()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuy:Z

    return v0
.end method

.method public final zzbz()D
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuz:D

    return-wide v0
.end method

.method public final zzl(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzus:Ljava/lang/String;

    return-void
.end method

.method public final zzm(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuv:Ljava/lang/String;

    return-void
.end method
