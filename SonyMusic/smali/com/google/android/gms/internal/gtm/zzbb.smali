.class final Lcom/google/android/gms/internal/gtm/zzbb;
.super Lcom/google/android/gms/internal/gtm/zzan;


# instance fields
.field private started:Z

.field private final zzxp:Lcom/google/android/gms/internal/gtm/zzay;

.field private final zzxq:Lcom/google/android/gms/internal/gtm/zzck;

.field private final zzxr:Lcom/google/android/gms/internal/gtm/zzcj;

.field private final zzxs:Lcom/google/android/gms/internal/gtm/zzat;

.field private zzxt:J

.field private final zzxu:Lcom/google/android/gms/internal/gtm/zzbs;

.field private final zzxv:Lcom/google/android/gms/internal/gtm/zzbs;

.field private final zzxw:Lcom/google/android/gms/internal/gtm/zzcv;

.field private zzxx:J

.field private zzxy:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/gtm/zzap;Lcom/google/android/gms/internal/gtm/zzar;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzan;-><init>(Lcom/google/android/gms/internal/gtm/zzap;)V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v0, -0x8000000000000000L

    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxt:J

    .line 5
    new-instance p2, Lcom/google/android/gms/internal/gtm/zzcj;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/gtm/zzcj;-><init>(Lcom/google/android/gms/internal/gtm/zzap;)V

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxr:Lcom/google/android/gms/internal/gtm/zzcj;

    .line 8
    new-instance p2, Lcom/google/android/gms/internal/gtm/zzay;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/gtm/zzay;-><init>(Lcom/google/android/gms/internal/gtm/zzap;)V

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    .line 11
    new-instance p2, Lcom/google/android/gms/internal/gtm/zzck;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/gtm/zzck;-><init>(Lcom/google/android/gms/internal/gtm/zzap;)V

    .line 12
    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxq:Lcom/google/android/gms/internal/gtm/zzck;

    .line 14
    new-instance p2, Lcom/google/android/gms/internal/gtm/zzat;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/gtm/zzat;-><init>(Lcom/google/android/gms/internal/gtm/zzap;)V

    .line 15
    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxs:Lcom/google/android/gms/internal/gtm/zzat;

    .line 16
    new-instance p2, Lcom/google/android/gms/internal/gtm/zzcv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcn()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/gtm/zzcv;-><init>(Lcom/google/android/gms/common/util/Clock;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxw:Lcom/google/android/gms/internal/gtm/zzcv;

    .line 17
    new-instance p2, Lcom/google/android/gms/internal/gtm/zzbc;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/gtm/zzbc;-><init>(Lcom/google/android/gms/internal/gtm/zzbb;Lcom/google/android/gms/internal/gtm/zzap;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxu:Lcom/google/android/gms/internal/gtm/zzbs;

    .line 18
    new-instance p2, Lcom/google/android/gms/internal/gtm/zzbd;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/gtm/zzbd;-><init>(Lcom/google/android/gms/internal/gtm/zzbb;Lcom/google/android/gms/internal/gtm/zzap;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxv:Lcom/google/android/gms/internal/gtm/zzbs;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/gtm/zzas;Lcom/google/android/gms/internal/gtm/zzr;)V
    .locals 8

    .line 534
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    new-instance v0, Lcom/google/android/gms/analytics/zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcm()Lcom/google/android/gms/internal/gtm/zzap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/zza;-><init>(Lcom/google/android/gms/internal/gtm/zzap;)V

    .line 537
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzas;->zzdj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zza;->zza(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzas;->zzdk()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zza;->enableAdvertisingIdCollection(Z)V

    .line 539
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzj;->zzac()Lcom/google/android/gms/analytics/zzg;

    move-result-object v0

    .line 540
    const-class v1, Lcom/google/android/gms/internal/gtm/zzz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzg;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzi;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzz;

    const-string v2, "data"

    .line 541
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/gtm/zzz;->zzl(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 542
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/gtm/zzz;->zzb(Z)V

    .line 543
    invoke-virtual {v0, p2}, Lcom/google/android/gms/analytics/zzg;->zza(Lcom/google/android/gms/analytics/zzi;)V

    .line 544
    const-class v2, Lcom/google/android/gms/internal/gtm/zzu;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/zzg;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzi;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzu;

    .line 545
    const-class v3, Lcom/google/android/gms/internal/gtm/zzq;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/analytics/zzg;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzi;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/gtm/zzq;

    .line 546
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzas;->zzdm()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 547
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 548
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "an"

    .line 549
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 550
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/gtm/zzq;->setAppName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v7, "av"

    .line 551
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 552
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/gtm/zzq;->setAppVersion(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v7, "aid"

    .line 553
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 554
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/gtm/zzq;->setAppId(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v7, "aiid"

    .line 555
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 556
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/gtm/zzq;->setAppInstallerId(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v7, "uid"

    .line 557
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 558
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/gtm/zzz;->setUserId(Ljava/lang/String;)V

    goto :goto_0

    .line 559
    :cond_4
    invoke-virtual {v2, v6, v5}, Lcom/google/android/gms/internal/gtm/zzu;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v1, "Sending installation campaign to"

    .line 561
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzas;->zzdj()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/gtm/zzam;->zzb(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 562
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcv()Lcom/google/android/gms/internal/gtm/zzcm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzcm;->zzfv()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/analytics/zzg;->zza(J)V

    .line 563
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzg;->zzam()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/gtm/zzbb;)V
    .locals 0

    .line 571
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzdx()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/gtm/zzbb;)V
    .locals 0

    .line 572
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzdy()V

    return-void
.end method

.method private final zzds()J
    .locals 2

    .line 429
    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzav()V

    .line 430
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzay;->zzds()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get min/max hit times from local store"

    .line 433
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private final zzdx()V
    .locals 1

    .line 61
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzbf;-><init>(Lcom/google/android/gms/internal/gtm/zzbb;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzb(Lcom/google/android/gms/internal/gtm/zzbw;)V

    return-void
.end method

.method private final zzdy()V
    .locals 3

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzay;->zzdr()I

    .line 101
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzec()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to delete stale hits"

    .line 104
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxv:Lcom/google/android/gms/internal/gtm/zzbs;

    const-wide/32 v1, 0x5265c00

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzbs;->zzh(J)V

    return-void
.end method

.method private final zzdz()V
    .locals 3

    .line 125
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxy:Z

    if-eqz v0, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbq;->zzen()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxs:Lcom/google/android/gms/internal/gtm/zzat;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzat;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 131
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzby;->zzaan:Lcom/google/android/gms/internal/gtm/zzbz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 133
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxw:Lcom/google/android/gms/internal/gtm/zzcv;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/gtm/zzcv;->zzj(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxw:Lcom/google/android/gms/internal/gtm/zzcv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcv;->start()V

    const-string v0, "Connecting to service"

    .line 135
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zzq(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxs:Lcom/google/android/gms/internal/gtm/zzat;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzat;->connect()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Connected to service"

    .line 137
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zzq(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxw:Lcom/google/android/gms/internal/gtm/zzcv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcv;->clear()V

    .line 139
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->onServiceConnected()V

    :cond_3
    return-void
.end method

.method private final zzea()Z
    .locals 11

    .line 271
    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzav()V

    .line 272
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    const-string v0, "Dispatching a batch of local hits"

    .line 273
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zzq(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxs:Lcom/google/android/gms/internal/gtm/zzat;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzat;->isConnected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 275
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxq:Lcom/google/android/gms/internal/gtm/zzck;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzck;->zzfr()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const-string v0, "No network or service available. Will retry later"

    .line 277
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zzq(Ljava/lang/String;)V

    return v2

    .line 279
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbq;->zzer()I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbq;->zzes()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    .line 280
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v4, 0x0

    .line 282
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/gtm/zzay;->beginTransaction()V

    .line 283
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :try_start_1
    iget-object v6, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-virtual {v6, v0, v1}, Lcom/google/android/gms/internal/gtm/zzay;->zzd(J)Ljava/util/List;

    move-result-object v6

    .line 285
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v0, "Store is empty, nothing to dispatch"

    .line 286
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zzq(Ljava/lang/String;)V

    .line 287
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzee()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzay;->setTransactionSuccessful()V

    .line 289
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzay;->endTransaction()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    return v2

    :catch_0
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    .line 292
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    .line 293
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzee()V

    return v2

    :cond_1
    :try_start_3
    const-string v7, "Hits loaded from store. count"

    .line 296
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/google/android/gms/internal/gtm/zzam;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 309
    :try_start_4
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/gtm/zzcd;

    .line 310
    invoke-virtual {v8}, Lcom/google/android/gms/internal/gtm/zzcd;->zzfg()J

    move-result-wide v8

    cmp-long v10, v8, v4

    if-nez v10, :cond_2

    const-string v0, "Database contains successfully uploaded hit"

    .line 312
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 313
    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/gms/internal/gtm/zzam;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 314
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzee()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 315
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzay;->setTransactionSuccessful()V

    .line 316
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzay;->endTransaction()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1

    return v2

    :catch_1
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    .line 319
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    .line 320
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzee()V

    return v2

    .line 324
    :cond_3
    :try_start_6
    iget-object v7, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxs:Lcom/google/android/gms/internal/gtm/zzat;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzat;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "Service connected, sending hits to the service"

    .line 325
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/gtm/zzam;->zzq(Ljava/lang/String;)V

    .line 326
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 327
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/gtm/zzcd;

    .line 328
    iget-object v8, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxs:Lcom/google/android/gms/internal/gtm/zzat;

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/gtm/zzat;->zzb(Lcom/google/android/gms/internal/gtm/zzcd;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 329
    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzcd;->zzfg()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 330
    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v8, "Hit sent do device AnalyticsService for delivery"

    .line 331
    invoke-virtual {p0, v8, v7}, Lcom/google/android/gms/internal/gtm/zzam;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 332
    :try_start_7
    iget-object v8, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzcd;->zzfg()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/gtm/zzay;->zze(J)V

    .line 333
    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzcd;->zzfg()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_8
    const-string v1, "Failed to remove hit that was send for delivery"

    .line 336
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    .line 337
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzee()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 338
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzay;->setTransactionSuccessful()V

    .line 339
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzay;->endTransaction()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_3

    return v2

    :catch_3
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    .line 342
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    .line 343
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzee()V

    return v2

    .line 346
    :cond_4
    :try_start_a
    iget-object v7, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxq:Lcom/google/android/gms/internal/gtm/zzck;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzck;->zzfr()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 347
    iget-object v7, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxq:Lcom/google/android/gms/internal/gtm/zzck;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/gtm/zzck;->zzb(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 348
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 349
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    .line 351
    :cond_5
    :try_start_b
    iget-object v7, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/gtm/zzay;->zza(Ljava/util/List;)V

    .line 352
    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    :catch_4
    move-exception v0

    :try_start_c
    const-string v1, "Failed to remove successfully uploaded hits"

    .line 355
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    .line 356
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzee()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 357
    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzay;->setTransactionSuccessful()V

    .line 358
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzay;->endTransaction()V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_5

    return v2

    :catch_5
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    .line 361
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    .line 362
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzee()V

    return v2

    .line 365
    :cond_6
    :goto_3
    :try_start_e
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v6, :cond_7

    .line 367
    :try_start_f
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzay;->setTransactionSuccessful()V

    .line 368
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzay;->endTransaction()V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_6

    return v2

    :catch_6
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    .line 371
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    .line 372
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzee()V

    return v2

    .line 375
    :cond_7
    :try_start_10
    iget-object v6, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/gtm/zzay;->setTransactionSuccessful()V

    .line 376
    iget-object v6, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/gtm/zzay;->endTransaction()V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    .line 379
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    .line 380
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzee()V

    return v2

    :catch_8
    move-exception v0

    :try_start_11
    const-string v1, "Failed to read hits from persisted store"

    .line 299
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzee()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 301
    :try_start_12
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzay;->setTransactionSuccessful()V

    .line 302
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzay;->endTransaction()V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_9

    return v2

    :catch_9
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    .line 305
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    .line 306
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzee()V

    return v2

    :catchall_0
    move-exception v0

    .line 383
    :try_start_13
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzay;->setTransactionSuccessful()V

    .line 384
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzay;->endTransaction()V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_a

    .line 389
    throw v0

    :catch_a
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    .line 387
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    .line 388
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzee()V

    return v2
.end method

.method private final zzed()V
    .locals 6

    .line 475
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzct()Lcom/google/android/gms/internal/gtm/zzbv;

    move-result-object v0

    .line 476
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzfc()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 478
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzez()Z

    move-result v1

    if-nez v1, :cond_1

    .line 479
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzds()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 481
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcn()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 482
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 483
    sget-object v3, Lcom/google/android/gms/internal/gtm/zzby;->zzzm:Lcom/google/android/gms/internal/gtm/zzbz;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzbz;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    .line 485
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbq;->zzeq()J

    move-result-wide v1

    const-string v3, "Dispatch alarm scheduled (ms)"

    .line 486
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/internal/gtm/zzam;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 487
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzfd()V

    :cond_1
    return-void
.end method

.method private final zzee()V
    .locals 2

    .line 490
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxu:Lcom/google/android/gms/internal/gtm/zzbs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzez()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "All hits dispatched or no network/service. Going to power save mode"

    .line 491
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zzq(Ljava/lang/String;)V

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxu:Lcom/google/android/gms/internal/gtm/zzbs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbs;->cancel()V

    .line 494
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzct()Lcom/google/android/gms/internal/gtm/zzbv;

    move-result-object v0

    .line 495
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzez()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 496
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->cancel()V

    :cond_1
    return-void
.end method

.method private final zzef()J
    .locals 5

    .line 498
    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxt:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    .line 500
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzby;->zzzh:Lcom/google/android/gms/internal/gtm/zzbz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 502
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcu()Lcom/google/android/gms/internal/gtm/zzda;

    move-result-object v2

    .line 503
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    .line 504
    iget-boolean v2, v2, Lcom/google/android/gms/internal/gtm/zzda;->zzacv:Z

    if-eqz v2, :cond_1

    .line 506
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcu()Lcom/google/android/gms/internal/gtm/zzda;

    move-result-object v0

    .line 507
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    .line 508
    iget v0, v0, Lcom/google/android/gms/internal/gtm/zzda;->zzaax:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    :cond_1
    return-wide v0
.end method

.method private final zzeg()V
    .locals 1

    .line 565
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    .line 566
    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzav()V

    const/4 v0, 0x1

    .line 567
    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxy:Z

    .line 568
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxs:Lcom/google/android/gms/internal/gtm/zzat;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzat;->disconnect()V

    .line 569
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzec()V

    return-void
.end method

.method private final zzx(Ljava/lang/String;)Z
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected final onServiceConnected()V
    .locals 5

    .line 66
    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzav()V

    .line 68
    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzav()V

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    .line 70
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbq;->zzen()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Service client disabled. Can\'t dispatch local hits to device AnalyticsService"

    .line 71
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zzt(Ljava/lang/String;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxs:Lcom/google/android/gms/internal/gtm/zzat;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzat;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Service not connected"

    .line 73
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zzq(Ljava/lang/String;)V

    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzay;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "Dispatching local hits to device AnalyticsService"

    .line 76
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zzq(Ljava/lang/String;)V

    .line 77
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbq;->zzer()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzay;->zzd(J)Ljava/util/List;

    move-result-object v0

    .line 78
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzec()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    .line 86
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 87
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzcd;

    .line 88
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxs:Lcom/google/android/gms/internal/gtm/zzat;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/gtm/zzat;->zzb(Lcom/google/android/gms/internal/gtm/zzcd;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzec()V

    return-void

    .line 91
    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 92
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzcd;->zzfg()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/gtm/zzay;->zze(J)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to remove hit that was send for delivery"

    .line 95
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzee()V

    return-void

    :catch_1
    move-exception v0

    const-string v1, "Failed to read hits from store"

    .line 83
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzee()V

    return-void

    :cond_5
    return-void
.end method

.method final start()V
    .locals 3

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    .line 25
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->started:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Analytics backend already started"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 26
    iput-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzbb;->started:Z

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcq()Lcom/google/android/gms/analytics/zzk;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzbe;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gtm/zzbe;-><init>(Lcom/google/android/gms/internal/gtm/zzbb;)V

    .line 28
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzk;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/gtm/zzas;Z)J
    .locals 12

    .line 141
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    .line 143
    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzav()V

    const-wide/16 v0, -0x1

    .line 144
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzay;->beginTransaction()V

    .line 145
    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzas;->zzdi()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzas;->zzbt()Ljava/lang/String;

    move-result-object v4

    .line 146
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    .line 148
    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzav()V

    .line 149
    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzay;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "properties"

    const-string v7, "app_uid=? AND cid<>?"

    const/4 v8, 0x2

    .line 150
    new-array v8, v8, [Ljava/lang/String;

    .line 151
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v8, v3

    const/4 v2, 0x1

    aput-object v4, v8, v2

    .line 152
    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    const-string v5, "Deleted property records"

    .line 154
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/gtm/zzam;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    .line 156
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzas;->zzdi()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzas;->zzbt()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzas;->zzdj()Ljava/lang/String;

    move-result-object v7

    .line 157
    invoke-virtual {p2, v4, v5, v6, v7}, Lcom/google/android/gms/internal/gtm/zzay;->zza(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    .line 158
    invoke-virtual {p1, v6, v7}, Lcom/google/android/gms/internal/gtm/zzas;->zzb(J)V

    .line 159
    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    .line 160
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    .line 162
    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzav()V

    .line 163
    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzay;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 164
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzas;->zzdm()Ljava/util/Map;

    move-result-object v7

    .line 165
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v8, Landroid/net/Uri$Builder;

    invoke-direct {v8}, Landroid/net/Uri$Builder;-><init>()V

    .line 167
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 168
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 169
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v10, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 172
    invoke-virtual {v7}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    const-string v7, ""

    .line 177
    :cond_2
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "app_uid"

    .line 178
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzas;->zzdi()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "cid"

    .line 179
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzas;->zzbt()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "tid"

    .line 180
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzas;->zzdj()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "adid"

    .line 181
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzas;->zzdk()Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "hits_count"

    .line 182
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzas;->zzdl()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v8, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "params"

    .line 183
    invoke-virtual {v8, p1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string p1, "properties"

    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 185
    invoke-virtual {v6, p1, v2, v8, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-nez p1, :cond_4

    const-string p1, "Failed to insert/update a property (got -1)"

    .line 187
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/gtm/zzam;->zzu(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    const-string v2, "Error storing a property"

    .line 190
    invoke-virtual {p2, v2, p1}, Lcom/google/android/gms/internal/gtm/zzam;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzay;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    :try_start_3
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzay;->endTransaction()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    const-string p2, "Failed to end transaction"

    .line 195
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/gtm/zzam;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3
    return-wide v4

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    :try_start_4
    const-string p2, "Failed to update Analytics property"

    .line 198
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/gtm/zzam;->zze(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 199
    :try_start_5
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzay;->endTransaction()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    const-string p2, "Failed to end transaction"

    .line 202
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/gtm/zzam;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4
    return-wide v0

    .line 205
    :goto_5
    :try_start_6
    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzay;->endTransaction()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_4
    move-exception p2

    const-string v0, "Failed to end transaction"

    .line 208
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/gtm/zzam;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    :goto_6
    throw p1

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/gtm/zzcd;)V
    .locals 11

    .line 211
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzav()V

    .line 213
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    .line 214
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxy:Z

    if-eqz v0, :cond_0

    const-string v0, "Hit delivery not possible. Missing network permissions. See http://goo.gl/8Rd3yj for instructions"

    .line 215
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zzr(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Delivering hit"

    .line 216
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzam;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzcd;->zzfl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 220
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcv()Lcom/google/android/gms/internal/gtm/zzcm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcm;->zzga()Lcom/google/android/gms/internal/gtm/zzco;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzco;->zzgc()Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 224
    :cond_2
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 225
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 226
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzcd;->zzdm()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v1, "_m"

    .line 228
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzcd;

    .line 231
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzcd;->zzfh()J

    move-result-wide v4

    .line 232
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzcd;->zzfj()Z

    move-result v6

    .line 233
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzcd;->zzfg()J

    move-result-wide v7

    .line 234
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzcd;->zzff()I

    move-result v9

    .line 235
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzcd;->zzfi()Ljava/util/List;

    move-result-object v10

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/gtm/zzcd;-><init>(Lcom/google/android/gms/internal/gtm/zzam;Ljava/util/Map;JZJILjava/util/List;)V

    move-object p1, v0

    .line 237
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzdz()V

    .line 238
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxs:Lcom/google/android/gms/internal/gtm/zzat;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzat;->zzb(Lcom/google/android/gms/internal/gtm/zzcd;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "Hit sent to the device AnalyticsService for delivery"

    .line 239
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzam;->zzr(Ljava/lang/String;)V

    return-void

    .line 241
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzay;->zzc(Lcom/google/android/gms/internal/gtm/zzcd;)V

    .line 242
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzec()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Delivery failed to save hit to a database"

    .line 245
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzco()Lcom/google/android/gms/internal/gtm/zzci;

    move-result-object v0

    const-string v1, "deliver: failed to insert hit to database"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/gtm/zzci;->zza(Lcom/google/android/gms/internal/gtm/zzcd;Ljava/lang/String;)V

    return-void
.end method

.method protected final zzaw()V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzan;->zzag()V

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxq:Lcom/google/android/gms/internal/gtm/zzck;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzan;->zzag()V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxs:Lcom/google/android/gms/internal/gtm/zzat;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzan;->zzag()V

    return-void
.end method

.method protected final zzb(Lcom/google/android/gms/internal/gtm/zzas;)V
    .locals 3

    .line 107
    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzav()V

    const-string v0, "Sending first hit to property"

    .line 108
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzas;->zzdj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzam;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcv()Lcom/google/android/gms/internal/gtm/zzcm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcm;->zzfw()Lcom/google/android/gms/internal/gtm/zzcv;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbq;->zzex()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzcv;->zzj(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcv()Lcom/google/android/gms/internal/gtm/zzcm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcm;->zzfz()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzco()Lcom/google/android/gms/internal/gtm/zzci;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzcz;->zza(Lcom/google/android/gms/internal/gtm/zzci;Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzr;

    move-result-object v0

    const-string v1, "Found relevant installation campaign"

    .line 115
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzbb;->zza(Lcom/google/android/gms/internal/gtm/zzas;Lcom/google/android/gms/internal/gtm/zzr;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/gtm/zzbw;)V
    .locals 7

    .line 390
    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxx:J

    .line 391
    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzav()V

    .line 392
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    .line 394
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcv()Lcom/google/android/gms/internal/gtm/zzcm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzcm;->zzfx()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 396
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcn()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x1

    :goto_0
    const-string v4, "Dispatching local hits. Elapsed time since last dispatch (ms)"

    .line 397
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v4, v2}, Lcom/google/android/gms/internal/gtm/zzam;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 398
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzdz()V

    .line 399
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzea()Z

    .line 400
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcv()Lcom/google/android/gms/internal/gtm/zzcm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzcm;->zzfy()V

    .line 401
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzec()V

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    .line 403
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/gtm/zzbw;->zza(Ljava/lang/Throwable;)V

    .line 404
    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxx:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_2

    .line 405
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxr:Lcom/google/android/gms/internal/gtm/zzcj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcj;->zzfq()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Local dispatch failed"

    .line 408
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    .line 409
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcv()Lcom/google/android/gms/internal/gtm/zzcm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzcm;->zzfy()V

    .line 410
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzec()V

    if-eqz p1, :cond_3

    .line 412
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/gtm/zzbw;->zza(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public final zzch()V
    .locals 3

    .line 248
    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzav()V

    .line 249
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    const-string v0, "Delete all hits from local store"

    .line 250
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zzq(Ljava/lang/String;)V

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    .line 253
    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzav()V

    .line 254
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    .line 255
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzay;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "hits2"

    const/4 v2, 0x0

    .line 256
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    .line 259
    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzav()V

    .line 260
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    .line 261
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzay;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "properties"

    .line 262
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 263
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzec()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to delete hits from store"

    .line 266
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 267
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzdz()V

    .line 268
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxs:Lcom/google/android/gms/internal/gtm/zzat;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzat;->zzdn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Device service unavailable. Can\'t clear hits stored on the device service."

    .line 269
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zzq(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final zzcl()V
    .locals 2

    .line 63
    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzav()V

    .line 64
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcn()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxx:J

    return-void
.end method

.method protected final zzdw()V
    .locals 2

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    .line 35
    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzav()V

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcm()Lcom/google/android/gms/internal/gtm/zzap;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzap;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzcp;->zza(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AnalyticsReceiver is not registered or is disabled. Register the receiver for reliable dispatching on non-Google Play devices. See http://goo.gl/8Rd3yj for instructions."

    .line 40
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/gtm/zzam;->zzt(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzcq;->zze(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "AnalyticsService is not registered or is disabled. Analytics service at risk of not starting. See http://goo.gl/8Rd3yj for instructions."

    .line 43
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/gtm/zzam;->zzu(Ljava/lang/String;)V

    .line 44
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->zza(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CampaignTrackingReceiver is not registered, not exported or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions."

    .line 46
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zzt(Ljava/lang/String;)V

    .line 47
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcv()Lcom/google/android/gms/internal/gtm/zzcm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcm;->zzfv()J

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 48
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzx(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Missing required android.permission.ACCESS_NETWORK_STATE. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions"

    .line 49
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zzu(Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzeg()V

    :cond_3
    const-string v0, "android.permission.INTERNET"

    .line 51
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzx(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Missing required android.permission.INTERNET. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions"

    .line 52
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zzu(Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzeg()V

    .line 54
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzcq;->zze(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "AnalyticsService registered in the app manifest and enabled"

    .line 55
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zzq(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "AnalyticsService not registered in the app manifest. Hits might not be delivered reliably. See http://goo.gl/8Rd3yj for instructions."

    .line 56
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zzt(Ljava/lang/String;)V

    .line 57
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxy:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzay;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 58
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzdz()V

    .line 59
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzec()V

    return-void
.end method

.method public final zzeb()V
    .locals 5

    .line 414
    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzav()V

    .line 415
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    const-string v0, "Sync dispatching local hits"

    .line 416
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zzr(Ljava/lang/String;)V

    .line 417
    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxx:J

    .line 418
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzdz()V

    .line 419
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzea()Z

    .line 420
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcv()Lcom/google/android/gms/internal/gtm/zzcm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzcm;->zzfy()V

    .line 421
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzec()V

    .line 422
    iget-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxx:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 423
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxr:Lcom/google/android/gms/internal/gtm/zzcj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcj;->zzfq()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Sync local dispatch failed"

    .line 426
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    .line 427
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzec()V

    return-void
.end method

.method public final zzec()V
    .locals 8

    .line 435
    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzav()V

    .line 436
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    .line 438
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxy:Z

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-nez v0, :cond_0

    .line 439
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzef()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxr:Lcom/google/android/gms/internal/gtm/zzcj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcj;->unregister()V

    .line 442
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzee()V

    return-void

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzay;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 445
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxr:Lcom/google/android/gms/internal/gtm/zzcj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcj;->unregister()V

    .line 446
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzee()V

    return-void

    .line 448
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzby;->zzaai:Lcom/google/android/gms/internal/gtm/zzbz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 449
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxr:Lcom/google/android/gms/internal/gtm/zzcj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcj;->zzfo()V

    .line 450
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxr:Lcom/google/android/gms/internal/gtm/zzcj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcj;->isConnected()Z

    move-result v1

    :cond_3
    if-eqz v1, :cond_7

    .line 454
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzed()V

    .line 455
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzef()J

    move-result-wide v0

    .line 456
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcv()Lcom/google/android/gms/internal/gtm/zzcm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzcm;->zzfx()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_5

    .line 458
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcn()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sub-long v4, v0, v4

    cmp-long v6, v4, v2

    if-lez v6, :cond_4

    goto :goto_1

    .line 462
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbq;->zzep()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_1

    .line 464
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbq;->zzep()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :goto_1
    const-string v0, "Dispatch scheduled (ms)"

    .line 465
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzam;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 466
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxu:Lcom/google/android/gms/internal/gtm/zzbs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzez()Z

    move-result v0

    if-eqz v0, :cond_6

    const-wide/16 v0, 0x1

    .line 467
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxu:Lcom/google/android/gms/internal/gtm/zzbs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzbs;->zzey()J

    move-result-wide v2

    add-long/2addr v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 468
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxu:Lcom/google/android/gms/internal/gtm/zzbs;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/gtm/zzbs;->zzi(J)V

    return-void

    .line 470
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxu:Lcom/google/android/gms/internal/gtm/zzbs;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/gtm/zzbs;->zzh(J)V

    return-void

    .line 472
    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzee()V

    .line 473
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzed()V

    return-void
.end method

.method public final zzg(J)V
    .locals 3

    .line 118
    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzav()V

    .line 119
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 122
    :cond_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxt:J

    .line 123
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbb;->zzec()V

    return-void
.end method

.method public final zzy(Ljava/lang/String;)V
    .locals 3

    .line 511
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 512
    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzav()V

    .line 513
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzco()Lcom/google/android/gms/internal/gtm/zzci;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/gtm/zzcz;->zza(Lcom/google/android/gms/internal/gtm/zzci;Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzr;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Parsing failed. Ignoring invalid campaign data"

    .line 515
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzam;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 517
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcv()Lcom/google/android/gms/internal/gtm/zzcm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzcm;->zzfz()Ljava/lang/String;

    move-result-object v1

    .line 518
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "Ignoring duplicate install campaign"

    .line 519
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzam;->zzt(Ljava/lang/String;)V

    return-void

    .line 521
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "Ignoring multiple install campaigns. original, new"

    .line 522
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/internal/gtm/zzam;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 524
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcv()Lcom/google/android/gms/internal/gtm/zzcm;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/gtm/zzcm;->zzad(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcv()Lcom/google/android/gms/internal/gtm/zzcm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzcm;->zzfw()Lcom/google/android/gms/internal/gtm/zzcv;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbq;->zzex()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/gtm/zzcv;->zzj(J)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Campaign received too late, ignoring"

    .line 526
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_3
    const-string p1, "Received installation campaign"

    .line 528
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 529
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbb;->zzxp:Lcom/google/android/gms/internal/gtm/zzay;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/gtm/zzay;->zzf(J)Ljava/util/List;

    move-result-object p1

    .line 530
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzas;

    .line 531
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzbb;->zza(Lcom/google/android/gms/internal/gtm/zzas;Lcom/google/android/gms/internal/gtm/zzr;)V

    goto :goto_0

    :cond_4
    return-void
.end method
