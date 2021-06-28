.class final Lcom/google/android/gms/analytics/zzp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzti:Ljava/util/Map;

.field private final synthetic zztj:Z

.field private final synthetic zztk:Ljava/lang/String;

.field private final synthetic zztl:J

.field private final synthetic zztm:Z

.field private final synthetic zztn:Z

.field private final synthetic zzto:Ljava/lang/String;

.field private final synthetic zztp:Lcom/google/android/gms/analytics/Tracker;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/Tracker;Ljava/util/Map;ZLjava/lang/String;JZZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/analytics/zzp;->zztp:Lcom/google/android/gms/analytics/Tracker;

    iput-object p2, p0, Lcom/google/android/gms/analytics/zzp;->zzti:Ljava/util/Map;

    iput-boolean p3, p0, Lcom/google/android/gms/analytics/zzp;->zztj:Z

    iput-object p4, p0, Lcom/google/android/gms/analytics/zzp;->zztk:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/analytics/zzp;->zztl:J

    iput-boolean p7, p0, Lcom/google/android/gms/analytics/zzp;->zztm:Z

    iput-boolean p8, p0, Lcom/google/android/gms/analytics/zzp;->zztn:Z

    iput-object p9, p0, Lcom/google/android/gms/analytics/zzp;->zzto:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/analytics/zzp;->zztp:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v1}, Lcom/google/android/gms/analytics/Tracker;->zza(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/Tracker$zza;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/Tracker$zza;->zzax()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v0, Lcom/google/android/gms/analytics/zzp;->zzti:Ljava/util/Map;

    const-string v2, "sc"

    const-string v3, "start"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/analytics/zzp;->zzti:Ljava/util/Map;

    const-string v2, "cid"

    iget-object v3, v0, Lcom/google/android/gms/analytics/zzp;->zztp:Lcom/google/android/gms/analytics/Tracker;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzam;->zzcr()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v3

    const-string v4, "getClientId can not be called from the main thread"

    .line 6
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotMainThread(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/analytics/zza;->zzab()Lcom/google/android/gms/internal/gtm/zzap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzap;->zzdh()Lcom/google/android/gms/internal/gtm/zzbh;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzbh;->zzeh()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/gtm/zzcz;->zzc(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, v0, Lcom/google/android/gms/analytics/zzp;->zzti:Ljava/util/Map;

    const-string v2, "sf"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 11
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/gtm/zzcz;->zza(Ljava/lang/String;D)D

    move-result-wide v1

    .line 12
    iget-object v3, v0, Lcom/google/android/gms/analytics/zzp;->zzti:Ljava/util/Map;

    const-string v4, "cid"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/gtm/zzcz;->zza(DLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 13
    iget-object v3, v0, Lcom/google/android/gms/analytics/zzp;->zztp:Lcom/google/android/gms/analytics/Tracker;

    const-string v4, "Sampling enabled. Hit sampled out. sample rate"

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/google/android/gms/internal/gtm/zzam;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 15
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/analytics/zzp;->zztp:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v1}, Lcom/google/android/gms/analytics/Tracker;->zzb(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/gtm/zzad;

    move-result-object v1

    .line 16
    iget-boolean v2, v0, Lcom/google/android/gms/analytics/zzp;->zztj:Z

    if-eqz v2, :cond_2

    .line 17
    iget-object v2, v0, Lcom/google/android/gms/analytics/zzp;->zzti:Ljava/util/Map;

    const-string v3, "ate"

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzad;->zzbw()Z

    move-result v4

    .line 19
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/gtm/zzcz;->zzb(Ljava/util/Map;Ljava/lang/String;Z)V

    .line 20
    iget-object v2, v0, Lcom/google/android/gms/analytics/zzp;->zzti:Ljava/util/Map;

    const-string v3, "adid"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzad;->zzcd()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/gtm/zzcz;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/analytics/zzp;->zzti:Ljava/util/Map;

    const-string v2, "ate"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v1, v0, Lcom/google/android/gms/analytics/zzp;->zzti:Ljava/util/Map;

    const-string v2, "adid"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/analytics/zzp;->zztp:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v1}, Lcom/google/android/gms/analytics/Tracker;->zzc(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/gtm/zzba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzba;->zzdv()Lcom/google/android/gms/internal/gtm/zzq;

    move-result-object v1

    .line 24
    iget-object v2, v0, Lcom/google/android/gms/analytics/zzp;->zzti:Ljava/util/Map;

    const-string v3, "an"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzq;->zzaz()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/gtm/zzcz;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v2, v0, Lcom/google/android/gms/analytics/zzp;->zzti:Ljava/util/Map;

    const-string v3, "av"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzq;->zzba()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/gtm/zzcz;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v2, v0, Lcom/google/android/gms/analytics/zzp;->zzti:Ljava/util/Map;

    const-string v3, "aid"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzq;->zzbb()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/gtm/zzcz;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v2, v0, Lcom/google/android/gms/analytics/zzp;->zzti:Ljava/util/Map;

    const-string v3, "aiid"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzq;->zzbc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/gtm/zzcz;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v1, v0, Lcom/google/android/gms/analytics/zzp;->zzti:Ljava/util/Map;

    const-string v2, "v"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v1, v0, Lcom/google/android/gms/analytics/zzp;->zzti:Ljava/util/Map;

    const-string v2, "_v"

    sget-object v3, Lcom/google/android/gms/internal/gtm/zzao;->zzwe:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v1, v0, Lcom/google/android/gms/analytics/zzp;->zzti:Ljava/util/Map;

    const-string v2, "ul"

    iget-object v3, v0, Lcom/google/android/gms/analytics/zzp;->zztp:Lcom/google/android/gms/analytics/Tracker;

    .line 31
    invoke-static {v3}, Lcom/google/android/gms/analytics/Tracker;->zzd(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/gtm/zzbu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzbu;->zzfa()Lcom/google/android/gms/internal/gtm/zzv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzv;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 32
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/gtm/zzcz;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v1, v0, Lcom/google/android/gms/analytics/zzp;->zzti:Ljava/util/Map;

    const-string v2, "sr"

    iget-object v3, v0, Lcom/google/android/gms/analytics/zzp;->zztp:Lcom/google/android/gms/analytics/Tracker;

    .line 34
    invoke-static {v3}, Lcom/google/android/gms/analytics/Tracker;->zze(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/gtm/zzbu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzbu;->zzfb()Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/gtm/zzcz;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v1, v0, Lcom/google/android/gms/analytics/zzp;->zztk:Ljava/lang/String;

    const-string v2, "transaction"

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/google/android/gms/analytics/zzp;->zztk:Ljava/lang/String;

    const-string v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_5

    .line 38
    iget-object v1, v0, Lcom/google/android/gms/analytics/zzp;->zztp:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v1}, Lcom/google/android/gms/analytics/Tracker;->zzf(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/gtm/zzcg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzcg;->zzfm()Z

    move-result v1

    if-nez v1, :cond_5

    .line 39
    iget-object v1, v0, Lcom/google/android/gms/analytics/zzp;->zztp:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v1}, Lcom/google/android/gms/analytics/Tracker;->zzg(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/gtm/zzci;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/analytics/zzp;->zzti:Ljava/util/Map;

    const-string v3, "Too many hits sent too quickly, rate limiting invoked"

    .line 40
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/gtm/zzci;->zza(Ljava/util/Map;Ljava/lang/String;)V

    return-void

    .line 42
    :cond_5
    iget-object v1, v0, Lcom/google/android/gms/analytics/zzp;->zzti:Ljava/util/Map;

    const-string v3, "ht"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzcz;->zzag(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    .line 44
    iget-wide v3, v0, Lcom/google/android/gms/analytics/zzp;->zztl:J

    move-wide v8, v3

    goto :goto_3

    :cond_6
    move-wide v8, v3

    .line 45
    :goto_3
    iget-boolean v1, v0, Lcom/google/android/gms/analytics/zzp;->zztm:Z

    if-eqz v1, :cond_7

    .line 46
    new-instance v1, Lcom/google/android/gms/internal/gtm/zzcd;

    iget-object v6, v0, Lcom/google/android/gms/analytics/zzp;->zztp:Lcom/google/android/gms/analytics/Tracker;

    iget-object v7, v0, Lcom/google/android/gms/analytics/zzp;->zzti:Ljava/util/Map;

    iget-boolean v10, v0, Lcom/google/android/gms/analytics/zzp;->zztn:Z

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/gtm/zzcd;-><init>(Lcom/google/android/gms/internal/gtm/zzam;Ljava/util/Map;JZ)V

    .line 47
    iget-object v2, v0, Lcom/google/android/gms/analytics/zzp;->zztp:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v2}, Lcom/google/android/gms/analytics/Tracker;->zzh(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/gtm/zzci;

    move-result-object v2

    const-string v3, "Dry run enabled. Would have sent hit"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/gtm/zzam;->zzc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 49
    :cond_7
    iget-object v1, v0, Lcom/google/android/gms/analytics/zzp;->zzti:Ljava/util/Map;

    const-string v3, "cid"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/lang/String;

    .line 50
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "uid"

    .line 51
    iget-object v4, v0, Lcom/google/android/gms/analytics/zzp;->zzti:Ljava/util/Map;

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/gtm/zzcz;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    const-string v3, "an"

    .line 52
    iget-object v4, v0, Lcom/google/android/gms/analytics/zzp;->zzti:Ljava/util/Map;

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/gtm/zzcz;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    const-string v3, "aid"

    .line 53
    iget-object v4, v0, Lcom/google/android/gms/analytics/zzp;->zzti:Ljava/util/Map;

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/gtm/zzcz;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    const-string v3, "av"

    .line 54
    iget-object v4, v0, Lcom/google/android/gms/analytics/zzp;->zzti:Ljava/util/Map;

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/gtm/zzcz;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    const-string v3, "aiid"

    .line 55
    iget-object v4, v0, Lcom/google/android/gms/analytics/zzp;->zzti:Ljava/util/Map;

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/gtm/zzcz;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 56
    new-instance v3, Lcom/google/android/gms/internal/gtm/zzas;

    const-wide/16 v11, 0x0

    iget-object v14, v0, Lcom/google/android/gms/analytics/zzp;->zzto:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/analytics/zzp;->zzti:Ljava/util/Map;

    const-string v5, "adid"

    .line 57
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v15, v4, 0x1

    const-wide/16 v16, 0x0

    move-object v10, v3

    move-object/from16 v18, v1

    invoke-direct/range {v10 .. v18}, Lcom/google/android/gms/internal/gtm/zzas;-><init>(JLjava/lang/String;Ljava/lang/String;ZJLjava/util/Map;)V

    .line 58
    iget-object v1, v0, Lcom/google/android/gms/analytics/zzp;->zztp:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v1}, Lcom/google/android/gms/analytics/Tracker;->zzi(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/gtm/zzae;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/gtm/zzae;->zza(Lcom/google/android/gms/internal/gtm/zzas;)J

    move-result-wide v1

    .line 59
    iget-object v3, v0, Lcom/google/android/gms/analytics/zzp;->zzti:Ljava/util/Map;

    const-string v4, "_s"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v1, Lcom/google/android/gms/internal/gtm/zzcd;

    iget-object v6, v0, Lcom/google/android/gms/analytics/zzp;->zztp:Lcom/google/android/gms/analytics/Tracker;

    iget-object v7, v0, Lcom/google/android/gms/analytics/zzp;->zzti:Ljava/util/Map;

    iget-boolean v10, v0, Lcom/google/android/gms/analytics/zzp;->zztn:Z

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/gtm/zzcd;-><init>(Lcom/google/android/gms/internal/gtm/zzam;Ljava/util/Map;JZ)V

    .line 61
    iget-object v2, v0, Lcom/google/android/gms/analytics/zzp;->zztp:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v2}, Lcom/google/android/gms/analytics/Tracker;->zzj(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/gtm/zzae;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/gtm/zzae;->zza(Lcom/google/android/gms/internal/gtm/zzcd;)V

    return-void
.end method
