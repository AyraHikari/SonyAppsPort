.class public final Lcom/google/android/gms/tagmanager/zzy;
.super Lcom/google/android/gms/common/api/internal/BasePendingResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/BasePendingResult<",
        "Lcom/google/android/gms/tagmanager/ContainerHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaec:Ljava/lang/String;

.field private zzaeh:J

.field private final zzaek:Landroid/os/Looper;

.field private final zzaer:Lcom/google/android/gms/tagmanager/TagManager;

.field private final zzaeu:Lcom/google/android/gms/tagmanager/zzaf;

.field private final zzaev:Lcom/google/android/gms/tagmanager/zzej;

.field private final zzaew:I

.field private final zzaex:Lcom/google/android/gms/tagmanager/zzai;

.field private zzaey:Lcom/google/android/gms/tagmanager/zzah;

.field private zzaez:Lcom/google/android/gms/internal/gtm/zzoq;

.field private volatile zzafa:Lcom/google/android/gms/tagmanager/zzv;

.field private volatile zzafb:Z

.field private zzafc:Lcom/google/android/gms/internal/gtm/zzk;

.field private zzafd:Ljava/lang/String;

.field private zzafe:Lcom/google/android/gms/tagmanager/zzag;

.field private zzaff:Lcom/google/android/gms/tagmanager/zzac;

.field private final zzrm:Landroid/content/Context;

.field private final zzsd:Lcom/google/android/gms/common/util/Clock;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzah;Lcom/google/android/gms/tagmanager/zzag;Lcom/google/android/gms/internal/gtm/zzoq;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/tagmanager/zzej;Lcom/google/android/gms/tagmanager/zzai;)V
    .locals 1

    if-nez p3, :cond_0

    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;-><init>(Landroid/os/Looper;)V

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzrm:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaer:Lcom/google/android/gms/tagmanager/TagManager;

    if-nez p3, :cond_1

    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    :cond_1
    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaek:Landroid/os/Looper;

    .line 11
    iput-object p4, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaec:Ljava/lang/String;

    .line 12
    iput p5, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaew:I

    .line 13
    iput-object p6, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaey:Lcom/google/android/gms/tagmanager/zzah;

    .line 14
    iput-object p7, p0, Lcom/google/android/gms/tagmanager/zzy;->zzafe:Lcom/google/android/gms/tagmanager/zzag;

    .line 15
    iput-object p8, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaez:Lcom/google/android/gms/internal/gtm/zzoq;

    .line 16
    new-instance p1, Lcom/google/android/gms/tagmanager/zzaf;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/tagmanager/zzaf;-><init>(Lcom/google/android/gms/tagmanager/zzy;Lcom/google/android/gms/tagmanager/zzz;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaeu:Lcom/google/android/gms/tagmanager/zzaf;

    .line 17
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzk;

    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzafc:Lcom/google/android/gms/internal/gtm/zzk;

    .line 18
    iput-object p9, p0, Lcom/google/android/gms/tagmanager/zzy;->zzsd:Lcom/google/android/gms/common/util/Clock;

    .line 19
    iput-object p10, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaev:Lcom/google/android/gms/tagmanager/zzej;

    .line 20
    iput-object p11, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaex:Lcom/google/android/gms/tagmanager/zzai;

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzy;->zzhi()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 22
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzeh;->zziy()Lcom/google/android/gms/tagmanager/zzeh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzeh;->zzja()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzy;->zzao(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzal;)V
    .locals 22

    move-object/from16 v1, p1

    move-object/from16 v4, p4

    .line 1
    new-instance v6, Lcom/google/android/gms/tagmanager/zzex;

    invoke-direct {v6, v1, v4}, Lcom/google/android/gms/tagmanager/zzex;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v7, Lcom/google/android/gms/tagmanager/zzes;

    move-object/from16 v12, p6

    invoke-direct {v7, v1, v4, v12}, Lcom/google/android/gms/tagmanager/zzes;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzal;)V

    new-instance v8, Lcom/google/android/gms/internal/gtm/zzoq;

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/gtm/zzoq;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v9

    new-instance v10, Lcom/google/android/gms/tagmanager/zzdg;

    const-string v20, "refreshing"

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v21

    const/4 v14, 0x1

    const/4 v15, 0x5

    const-wide/32 v16, 0xdbba0

    const-wide/16 v18, 0x1388

    move-object v13, v10

    invoke-direct/range {v13 .. v21}, Lcom/google/android/gms/tagmanager/zzdg;-><init>(IIJJLjava/lang/String;Lcom/google/android/gms/common/util/Clock;)V

    new-instance v11, Lcom/google/android/gms/tagmanager/zzai;

    invoke-direct {v11, v1, v4}, Lcom/google/android/gms/tagmanager/zzai;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p5

    .line 4
    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/tagmanager/zzy;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzah;Lcom/google/android/gms/tagmanager/zzag;Lcom/google/android/gms/internal/gtm/zzoq;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/tagmanager/zzej;Lcom/google/android/gms/tagmanager/zzai;)V

    .line 5
    iget-object v1, v0, Lcom/google/android/gms/tagmanager/zzy;->zzaez:Lcom/google/android/gms/internal/gtm/zzoq;

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/tagmanager/zzal;->zzhq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/gtm/zzoq;->zzcr(Ljava/lang/String;)V

    return-void
.end method

.method private final declared-synchronized zza(Lcom/google/android/gms/internal/gtm/zzk;)V
    .locals 3

    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaey:Lcom/google/android/gms/tagmanager/zzah;

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzop;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzop;-><init>()V

    .line 92
    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaeh:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/gtm/zzop;->zzaux:J

    .line 93
    new-instance v1, Lcom/google/android/gms/internal/gtm/zzi;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzi;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/gtm/zzop;->zzqk:Lcom/google/android/gms/internal/gtm/zzi;

    .line 94
    iput-object p1, v0, Lcom/google/android/gms/internal/gtm/zzop;->zzauy:Lcom/google/android/gms/internal/gtm/zzk;

    .line 95
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaey:Lcom/google/android/gms/tagmanager/zzah;

    invoke-interface {p1, v0}, Lcom/google/android/gms/tagmanager/zzah;->zza(Lcom/google/android/gms/internal/gtm/zzop;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zza(Lcom/google/android/gms/internal/gtm/zzk;JZ)V
    .locals 9

    monitor-enter p0

    if-eqz p4, :cond_0

    .line 51
    :try_start_0
    iget-boolean p4, p0, Lcom/google/android/gms/tagmanager/zzy;->zzafb:Z

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isReady()Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/google/android/gms/tagmanager/zzy;->zzafa:Lcom/google/android/gms/tagmanager/zzv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p4, :cond_1

    .line 53
    monitor-exit p0

    return-void

    .line 54
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzafc:Lcom/google/android/gms/internal/gtm/zzk;

    .line 55
    iput-wide p2, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaeh:J

    .line 56
    iget-object p4, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaex:Lcom/google/android/gms/tagmanager/zzai;

    invoke-virtual {p4}, Lcom/google/android/gms/tagmanager/zzai;->zzhl()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    .line 57
    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaeh:J

    add-long/2addr v4, v0

    iget-object p4, p0, Lcom/google/android/gms/tagmanager/zzy;->zzsd:Lcom/google/android/gms/common/util/Clock;

    .line 58
    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 59
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 60
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 61
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzy;->zzk(J)V

    .line 62
    new-instance p4, Lcom/google/android/gms/tagmanager/Container;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzy;->zzrm:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaer:Lcom/google/android/gms/tagmanager/TagManager;

    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaec:Ljava/lang/String;

    move-object v2, p4

    move-wide v6, p2

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/tagmanager/Container;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/gtm/zzk;)V

    .line 64
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzafa:Lcom/google/android/gms/tagmanager/zzv;

    if-nez p1, :cond_2

    .line 65
    new-instance p1, Lcom/google/android/gms/tagmanager/zzv;

    iget-object p2, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaer:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object p3, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaek:Landroid/os/Looper;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaeu:Lcom/google/android/gms/tagmanager/zzaf;

    invoke-direct {p1, p2, p3, p4, v0}, Lcom/google/android/gms/tagmanager/zzv;-><init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/zzw;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzafa:Lcom/google/android/gms/tagmanager/zzv;

    goto :goto_0

    .line 66
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzafa:Lcom/google/android/gms/tagmanager/zzv;

    invoke-virtual {p1, p4}, Lcom/google/android/gms/tagmanager/zzv;->zza(Lcom/google/android/gms/tagmanager/Container;)V

    .line 67
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isReady()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaff:Lcom/google/android/gms/tagmanager/zzac;

    invoke-interface {p1, p4}, Lcom/google/android/gms/tagmanager/zzac;->zzb(Lcom/google/android/gms/tagmanager/Container;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 68
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzafa:Lcom/google/android/gms/tagmanager/zzv;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzy;J)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/zzy;->zzk(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzy;Lcom/google/android/gms/internal/gtm/zzk;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzy;->zza(Lcom/google/android/gms/internal/gtm/zzk;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzy;Lcom/google/android/gms/internal/gtm/zzk;JZ)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/tagmanager/zzy;->zza(Lcom/google/android/gms/internal/gtm/zzk;JZ)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/tagmanager/zzy;)Lcom/google/android/gms/tagmanager/zzv;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzafa:Lcom/google/android/gms/tagmanager/zzv;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/tagmanager/zzy;)Lcom/google/android/gms/tagmanager/zzai;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaex:Lcom/google/android/gms/tagmanager/zzai;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/tagmanager/zzy;)Lcom/google/android/gms/common/util/Clock;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzsd:Lcom/google/android/gms/common/util/Clock;

    return-object p0
.end method

.method private final zzd(Z)V
    .locals 11

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaey:Lcom/google/android/gms/tagmanager/zzah;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzad;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/tagmanager/zzad;-><init>(Lcom/google/android/gms/tagmanager/zzy;Lcom/google/android/gms/tagmanager/zzz;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzah;->zza(Lcom/google/android/gms/tagmanager/zzdh;)V

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzafe:Lcom/google/android/gms/tagmanager/zzag;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzae;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/tagmanager/zzae;-><init>(Lcom/google/android/gms/tagmanager/zzy;Lcom/google/android/gms/tagmanager/zzz;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzag;->zza(Lcom/google/android/gms/tagmanager/zzdh;)V

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaey:Lcom/google/android/gms/tagmanager/zzah;

    iget v1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaew:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzah;->zzt(I)Lcom/google/android/gms/internal/gtm/zzov;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 44
    new-instance v0, Lcom/google/android/gms/tagmanager/zzv;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaer:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object v9, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaek:Landroid/os/Looper;

    new-instance v10, Lcom/google/android/gms/tagmanager/Container;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzy;->zzrm:Landroid/content/Context;

    .line 45
    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaec:Ljava/lang/String;

    const-wide/16 v6, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/tagmanager/Container;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/gtm/zzov;)V

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaeu:Lcom/google/android/gms/tagmanager/zzaf;

    invoke-direct {v0, v1, v9, v10, v2}, Lcom/google/android/gms/tagmanager/zzv;-><init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/zzw;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzafa:Lcom/google/android/gms/tagmanager/zzv;

    .line 46
    :cond_0
    new-instance v0, Lcom/google/android/gms/tagmanager/zzab;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/tagmanager/zzab;-><init>(Lcom/google/android/gms/tagmanager/zzy;Z)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaff:Lcom/google/android/gms/tagmanager/zzac;

    .line 47
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzy;->zzhi()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 48
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzafe:Lcom/google/android/gms/tagmanager/zzag;

    const-wide/16 v0, 0x0

    const-string v2, ""

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzag;->zza(JLjava/lang/String;)V

    return-void

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaey:Lcom/google/android/gms/tagmanager/zzah;

    invoke-interface {p1}, Lcom/google/android/gms/tagmanager/zzah;->zzhk()V

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/tagmanager/zzy;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzafb:Z

    return p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/tagmanager/zzy;)Lcom/google/android/gms/internal/gtm/zzk;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzafc:Lcom/google/android/gms/internal/gtm/zzk;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/tagmanager/zzy;)J
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaeh:J

    return-wide v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/tagmanager/zzy;)Z
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzy;->zzhi()Z

    move-result p0

    return p0
.end method

.method private final zzhi()Z
    .locals 3

    .line 85
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzeh;->zziy()Lcom/google/android/gms/tagmanager/zzeh;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzeh;->zziz()Lcom/google/android/gms/tagmanager/zzeh$zza;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/tagmanager/zzeh$zza;->zzaiu:Lcom/google/android/gms/tagmanager/zzeh$zza;

    if-eq v1, v2, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzeh;->zziz()Lcom/google/android/gms/tagmanager/zzeh$zza;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/tagmanager/zzeh$zza;->zzaiv:Lcom/google/android/gms/tagmanager/zzeh$zza;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaec:Ljava/lang/String;

    .line 88
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzeh;->getContainerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final declared-synchronized zzk(J)V
    .locals 2

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzafe:Lcom/google/android/gms/tagmanager/zzag;

    if-nez v0, :cond_0

    const-string p1, "Refresh requested, but no network load scheduler."

    .line 76
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->zzac(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 78
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzafe:Lcom/google/android/gms/tagmanager/zzag;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzafc:Lcom/google/android/gms/internal/gtm/zzk;

    iget-object v1, v1, Lcom/google/android/gms/internal/gtm/zzk;->zzql:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/tagmanager/zzag;->zza(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected final synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzy;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object p1

    return-object p1
.end method

.method protected final zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzafa:Lcom/google/android/gms/tagmanager/zzv;

    if-eqz v0, :cond_0

    .line 81
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzafa:Lcom/google/android/gms/tagmanager/zzv;

    return-object p1

    .line 82
    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->RESULT_TIMEOUT:Lcom/google/android/gms/common/api/Status;

    if-ne p1, v0, :cond_1

    const-string v0, "timer expired: setting result to failure"

    .line 83
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->zzav(Ljava/lang/String;)V

    .line 84
    :cond_1
    new-instance v0, Lcom/google/android/gms/tagmanager/zzv;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzv;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method final declared-synchronized zzao(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 70
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzafd:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzafe:Lcom/google/android/gms/tagmanager/zzag;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzafe:Lcom/google/android/gms/tagmanager/zzag;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/zzag;->zzap(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzhh()V
    .locals 1

    const/4 v0, 0x1

    .line 38
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzy;->zzd(Z)V

    return-void
.end method
