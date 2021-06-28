.class final Lcom/google/android/gms/tagmanager/zzv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/ContainerHolder;


# instance fields
.field private final zzaek:Landroid/os/Looper;

.field private zzael:Lcom/google/android/gms/tagmanager/Container;

.field private zzaem:Lcom/google/android/gms/tagmanager/Container;

.field private zzaen:Lcom/google/android/gms/common/api/Status;

.field private zzaeo:Lcom/google/android/gms/tagmanager/zzx;

.field private zzaep:Lcom/google/android/gms/tagmanager/zzw;

.field private zzaeq:Z

.field private zzaer:Lcom/google/android/gms/tagmanager/TagManager;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzv;->zzaen:Lcom/google/android/gms/common/api/Status;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzv;->zzaek:Landroid/os/Looper;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/zzw;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzv;->zzaer:Lcom/google/android/gms/tagmanager/TagManager;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzv;->zzaek:Landroid/os/Looper;

    .line 8
    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzv;->zzael:Lcom/google/android/gms/tagmanager/Container;

    .line 9
    iput-object p4, p0, Lcom/google/android/gms/tagmanager/zzv;->zzaep:Lcom/google/android/gms/tagmanager/zzw;

    .line 10
    sget-object p2, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzv;->zzaen:Lcom/google/android/gms/common/api/Status;

    .line 11
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tagmanager/TagManager;->zza(Lcom/google/android/gms/tagmanager/zzv;)I

    return-void
.end method

.method private final zzhd()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzv;->zzaeo:Lcom/google/android/gms/tagmanager/zzx;

    if-eqz v0, :cond_0

    .line 69
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzv;->zzaem:Lcom/google/android/gms/tagmanager/Container;

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/Container;->zzha()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 70
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized getContainer()Lcom/google/android/gms/tagmanager/Container;
    .locals 2

    monitor-enter p0

    .line 14
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzv;->zzaeq:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "ContainerHolder is released."

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->zzav(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    return-object v1

    .line 17
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzv;->zzaem:Lcom/google/android/gms/tagmanager/Container;

    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzv;->zzaem:Lcom/google/android/gms/tagmanager/Container;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzv;->zzael:Lcom/google/android/gms/tagmanager/Container;

    .line 19
    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzv;->zzaem:Lcom/google/android/gms/tagmanager/Container;

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzv;->zzael:Lcom/google/android/gms/tagmanager/Container;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final getContainerId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzv;->zzaeq:Z

    if-eqz v0, :cond_0

    const-string v0, "getContainerId called on a released ContainerHolder."

    .line 56
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->zzav(Ljava/lang/String;)V

    const-string v0, ""

    return-object v0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzv;->zzael:Lcom/google/android/gms/tagmanager/Container;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/Container;->getContainerId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzv;->zzaen:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 35
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzv;->zzaeq:Z

    if-eqz v0, :cond_0

    const-string v0, "Releasing a released ContainerHolder."

    .line 36
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->zzav(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 38
    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzv;->zzaeq:Z

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzv;->zzaer:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tagmanager/TagManager;->zzb(Lcom/google/android/gms/tagmanager/zzv;)Z

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzv;->zzael:Lcom/google/android/gms/tagmanager/Container;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/Container;->release()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzv;->zzael:Lcom/google/android/gms/tagmanager/Container;

    .line 42
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzv;->zzaem:Lcom/google/android/gms/tagmanager/Container;

    .line 43
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzv;->zzaep:Lcom/google/android/gms/tagmanager/zzw;

    .line 44
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzv;->zzaeo:Lcom/google/android/gms/tagmanager/zzx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/tagmanager/Container;)V
    .locals 1

    monitor-enter p0

    .line 46
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzv;->zzaeq:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 47
    monitor-exit p0

    return-void

    .line 48
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzv;->zzaem:Lcom/google/android/gms/tagmanager/Container;

    .line 49
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzv;->zzhd()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzan(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 51
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzv;->zzaeq:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 52
    monitor-exit p0

    return-void

    .line 53
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzv;->zzael:Lcom/google/android/gms/tagmanager/Container;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/Container;->zzan(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
