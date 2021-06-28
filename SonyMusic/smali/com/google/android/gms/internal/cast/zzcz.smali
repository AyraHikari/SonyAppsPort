.class final Lcom/google/android/gms/internal/cast/zzcz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzae:Ljava/lang/String;

.field private final synthetic zzzm:Lcom/google/android/gms/internal/cast/zzct;

.field private final synthetic zzzp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzcv;Lcom/google/android/gms/internal/cast/zzct;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzcz;->zzzm:Lcom/google/android/gms/internal/cast/zzct;

    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzcz;->zzae:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/cast/zzcz;->zzzp:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzcz;->zzzm:Lcom/google/android/gms/internal/cast/zzct;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzct;->zzf(Lcom/google/android/gms/internal/cast/zzct;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzcz;->zzzm:Lcom/google/android/gms/internal/cast/zzct;

    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzct;->zzf(Lcom/google/android/gms/internal/cast/zzct;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzcz;->zzae:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzcz;->zzzm:Lcom/google/android/gms/internal/cast/zzct;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzct;->zzg(Lcom/google/android/gms/internal/cast/zzct;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzcz;->zzae:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzcz;->zzzp:Ljava/lang/String;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;->onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzct;->zzbb()Lcom/google/android/gms/internal/cast/zzdo;

    move-result-object v0

    const-string v1, "Discarded message for unknown namespace \'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzcz;->zzae:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzdo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    .line 4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
