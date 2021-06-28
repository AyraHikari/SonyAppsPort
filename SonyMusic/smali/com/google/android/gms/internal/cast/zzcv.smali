.class final Lcom/google/android/gms/internal/cast/zzcv;
.super Lcom/google/android/gms/internal/cast/zzdk;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final zzzh:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/cast/zzct;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzct;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdk;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzcv;->zzzh:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/cast/zzep;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/cast/zzep;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzcv;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final isDisposed()Z
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzcv;->zzzh:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onApplicationDisconnected(I)V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzcv;->zzzh:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzct;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 48
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cast/zzct;->zza(Lcom/google/android/gms/internal/cast/zzct;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cast/zzct;->zzb(Lcom/google/android/gms/internal/cast/zzct;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzct;->zza(Lcom/google/android/gms/internal/cast/zzct;I)V

    .line 51
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzct;->zze(Lcom/google/android/gms/internal/cast/zzct;)Lcom/google/android/gms/cast/Cast$Listener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzcv;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/cast/zzcy;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/gms/internal/cast/zzcy;-><init>(Lcom/google/android/gms/internal/cast/zzcv;Lcom/google/android/gms/internal/cast/zzct;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final zza(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzcv;->zzzh:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzct;

    if-nez v0, :cond_0

    return-void

    .line 21
    :cond_0
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzct;->zza(Lcom/google/android/gms/internal/cast/zzct;Lcom/google/android/gms/cast/ApplicationMetadata;)Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/cast/ApplicationMetadata;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cast/zzct;->zza(Lcom/google/android/gms/internal/cast/zzct;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/cast/zzct;->zzb(Lcom/google/android/gms/internal/cast/zzct;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/cast/zzct;->zzc(Lcom/google/android/gms/internal/cast/zzct;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzct;->zzef()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 26
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzct;->zzd(Lcom/google/android/gms/internal/cast/zzct;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 27
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzct;->zzd(Lcom/google/android/gms/internal/cast/zzct;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    move-result-object v2

    new-instance v9, Lcom/google/android/gms/internal/cast/zzcw;

    new-instance v4, Lcom/google/android/gms/common/api/Status;

    const/4 v3, 0x0

    invoke-direct {v4, v3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    move-object v3, v9

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/cast/zzcw;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v2, v9}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 28
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzct;->zza(Lcom/google/android/gms/internal/cast/zzct;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    .line 29
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zza(Ljava/lang/String;DZ)V
    .locals 0

    .line 54
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzct;->zzbb()Lcom/google/android/gms/internal/cast/zzdo;

    move-result-object p1

    const-string p2, "Deprecated callback: \"onStatusreceived\""

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/cast/zzdo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;J)V
    .locals 1

    .line 84
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzcv;->zzzh:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/cast/zzct;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 87
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/cast/zzct;->zza(Lcom/google/android/gms/internal/cast/zzct;JI)V

    return-void
.end method

.method public final zza(Ljava/lang/String;JI)V
    .locals 0

    .line 79
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzcv;->zzzh:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/cast/zzct;

    if-nez p1, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/cast/zzct;->zza(Lcom/google/android/gms/internal/cast/zzct;JI)V

    return-void
.end method

.method public final zza(Ljava/lang/String;[B)V
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzcv;->zzzh:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzct;

    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzct;->zzbb()Lcom/google/android/gms/internal/cast/zzdo;

    move-result-object v0

    const-string v1, "IGNORING: Receive (type=binary, ns=%s) <%d bytes>"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzdo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/cast/zzcj;)V
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzcv;->zzzh:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzct;

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzct;->zzbb()Lcom/google/android/gms/internal/cast/zzdo;

    move-result-object v1

    const-string v2, "onApplicationStatusChanged"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/cast/zzdo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzcv;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/cast/zzda;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/gms/internal/cast/zzda;-><init>(Lcom/google/android/gms/internal/cast/zzcv;Lcom/google/android/gms/internal/cast/zzct;Lcom/google/android/gms/internal/cast/zzcj;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/cast/zzdb;)V
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzcv;->zzzh:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzct;

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzct;->zzbb()Lcom/google/android/gms/internal/cast/zzdo;

    move-result-object v1

    const-string v2, "onDeviceStatusChanged"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/cast/zzdo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzcv;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/cast/zzcx;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/gms/internal/cast/zzcx;-><init>(Lcom/google/android/gms/internal/cast/zzcv;Lcom/google/android/gms/internal/cast/zzct;Lcom/google/android/gms/internal/cast/zzdb;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzcv;->zzzh:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzct;

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzct;->zzbb()Lcom/google/android/gms/internal/cast/zzdo;

    move-result-object v1

    const-string v2, "Receive (type=text, ns=%s) %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/cast/zzdo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzcv;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/cast/zzcz;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/google/android/gms/internal/cast/zzcz;-><init>(Lcom/google/android/gms/internal/cast/zzcv;Lcom/google/android/gms/internal/cast/zzct;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzeh()Lcom/google/android/gms/internal/cast/zzct;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzcv;->zzzh:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzct;

    if-nez v0, :cond_0

    return-object v1

    .line 8
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzct;->zzc(Lcom/google/android/gms/internal/cast/zzct;)V

    return-object v0
.end method

.method public final zzi(I)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzcv;->zzzh:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzct;

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzct;->zzs(I)V

    return-void
.end method

.method public final zzu(I)V
    .locals 6

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcv;->zzeh()Lcom/google/android/gms/internal/cast/zzct;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzct;->zzbb()Lcom/google/android/gms/internal/cast/zzdo;

    move-result-object v1

    const-string v2, "ICastDeviceControllerListener.onDisconnected: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/cast/zzdo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->triggerConnectionSuspended(I)V

    :cond_1
    return-void
.end method

.method public final zzv(I)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzcv;->zzzh:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzct;

    if-nez v0, :cond_0

    return-void

    .line 38
    :cond_0
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzct;->zza(Lcom/google/android/gms/internal/cast/zzct;I)V

    return-void
.end method

.method public final zzw(I)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzcv;->zzzh:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzct;

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzct;->zza(Lcom/google/android/gms/internal/cast/zzct;I)V

    return-void
.end method
