.class public Lcom/google/android/gms/cast/MediaLoadRequestData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;
    }
.end annotation


# instance fields
.field private zzdo:Lcom/google/android/gms/cast/MediaInfo;

.field private zzdr:D

.field private zzds:[J

.field private zzdt:Ljava/lang/String;

.field private zzdu:Ljava/lang/String;

.field private zzdy:Lcom/google/android/gms/cast/MediaQueueData;

.field private zzdz:Ljava/lang/Boolean;

.field private zzea:J

.field private zzp:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/cast/MediaInfo;Lcom/google/android/gms/cast/MediaQueueData;Ljava/lang/Boolean;JD[JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzdo:Lcom/google/android/gms/cast/MediaInfo;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzdy:Lcom/google/android/gms/cast/MediaQueueData;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzdz:Ljava/lang/Boolean;

    .line 5
    iput-wide p4, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzea:J

    .line 6
    iput-wide p6, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzdr:D

    .line 7
    iput-object p8, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzds:[J

    .line 8
    iput-object p9, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzp:Lorg/json/JSONObject;

    .line 9
    iput-object p10, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzdt:Ljava/lang/String;

    .line 10
    iput-object p11, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzdu:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/cast/MediaInfo;Lcom/google/android/gms/cast/MediaQueueData;Ljava/lang/Boolean;JD[JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/zzal;)V
    .locals 0

    .line 38
    invoke-direct/range {p0 .. p11}, Lcom/google/android/gms/cast/MediaLoadRequestData;-><init>(Lcom/google/android/gms/cast/MediaInfo;Lcom/google/android/gms/cast/MediaQueueData;Ljava/lang/Boolean;JD[JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 23
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/MediaLoadRequestData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 25
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/MediaLoadRequestData;

    .line 26
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzdo:Lcom/google/android/gms/cast/MediaInfo;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzdo:Lcom/google/android/gms/cast/MediaInfo;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzdy:Lcom/google/android/gms/cast/MediaQueueData;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzdy:Lcom/google/android/gms/cast/MediaQueueData;

    .line 27
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzdz:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzdz:Ljava/lang/Boolean;

    .line 28
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzea:J

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzea:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzdr:D

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzdr:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzds:[J

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzds:[J

    .line 29
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzp:Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzp:Lorg/json/JSONObject;

    .line 30
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzdt:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzdt:Ljava/lang/String;

    .line 31
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzdu:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzdu:Ljava/lang/String;

    .line 32
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getActiveTrackIds()[J
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzds:[J

    return-object v0
.end method

.method public getAutoplay()Ljava/lang/Boolean;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzdz:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCredentials()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzdt:Ljava/lang/String;

    return-object v0
.end method

.method public getCredentialsType()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzdu:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTime()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzea:J

    return-wide v0
.end method

.method public getCustomData()Lorg/json/JSONObject;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzp:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzdo:Lcom/google/android/gms/cast/MediaInfo;

    return-object v0
.end method

.method public getPlaybackRate()D
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzdr:D

    return-wide v0
.end method

.method public getQueueData()Lcom/google/android/gms/cast/MediaQueueData;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzdy:Lcom/google/android/gms/cast/MediaQueueData;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    .line 34
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzdo:Lcom/google/android/gms/cast/MediaInfo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzdy:Lcom/google/android/gms/cast/MediaQueueData;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzdz:Ljava/lang/Boolean;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzea:J

    .line 35
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzdr:D

    .line 36
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzds:[J

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzp:Lorg/json/JSONObject;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzdt:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData;->zzdu:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 37
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
