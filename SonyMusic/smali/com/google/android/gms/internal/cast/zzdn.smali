.class public final Lcom/google/android/gms/internal/cast/zzdn;
.super Lcom/google/android/gms/internal/cast/zzco;


# static fields
.field public static final NAMESPACE:Ljava/lang/String;


# instance fields
.field private zzaab:J

.field private zzaac:Lcom/google/android/gms/cast/MediaStatus;

.field private zzaad:Ljava/lang/Long;

.field private zzaae:Lcom/google/android/gms/internal/cast/zzdp;

.field private final zzaaf:Lcom/google/android/gms/internal/cast/zzdt;

.field private final zzaag:Lcom/google/android/gms/internal/cast/zzdt;

.field private final zzaah:Lcom/google/android/gms/internal/cast/zzdt;

.field private final zzaai:Lcom/google/android/gms/internal/cast/zzdt;

.field private final zzaaj:Lcom/google/android/gms/internal/cast/zzdt;

.field private final zzaak:Lcom/google/android/gms/internal/cast/zzdt;

.field private final zzaal:Lcom/google/android/gms/internal/cast/zzdt;

.field private final zzaam:Lcom/google/android/gms/internal/cast/zzdt;

.field private final zzaan:Lcom/google/android/gms/internal/cast/zzdt;

.field private final zzaao:Lcom/google/android/gms/internal/cast/zzdt;

.field private final zzaap:Lcom/google/android/gms/internal/cast/zzdt;

.field private final zzaaq:Lcom/google/android/gms/internal/cast/zzdt;

.field private final zzaar:Lcom/google/android/gms/internal/cast/zzdt;

.field private final zzaas:Lcom/google/android/gms/internal/cast/zzdt;

.field private final zzaat:Lcom/google/android/gms/internal/cast/zzdt;

.field private final zzaau:Lcom/google/android/gms/internal/cast/zzdt;

.field private final zzaav:Lcom/google/android/gms/internal/cast/zzdt;

.field private final zzaaw:Lcom/google/android/gms/internal/cast/zzdt;

.field private final zzaax:Lcom/google/android/gms/internal/cast/zzdt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.google.cast.media"

    .line 656
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzdc;->zzr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/cast/zzdn;->NAMESPACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/cast/zzdn;->NAMESPACE:Ljava/lang/String;

    const-string v0, "MediaControlChannel"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzco;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdt;

    const-wide/32 v0, 0x5265c00

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdt;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaaf:Lcom/google/android/gms/internal/cast/zzdt;

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdt;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdt;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaag:Lcom/google/android/gms/internal/cast/zzdt;

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdt;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdt;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaah:Lcom/google/android/gms/internal/cast/zzdt;

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdt;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdt;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaai:Lcom/google/android/gms/internal/cast/zzdt;

    .line 6
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdt;

    const-wide/16 v2, 0x2710

    invoke-direct {p1, v2, v3}, Lcom/google/android/gms/internal/cast/zzdt;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaaj:Lcom/google/android/gms/internal/cast/zzdt;

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdt;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdt;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaak:Lcom/google/android/gms/internal/cast/zzdt;

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdt;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdt;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaal:Lcom/google/android/gms/internal/cast/zzdt;

    .line 9
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdt;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdt;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaam:Lcom/google/android/gms/internal/cast/zzdt;

    .line 10
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdt;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdt;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaan:Lcom/google/android/gms/internal/cast/zzdt;

    .line 11
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdt;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdt;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaao:Lcom/google/android/gms/internal/cast/zzdt;

    .line 12
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdt;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdt;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaap:Lcom/google/android/gms/internal/cast/zzdt;

    .line 13
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdt;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdt;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaaq:Lcom/google/android/gms/internal/cast/zzdt;

    .line 14
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdt;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdt;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaar:Lcom/google/android/gms/internal/cast/zzdt;

    .line 15
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdt;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdt;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaas:Lcom/google/android/gms/internal/cast/zzdt;

    .line 16
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdt;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdt;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaat:Lcom/google/android/gms/internal/cast/zzdt;

    .line 17
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdt;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdt;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaav:Lcom/google/android/gms/internal/cast/zzdt;

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdt;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdt;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaau:Lcom/google/android/gms/internal/cast/zzdt;

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdt;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdt;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaaw:Lcom/google/android/gms/internal/cast/zzdt;

    .line 20
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdt;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdt;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaax:Lcom/google/android/gms/internal/cast/zzdt;

    .line 21
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaaf:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzco;->zza(Lcom/google/android/gms/internal/cast/zzdt;)V

    .line 22
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaag:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzco;->zza(Lcom/google/android/gms/internal/cast/zzdt;)V

    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaah:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzco;->zza(Lcom/google/android/gms/internal/cast/zzdt;)V

    .line 24
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaai:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzco;->zza(Lcom/google/android/gms/internal/cast/zzdt;)V

    .line 25
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaaj:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzco;->zza(Lcom/google/android/gms/internal/cast/zzdt;)V

    .line 26
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaak:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzco;->zza(Lcom/google/android/gms/internal/cast/zzdt;)V

    .line 27
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaal:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzco;->zza(Lcom/google/android/gms/internal/cast/zzdt;)V

    .line 28
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaam:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzco;->zza(Lcom/google/android/gms/internal/cast/zzdt;)V

    .line 29
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaan:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzco;->zza(Lcom/google/android/gms/internal/cast/zzdt;)V

    .line 30
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaao:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzco;->zza(Lcom/google/android/gms/internal/cast/zzdt;)V

    .line 31
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaap:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzco;->zza(Lcom/google/android/gms/internal/cast/zzdt;)V

    .line 32
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaaq:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzco;->zza(Lcom/google/android/gms/internal/cast/zzdt;)V

    .line 33
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaar:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzco;->zza(Lcom/google/android/gms/internal/cast/zzdt;)V

    .line 34
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaas:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzco;->zza(Lcom/google/android/gms/internal/cast/zzdt;)V

    .line 35
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaat:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzco;->zza(Lcom/google/android/gms/internal/cast/zzdt;)V

    .line 36
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaav:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzco;->zza(Lcom/google/android/gms/internal/cast/zzdt;)V

    .line 37
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaav:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzco;->zza(Lcom/google/android/gms/internal/cast/zzdt;)V

    .line 38
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaaw:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzco;->zza(Lcom/google/android/gms/internal/cast/zzdt;)V

    .line 39
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaax:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzco;->zza(Lcom/google/android/gms/internal/cast/zzdt;)V

    .line 40
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdn;->zzem()V

    return-void
.end method

.method private final onMetadataUpdated()V
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaae:Lcom/google/android/gms/internal/cast/zzdp;

    if-eqz v0, :cond_0

    .line 633
    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzdp;->onMetadataUpdated()V

    :cond_0
    return-void
.end method

.method private final onPreloadStatusUpdated()V
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaae:Lcom/google/android/gms/internal/cast/zzdp;

    if-eqz v0, :cond_0

    .line 639
    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzdp;->onPreloadStatusUpdated()V

    :cond_0
    return-void
.end method

.method private final onQueueStatusUpdated()V
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaae:Lcom/google/android/gms/internal/cast/zzdp;

    if-eqz v0, :cond_0

    .line 636
    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzdp;->onQueueStatusUpdated()V

    :cond_0
    return-void
.end method

.method private final onStatusUpdated()V
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaae:Lcom/google/android/gms/internal/cast/zzdp;

    if-eqz v0, :cond_0

    .line 630
    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzdp;->onStatusUpdated()V

    :cond_0
    return-void
.end method

.method private final zza(DJJ)J
    .locals 5

    .line 297
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaab:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    return-wide p3

    :cond_1
    long-to-double v0, v0

    .line 302
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    double-to-long p1, v0

    add-long/2addr p1, p3

    cmp-long p3, p5, v2

    if-lez p3, :cond_2

    cmp-long p3, p1, p5

    if-lez p3, :cond_2

    move-wide p1, p5

    goto :goto_0

    :cond_2
    cmp-long p3, p1, v2

    if-gez p3, :cond_3

    move-wide p1, v2

    :cond_3
    :goto_0
    return-wide p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzdn;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    const/4 p1, 0x0

    .line 655
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaad:Ljava/lang/Long;

    return-object p1
.end method

.method private static zza(Ljava/lang/String;Ljava/util/List;J)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/zzbv;",
            ">;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 495
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "requestId"

    .line 496
    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "type"

    const-string p3, "PRECACHE"

    .line 497
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p0, :cond_0

    const-string p2, "precacheData"

    .line 499
    invoke-virtual {v0, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-eqz p1, :cond_2

    .line 500
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    .line 501
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    const/4 p2, 0x0

    .line 502
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 503
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/cast/zzbv;

    invoke-virtual {p3}, Lcom/google/android/gms/cast/zzbv;->toJson()Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "requestItems"

    .line 505
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :catch_0
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zzb(Lorg/json/JSONArray;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 621
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 622
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 623
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final zzem()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 641
    iput-wide v0, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaab:J

    const/4 v0, 0x0

    .line 642
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaac:Lcom/google/android/gms/cast/MediaStatus;

    .line 643
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzco;->zzea()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/cast/zzdt;

    const/16 v2, 0x7d2

    .line 644
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/cast/zzdt;->zzx(I)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzk()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/cast/zzds;
        }
    .end annotation

    .line 626
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaac:Lcom/google/android/gms/cast/MediaStatus;

    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->zzk()J

    move-result-wide v0

    return-wide v0

    .line 627
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/cast/zzds;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzds;-><init>()V

    throw v0
.end method


# virtual methods
.method public final getApproximateAdBreakClipPositionMs()J
    .locals 13

    .line 281
    iget-wide v0, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaab:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaac:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v0, :cond_0

    goto :goto_1

    .line 283
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getAdBreakStatus()Lcom/google/android/gms/cast/AdBreakStatus;

    move-result-object v0

    if-nez v0, :cond_1

    return-wide v2

    .line 286
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaac:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getCurrentAdBreakClip()Lcom/google/android/gms/cast/AdBreakClipInfo;

    move-result-object v1

    if-nez v1, :cond_2

    return-wide v2

    .line 290
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaac:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaStatus;->getPlaybackRate()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaac:Lcom/google/android/gms/cast/MediaStatus;

    .line 291
    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-wide v7, v4

    goto :goto_0

    :cond_3
    move-wide v7, v4

    .line 294
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/AdBreakStatus;->getCurrentBreakClipTimeInMs()J

    move-result-wide v9

    .line 295
    invoke-virtual {v1}, Lcom/google/android/gms/cast/AdBreakClipInfo;->getDurationInMs()J

    move-result-wide v11

    move-object v6, p0

    .line 296
    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/cast/zzdn;->zza(DJJ)J

    move-result-wide v0

    return-wide v0

    :cond_4
    :goto_1
    return-wide v2
.end method

.method public final getApproximateLiveSeekableRangeEnd()J
    .locals 10

    .line 270
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaac:Lcom/google/android/gms/cast/MediaStatus;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 272
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getLiveSeekableRange()Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    move-result-object v0

    if-nez v0, :cond_1

    return-wide v1

    .line 275
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->getEndTime()J

    move-result-wide v6

    .line 277
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->isLiveDone()Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, -0x1

    move-object v3, p0

    .line 279
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/cast/zzdn;->zza(DJJ)J

    move-result-wide v6

    :cond_2
    return-wide v6
.end method

.method public final getApproximateLiveSeekableRangeStart()J
    .locals 10

    .line 257
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaac:Lcom/google/android/gms/cast/MediaStatus;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 259
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getLiveSeekableRange()Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    move-result-object v0

    if-nez v0, :cond_1

    return-wide v1

    .line 262
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->getStartTime()J

    move-result-wide v6

    .line 264
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->isMovingWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, -0x1

    move-object v3, p0

    .line 266
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/cast/zzdn;->zza(DJJ)J

    move-result-wide v6

    .line 267
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->isLiveDone()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 268
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->getEndTime()J

    move-result-wide v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :cond_3
    return-wide v6
.end method

.method public final getApproximateStreamPosition()J
    .locals 9

    .line 237
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzdn;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 240
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaad:Ljava/lang/Long;

    if-eqz v3, :cond_3

    const-wide v4, 0x3e800000000L

    .line 241
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaac:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getLiveSeekableRange()Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaad:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzdn;->getApproximateLiveSeekableRangeEnd()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 244
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzdn;->getStreamDuration()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-ltz v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaad:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzdn;->getStreamDuration()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaad:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 247
    :cond_3
    iget-wide v3, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaab:J

    cmp-long v5, v3, v1

    if-nez v5, :cond_4

    return-wide v1

    .line 249
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaac:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getPlaybackRate()D

    move-result-wide v3

    .line 250
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaac:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getStreamPosition()J

    move-result-wide v5

    .line 251
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaac:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v1

    const-wide/16 v7, 0x0

    cmpl-double v2, v3, v7

    if-eqz v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    goto :goto_0

    .line 255
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    move-result-wide v7

    move-object v2, p0

    .line 256
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/cast/zzdn;->zza(DJJ)J

    move-result-wide v0

    return-wide v0

    :cond_6
    :goto_0
    return-wide v5
.end method

.method public final getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaac:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaac:Lcom/google/android/gms/cast/MediaStatus;

    return-object v0
.end method

.method public final getStreamDuration()J
    .locals 2

    .line 308
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzdn;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdu;)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzds;
        }
    .end annotation

    .line 137
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 138
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcu;->zzeg()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 139
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "SKIP_AD"

    .line 140
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    .line 141
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdn;->zzk()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 144
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzcu;->zzze:Lcom/google/android/gms/internal/cast/zzdo;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v6, "Error creating SkipAd message: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/internal/cast/zzdo;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/cast/zzcu;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaax:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdt;->zza(JLcom/google/android/gms/internal/cast/zzdu;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdu;DLorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzds;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 148
    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 151
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcu;->zzeg()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 152
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "SET_VOLUME"

    .line 153
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    .line 154
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdn;->zzk()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 155
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "level"

    .line 156
    invoke-virtual {v3, v4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p2, "volume"

    .line 157
    invoke-virtual {v0, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p4, :cond_0

    const-string p2, "customData"

    .line 159
    invoke-virtual {v0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p2, v1, v2, p3}, Lcom/google/android/gms/internal/cast/zzcu;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 163
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaak:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdt;->zza(JLcom/google/android/gms/internal/cast/zzdu;)V

    return-wide v1

    .line 149
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p4, 0x29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p4, "Volume cannot be "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdu;III)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/cast/zzds;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-lez p3, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    if-nez p3, :cond_4

    if-lez p4, :cond_4

    .line 462
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 463
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcu;->zzeg()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 464
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "QUEUE_GET_ITEM_RANGE"

    .line 465
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    .line 466
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdn;->zzk()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "itemId"

    .line 467
    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-lez p3, :cond_2

    const-string p2, "nextCount"

    .line 469
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    if-lez p4, :cond_3

    const-string p2, "prevCount"

    .line 471
    invoke-virtual {v0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :catch_0
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p2, v1, v2, p3}, Lcom/google/android/gms/internal/cast/zzcu;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 475
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaav:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdt;->zza(JLcom/google/android/gms/internal/cast/zzdu;)V

    return-wide v1

    .line 461
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Exactly one of nextCount and prevCount must be positive and the other must be zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdu;IJ[Lcom/google/android/gms/cast/MediaQueueItem;ILjava/lang/Integer;Lorg/json/JSONObject;)J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzds;
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p2

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p8

    const-wide/16 v7, -0x1

    cmp-long v9, v2, v7

    if-eqz v9, :cond_1

    const-wide/16 v9, 0x0

    cmp-long v11, v2, v9

    if-ltz v11, :cond_0

    goto :goto_0

    .line 380
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/16 v4, 0x35

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "playPosition cannot be negative: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 381
    :cond_1
    :goto_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 382
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcu;->zzeg()J

    move-result-wide v10

    :try_start_0
    const-string v12, "requestId"

    .line 383
    invoke-virtual {v9, v12, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v12, "type"

    const-string v13, "QUEUE_UPDATE"

    .line 384
    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "mediaSessionId"

    .line 385
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdn;->zzk()J

    move-result-wide v13

    invoke-virtual {v9, v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    const-string v12, "currentItemId"

    .line 387
    invoke-virtual {v9, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    if-eqz v5, :cond_3

    const-string v1, "jump"

    .line 389
    invoke-virtual {v9, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    if-eqz v4, :cond_5

    .line 390
    array-length v1, v4

    if-lez v1, :cond_5

    .line 391
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    .line 392
    :goto_1
    array-length v12, v4

    if-ge v5, v12, :cond_4

    .line 393
    aget-object v12, v4, v5

    invoke-virtual {v12}, Lcom/google/android/gms/cast/MediaQueueItem;->toJson()Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v1, v5, v12}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    const-string v4, "items"

    .line 395
    invoke-virtual {v9, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 396
    :cond_5
    invoke-static/range {p7 .. p7}, Lcom/google/android/gms/internal/cast/zzdv;->zza(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v4, "repeatMode"

    .line 398
    invoke-virtual {v9, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    cmp-long v1, v2, v7

    if-eqz v1, :cond_7

    const-string v1, "currentTime"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 401
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    .line 402
    :try_start_1
    invoke-virtual {v9, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_7
    if-eqz v6, :cond_8

    const-string v1, "customData"

    .line 404
    invoke-virtual {v9, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 407
    :catch_0
    :cond_8
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v10, v11, v2}, Lcom/google/android/gms/internal/cast/zzcu;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 408
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/zzdn;->zzaaq:Lcom/google/android/gms/internal/cast/zzdt;

    move-object/from16 v2, p1

    invoke-virtual {v1, v10, v11, v2}, Lcom/google/android/gms/internal/cast/zzdt;->zza(JLcom/google/android/gms/internal/cast/zzdu;)V

    return-wide v10
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdu;Lcom/google/android/gms/cast/MediaLoadRequestData;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 44
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaLoadRequestData;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaLoadRequestData;->getQueueData()Lcom/google/android/gms/cast/MediaQueueData;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MediaInfo and MediaQueueData should not be both null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_1
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcu;->zzeg()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 48
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "LOAD"

    .line 49
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaLoadRequestData;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "media"

    .line 51
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaLoadRequestData;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/cast/MediaInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    :cond_2
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaLoadRequestData;->getQueueData()Lcom/google/android/gms/cast/MediaQueueData;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v3, "queueData"

    .line 53
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaLoadRequestData;->getQueueData()Lcom/google/android/gms/cast/MediaQueueData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/cast/MediaQueueData;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaLoadRequestData;->getAutoplay()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v3, "autoplay"

    .line 55
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaLoadRequestData;->getAutoplay()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    :cond_4
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaLoadRequestData;->getCurrentTime()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_5

    const-string v3, "currentTime"

    .line 57
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaLoadRequestData;->getCurrentTime()J

    move-result-wide v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 58
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    .line 59
    :try_start_1
    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_5
    const-string v3, "playbackRate"

    .line 60
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaLoadRequestData;->getPlaybackRate()D

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 61
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaLoadRequestData;->getCredentials()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string v3, "credentials"

    .line 62
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaLoadRequestData;->getCredentials()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    :cond_6
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaLoadRequestData;->getCredentialsType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    const-string v3, "credentialsType"

    .line 64
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaLoadRequestData;->getCredentialsType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    :cond_7
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaLoadRequestData;->getActiveTrackIds()[J

    move-result-object v3

    if-eqz v3, :cond_9

    .line 67
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    .line 68
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_8

    .line 69
    aget-wide v6, v3, v5

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    const-string v3, "activeTrackIds"

    .line 71
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    :cond_9
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaLoadRequestData;->getCustomData()Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_a

    const-string v3, "customData"

    .line 74
    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    :catch_0
    :cond_a
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/google/android/gms/internal/cast/zzcu;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 78
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaaf:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdt;->zza(JLcom/google/android/gms/internal/cast/zzdu;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdu;Lcom/google/android/gms/cast/MediaSeekOptions;)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzds;
        }
    .end annotation

    .line 116
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 117
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcu;->zzeg()J

    move-result-wide v1

    .line 118
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaSeekOptions;->isSeekToInfinite()Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide v3, 0x3e800000000L

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaSeekOptions;->getPosition()J

    move-result-wide v3

    :goto_0
    :try_start_0
    const-string v5, "requestId"

    .line 119
    invoke-virtual {v0, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "type"

    const-string v6, "SEEK"

    .line 120
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "mediaSessionId"

    .line 121
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdn;->zzk()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "currentTime"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-double v6, v3

    const-wide v8, 0x408f400000000000L    # 1000.0

    .line 123
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    .line 124
    :try_start_1
    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 125
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaSeekOptions;->getResumeState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    const-string v5, "resumeState"

    const-string v6, "PLAYBACK_START"

    .line 126
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 127
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaSeekOptions;->getResumeState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    const-string v5, "resumeState"

    const-string v6, "PLAYBACK_PAUSE"

    .line 128
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    :cond_2
    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaSeekOptions;->getCustomData()Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v5, "customData"

    .line 130
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaSeekOptions;->getCustomData()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 133
    :catch_0
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/google/android/gms/internal/cast/zzcu;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 134
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaad:Ljava/lang/Long;

    .line 135
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaaj:Lcom/google/android/gms/internal/cast/zzdt;

    new-instance v0, Lcom/google/android/gms/internal/cast/zzdq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/cast/zzdq;-><init>(Lcom/google/android/gms/internal/cast/zzdn;Lcom/google/android/gms/internal/cast/zzdu;)V

    invoke-virtual {p2, v1, v2, v0}, Lcom/google/android/gms/internal/cast/zzdt;->zza(JLcom/google/android/gms/internal/cast/zzdu;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdu;Lcom/google/android/gms/cast/TextTrackStyle;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzds;
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 225
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 226
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcu;->zzeg()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 227
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "EDIT_TRACKS_INFO"

    .line 228
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string v3, "textTrackStyle"

    .line 230
    invoke-virtual {p2}, Lcom/google/android/gms/cast/TextTrackStyle;->toJson()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p2, "mediaSessionId"

    .line 231
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdn;->zzk()J

    move-result-wide v3

    invoke-virtual {v0, p2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/google/android/gms/internal/cast/zzcu;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 235
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaao:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdt;->zza(JLcom/google/android/gms/internal/cast/zzdu;)V

    return-wide v1

    .line 224
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "trackStyle cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdu;Lorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzds;
        }
    .end annotation

    .line 80
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcu;->zzeg()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 82
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "PAUSE"

    .line 83
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    .line 84
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdn;->zzk()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string v3, "customData"

    .line 86
    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/google/android/gms/internal/cast/zzcu;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 90
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaag:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdt;->zza(JLcom/google/android/gms/internal/cast/zzdu;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdu;ZLorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzds;
        }
    .end annotation

    .line 165
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 166
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcu;->zzeg()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 167
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "SET_VOLUME"

    .line 168
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    .line 169
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdn;->zzk()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 170
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "muted"

    .line 171
    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "volume"

    .line 172
    invoke-virtual {v0, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    const-string p2, "customData"

    .line 174
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p2, v1, v2, p3}, Lcom/google/android/gms/internal/cast/zzcu;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 178
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaal:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdt;->zza(JLcom/google/android/gms/internal/cast/zzdu;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdu;[I)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/cast/zzds;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 477
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 478
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcu;->zzeg()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 479
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "QUEUE_GET_ITEMS"

    .line 480
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    .line 481
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdn;->zzk()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 482
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 483
    array-length v4, p2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget v6, p2, v5

    .line 484
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "itemIds"

    .line 486
    invoke-virtual {v0, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/google/android/gms/internal/cast/zzcu;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 490
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaau:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdt;->zza(JLcom/google/android/gms/internal/cast/zzdu;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdu;[IILorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzds;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 429
    array-length v0, p2

    if-eqz v0, :cond_3

    .line 431
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 432
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcu;->zzeg()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 433
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "QUEUE_REORDER"

    .line 434
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    .line 435
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdn;->zzk()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 436
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    .line 437
    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_0

    .line 438
    aget v5, p2, v4

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "itemIds"

    .line 440
    invoke-virtual {v0, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_1

    const-string p2, "insertBefore"

    .line 442
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    if-eqz p4, :cond_2

    const-string p2, "customData"

    .line 444
    invoke-virtual {v0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :catch_0
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p2, v1, v2, p3}, Lcom/google/android/gms/internal/cast/zzcu;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 448
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaas:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdt;->zza(JLcom/google/android/gms/internal/cast/zzdu;)V

    return-wide v1

    .line 430
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemIdsToReorder must not be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdu;[ILorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzds;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 410
    array-length v0, p2

    if-eqz v0, :cond_2

    .line 412
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 413
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcu;->zzeg()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 414
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "QUEUE_REMOVE"

    .line 415
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    .line 416
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdn;->zzk()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 417
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    .line 418
    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_0

    .line 419
    aget v5, p2, v4

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "itemIds"

    .line 421
    invoke-virtual {v0, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_1

    const-string p2, "customData"

    .line 423
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :catch_0
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p2, v1, v2, p3}, Lcom/google/android/gms/internal/cast/zzcu;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 427
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaar:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdt;->zza(JLcom/google/android/gms/internal/cast/zzdu;)V

    return-wide v1

    .line 411
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemIdsToRemove must not be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdu;[J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzds;
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 208
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 209
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcu;->zzeg()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 210
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "EDIT_TRACKS_INFO"

    .line 211
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    .line 212
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdn;->zzk()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 213
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    .line 214
    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_0

    .line 215
    aget-wide v5, p2, v4

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "activeTrackIds"

    .line 217
    invoke-virtual {v0, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/google/android/gms/internal/cast/zzcu;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 221
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaan:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdt;->zza(JLcom/google/android/gms/internal/cast/zzdu;)V

    return-wide v1

    .line 207
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "trackIds cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdu;[Lcom/google/android/gms/cast/MediaQueueItem;IIIJLorg/json/JSONObject;)J
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzds;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p5

    move-wide/from16 v4, p6

    move-object/from16 v6, p8

    if-eqz v1, :cond_9

    .line 343
    array-length v7, v1

    if-eqz v7, :cond_9

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-eq v3, v8, :cond_1

    if-ltz v3, :cond_0

    .line 346
    array-length v9, v1

    if-ge v3, v9, :cond_0

    goto :goto_0

    .line 347
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 348
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v7

    array-length v1, v1

    .line 349
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v5, v3

    const-string v1, "currentItemIndexInItemsToInsert %d out of range [0, %d)."

    .line 350
    invoke-static {v4, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    const-wide/16 v9, -0x1

    cmp-long v11, v4, v9

    if-eqz v11, :cond_3

    const-wide/16 v11, 0x0

    cmp-long v13, v4, v11

    if-ltz v13, :cond_2

    goto :goto_1

    .line 352
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/16 v2, 0x36

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "playPosition can not be negative: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 353
    :cond_3
    :goto_1
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/cast/zzcu;->zzeg()J

    move-result-wide v12

    :try_start_0
    const-string v14, "requestId"

    .line 355
    invoke-virtual {v11, v14, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v14, "type"

    const-string v15, "QUEUE_INSERT"

    .line 356
    invoke-virtual {v11, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v14, "mediaSessionId"

    .line 357
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/cast/zzdn;->zzk()J

    move-result-wide v9

    invoke-virtual {v11, v14, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 358
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 359
    :goto_2
    array-length v10, v1

    if-ge v7, v10, :cond_4

    .line 360
    aget-object v10, v1, v7

    invoke-virtual {v10}, Lcom/google/android/gms/cast/MediaQueueItem;->toJson()Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    const-string v1, "items"

    .line 362
    invoke-virtual {v11, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v2, :cond_5

    const-string v1, "insertBefore"

    .line 364
    invoke-virtual {v11, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_5
    if-eq v3, v8, :cond_6

    const-string v1, "currentItemIndex"

    .line 367
    invoke-virtual {v11, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-wide/16 v1, -0x1

    goto :goto_3

    :cond_6
    const-wide/16 v1, -0x1

    :goto_3
    cmp-long v3, v4, v1

    if-eqz v3, :cond_7

    const-string v1, "currentTime"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-double v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 370
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    .line 371
    :try_start_1
    invoke-virtual {v11, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_7
    if-eqz v6, :cond_8

    const-string v1, "customData"

    .line 373
    invoke-virtual {v11, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 376
    :catch_0
    :cond_8
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v12, v13, v2}, Lcom/google/android/gms/internal/cast/zzcu;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 377
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/zzdn;->zzaap:Lcom/google/android/gms/internal/cast/zzdt;

    move-object/from16 v2, p1

    invoke-virtual {v1, v12, v13, v2}, Lcom/google/android/gms/internal/cast/zzdt;->zza(JLcom/google/android/gms/internal/cast/zzdu;)V

    return-wide v12

    .line 344
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "itemsToInsert must not be null or empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdu;[Lcom/google/android/gms/cast/MediaQueueItem;IIJLorg/json/JSONObject;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 312
    array-length v0, p2

    if-eqz v0, :cond_7

    if-ltz p3, :cond_6

    .line 314
    array-length v0, p2

    if-ge p3, v0, :cond_6

    const-wide/16 v0, -0x1

    cmp-long v2, p5, v0

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v4, p5, v2

    if-ltz v4, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p2, 0x36

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "playPosition can not be negative: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 318
    :cond_1
    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 319
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcu;->zzeg()J

    move-result-wide v3

    .line 320
    iget-object v5, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaaf:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {v5, v3, v4, p1}, Lcom/google/android/gms/internal/cast/zzdt;->zza(JLcom/google/android/gms/internal/cast/zzdu;)V

    :try_start_0
    const-string p1, "requestId"

    .line 321
    invoke-virtual {v2, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v5, "QUEUE_LOAD"

    .line 322
    invoke-virtual {v2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    .line 324
    :goto_1
    array-length v6, p2

    if-ge v5, v6, :cond_2

    .line 325
    aget-object v6, p2, v5

    invoke-virtual {v6}, Lcom/google/android/gms/cast/MediaQueueItem;->toJson()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const-string p2, "items"

    .line 327
    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 328
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzdv;->zza(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p2, "repeatMode"

    .line 331
    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "startIndex"

    .line 332
    invoke-virtual {v2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    cmp-long p1, p5, v0

    if-eqz p1, :cond_3

    const-string p1, "currentTime"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-double p2, p5

    const-wide p4, 0x408f400000000000L    # 1000.0

    .line 335
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p2, p4

    .line 336
    :try_start_1
    invoke-virtual {v2, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_3
    if-eqz p7, :cond_5

    const-string p1, "customData"

    .line 338
    invoke-virtual {v2, p1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 330
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p2, 0x20

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Invalid repeat mode: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 341
    :catch_0
    :cond_5
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v3, v4, p2}, Lcom/google/android/gms/internal/cast/zzcu;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v3

    .line 315
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p2, 0x1f

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Invalid startIndex: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 313
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "items must not be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void
.end method

.method public final zza(JI)V
    .locals 3

    .line 650
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzco;->zzea()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/cast/zzdt;

    const/4 v2, 0x0

    .line 652
    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/google/android/gms/internal/cast/zzdt;->zzc(JILjava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdp;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaae:Lcom/google/android/gms/internal/cast/zzdp;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/cast/zzdu;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 195
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 196
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcu;->zzeg()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 197
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "GET_STATUS"

    .line 198
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaac:Lcom/google/android/gms/cast/MediaStatus;

    if-eqz v3, :cond_0

    const-string v3, "mediaSessionId"

    .line 200
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaac:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v4}, Lcom/google/android/gms/cast/MediaStatus;->zzk()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/cast/zzcu;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaam:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdt;->zza(JLcom/google/android/gms/internal/cast/zzdu;)V

    return-wide v1
.end method

.method public final zzb(Lcom/google/android/gms/internal/cast/zzdu;DLorg/json/JSONObject;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzds;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaac:Lcom/google/android/gms/cast/MediaStatus;

    if-eqz v0, :cond_1

    .line 182
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 183
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcu;->zzeg()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 184
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "SET_PLAYBACK_RATE"

    .line 185
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "playbackRate"

    .line 186
    invoke-virtual {v0, v3, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p2, "mediaSessionId"

    .line 187
    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaac:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {p3}, Lcom/google/android/gms/cast/MediaStatus;->zzk()J

    move-result-wide v3

    invoke-virtual {v0, p2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p4, :cond_0

    const-string p2, "customData"

    .line 189
    invoke-virtual {v0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p2, v1, v2, p3}, Lcom/google/android/gms/internal/cast/zzcu;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 193
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaaw:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdt;->zza(JLcom/google/android/gms/internal/cast/zzdu;)V

    return-wide v1

    .line 181
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/cast/zzds;

    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zzds;-><init>()V

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/cast/zzdu;Lorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzds;
        }
    .end annotation

    .line 92
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 93
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcu;->zzeg()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 94
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "STOP"

    .line 95
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    .line 96
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdn;->zzk()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string v3, "customData"

    .line 98
    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/google/android/gms/internal/cast/zzcu;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 102
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaai:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdt;->zza(JLcom/google/android/gms/internal/cast/zzdu;)V

    return-wide v1
.end method

.method public final zzb(Ljava/lang/String;Ljava/util/List;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/zzbv;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 492
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcu;->zzeg()J

    move-result-wide v0

    .line 493
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(Ljava/lang/String;Ljava/util/List;J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/cast/zzcu;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/cast/zzdu;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/cast/zzds;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 450
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 451
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcu;->zzeg()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 452
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "QUEUE_GET_ITEM_IDS"

    .line 453
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    .line 454
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdn;->zzk()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/cast/zzcu;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaat:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdt;->zza(JLcom/google/android/gms/internal/cast/zzdu;)V

    return-wide v1
.end method

.method public final zzc(Lcom/google/android/gms/internal/cast/zzdu;Lorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzds;
        }
    .end annotation

    .line 104
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 105
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcu;->zzeg()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 106
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "PLAY"

    .line 107
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    .line 108
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdn;->zzk()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string v3, "customData"

    .line 110
    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/google/android/gms/internal/cast/zzcu;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 114
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaah:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdt;->zza(JLcom/google/android/gms/internal/cast/zzdu;)V

    return-wide v1
.end method

.method public final zzdz()V
    .locals 0

    .line 647
    invoke-super {p0}, Lcom/google/android/gms/internal/cast/zzco;->zzdz()V

    .line 648
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdn;->zzem()V

    return-void
.end method

.method public final zzp(Ljava/lang/String;)V
    .locals 12

    .line 509
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzcu;->zzze:Lcom/google/android/gms/internal/cast/zzdo;

    const-string v1, "message received: %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/cast/zzdo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 510
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "type"

    .line 511
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "requestId"

    const-wide/16 v6, -0x1

    .line 512
    invoke-virtual {v1, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 513
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x3

    const/4 v9, -0x1

    const/4 v10, 0x4

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v7, "QUEUE_ITEM_IDS"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_1
    const-string v7, "MEDIA_STATUS"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_2
    const-string v7, "INVALID_PLAYER_STATE"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_3
    const-string v7, "QUEUE_CHANGE"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_4
    const-string v7, "LOAD_FAILED"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_5
    const-string v7, "INVALID_REQUEST"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_6
    const-string v7, "QUEUE_ITEMS"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_7
    const-string v7, "LOAD_CANCELLED"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v3, -0x1

    :goto_1
    const/16 v7, 0x834

    const/4 v11, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_e

    .line 605
    :pswitch_0
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaau:Lcom/google/android/gms/internal/cast/zzdt;

    .line 606
    invoke-virtual {v3, v5, v6, v4, v11}, Lcom/google/android/gms/internal/cast/zzdt;->zzc(JILjava/lang/Object;)Z

    .line 608
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaae:Lcom/google/android/gms/internal/cast/zzdp;

    if-eqz v3, :cond_17

    const-string v3, "items"

    .line 609
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 610
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/gms/cast/MediaQueueItem;

    const/4 v5, 0x0

    .line 611
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 612
    new-instance v6, Lcom/google/android/gms/cast/MediaQueueItem$Builder;

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v6}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->build()Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 614
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaae:Lcom/google/android/gms/internal/cast/zzdp;

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/cast/zzdp;->zzb([Lcom/google/android/gms/cast/MediaQueueItem;)V

    goto/16 :goto_e

    .line 587
    :pswitch_1
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaav:Lcom/google/android/gms/internal/cast/zzdt;

    .line 588
    invoke-virtual {v3, v5, v6, v4, v11}, Lcom/google/android/gms/internal/cast/zzdt;->zzc(JILjava/lang/Object;)Z

    .line 590
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaae:Lcom/google/android/gms/internal/cast/zzdp;

    if-eqz v3, :cond_3

    const-string v3, "changeType"

    .line 591
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "itemIds"

    .line 592
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzdn;->zzb(Lorg/json/JSONArray;)[I

    move-result-object v5

    const-string v6, "insertBefore"

    .line 593
    invoke-virtual {v1, v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v5, :cond_3

    .line 595
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_1

    goto :goto_3

    :sswitch_8
    const-string v6, "NO_CHANGE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v8, 0x4

    goto :goto_4

    :sswitch_9
    const-string v6, "ITEMS_CHANGE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v8, 0x1

    goto :goto_4

    :sswitch_a
    const-string v6, "UPDATE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_4

    :sswitch_b
    const-string v6, "REMOVE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v8, 0x2

    goto :goto_4

    :sswitch_c
    const-string v6, "INSERT"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v8, 0x0

    goto :goto_4

    :cond_2
    :goto_3
    const/4 v8, -0x1

    :goto_4
    packed-switch v8, :pswitch_data_1

    goto :goto_5

    .line 602
    :pswitch_2
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaae:Lcom/google/android/gms/internal/cast/zzdp;

    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/cast/zzdp;->zza([I)V

    return-void

    .line 600
    :pswitch_3
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaae:Lcom/google/android/gms/internal/cast/zzdp;

    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/cast/zzdp;->zzc([I)V

    return-void

    .line 598
    :pswitch_4
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaae:Lcom/google/android/gms/internal/cast/zzdp;

    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/cast/zzdp;->zzb([I)V

    return-void

    .line 596
    :pswitch_5
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaae:Lcom/google/android/gms/internal/cast/zzdp;

    invoke-interface {v3, v5, v1}, Lcom/google/android/gms/internal/cast/zzdp;->zza([II)V

    return-void

    :cond_3
    :goto_5
    return-void

    .line 579
    :pswitch_6
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaat:Lcom/google/android/gms/internal/cast/zzdt;

    .line 580
    invoke-virtual {v3, v5, v6, v4, v11}, Lcom/google/android/gms/internal/cast/zzdt;->zzc(JILjava/lang/Object;)Z

    .line 582
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaae:Lcom/google/android/gms/internal/cast/zzdp;

    if-eqz v3, :cond_4

    const-string v3, "itemIds"

    .line 583
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzdn;->zzb(Lorg/json/JSONArray;)[I

    move-result-object v1

    if-eqz v1, :cond_4

    .line 585
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaae:Lcom/google/android/gms/internal/cast/zzdp;

    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/cast/zzdp;->zza([I)V

    :cond_4
    return-void

    .line 573
    :pswitch_7
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzcu;->zzze:Lcom/google/android/gms/internal/cast/zzdo;

    const-string v8, "received unexpected error: Invalid Request."

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/internal/cast/zzdo;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "customData"

    .line 574
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 575
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzco;->zzea()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/cast/zzdt;

    .line 576
    invoke-virtual {v8, v5, v6, v7, v1}, Lcom/google/android/gms/internal/cast/zzdt;->zzc(JILjava/lang/Object;)Z

    goto :goto_6

    :cond_5
    return-void

    :pswitch_8
    const-string v3, "customData"

    .line 570
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 571
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaaf:Lcom/google/android/gms/internal/cast/zzdt;

    const/16 v7, 0x835

    invoke-virtual {v3, v5, v6, v7, v1}, Lcom/google/android/gms/internal/cast/zzdt;->zzc(JILjava/lang/Object;)Z

    return-void

    :pswitch_9
    const-string v3, "customData"

    .line 567
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 568
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaaf:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {v3, v5, v6, v7, v1}, Lcom/google/android/gms/internal/cast/zzdt;->zzc(JILjava/lang/Object;)Z

    return-void

    .line 561
    :pswitch_a
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzcu;->zzze:Lcom/google/android/gms/internal/cast/zzdo;

    const-string v8, "received unexpected error: Invalid Player State."

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/internal/cast/zzdo;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "customData"

    .line 562
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 563
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzco;->zzea()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/cast/zzdt;

    .line 564
    invoke-virtual {v8, v5, v6, v7, v1}, Lcom/google/android/gms/internal/cast/zzdt;->zzc(JILjava/lang/Object;)Z

    goto :goto_7

    :cond_6
    return-void

    :pswitch_b
    const-string v3, "status"

    .line 514
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 515
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_14

    .line 516
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 517
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaaf:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/cast/zzdt;->test(J)Z

    move-result v3

    .line 518
    iget-object v7, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaak:Lcom/google/android/gms/internal/cast/zzdt;

    .line 519
    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/zzdt;->zzeo()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaak:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {v7, v5, v6}, Lcom/google/android/gms/internal/cast/zzdt;->test(J)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    iget-object v7, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaal:Lcom/google/android/gms/internal/cast/zzdt;

    .line 520
    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/zzdt;->zzeo()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaal:Lcom/google/android/gms/internal/cast/zzdt;

    invoke-virtual {v7, v5, v6}, Lcom/google/android/gms/internal/cast/zzdt;->test(J)Z

    move-result v7

    if-nez v7, :cond_9

    :cond_8
    const/4 v7, 0x1

    goto :goto_8

    :cond_9
    const/4 v7, 0x0

    :goto_8
    if-eqz v7, :cond_a

    const/4 v7, 0x1

    goto :goto_9

    :cond_a
    const/4 v7, 0x0

    :goto_9
    if-nez v3, :cond_c

    .line 524
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaac:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v3, :cond_b

    goto :goto_a

    .line 528
    :cond_b
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaac:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v3, v1, v7}, Lcom/google/android/gms/cast/MediaStatus;->zza(Lorg/json/JSONObject;I)I

    move-result v1

    goto :goto_b

    .line 525
    :cond_c
    :goto_a
    new-instance v3, Lcom/google/android/gms/cast/MediaStatus;

    invoke-direct {v3, v1}, Lcom/google/android/gms/cast/MediaStatus;-><init>(Lorg/json/JSONObject;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaac:Lcom/google/android/gms/cast/MediaStatus;

    .line 526
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaab:J

    const/16 v1, 0x7f

    :goto_b
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_d

    .line 530
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaab:J

    .line 531
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdn;->onStatusUpdated()V

    :cond_d
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_e

    .line 533
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaab:J

    .line 534
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdn;->onStatusUpdated()V

    :cond_e
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_f

    .line 536
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaab:J

    :cond_f
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_10

    .line 538
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdn;->onMetadataUpdated()V

    :cond_10
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_11

    .line 540
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdn;->onQueueStatusUpdated()V

    :cond_11
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_12

    .line 542
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdn;->onPreloadStatusUpdated()V

    :cond_12
    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_13

    .line 544
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaab:J

    .line 546
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaae:Lcom/google/android/gms/internal/cast/zzdp;

    if-eqz v3, :cond_13

    .line 547
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaae:Lcom/google/android/gms/internal/cast/zzdp;

    invoke-interface {v3}, Lcom/google/android/gms/internal/cast/zzdp;->onAdBreakStatusUpdated()V

    :cond_13
    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_15

    .line 549
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaab:J

    .line 550
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdn;->onStatusUpdated()V

    goto :goto_c

    .line 552
    :cond_14
    iput-object v11, p0, Lcom/google/android/gms/internal/cast/zzdn;->zzaac:Lcom/google/android/gms/cast/MediaStatus;

    .line 553
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdn;->onStatusUpdated()V

    .line 554
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdn;->onMetadataUpdated()V

    .line 555
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdn;->onQueueStatusUpdated()V

    .line 556
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdn;->onPreloadStatusUpdated()V

    .line 557
    :cond_15
    :goto_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzco;->zzea()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/cast/zzdt;

    .line 558
    invoke-virtual {v3, v5, v6, v4, v11}, Lcom/google/android/gms/internal/cast/zzdt;->zzc(JILjava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    :cond_16
    return-void

    :cond_17
    :goto_e
    return-void

    :catch_0
    move-exception v1

    .line 617
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzcu;->zzze:Lcom/google/android/gms/internal/cast/zzdo;

    const-string v5, "Message is malformed (%s); ignoring: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    aput-object p1, v0, v2

    invoke-virtual {v3, v5, v0}, Lcom/google/android/gms/internal/cast/zzdo;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d1d76e8 -> :sswitch_7
        -0x6ab4c52e -> :sswitch_6
        -0x430e23f9 -> :sswitch_5
        -0xfa7664a -> :sswitch_4
        0x93422be -> :sswitch_3
        0x19b9b2fb -> :sswitch_2
        0x3115c4cd -> :sswitch_1
        0x7d988afa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7efc4947 -> :sswitch_c
        -0x7022137c -> :sswitch_b
        -0x6a6cd337 -> :sswitch_a
        0x42ef412f -> :sswitch_9
        0x5330afee -> :sswitch_8
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
