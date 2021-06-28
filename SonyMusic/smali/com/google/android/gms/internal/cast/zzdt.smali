.class public final Lcom/google/android/gms/internal/cast/zzdt;
.super Ljava/lang/Object;


# static fields
.field private static final zzabh:Ljava/lang/Object;

.field private static final zzbf:Lcom/google/android/gms/internal/cast/zzdo;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private zzabf:J

.field private zzabg:Lcom/google/android/gms/internal/cast/zzdu;

.field private zzqg:Ljava/lang/Runnable;

.field private zzxh:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    new-instance v0, Lcom/google/android/gms/internal/cast/zzdo;

    const-string v1, "RequestTracker"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzdo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzdt;->zzbf:Lcom/google/android/gms/internal/cast/zzdo;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzdt;->zzabh:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/cast/zzdt;->zzabf:J

    const-wide/16 p1, -0x1

    .line 3
    iput-wide p1, p0, Lcom/google/android/gms/internal/cast/zzdt;->zzxh:J

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/cast/zzep;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzep;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdt;->handler:Landroid/os/Handler;

    return-void
.end method

.method private final zza(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 44
    sget-object v0, Lcom/google/android/gms/internal/cast/zzdt;->zzbf:Lcom/google/android/gms/internal/cast/zzdo;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/internal/cast/zzdo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    sget-object p3, Lcom/google/android/gms/internal/cast/zzdt;->zzabh:Ljava/lang/Object;

    monitor-enter p3

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdt;->zzabg:Lcom/google/android/gms/internal/cast/zzdu;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdt;->zzabg:Lcom/google/android/gms/internal/cast/zzdu;

    iget-wide v1, p0, Lcom/google/android/gms/internal/cast/zzdt;->zzxh:J

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/google/android/gms/internal/cast/zzdu;->zza(JILjava/lang/Object;)V

    :cond_0
    const-wide/16 p1, -0x1

    .line 49
    iput-wide p1, p0, Lcom/google/android/gms/internal/cast/zzdt;->zzxh:J

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdt;->zzabg:Lcom/google/android/gms/internal/cast/zzdu;

    .line 52
    sget-object p2, Lcom/google/android/gms/internal/cast/zzdt;->zzabh:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdt;->zzqg:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 54
    monitor-exit p2

    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdt;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdt;->zzqg:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 56
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdt;->zzqg:Ljava/lang/Runnable;

    .line 57
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :goto_0
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 57
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 58
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method private final zza(ILjava/lang/Object;)Z
    .locals 8

    .line 36
    sget-object p2, Lcom/google/android/gms/internal/cast/zzdt;->zzabh:Ljava/lang/Object;

    monitor-enter p2

    .line 37
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/cast/zzdt;->zzxh:J

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    const/4 v0, 0x0

    .line 38
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "clearing request %d"

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/google/android/gms/internal/cast/zzdt;->zzxh:J

    .line 39
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v1, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdt;->zza(ILjava/lang/Object;Ljava/lang/String;)V

    .line 41
    monitor-exit p2

    return v3

    .line 42
    :cond_0
    monitor-exit p2

    return v4

    :catchall_0
    move-exception p1

    .line 43
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final test(J)Z
    .locals 6

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/cast/zzdt;->zzabh:Ljava/lang/Object;

    monitor-enter v0

    .line 25
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/cast/zzdt;->zzxh:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/cast/zzdt;->zzxh:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zza(JLcom/google/android/gms/internal/cast/zzdu;)V
    .locals 4

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/cast/zzdt;->zzabh:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdt;->zzabg:Lcom/google/android/gms/internal/cast/zzdu;

    .line 8
    iget-wide v2, p0, Lcom/google/android/gms/internal/cast/zzdt;->zzxh:J

    .line 9
    iput-wide p1, p0, Lcom/google/android/gms/internal/cast/zzdt;->zzxh:J

    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzdt;->zzabg:Lcom/google/android/gms/internal/cast/zzdu;

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 13
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/cast/zzdu;->zzb(J)V

    .line 15
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/cast/zzdt;->zzabh:Ljava/lang/Object;

    monitor-enter p1

    .line 16
    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzdt;->zzqg:Ljava/lang/Runnable;

    if-eqz p2, :cond_1

    .line 17
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzdt;->handler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zzdt;->zzqg:Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/cast/zzdw;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/cast/zzdw;-><init>(Lcom/google/android/gms/internal/cast/zzdt;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzdt;->zzqg:Ljava/lang/Runnable;

    .line 19
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzdt;->handler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zzdt;->zzqg:Ljava/lang/Runnable;

    iget-wide v0, p0, Lcom/google/android/gms/internal/cast/zzdt;->zzabf:J

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :catchall_1
    move-exception p1

    .line 11
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final zzc(JILjava/lang/Object;)Z
    .locals 7

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/cast/zzdt;->zzabh:Ljava/lang/Object;

    monitor-enter v0

    .line 28
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/cast/zzdt;->zzxh:J

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-eqz v6, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/cast/zzdt;->zzxh:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    .line 29
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "request %d completed"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 30
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v4, v5

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-direct {p0, p3, p4, p1}, Lcom/google/android/gms/internal/cast/zzdt;->zza(ILjava/lang/Object;Ljava/lang/String;)V

    .line 32
    monitor-exit v0

    return v3

    .line 33
    :cond_0
    monitor-exit v0

    return v5

    :catchall_0
    move-exception p1

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzeo()Z
    .locals 6

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/cast/zzdt;->zzabh:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/cast/zzdt;->zzxh:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final synthetic zzep()V
    .locals 6

    .line 60
    sget-object v0, Lcom/google/android/gms/internal/cast/zzdt;->zzabh:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/cast/zzdt;->zzxh:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 62
    monitor-exit v0

    return-void

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    .line 64
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/cast/zzdt;->zza(ILjava/lang/Object;)Z

    .line 65
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzx(I)Z
    .locals 1

    const/16 p1, 0x7d2

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzdt;->zza(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method
