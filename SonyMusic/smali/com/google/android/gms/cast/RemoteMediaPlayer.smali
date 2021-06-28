.class public Lcom/google/android/gms/cast/RemoteMediaPlayer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingRemoteException"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;,
        Lcom/google/android/gms/cast/RemoteMediaPlayer$zzc;,
        Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;,
        Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;,
        Lcom/google/android/gms/cast/RemoteMediaPlayer$OnPreloadStatusUpdatedListener;,
        Lcom/google/android/gms/cast/RemoteMediaPlayer$OnQueueStatusUpdatedListener;,
        Lcom/google/android/gms/cast/RemoteMediaPlayer$OnMetadataUpdatedListener;,
        Lcom/google/android/gms/cast/RemoteMediaPlayer$OnStatusUpdatedListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final NAMESPACE:Ljava/lang/String;


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final zzfu:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzfv:Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;

.field private zzfw:Lcom/google/android/gms/cast/RemoteMediaPlayer$OnPreloadStatusUpdatedListener;

.field private zzfx:Lcom/google/android/gms/cast/RemoteMediaPlayer$OnQueueStatusUpdatedListener;

.field private zzfy:Lcom/google/android/gms/cast/RemoteMediaPlayer$OnMetadataUpdatedListener;

.field private zzfz:Lcom/google/android/gms/cast/RemoteMediaPlayer$OnStatusUpdatedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    sget-object v0, Lcom/google/android/gms/internal/cast/zzdn;->NAMESPACE:Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->NAMESPACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzdn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;-><init>(Lcom/google/android/gms/internal/cast/zzdn;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/cast/zzdn;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->lock:Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzfu:Lcom/google/android/gms/internal/cast/zzdn;

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzfu:Lcom/google/android/gms/internal/cast/zzdn;

    new-instance v0, Lcom/google/android/gms/cast/zzav;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/zzav;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/cast/zzdn;->zza(Lcom/google/android/gms/internal/cast/zzdp;)V

    .line 7
    new-instance p1, Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;

    invoke-direct {p1, p0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzfv:Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzfu:Lcom/google/android/gms/internal/cast/zzdn;

    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzfv:Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/cast/zzcu;->zza(Lcom/google/android/gms/internal/cast/zzdr;)V

    return-void
.end method

.method private final onMetadataUpdated()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzfy:Lcom/google/android/gms/cast/RemoteMediaPlayer$OnMetadataUpdatedListener;

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$OnMetadataUpdatedListener;->onMetadataUpdated()V

    :cond_0
    return-void
.end method

.method private final onPreloadStatusUpdated()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzfw:Lcom/google/android/gms/cast/RemoteMediaPlayer$OnPreloadStatusUpdatedListener;

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$OnPreloadStatusUpdatedListener;->onPreloadStatusUpdated()V

    :cond_0
    return-void
.end method

.method private final onQueueStatusUpdated()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzfx:Lcom/google/android/gms/cast/RemoteMediaPlayer$OnQueueStatusUpdatedListener;

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$OnQueueStatusUpdatedListener;->onQueueStatusUpdated()V

    :cond_0
    return-void
.end method

.method private final onStatusUpdated()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzfz:Lcom/google/android/gms/cast/RemoteMediaPlayer$OnStatusUpdatedListener;

    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$OnStatusUpdatedListener;->onStatusUpdated()V

    :cond_0
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/RemoteMediaPlayer;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->onStatusUpdated()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/cast/RemoteMediaPlayer;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->onMetadataUpdated()V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/cast/RemoteMediaPlayer;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->onQueueStatusUpdated()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/cast/RemoteMediaPlayer;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->onPreloadStatusUpdated()V

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Ljava/lang/Object;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/internal/cast/zzdn;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzfu:Lcom/google/android/gms/internal/cast/zzdn;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzfv:Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;

    return-object p0
.end method


# virtual methods
.method public getApproximateStreamPosition()J
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzfu:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzdn;->getApproximateStreamPosition()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 57
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzfu:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzdn;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 63
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzfu:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzcu;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreamDuration()J
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzfu:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzdn;->getStreamDuration()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public load(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaInfo;Z)Lcom/google/android/gms/common/api/PendingResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/cast/MediaInfo;",
            "Z)",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
            ">;"
        }
    .end annotation

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 11
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->load(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaInfo;ZJ[JLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1
.end method

.method public load(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaInfo;ZJ[JLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/cast/MediaInfo;",
            "ZJ[J",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
            ">;"
        }
    .end annotation

    .line 14
    new-instance v9, Lcom/google/android/gms/cast/zzbe;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/cast/zzbe;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaInfo;ZJ[JLorg/json/JSONObject;)V

    move-object v0, p1

    invoke-virtual {p1, v9}, Lcom/google/android/gms/common/api/GoogleApiClient;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object v0

    return-object v0
.end method

.method public onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 88
    iget-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzfu:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/cast/zzcu;->zzp(Ljava/lang/String;)V

    return-void
.end method

.method public pause(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->pause(Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1
.end method

.method public pause(Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
            ">;"
        }
    .end annotation

    .line 16
    new-instance v0, Lcom/google/android/gms/cast/zzbl;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/cast/zzbl;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1
.end method

.method public play(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->play(Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1
.end method

.method public play(Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lcom/google/android/gms/cast/zzbn;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/cast/zzbn;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1
.end method

.method public requestStatus(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/google/android/gms/cast/zzbq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/zzbq;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1
.end method

.method public seek(Lcom/google/android/gms/common/api/GoogleApiClient;J)Lcom/google/android/gms/common/api/PendingResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "J)",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 21
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->seek(Lcom/google/android/gms/common/api/GoogleApiClient;JILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1
.end method

.method public seek(Lcom/google/android/gms/common/api/GoogleApiClient;JILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "JI",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v7, Lcom/google/android/gms/cast/zzbm;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/cast/zzbm;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;JILorg/json/JSONObject;)V

    invoke-virtual {p1, v7}, Lcom/google/android/gms/common/api/GoogleApiClient;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1
.end method

.method public setOnStatusUpdatedListener(Lcom/google/android/gms/cast/RemoteMediaPlayer$OnStatusUpdatedListener;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzfz:Lcom/google/android/gms/cast/RemoteMediaPlayer$OnStatusUpdatedListener;

    return-void
.end method
