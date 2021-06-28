.class final Lcom/google/android/gms/tagmanager/zzdg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzej;


# instance fields
.field private final zzabf:J

.field private final zzabg:I

.field private zzabh:D

.field private zzabi:J

.field private final zzabj:Ljava/lang/Object;

.field private final zzaia:J

.field private final zzsd:Lcom/google/android/gms/common/util/Clock;

.field private final zzup:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIJJLjava/lang/String;Lcom/google/android/gms/common/util/Clock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzabj:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 3
    iput p1, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzabg:I

    const/4 p2, 0x1

    .line 4
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-double p1, p1

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzabh:D

    const-wide/32 p1, 0xdbba0

    .line 5
    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzabf:J

    const-wide/16 p1, 0x1388

    .line 6
    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzaia:J

    .line 7
    iput-object p7, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzup:Ljava/lang/String;

    .line 8
    iput-object p8, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzsd:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method


# virtual methods
.method public final zzfm()Z
    .locals 10

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzabj:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzsd:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 12
    iget-wide v3, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzabi:J

    sub-long v3, v1, v3

    iget-wide v5, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzaia:J

    const/4 v7, 0x0

    cmp-long v8, v3, v5

    if-gez v8, :cond_0

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzup:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Excessive "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " detected; call ignored."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzdi;->zzac(Ljava/lang/String;)V

    .line 14
    monitor-exit v0

    return v7

    .line 15
    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzabh:D

    iget v5, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzabg:I

    int-to-double v5, v5

    cmpg-double v8, v3, v5

    if-gez v8, :cond_1

    .line 16
    iget-wide v3, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzabi:J

    sub-long v3, v1, v3

    long-to-double v3, v3

    .line 17
    iget-wide v5, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzabf:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-double v5, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    const-wide/16 v5, 0x0

    cmpl-double v8, v3, v5

    if-lez v8, :cond_1

    .line 19
    :try_start_1
    iget v5, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzabg:I

    int-to-double v5, v5

    iget-wide v8, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzabh:D

    add-double/2addr v8, v3

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzabh:D

    .line 20
    :cond_1
    iput-wide v1, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzabi:J

    .line 21
    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzabh:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_2

    .line 22
    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzabh:D

    sub-double/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzabh:D

    const/4 v1, 0x1

    .line 23
    monitor-exit v0

    return v1

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzup:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Excessive "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " detected; call ignored."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzdi;->zzac(Ljava/lang/String;)V

    .line 25
    monitor-exit v0

    return v7

    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
