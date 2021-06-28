.class public Lcom/google/android/gms/measurement/internal/zzgb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.5.0"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzgw;


# static fields
.field private static volatile zzb:Lcom/google/android/gms/measurement/internal/zzgb;


# instance fields
.field final zza:J

.field private zzaa:Ljava/lang/Boolean;

.field private zzab:J

.field private volatile zzac:Ljava/lang/Boolean;

.field private zzad:Ljava/lang/Boolean;

.field private zzae:Ljava/lang/Boolean;

.field private volatile zzaf:Z

.field private zzag:I

.field private zzah:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/lang/String;

.field private final zzg:Z

.field private final zzh:Lcom/google/android/gms/measurement/internal/zzx;

.field private final zzi:Lcom/google/android/gms/measurement/internal/zzy;

.field private final zzj:Lcom/google/android/gms/measurement/internal/zzfj;

.field private final zzk:Lcom/google/android/gms/measurement/internal/zzex;

.field private final zzl:Lcom/google/android/gms/measurement/internal/zzfu;

.field private final zzm:Lcom/google/android/gms/measurement/internal/zzkb;

.field private final zzn:Lcom/google/android/gms/measurement/internal/zzkx;

.field private final zzo:Lcom/google/android/gms/measurement/internal/zzev;

.field private final zzp:Lcom/google/android/gms/common/util/Clock;

.field private final zzq:Lcom/google/android/gms/measurement/internal/zzim;

.field private final zzr:Lcom/google/android/gms/measurement/internal/zzhe;

.field private final zzs:Lcom/google/android/gms/measurement/internal/zza;

.field private final zzt:Lcom/google/android/gms/measurement/internal/zzih;

.field private zzu:Lcom/google/android/gms/measurement/internal/zzet;

.field private zzv:Lcom/google/android/gms/measurement/internal/zziv;

.field private zzw:Lcom/google/android/gms/measurement/internal/zzal;

.field private zzx:Lcom/google/android/gms/measurement/internal/zzeq;

.field private zzy:Lcom/google/android/gms/measurement/internal/zzfo;

.field private zzz:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzhf;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzz:Z

    .line 3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzah:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Landroid/content/Context;

    .line 6
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzx;

    invoke-direct {v2, v1}, Lcom/google/android/gms/measurement/internal/zzx;-><init>(Landroid/content/Context;)V

    .line 7
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzh:Lcom/google/android/gms/measurement/internal/zzx;

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzh:Lcom/google/android/gms/measurement/internal/zzx;

    .line 9
    sput-object v1, Lcom/google/android/gms/measurement/internal/zzen;->zza:Lcom/google/android/gms/measurement/internal/zzx;

    .line 10
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Landroid/content/Context;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzc:Landroid/content/Context;

    .line 11
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzhf;->zzb:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzd:Ljava/lang/String;

    .line 12
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzhf;->zzc:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zze:Ljava/lang/String;

    .line 13
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzhf;->zzd:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzf:Ljava/lang/String;

    .line 14
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzhf;->zzh:Z

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzg:Z

    .line 15
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzhf;->zze:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzac:Ljava/lang/Boolean;

    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzaf:Z

    .line 17
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzhf;->zzg:Lcom/google/android/gms/internal/measurement/zzae;

    if-eqz v2, :cond_1

    .line 18
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzae;->zzg:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    const-string v4, "measurementEnabled"

    .line 19
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 20
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    .line 21
    check-cast v3, Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzad:Ljava/lang/Boolean;

    .line 22
    :cond_0
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzae;->zzg:Landroid/os/Bundle;

    const-string v3, "measurementDeactivated"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 23
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 24
    check-cast v2, Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzae:Ljava/lang/Boolean;

    .line 25
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzc:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzdc;->zza(Landroid/content/Context;)V

    .line 27
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    .line 28
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzp:Lcom/google/android/gms/common/util/Clock;

    .line 30
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 31
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    .line 32
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzp:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zza:J

    .line 34
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzy;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzy;-><init>(Lcom/google/android/gms/measurement/internal/zzgb;)V

    .line 35
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 37
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzfj;-><init>(Lcom/google/android/gms/measurement/internal/zzgb;)V

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzab()V

    .line 40
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzj:Lcom/google/android/gms/measurement/internal/zzfj;

    .line 42
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzex;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzex;-><init>(Lcom/google/android/gms/measurement/internal/zzgb;)V

    .line 44
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzab()V

    .line 45
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzk:Lcom/google/android/gms/measurement/internal/zzex;

    .line 47
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzkx;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzkx;-><init>(Lcom/google/android/gms/measurement/internal/zzgb;)V

    .line 49
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzab()V

    .line 50
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzn:Lcom/google/android/gms/measurement/internal/zzkx;

    .line 52
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzev;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzev;-><init>(Lcom/google/android/gms/measurement/internal/zzgb;)V

    .line 54
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzab()V

    .line 55
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzo:Lcom/google/android/gms/measurement/internal/zzev;

    .line 57
    new-instance v2, Lcom/google/android/gms/measurement/internal/zza;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zza;-><init>(Lcom/google/android/gms/measurement/internal/zzgb;)V

    .line 58
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzs:Lcom/google/android/gms/measurement/internal/zza;

    .line 60
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzim;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzim;-><init>(Lcom/google/android/gms/measurement/internal/zzgb;)V

    .line 62
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()V

    .line 63
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzq:Lcom/google/android/gms/measurement/internal/zzim;

    .line 65
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzhe;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzhe;-><init>(Lcom/google/android/gms/measurement/internal/zzgb;)V

    .line 67
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()V

    .line 68
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzr:Lcom/google/android/gms/measurement/internal/zzhe;

    .line 70
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzkb;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzkb;-><init>(Lcom/google/android/gms/measurement/internal/zzgb;)V

    .line 72
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()V

    .line 73
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzm:Lcom/google/android/gms/measurement/internal/zzkb;

    .line 75
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzih;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzih;-><init>(Lcom/google/android/gms/measurement/internal/zzgb;)V

    .line 77
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzab()V

    .line 78
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzt:Lcom/google/android/gms/measurement/internal/zzih;

    .line 80
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzfu;-><init>(Lcom/google/android/gms/measurement/internal/zzgb;)V

    .line 82
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzab()V

    .line 83
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzl:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 84
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzhf;->zzg:Lcom/google/android/gms/internal/measurement/zzae;

    if-eqz v2, :cond_3

    iget-wide v2, v2, Lcom/google/android/gms/internal/measurement/zzae;->zzb:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    const/4 v0, 0x1

    :cond_3
    xor-int/2addr v0, v1

    .line 87
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzc:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_5

    .line 88
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzm()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Application;

    if-eqz v2, :cond_6

    .line 90
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzm()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    .line 91
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzhe;->zza:Lcom/google/android/gms/measurement/internal/zzic;

    if-nez v3, :cond_4

    .line 92
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzic;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/google/android/gms/measurement/internal/zzic;-><init>(Lcom/google/android/gms/measurement/internal/zzhe;Lcom/google/android/gms/measurement/internal/zzhj;)V

    iput-object v3, v1, Lcom/google/android/gms/measurement/internal/zzhe;->zza:Lcom/google/android/gms/measurement/internal/zzic;

    :cond_4
    if-eqz v0, :cond_6

    .line 94
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzhe;->zza:Lcom/google/android/gms/measurement/internal/zzic;

    .line 95
    invoke-virtual {v2, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 96
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzhe;->zza:Lcom/google/android/gms/measurement/internal/zzic;

    .line 97
    invoke-virtual {v2, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 98
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    const-string v1, "Registered activity lifecycle callback"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    goto :goto_1

    .line 100
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzex;->zzh()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    const-string v1, "Application context is not an Application"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    .line 101
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzl:Lcom/google/android/gms/measurement/internal/zzfu;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzgd;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzgd;-><init>(Lcom/google/android/gms/measurement/internal/zzgb;Lcom/google/android/gms/measurement/internal/zzhf;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzae;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzgb;
    .locals 11

    if-eqz p1, :cond_1

    .line 293
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzae;->zze:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzf:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 294
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzae;

    iget-wide v2, p1, Lcom/google/android/gms/internal/measurement/zzae;->zza:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzb:J

    iget-boolean v6, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzc:Z

    iget-object v7, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzd:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzg:Landroid/os/Bundle;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/measurement/zzae;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    move-object p1, v0

    .line 295
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzgb;->zzb:Lcom/google/android/gms/measurement/internal/zzgb;

    if-nez v0, :cond_3

    .line 298
    const-class v0, Lcom/google/android/gms/measurement/internal/zzgb;

    monitor-enter v0

    .line 299
    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzgb;->zzb:Lcom/google/android/gms/measurement/internal/zzgb;

    if-nez v1, :cond_2

    .line 301
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzhf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzae;Ljava/lang/Long;)V

    .line 303
    new-instance p0, Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzgb;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 304
    sput-object p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzb:Lcom/google/android/gms/measurement/internal/zzgb;

    .line 305
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    if-eqz p1, :cond_4

    .line 306
    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzg:Landroid/os/Bundle;

    if-eqz p0, :cond_4

    const-string p2, "dataCollectionDefaultEnabled"

    .line 307
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 308
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzb:Lcom/google/android/gms/measurement/internal/zzgb;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzg:Landroid/os/Bundle;

    const-string p2, "dataCollectionDefaultEnabled"

    .line 309
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 310
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Z)V

    .line 311
    :cond_4
    :goto_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzb:Lcom/google/android/gms/measurement/internal/zzgb;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzgb;Lcom/google/android/gms/measurement/internal/zzhf;)V
    .locals 0

    .line 497
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Lcom/google/android/gms/measurement/internal/zzhf;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/measurement/internal/zzgu;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 323
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzhf;)V
    .locals 5

    .line 104
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()V

    .line 106
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzal;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzal;-><init>(Lcom/google/android/gms/measurement/internal/zzgb;)V

    .line 108
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzab()V

    .line 109
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzw:Lcom/google/android/gms/measurement/internal/zzal;

    .line 111
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzeq;

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzhf;->zzf:J

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzeq;-><init>(Lcom/google/android/gms/measurement/internal/zzgb;J)V

    .line 113
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()V

    .line 114
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzx:Lcom/google/android/gms/measurement/internal/zzeq;

    .line 116
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzet;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzet;-><init>(Lcom/google/android/gms/measurement/internal/zzgb;)V

    .line 118
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()V

    .line 119
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzu:Lcom/google/android/gms/measurement/internal/zzet;

    .line 121
    new-instance p1, Lcom/google/android/gms/measurement/internal/zziv;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zziv;-><init>(Lcom/google/android/gms/measurement/internal/zzgb;)V

    .line 123
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()V

    .line 124
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzv:Lcom/google/android/gms/measurement/internal/zziv;

    .line 125
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzn:Lcom/google/android/gms/measurement/internal/zzkx;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzac()V

    .line 126
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzj:Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzac()V

    .line 128
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzfo;-><init>(Lcom/google/android/gms/measurement/internal/zzgb;)V

    .line 129
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzy:Lcom/google/android/gms/measurement/internal/zzfo;

    .line 130
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzx:Lcom/google/android/gms/measurement/internal/zzeq;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()V

    .line 131
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zzu()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    const-string v1, "App measurement initialized, version"

    const-wide/16 v2, 0x7949

    .line 132
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zzu()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    const-string v1, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzaa()Ljava/lang/String;

    move-result-object p1

    .line 136
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzkx;->zze(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zzu()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    const-string v0, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzex;->zzu()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    const-string v1, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 144
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    .line 145
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zzv()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    const-string v0, "Debug-level message logging enabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    .line 146
    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzag:I

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzah:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_3

    .line 147
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    const-string v0, "Not all components initialized"

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzag:I

    .line 149
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzah:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    const/4 p1, 0x1

    .line 150
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzz:Z

    return-void
.end method

.method private final zzah()Lcom/google/android/gms/measurement/internal/zzih;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzt:Lcom/google/android/gms/measurement/internal/zzih;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb(Lcom/google/android/gms/measurement/internal/zzgx;)V

    .line 273
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzt:Lcom/google/android/gms/measurement/internal/zzih;

    return-object v0
.end method

.method private static zzb(Lcom/google/android/gms/measurement/internal/zzg;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 319
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzu()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 320
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzb(Lcom/google/android/gms/measurement/internal/zzgx;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 314
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzz()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 315
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/measurement/internal/zzy;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    return-object v0
.end method

.method protected final zza(Lcom/google/android/gms/internal/measurement/zzae;)V
    .locals 5

    .line 153
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()V

    .line 154
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zzb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 156
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzat;->zzco:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzw()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 158
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzg:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v1

    const/16 v2, 0x1e

    .line 160
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfj;->zza(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzg:Landroid/os/Bundle;

    .line 162
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzad;->zzb(Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object p1

    .line 163
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzad;->zza:Lcom/google/android/gms/measurement/internal/zzad;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzad;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zza:J

    .line 166
    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zza(Lcom/google/android/gms/measurement/internal/zzad;IJ)V

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 167
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zza(Lcom/google/android/gms/measurement/internal/zzad;)V

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfj;->zzc:Lcom/google/android/gms/measurement/internal/zzfn;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfn;->zza()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    .line 169
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfj;->zzc:Lcom/google/android/gms/measurement/internal/zzfn;

    .line 170
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzp:Lcom/google/android/gms/common/util/Clock;

    .line 171
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfn;->zza(J)V

    .line 172
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfj;->zzh:Lcom/google/android/gms/measurement/internal/zzfn;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfn;->zza()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 173
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    .line 174
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    const-string v0, "Persisting first open"

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zza:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfj;->zzh:Lcom/google/android/gms/measurement/internal/zzfn;

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zza:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfn;->zza(J)V

    .line 177
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 178
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzat;->zzck:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 179
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzhe;->zzb:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzp;->zzb()V

    .line 180
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzaf()Z

    move-result p1

    if-nez p1, :cond_9

    .line 181
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzaa()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 182
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object p1

    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzkx;->zzc(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 183
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    const-string v0, "App is missing INTERNET permission"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    .line 184
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object p1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzkx;->zzc(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 185
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    const-string v0, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    .line 187
    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzc:Landroid/content/Context;

    .line 188
    invoke-static {p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    move-result p1

    if-nez p1, :cond_8

    .line 189
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 190
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzy;->zzw()Z

    move-result p1

    if-nez p1, :cond_8

    .line 192
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzc:Landroid/content/Context;

    .line 193
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 194
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    const-string v0, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    .line 196
    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzc:Landroid/content/Context;

    const/4 v0, 0x0

    .line 197
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzkx;->zza(Landroid/content/Context;Z)Z

    move-result p1

    if-nez p1, :cond_8

    .line 198
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    const-string v0, "AppMeasurementService not registered/enabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    .line 199
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    const-string v0, "Uploading is not possible. App measurement disabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 201
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzx()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzab()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 202
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzx()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzac()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 203
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    .line 204
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzx()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzab()Ljava/lang/String;

    move-result-object p1

    .line 205
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfj;->zzg()Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzx()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzac()Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfj;->zzh()Ljava/lang/String;

    move-result-object v3

    .line 208
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzkx;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 209
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zzu()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    const-string v1, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfj;->zzj()V

    .line 211
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzj()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zzaa()V

    .line 212
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzv:Lcom/google/android/gms/measurement/internal/zziv;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zziv;->zzag()V

    .line 213
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzv:Lcom/google/android/gms/measurement/internal/zziv;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zziv;->zzae()V

    .line 214
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfj;->zzh:Lcom/google/android/gms/measurement/internal/zzfn;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zza:J

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfn;->zza(J)V

    .line 215
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfj;->zzj:Lcom/google/android/gms/measurement/internal/zzfp;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfp;->zza(Ljava/lang/String;)V

    .line 216
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzx()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzab()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzfj;->zzb(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzx()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzfj;->zzc(Ljava/lang/String;)V

    .line 218
    :cond_c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zzb()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 219
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 220
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzat;->zzco:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 221
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfj;->zzw()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzad;->zze()Z

    move-result p1

    if-nez p1, :cond_d

    .line 222
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfj;->zzj:Lcom/google/android/gms/measurement/internal/zzfp;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfp;->zza(Ljava/lang/String;)V

    .line 223
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfj;->zzj:Lcom/google/android/gms/measurement/internal/zzfp;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfp;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zza(Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmn;->zzb()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 225
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 226
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzat;->zzbq:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 227
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkx;->zzj()Z

    move-result p1

    if-nez p1, :cond_e

    .line 228
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfj;->zzu:Lcom/google/android/gms/measurement/internal/zzfp;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfp;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 229
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zzh()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    const-string v1, "Remote config removed with active feature rollouts"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfj;->zzu:Lcom/google/android/gms/measurement/internal/zzfp;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfp;->zza(Ljava/lang/String;)V

    .line 231
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzx()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzab()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 232
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzx()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzac()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 233
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzaa()Z

    move-result p1

    .line 234
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzy()Z

    move-result v0

    if-nez v0, :cond_10

    .line 235
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 236
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->zzf()Z

    move-result v0

    if-nez v0, :cond_10

    .line 237
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfj;->zzb(Z)V

    :cond_10
    if-eqz p1, :cond_11

    .line 239
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzah()V

    .line 240
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzd()Lcom/google/android/gms/measurement/internal/zzkb;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkb;->zza:Lcom/google/android/gms/measurement/internal/zzkj;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkj;->zza()V

    .line 241
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzv()Lcom/google/android/gms/measurement/internal/zziv;

    move-result-object p1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zziv;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 242
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznr;->zzb()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 243
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 244
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzat;->zzcg:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 245
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzv()Lcom/google/android/gms/measurement/internal/zziv;

    move-result-object p1

    .line 246
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfj;->zzx:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zza()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zziv;->zza(Landroid/os/Bundle;)V

    .line 247
    :cond_12
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfj;->zzo:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 248
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 249
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzat;->zzay:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zza(Z)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzg;)V
    .locals 0

    .line 379
    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzag:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzag:I

    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzgx;)V
    .locals 0

    .line 377
    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzag:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzag:I

    return-void
.end method

.method final synthetic zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 5

    const/4 p1, 0x1

    const/4 p5, 0x0

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_0

    const/16 v0, 0xcc

    if-eq p2, v0, :cond_0

    const/16 v0, 0x130

    if-ne p2, v0, :cond_1

    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 452
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    .line 453
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zzh()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    const-string p4, "Network Request for Deferred Deep Link failed. response, exception"

    .line 454
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 455
    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 457
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzfj;->zzs:Lcom/google/android/gms/measurement/internal/zzfl;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zza(Z)V

    .line 458
    array-length p2, p4

    if-nez p2, :cond_3

    .line 459
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zzv()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    const-string p2, "Deferred Deep Link response empty."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    return-void

    .line 461
    :cond_3
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p4}, Ljava/lang/String;-><init>([B)V

    .line 462
    :try_start_0
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "deeplink"

    const-string p4, ""

    .line 464
    invoke-virtual {p3, p2, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p4, "gclid"

    const-string v0, ""

    .line 465
    invoke-virtual {p3, p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "timestamp"

    const-wide/16 v1, 0x0

    .line 467
    invoke-virtual {p3, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 468
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 469
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zzv()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    const-string p2, "Deferred Deep Link is empty."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    return-void

    .line 471
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object p3

    .line 473
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 475
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzm()Landroid/content/Context;

    move-result-object p3

    .line 476
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    .line 477
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p3, v2, p5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 478
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_6

    .line 480
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    .line 481
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zzh()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    const-string p3, "Deferred Deep Link validation failed. gclid, deep link"

    .line 482
    invoke-virtual {p1, p3, p4, p2}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 484
    :cond_6
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p3, "gclid"

    .line 485
    invoke-virtual {p1, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "_cis"

    const-string p4, "ddp"

    .line 486
    invoke-virtual {p1, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzr:Lcom/google/android/gms/measurement/internal/zzhe;

    const-string p4, "auto"

    const-string p5, "_cmp"

    invoke-virtual {p3, p4, p5, p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 488
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object p1

    .line 489
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 490
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzkx;->zza(Ljava/lang/String;D)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 491
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.google.analytics.action.DEEPLINK_ACTION"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzm()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return-void

    :catch_0
    move-exception p1

    .line 495
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p2

    const-string p3, "Failed to parse the Deferred Deep Link response. exception"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(Z)V
    .locals 0

    .line 325
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzac:Ljava/lang/Boolean;

    return-void
.end method

.method public final zzaa()Z
    .locals 1

    .line 328
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzab()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzab()I
    .locals 3

    .line 330
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()V

    .line 332
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 333
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->zzf()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzae:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 336
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    .line 338
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zzb()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 340
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzat;->zzco:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 341
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzac()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x8

    return v0

    .line 343
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzu()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 345
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x3

    return v0

    .line 347
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    const-string v2, "firebase_analytics_collection_enabled"

    .line 349
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zzf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 352
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x4

    return v0

    .line 353
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzad:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 354
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x5

    return v0

    .line 358
    :cond_8
    invoke-static {}, Lcom/google/android/gms/common/api/internal/GoogleServices;->isMeasurementExplicitlyDisabled()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x6

    return v0

    .line 362
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 363
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzat;->zzas:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzac:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 364
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzac:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const/4 v0, 0x7

    return v0

    :cond_b
    return v1
.end method

.method public final zzac()Z
    .locals 1

    .line 374
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()V

    .line 375
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzaf:Z

    return v0
.end method

.method final zzad()V
    .locals 2

    .line 376
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzae()V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzah:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method protected final zzaf()Z
    .locals 6

    .line 384
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzz:Z

    if-eqz v0, :cond_6

    .line 387
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()V

    .line 388
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzaa:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzab:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    if-eqz v0, :cond_5

    .line 389
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 390
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzp:Lcom/google/android/gms/common/util/Clock;

    .line 391
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzab:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzp:Lcom/google/android/gms/common/util/Clock;

    .line 394
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzab:J

    .line 396
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkx;->zzc(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 397
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v0

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzkx;->zzc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 398
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzc:Landroid/content/Context;

    .line 399
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 401
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->zzw()Z

    move-result v0

    if-nez v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzc:Landroid/content/Context;

    .line 403
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 404
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzc:Landroid/content/Context;

    .line 405
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzkx;->zza(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 406
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzaa:Ljava/lang/Boolean;

    .line 407
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzaa:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 409
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v0

    .line 410
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzx()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeq;->zzab()Ljava/lang/String;

    move-result-object v3

    .line 411
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzx()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzeq;->zzac()Ljava/lang/String;

    move-result-object v4

    .line 412
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzx()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzeq;->zzad()Ljava/lang/String;

    move-result-object v5

    .line 413
    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzkx;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 414
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzx()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzac()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 415
    :cond_4
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzaa:Ljava/lang/Boolean;

    .line 416
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzaa:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 385
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzag()V
    .locals 10

    .line 418
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()V

    .line 419
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzah()Lcom/google/android/gms/measurement/internal/zzih;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb(Lcom/google/android/gms/measurement/internal/zzgx;)V

    .line 420
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzx()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzaa()Ljava/lang/String;

    move-result-object v0

    .line 422
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzfj;->zza(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 424
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 425
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzy;->zzg()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    .line 426
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    .line 427
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzah()Lcom/google/android/gms/measurement/internal/zzih;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzih;->zzf()Z

    move-result v2

    if-nez v2, :cond_1

    .line 431
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzex;->zzh()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    const-string v1, "Network is not available for Deferred Deep Link request. Skipping"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    return-void

    .line 434
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh()Lcom/google/android/gms/measurement/internal/zzkx;

    move-result-object v2

    .line 435
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzx()Lcom/google/android/gms/measurement/internal/zzeq;

    const-wide/16 v3, 0x7949

    .line 437
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 438
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfj;->zzt:Lcom/google/android/gms/measurement/internal/zzfn;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfn;->zza()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    move-object v1, v2

    move-wide v2, v3

    move-object v4, v0

    .line 439
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzkx;->zza(JLjava/lang/String;Ljava/lang/String;J)Ljava/net/URL;

    move-result-object v4

    .line 440
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzah()Lcom/google/android/gms/measurement/internal/zzih;

    move-result-object v2

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzga;

    invoke-direct {v7, p0}, Lcom/google/android/gms/measurement/internal/zzga;-><init>(Lcom/google/android/gms/measurement/internal/zzgb;)V

    .line 442
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()V

    .line 443
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzaa()V

    .line 444
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzp()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzij;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzij;-><init>(Lcom/google/android/gms/measurement/internal/zzih;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzig;)V

    .line 447
    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc(Ljava/lang/Runnable;)V

    return-void

    .line 428
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzex;->zzv()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    const-string v1, "ADID unavailable to retrieve Deferred Deep Link. Skipping"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final zzb()Lcom/google/android/gms/measurement/internal/zzfj;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzj:Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Lcom/google/android/gms/measurement/internal/zzgu;)V

    .line 254
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzj:Lcom/google/android/gms/measurement/internal/zzfj;

    return-object v0
.end method

.method public final zzb(Z)V
    .locals 1

    .line 370
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()V

    .line 371
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzaf:Z

    return-void
.end method

.method public final zzc()Lcom/google/android/gms/measurement/internal/zzex;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzk:Lcom/google/android/gms/measurement/internal/zzex;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzz()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzk:Lcom/google/android/gms/measurement/internal/zzex;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/measurement/internal/zzkb;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzm:Lcom/google/android/gms/measurement/internal/zzkb;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 261
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzm:Lcom/google/android/gms/measurement/internal/zzkb;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/measurement/internal/zzfo;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzy:Lcom/google/android/gms/measurement/internal/zzfo;

    return-object v0
.end method

.method final zzf()Lcom/google/android/gms/measurement/internal/zzfu;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzl:Lcom/google/android/gms/measurement/internal/zzfu;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/measurement/internal/zzhe;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzr:Lcom/google/android/gms/measurement/internal/zzhe;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 265
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzr:Lcom/google/android/gms/measurement/internal/zzhe;

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/measurement/internal/zzkx;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzn:Lcom/google/android/gms/measurement/internal/zzkx;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Lcom/google/android/gms/measurement/internal/zzgu;)V

    .line 267
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzn:Lcom/google/android/gms/measurement/internal/zzkx;

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/measurement/internal/zzev;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzo:Lcom/google/android/gms/measurement/internal/zzev;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Lcom/google/android/gms/measurement/internal/zzgu;)V

    .line 269
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzo:Lcom/google/android/gms/measurement/internal/zzev;

    return-object v0
.end method

.method public final zzj()Lcom/google/android/gms/measurement/internal/zzet;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzu:Lcom/google/android/gms/measurement/internal/zzet;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 271
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzu:Lcom/google/android/gms/measurement/internal/zzet;

    return-object v0
.end method

.method public final zzk()Z
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public final zzl()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzp:Lcom/google/android/gms/common/util/Clock;

    return-object v0
.end method

.method public final zzm()Landroid/content/Context;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzc:Landroid/content/Context;

    return-object v0
.end method

.method public final zzn()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzo()Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzp()Lcom/google/android/gms/measurement/internal/zzfu;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzl:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb(Lcom/google/android/gms/measurement/internal/zzgx;)V

    .line 259
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzl:Lcom/google/android/gms/measurement/internal/zzfu;

    return-object v0
.end method

.method public final zzq()Lcom/google/android/gms/measurement/internal/zzex;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzk:Lcom/google/android/gms/measurement/internal/zzex;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb(Lcom/google/android/gms/measurement/internal/zzgx;)V

    .line 256
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzk:Lcom/google/android/gms/measurement/internal/zzex;

    return-object v0
.end method

.method public final zzr()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzs()Z
    .locals 1

    .line 279
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzg:Z

    return v0
.end method

.method public final zzt()Lcom/google/android/gms/measurement/internal/zzx;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzh:Lcom/google/android/gms/measurement/internal/zzx;

    return-object v0
.end method

.method public final zzu()Lcom/google/android/gms/measurement/internal/zzim;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzq:Lcom/google/android/gms/measurement/internal/zzim;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 282
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzq:Lcom/google/android/gms/measurement/internal/zzim;

    return-object v0
.end method

.method public final zzv()Lcom/google/android/gms/measurement/internal/zziv;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzv:Lcom/google/android/gms/measurement/internal/zziv;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 284
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzv:Lcom/google/android/gms/measurement/internal/zziv;

    return-object v0
.end method

.method public final zzw()Lcom/google/android/gms/measurement/internal/zzal;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzw:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb(Lcom/google/android/gms/measurement/internal/zzgx;)V

    .line 286
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzw:Lcom/google/android/gms/measurement/internal/zzal;

    return-object v0
.end method

.method public final zzx()Lcom/google/android/gms/measurement/internal/zzeq;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzx:Lcom/google/android/gms/measurement/internal/zzeq;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 288
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzx:Lcom/google/android/gms/measurement/internal/zzeq;

    return-object v0
.end method

.method public final zzy()Lcom/google/android/gms/measurement/internal/zza;
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzs:Lcom/google/android/gms/measurement/internal/zza;

    if-eqz v0, :cond_0

    return-object v0

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzz()Z
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzac:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgb;->zzac:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
