.class public final Lcom/google/android/gms/internal/cast/zzct;
.super Lcom/google/android/gms/common/internal/GmsClient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/GmsClient<",
        "Lcom/google/android/gms/internal/cast/zzdf;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzbf:Lcom/google/android/gms/internal/cast/zzdo;

.field private static final zzzc:Ljava/lang/Object;

.field private static final zzzd:Ljava/lang/Object;


# instance fields
.field private final extras:Landroid/os/Bundle;

.field private final zzak:Lcom/google/android/gms/cast/Cast$Listener;

.field private zzfh:D

.field private zzfi:Z

.field private final zzit:Lcom/google/android/gms/cast/CastDevice;

.field private zzyj:Lcom/google/android/gms/cast/ApplicationMetadata;

.field private final zzyk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final zzyl:J

.field private zzym:Lcom/google/android/gms/internal/cast/zzcv;

.field private zzyn:Ljava/lang/String;

.field private zzyo:Z

.field private zzyp:Z

.field private zzyq:Z

.field private zzyr:Lcom/google/android/gms/cast/zzae;

.field private zzys:I

.field private zzyt:I

.field private final zzyu:Ljava/util/concurrent/atomic/AtomicLong;

.field private zzyv:Ljava/lang/String;

.field private zzyw:Ljava/lang/String;

.field private zzyx:Landroid/os/Bundle;

.field private final zzyy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;>;"
        }
    .end annotation
.end field

.field private zzyz:D

.field private zzza:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private zzzb:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 289
    new-instance v0, Lcom/google/android/gms/internal/cast/zzdo;

    const-string v1, "CastClientImpl"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzdo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzct;->zzbf:Lcom/google/android/gms/internal/cast/zzdo;

    .line 290
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzct;->zzzc:Ljava/lang/Object;

    .line 291
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzct;->zzzd:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/cast/CastDevice;JLcom/google/android/gms/cast/Cast$Listener;Landroid/os/Bundle;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 8

    move-object v7, p0

    const/16 v3, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    move-object v0, p4

    .line 2
    iput-object v0, v7, Lcom/google/android/gms/internal/cast/zzct;->zzit:Lcom/google/android/gms/cast/CastDevice;

    move-object v0, p7

    .line 3
    iput-object v0, v7, Lcom/google/android/gms/internal/cast/zzct;->zzak:Lcom/google/android/gms/cast/Cast$Listener;

    move-wide v0, p5

    .line 4
    iput-wide v0, v7, Lcom/google/android/gms/internal/cast/zzct;->zzyl:J

    move-object/from16 v0, p8

    .line 5
    iput-object v0, v7, Lcom/google/android/gms/internal/cast/zzct;->extras:Landroid/os/Bundle;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v7, Lcom/google/android/gms/internal/cast/zzct;->zzyk:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, v7, Lcom/google/android/gms/internal/cast/zzct;->zzyu:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v7, Lcom/google/android/gms/internal/cast/zzct;->zzyy:Ljava/util/Map;

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzct;->zzeb()V

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzct;->zzee()D

    move-result-wide v0

    iput-wide v0, v7, Lcom/google/android/gms/internal/cast/zzct;->zzyz:D

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzct;Lcom/google/android/gms/cast/ApplicationMetadata;)Lcom/google/android/gms/cast/ApplicationMetadata;
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyj:Lcom/google/android/gms/cast/ApplicationMetadata;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzct;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;
    .locals 0

    const/4 p1, 0x0

    .line 281
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzza:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzct;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyv:Ljava/lang/String;

    return-object p1
.end method

.method private final zza(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;)V"
        }
    .end annotation

    .line 101
    sget-object v0, Lcom/google/android/gms/internal/cast/zzct;->zzzc:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzza:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzza:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    new-instance v2, Lcom/google/android/gms/internal/cast/zzcw;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    const/16 v4, 0x7d2

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/cast/zzcw;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    .line 104
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzza:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    .line 105
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final zza(Lcom/google/android/gms/internal/cast/zzcj;)V
    .locals 6

    .line 227
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzcj;->zzdy()Ljava/lang/String;

    move-result-object p1

    .line 228
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyn:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 229
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyn:Ljava/lang/String;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 231
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/cast/zzct;->zzbf:Lcom/google/android/gms/internal/cast/zzdo;

    const-string v3, "hasChanged=%b, mFirstApplicationStatusUpdate=%b"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 232
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    iget-boolean v5, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyo:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    .line 233
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/cast/zzdo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzak:Lcom/google/android/gms/cast/Cast$Listener;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyo:Z

    if-eqz p1, :cond_2

    .line 235
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzak:Lcom/google/android/gms/cast/Cast$Listener;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationStatusChanged()V

    .line 236
    :cond_2
    iput-boolean v2, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyo:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzct;I)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzct;->zzt(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzct;JI)V
    .locals 0

    .line 288
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/cast/zzct;->zzb(JI)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzct;Lcom/google/android/gms/internal/cast/zzcj;)V
    .locals 0

    .line 285
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzct;->zza(Lcom/google/android/gms/internal/cast/zzcj;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzct;Lcom/google/android/gms/internal/cast/zzdb;)V
    .locals 0

    .line 284
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzct;->zza(Lcom/google/android/gms/internal/cast/zzdb;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/cast/zzdb;)V
    .locals 9

    .line 178
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzdb;->getApplicationMetadata()Lcom/google/android/gms/cast/ApplicationMetadata;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyj:Lcom/google/android/gms/cast/ApplicationMetadata;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyj:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 181
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzak:Lcom/google/android/gms/cast/Cast$Listener;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyj:Lcom/google/android/gms/cast/ApplicationMetadata;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationMetadataChanged(Lcom/google/android/gms/cast/ApplicationMetadata;)V

    .line 183
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzdb;->getVolume()D

    move-result-wide v0

    .line 184
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    iget-wide v5, p0, Lcom/google/android/gms/internal/cast/zzct;->zzfh:D

    sub-double v5, v0, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v2, v5, v7

    if-lez v2, :cond_1

    .line 185
    iput-wide v0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzfh:D

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 187
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzdb;->zzei()Z

    move-result v1

    .line 188
    iget-boolean v2, p0, Lcom/google/android/gms/internal/cast/zzct;->zzfi:Z

    if-eq v1, v2, :cond_2

    .line 189
    iput-boolean v1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzfi:Z

    const/4 v0, 0x1

    .line 191
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzdb;->zzek()D

    move-result-wide v1

    .line 192
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_3

    .line 193
    iput-wide v1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyz:D

    .line 194
    :cond_3
    sget-object v1, Lcom/google/android/gms/internal/cast/zzct;->zzbf:Lcom/google/android/gms/internal/cast/zzdo;

    const-string v2, "hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    .line 195
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    iget-boolean v7, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyp:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v3

    .line 196
    invoke-virtual {v1, v2, v6}, Lcom/google/android/gms/internal/cast/zzdo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzak:Lcom/google/android/gms/cast/Cast$Listener;

    if-eqz v1, :cond_5

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyp:Z

    if-eqz v0, :cond_5

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzak:Lcom/google/android/gms/cast/Cast$Listener;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/Cast$Listener;->onVolumeChanged()V

    .line 200
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzdb;->getActiveInputState()I

    move-result v0

    .line 201
    iget v1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzys:I

    if-eq v0, v1, :cond_6

    .line 202
    iput v0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzys:I

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    .line 204
    :goto_1
    sget-object v1, Lcom/google/android/gms/internal/cast/zzct;->zzbf:Lcom/google/android/gms/internal/cast/zzdo;

    const-string v2, "hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b"

    new-array v6, v5, [Ljava/lang/Object;

    .line 205
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    iget-boolean v7, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyp:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v3

    .line 206
    invoke-virtual {v1, v2, v6}, Lcom/google/android/gms/internal/cast/zzdo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzak:Lcom/google/android/gms/cast/Cast$Listener;

    if-eqz v1, :cond_8

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyp:Z

    if-eqz v0, :cond_8

    .line 208
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzak:Lcom/google/android/gms/cast/Cast$Listener;

    iget v1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzys:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/Cast$Listener;->onActiveInputStateChanged(I)V

    .line 210
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzdb;->getStandbyState()I

    move-result v0

    .line 211
    iget v1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyt:I

    if-eq v0, v1, :cond_9

    .line 212
    iput v0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyt:I

    const/4 v0, 0x1

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    .line 214
    :goto_2
    sget-object v1, Lcom/google/android/gms/internal/cast/zzct;->zzbf:Lcom/google/android/gms/internal/cast/zzdo;

    const-string v2, "hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b"

    new-array v5, v5, [Ljava/lang/Object;

    .line 215
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    iget-boolean v6, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyp:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v3

    .line 216
    invoke-virtual {v1, v2, v5}, Lcom/google/android/gms/internal/cast/zzdo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzak:Lcom/google/android/gms/cast/Cast$Listener;

    if-eqz v1, :cond_b

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyp:Z

    if-eqz v0, :cond_b

    .line 218
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzak:Lcom/google/android/gms/cast/Cast$Listener;

    iget v1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyt:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/Cast$Listener;->onStandbyStateChanged(I)V

    .line 220
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyr:Lcom/google/android/gms/cast/zzae;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzdb;->zzej()Lcom/google/android/gms/cast/zzae;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 222
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzdb;->zzej()Lcom/google/android/gms/cast/zzae;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyr:Lcom/google/android/gms/cast/zzae;

    .line 223
    :cond_c
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzak:Lcom/google/android/gms/cast/Cast$Listener;

    .line 224
    iput-boolean v4, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyp:Z

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/cast/zzct;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyw:Ljava/lang/String;

    return-object p1
.end method

.method private final zzb(JI)V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyy:Ljava/util/Map;

    monitor-enter v0

    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyy:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    .line 249
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 251
    new-instance p2, Lcom/google/android/gms/common/api/Status;

    invoke-direct {p2, p3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, p2}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 249
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic zzbb()Lcom/google/android/gms/internal/cast/zzdo;
    .locals 1

    .line 274
    sget-object v0, Lcom/google/android/gms/internal/cast/zzct;->zzbf:Lcom/google/android/gms/internal/cast/zzdo;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/cast/zzct;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyn:Ljava/lang/String;

    return-object p1
.end method

.method private final zzc(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .line 118
    sget-object v0, Lcom/google/android/gms/internal/cast/zzct;->zzzd:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzzb:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    if-eqz v1, :cond_0

    .line 120
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x7d1

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    .line 121
    monitor-exit v0

    return-void

    .line 122
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzzb:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    .line 123
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/cast/zzct;)V
    .locals 0

    .line 273
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzct;->zzeb()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/cast/zzct;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzza:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/cast/zzct;)Lcom/google/android/gms/cast/Cast$Listener;
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzak:Lcom/google/android/gms/cast/Cast$Listener;

    return-object p0
.end method

.method private final zzeb()V
    .locals 4

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyq:Z

    const/4 v1, -0x1

    .line 13
    iput v1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzys:I

    .line 14
    iput v1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyt:I

    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyj:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 16
    iput-object v1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyn:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 17
    iput-wide v2, p0, Lcom/google/android/gms/internal/cast/zzct;->zzfh:D

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzct;->zzee()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyz:D

    .line 19
    iput-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzfi:Z

    .line 20
    iput-object v1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyr:Lcom/google/android/gms/cast/zzae;

    return-void
.end method

.method private final zzec()V
    .locals 3

    .line 174
    sget-object v0, Lcom/google/android/gms/internal/cast/zzct;->zzbf:Lcom/google/android/gms/internal/cast/zzdo;

    const-string v1, "removing all MessageReceivedCallbacks"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzdo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyk:Ljava/util/Map;

    monitor-enter v0

    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyk:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 177
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final zzed()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyq:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzym:Lcom/google/android/gms/internal/cast/zzcv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzcv;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzee()D
    .locals 6

    .line 239
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzit:Lcom/google/android/gms/cast/CastDevice;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/CastDevice;->hasCapability(I)Z

    move-result v0

    const-wide v1, 0x3f947ae147ae147bL    # 0.02

    if-eqz v0, :cond_0

    return-wide v1

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzit:Lcom/google/android/gms/cast/CastDevice;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/google/android/gms/cast/CastDevice;->hasCapability(I)Z

    move-result v0

    const-wide v3, 0x3fa999999999999aL    # 0.05

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzit:Lcom/google/android/gms/cast/CastDevice;

    const/4 v5, 0x1

    .line 242
    invoke-virtual {v0, v5}, Lcom/google/android/gms/cast/CastDevice;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Chromecast Audio"

    .line 243
    iget-object v5, p0, Lcom/google/android/gms/internal/cast/zzct;->zzit:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v5}, Lcom/google/android/gms/cast/CastDevice;->getModelName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-wide v3

    :cond_1
    return-wide v1

    :cond_2
    return-wide v3
.end method

.method static synthetic zzef()Ljava/lang/Object;
    .locals 1

    .line 279
    sget-object v0, Lcom/google/android/gms/internal/cast/zzct;->zzzc:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/cast/zzct;)Ljava/util/Map;
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyk:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/cast/zzct;)Lcom/google/android/gms/cast/CastDevice;
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzit:Lcom/google/android/gms/cast/CastDevice;

    return-object p0
.end method

.method private final zzt(I)V
    .locals 3

    .line 258
    sget-object v0, Lcom/google/android/gms/internal/cast/zzct;->zzzd:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzzb:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzzb:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 261
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzzb:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    .line 262
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method protected final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    .line 268
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 269
    instance-of v1, v0, Lcom/google/android/gms/internal/cast/zzdf;

    if-eqz v1, :cond_1

    .line 270
    check-cast v0, Lcom/google/android/gms/internal/cast/zzdf;

    return-object v0

    .line 271
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzdi;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/cast/zzdi;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final disconnect()V
    .locals 6

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/cast/zzct;->zzbf:Lcom/google/android/gms/internal/cast/zzdo;

    const-string v1, "disconnect(); ServiceListener=%s, isConnected=%b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzct;->zzym:Lcom/google/android/gms/internal/cast/zzcv;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzdo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzym:Lcom/google/android/gms/internal/cast/zzcv;

    const/4 v1, 0x0

    .line 37
    iput-object v1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzym:Lcom/google/android/gms/internal/cast/zzcv;

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzcv;->zzeh()Lcom/google/android/gms/internal/cast/zzct;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 41
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzct;->zzec()V

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzdf;

    .line 43
    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzdf;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-super {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 47
    :try_start_1
    sget-object v1, Lcom/google/android/gms/internal/cast/zzct;->zzbf:Lcom/google/android/gms/internal/cast/zzdo;

    const-string v2, "Error while disconnecting the controller interface: %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/cast/zzdo;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    invoke-super {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    return-void

    .line 50
    :goto_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    throw v0

    .line 39
    :cond_1
    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzct;->zzbf:Lcom/google/android/gms/internal/cast/zzdo;

    const-string v1, "already disposed, so short-circuiting"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzdo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final getActiveInputState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkConnected()V

    .line 143
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzys:I

    return v0
.end method

.method public final getApplicationMetadata()Lcom/google/android/gms/cast/ApplicationMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkConnected()V

    .line 168
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyj:Lcom/google/android/gms/cast/ApplicationMetadata;

    return-object v0
.end method

.method public final getApplicationStatus()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkConnected()V

    .line 170
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyn:Ljava/lang/String;

    return-object v0
.end method

.method public final getConnectionHint()Landroid/os/Bundle;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyx:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyx:Landroid/os/Bundle;

    return-object v0

    .line 55
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getConnectionHint()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .locals 6

    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    sget-object v1, Lcom/google/android/gms/internal/cast/zzct;->zzbf:Lcom/google/android/gms/internal/cast/zzdo;

    const-string v2, "getRemoteService(): mLastApplicationId=%s, mLastSessionId=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyv:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyw:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/cast/zzdo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzit:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/CastDevice;->putInBundle(Landroid/os/Bundle;)V

    const-string v1, "com.google.android.gms.cast.EXTRA_CAST_FLAGS"

    .line 61
    iget-wide v2, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyl:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 62
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzct;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 64
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/cast/zzcv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cast/zzcv;-><init>(Lcom/google/android/gms/internal/cast/zzct;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzym:Lcom/google/android/gms/internal/cast/zzcv;

    const-string v1, "listener"

    .line 65
    new-instance v2, Lcom/google/android/gms/common/internal/BinderWrapper;

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzct;->zzym:Lcom/google/android/gms/internal/cast/zzcv;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/zza;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/internal/BinderWrapper;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 66
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyv:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "last_application_id"

    .line 67
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyw:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "last_session_id"

    .line 69
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public final getMinApkVersion()I
    .locals 1

    const v0, 0xc35000

    return v0
.end method

.method protected final getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    return-object v0
.end method

.method public final getStandbyState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkConnected()V

    .line 145
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyt:I

    return v0
.end method

.method protected final getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.cast.service.BIND_CAST_DEVICE_CONTROLLER_SERVICE"

    return-object v0
.end method

.method public final getVolume()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkConnected()V

    .line 139
    iget-wide v0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzfh:D

    return-wide v0
.end method

.method public final isMute()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkConnected()V

    .line 141
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzfi:Z

    return v0
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    .line 171
    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 172
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzct;->zzec()V

    return-void
.end method

.method protected final onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 6

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/cast/zzct;->zzbf:Lcom/google/android/gms/internal/cast/zzdo;

    const-string v1, "in onPostInitHandler; statusCode=%d"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/cast/zzdo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x3e9

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    iput-boolean v5, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyq:Z

    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyq:Z

    .line 25
    iput-boolean v2, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyo:Z

    .line 26
    iput-boolean v2, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyp:Z

    :goto_1
    if-ne p1, v0, :cond_2

    .line 30
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyx:Landroid/os/Bundle;

    .line 31
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyx:Landroid/os/Bundle;

    const-string v0, "com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 33
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void
.end method

.method public final removeMessageReceivedCallbacks(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyk:Ljava/util/Map;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyk:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;

    .line 160
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 162
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzdf;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/cast/zzdf;->zzu(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 165
    sget-object v1, Lcom/google/android/gms/internal/cast/zzct;->zzbf:Lcom/google/android/gms/internal/cast/zzdo;

    const-string v2, "Error unregistering namespace (%s): %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/cast/zzdo;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 160
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 157
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Channel namespace cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final requestStatus()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzdf;

    .line 125
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzct;->zzed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzdf;->requestStatus()V

    :cond_0
    return-void
.end method

.method public final setMessageReceivedCallbacks(Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzdc;->zzq(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzct;->removeMessageReceivedCallbacks(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 149
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyk:Ljava/util/Map;

    monitor-enter v0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyk:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/cast/zzdf;

    .line 153
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzct;->zzed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/cast/zzdf;->zzt(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 151
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public final setMute(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzdf;

    .line 135
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzct;->zzed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iget-wide v1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzfh:D

    iget-boolean v3, p0, Lcom/google/android/gms/internal/cast/zzct;->zzfi:Z

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/google/android/gms/internal/cast/zzdf;->zza(ZDZ)V

    :cond_0
    return-void
.end method

.method public final setVolume(D)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/cast/zzdf;

    .line 131
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzct;->zzed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-wide v4, p0, Lcom/google/android/gms/internal/cast/zzct;->zzfh:D

    iget-boolean v6, p0, Lcom/google/android/gms/internal/cast/zzct;->zzfi:Z

    move-wide v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/cast/zzdf;->zza(DDZ)V

    :cond_0
    return-void

    .line 129
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Volume cannot be "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/cast/LaunchOptions;",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/cast/zzct;->zza(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 88
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/cast/zzdf;

    .line 89
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzct;->zzed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/internal/cast/zzdf;->zzb(Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)V

    return-void

    :cond_0
    const/16 p1, 0x7e0

    .line 91
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzct;->zzs(I)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/cast/zzct;->zzc(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 113
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/cast/zzdf;

    .line 114
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzct;->zzed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/cast/zzdf;->zzj(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 p1, 0x7e0

    .line 116
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzct;->zzt(I)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/zzah;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/cast/zzah;",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/cast/zzct;->zza(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    if-nez p3, :cond_0

    .line 95
    new-instance p3, Lcom/google/android/gms/cast/zzah;

    invoke-direct {p3}, Lcom/google/android/gms/cast/zzah;-><init>()V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/cast/zzdf;

    .line 97
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzct;->zzed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/gms/internal/cast/zzdf;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/zzah;)V

    return-void

    :cond_1
    const/16 p1, 0x7e0

    .line 99
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzct;->zzs(I)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/high16 v1, 0x80000

    if-gt v0, v1, :cond_1

    .line 76
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzdc;->zzq(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyu:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 78
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyy:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/cast/zzdf;

    .line 80
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzct;->zzed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    invoke-interface {p3, p1, p2, v0, v1}, Lcom/google/android/gms/internal/cast/zzdf;->zza(Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_0
    const/16 p1, 0x7e0

    .line 82
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/cast/zzct;->zzb(JI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 85
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzct;->zzyy:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    throw p1

    .line 74
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/cast/zzct;->zzbf:Lcom/google/android/gms/internal/cast/zzdo;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "Message send failed. Message exceeds maximum size"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/cast/zzdo;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Message exceeds maximum size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The message payload cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzct;->zzc(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 107
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/cast/zzdf;

    .line 108
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzct;->zzed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {p1}, Lcom/google/android/gms/internal/cast/zzdf;->zzel()V

    return-void

    :cond_0
    const/16 p1, 0x7e0

    .line 110
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzct;->zzt(I)V

    return-void
.end method

.method public final zzs(I)V
    .locals 4

    .line 253
    sget-object v0, Lcom/google/android/gms/internal/cast/zzct;->zzzc:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzza:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzza:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    new-instance v2, Lcom/google/android/gms/internal/cast/zzcw;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v3, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/cast/zzcw;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 256
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzct;->zzza:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    .line 257
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
