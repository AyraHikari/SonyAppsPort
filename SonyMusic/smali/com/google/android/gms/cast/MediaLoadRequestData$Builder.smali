.class public Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/MediaLoadRequestData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->zzdz:Ljava/lang/Boolean;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->zzea:J

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 4
    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->zzdr:D

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->zzds:[J

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->zzp:Lorg/json/JSONObject;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->zzdt:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->zzdu:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/MediaLoadRequestData;
    .locals 14

    .line 30
    new-instance v13, Lcom/google/android/gms/cast/MediaLoadRequestData;

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->zzdo:Lcom/google/android/gms/cast/MediaInfo;

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->zzdy:Lcom/google/android/gms/cast/MediaQueueData;

    iget-object v3, p0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->zzdz:Ljava/lang/Boolean;

    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->zzea:J

    iget-wide v6, p0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->zzdr:D

    iget-object v8, p0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->zzds:[J

    iget-object v9, p0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->zzp:Lorg/json/JSONObject;

    iget-object v10, p0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->zzdt:Ljava/lang/String;

    iget-object v11, p0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->zzdu:Ljava/lang/String;

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/cast/MediaLoadRequestData;-><init>(Lcom/google/android/gms/cast/MediaInfo;Lcom/google/android/gms/cast/MediaQueueData;Ljava/lang/Boolean;JD[JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/zzal;)V

    return-object v13
.end method

.method public setActiveTrackIds([J)Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->zzds:[J

    return-object p0
.end method

.method public setAutoplay(Ljava/lang/Boolean;)Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->zzdz:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setCurrentTime(J)Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;
    .locals 0

    .line 15
    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->zzea:J

    return-object p0
.end method

.method public setCustomData(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->zzp:Lorg/json/JSONObject;

    return-object p0
.end method

.method public setMediaInfo(Lcom/google/android/gms/cast/MediaInfo;)Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->zzdo:Lcom/google/android/gms/cast/MediaInfo;

    return-object p0
.end method
