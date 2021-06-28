.class public final Lcom/google/android/gms/internal/gtm/zzat;
.super Lcom/google/android/gms/internal/gtm/zzan;


# instance fields
.field private final zzxa:Lcom/google/android/gms/internal/gtm/zzav;

.field private zzxb:Lcom/google/android/gms/internal/gtm/zzce;

.field private final zzxc:Lcom/google/android/gms/internal/gtm/zzbs;

.field private final zzxd:Lcom/google/android/gms/internal/gtm/zzcv;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/gtm/zzap;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzan;-><init>(Lcom/google/android/gms/internal/gtm/zzap;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzcv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzap;->zzcn()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzcv;-><init>(Lcom/google/android/gms/common/util/Clock;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzat;->zzxd:Lcom/google/android/gms/internal/gtm/zzcv;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzav;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzav;-><init>(Lcom/google/android/gms/internal/gtm/zzat;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzat;->zzxa:Lcom/google/android/gms/internal/gtm/zzav;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzau;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/gtm/zzau;-><init>(Lcom/google/android/gms/internal/gtm/zzat;Lcom/google/android/gms/internal/gtm/zzap;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzat;->zzxc:Lcom/google/android/gms/internal/gtm/zzbs;

    return-void
.end method

.method private final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 70
    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzav()V

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzat;->zzxb:Lcom/google/android/gms/internal/gtm/zzce;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzat;->zzxb:Lcom/google/android/gms/internal/gtm/zzce;

    const-string v0, "Disconnected from device AnalyticsService"

    .line 73
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzam;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcs()Lcom/google/android/gms/internal/gtm/zzae;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzae;->zzck()V

    :cond_0
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/gtm/zzat;)Lcom/google/android/gms/internal/gtm/zzav;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzat;->zzxa:Lcom/google/android/gms/internal/gtm/zzav;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/gtm/zzat;Landroid/content/ComponentName;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzat;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/gtm/zzat;Lcom/google/android/gms/internal/gtm/zzce;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzat;->zza(Lcom/google/android/gms/internal/gtm/zzce;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/gtm/zzce;)V
    .locals 0

    .line 52
    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzav()V

    .line 53
    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzat;->zzxb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 54
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzat;->zzdo()V

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcs()Lcom/google/android/gms/internal/gtm/zzae;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzae;->onServiceConnected()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/gtm/zzat;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzat;->zzdp()V

    return-void
.end method

.method private final zzdo()V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzat;->zzxd:Lcom/google/android/gms/internal/gtm/zzcv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcv;->start()V

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzat;->zzxc:Lcom/google/android/gms/internal/gtm/zzbs;

    .line 39
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzby;->zzaaj:Lcom/google/android/gms/internal/gtm/zzbz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbz;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzbs;->zzh(J)V

    return-void
.end method

.method private final zzdp()V
    .locals 1

    .line 77
    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzav()V

    .line 78
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzat;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Inactivity, disconnecting from device AnalyticsService"

    .line 80
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zzq(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzat;->disconnect()V

    return-void
.end method


# virtual methods
.method public final connect()Z
    .locals 2

    .line 42
    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzav()V

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzat;->zzxb:Lcom/google/android/gms/internal/gtm/zzce;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzat;->zzxa:Lcom/google/android/gms/internal/gtm/zzav;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzav;->zzdq()Lcom/google/android/gms/internal/gtm/zzce;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48
    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzat;->zzxb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 49
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzat;->zzdo()V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final disconnect()V
    .locals 3

    .line 57
    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzav()V

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    .line 59
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzat;->zzxa:Lcom/google/android/gms/internal/gtm/zzav;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :catch_1
    nop

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzat;->zzxb:Lcom/google/android/gms/internal/gtm/zzce;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzat;->zzxb:Lcom/google/android/gms/internal/gtm/zzce;

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcs()Lcom/google/android/gms/internal/gtm/zzae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzae;->zzck()V

    :cond_0
    return-void
.end method

.method public final isConnected()Z
    .locals 1

    .line 7
    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzav()V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzat;->zzxb:Lcom/google/android/gms/internal/gtm/zzce;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final zzaw()V
    .locals 0

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/gtm/zzcd;)Z
    .locals 7

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzav()V

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzat;->zzxb:Lcom/google/android/gms/internal/gtm/zzce;

    const/4 v6, 0x0

    if-nez v0, :cond_0

    return v6

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzcd;->zzfj()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbq;->zzet()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    .line 18
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbq;->zzeu()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 19
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 20
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzcd;->zzdm()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzcd;->zzfh()J

    move-result-wide v2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/gtm/zzce;->zza(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzat;->zzdo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const-string p1, "Failed to send hits to AnalyticsService"

    .line 24
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzam;->zzq(Ljava/lang/String;)V

    return v6
.end method

.method public final zzdn()Z
    .locals 2

    .line 26
    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzav()V

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzat;->zzxb:Lcom/google/android/gms/internal/gtm/zzce;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 31
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzce;->zzch()V

    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzat;->zzdo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const-string v0, "Failed to clear hits from AnalyticsService"

    .line 35
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zzq(Ljava/lang/String;)V

    return v1
.end method
