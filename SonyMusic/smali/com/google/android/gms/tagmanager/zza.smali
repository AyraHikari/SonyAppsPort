.class public final Lcom/google/android/gms/tagmanager/zza;
.super Ljava/lang/Object;


# static fields
.field private static zzadq:Ljava/lang/Object;

.field private static zzadr:Lcom/google/android/gms/tagmanager/zza;


# instance fields
.field private volatile closed:Z

.field private volatile zzadj:J

.field private volatile zzadk:J

.field private volatile zzadl:J

.field private volatile zzadm:J

.field private final zzadn:Ljava/lang/Thread;

.field private final zzado:Ljava/lang/Object;

.field private zzadp:Lcom/google/android/gms/tagmanager/zzd;

.field private final zzrm:Landroid/content/Context;

.field private final zzsd:Lcom/google/android/gms/common/util/Clock;

.field private volatile zzvp:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zza;->zzadq:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 9
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/tagmanager/zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzd;Lcom/google/android/gms/common/util/Clock;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzd;Lcom/google/android/gms/common/util/Clock;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xdbba0

    .line 12
    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzadj:J

    const-wide/16 v0, 0x7530

    .line 13
    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzadk:J

    const/4 p2, 0x0

    .line 14
    iput-boolean p2, p0, Lcom/google/android/gms/tagmanager/zza;->closed:Z

    .line 15
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zza;->zzado:Ljava/lang/Object;

    .line 16
    new-instance p2, Lcom/google/android/gms/tagmanager/zzb;

    invoke-direct {p2, p0}, Lcom/google/android/gms/tagmanager/zzb;-><init>(Lcom/google/android/gms/tagmanager/zza;)V

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zza;->zzadp:Lcom/google/android/gms/tagmanager/zzd;

    .line 17
    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zza;->zzsd:Lcom/google/android/gms/common/util/Clock;

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zza;->zzrm:Landroid/content/Context;

    goto :goto_0

    .line 20
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zza;->zzrm:Landroid/content/Context;

    .line 22
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zza;->zzsd:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zza;->zzadl:J

    .line 23
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/google/android/gms/tagmanager/zzc;

    invoke-direct {p2, p0}, Lcom/google/android/gms/tagmanager/zzc;-><init>(Lcom/google/android/gms/tagmanager/zza;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zza;->zzadn:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zza;)Landroid/content/Context;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zza;->zzrm:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/tagmanager/zza;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zza;->zzgu()V

    return-void
.end method

.method public static zzf(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zza;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/tagmanager/zza;->zzadr:Lcom/google/android/gms/tagmanager/zza;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/android/gms/tagmanager/zza;->zzadq:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/android/gms/tagmanager/zza;->zzadr:Lcom/google/android/gms/tagmanager/zza;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/google/android/gms/tagmanager/zza;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/zza;-><init>(Landroid/content/Context;)V

    .line 5
    sput-object v1, Lcom/google/android/gms/tagmanager/zza;->zzadr:Lcom/google/android/gms/tagmanager/zza;

    .line 6
    iget-object p0, v1, Lcom/google/android/gms/tagmanager/zza;->zzadn:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 8
    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/tagmanager/zza;->zzadr:Lcom/google/android/gms/tagmanager/zza;

    return-object p0
.end method

.method private final zzgr()V
    .locals 2

    .line 35
    monitor-enter p0

    .line 36
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zza;->closed:Z

    if-nez v0, :cond_0

    .line 37
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zza;->zzgs()V

    const-wide/16 v0, 0x1f4

    .line 38
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 41
    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final zzgs()V
    .locals 5

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzsd:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zza;->zzadl:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zza;->zzadk:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzado:Ljava/lang/Object;

    monitor-enter v0

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zza;->zzado:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzsd:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzadl:J

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 45
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private final zzgt()V
    .locals 5

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzsd:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zza;->zzadm:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzvp:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    :cond_0
    return-void
.end method

.method private final zzgu()V
    .locals 4

    const/16 v0, 0xa

    .line 51
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 52
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zza;->closed:Z

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzadp:Lcom/google/android/gms/tagmanager/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzd;->zzgv()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzvp:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzsd:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzadm:J

    const-string v0, "Obtained fresh AdvertisingId info from GmsCore."

    .line 57
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->zzaw(Ljava/lang/String;)V

    .line 58
    :cond_0
    monitor-enter p0

    .line 59
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 60
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzado:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zza;->zzado:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zza;->zzadj:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 63
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    const-string v0, "sleep interrupted in AdvertiserDataPoller thread; continuing"

    .line 65
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->zzaw(Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 60
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zza;->closed:Z

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzadn:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public final isLimitAdTrackingEnabled()Z
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzvp:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v0, :cond_0

    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zza;->zzgr()V

    goto :goto_0

    .line 32
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zza;->zzgs()V

    .line 33
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zza;->zzgt()V

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzvp:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzvp:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public final zzgq()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzvp:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v0, :cond_0

    .line 26
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zza;->zzgr()V

    goto :goto_0

    .line 27
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zza;->zzgs()V

    .line 28
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zza;->zzgt()V

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzvp:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzvp:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
