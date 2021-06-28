.class public final Lcom/google/android/gms/internal/cast/zzck;
.super Ljava/lang/Object;


# instance fields
.field private final zzfd:I

.field private final zzxg:Ljava/lang/String;

.field private final zzxy:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzck;->zzxg:Ljava/lang/String;

    .line 9
    iput p2, p0, Lcom/google/android/gms/internal/cast/zzck;->zzfd:I

    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzck;->zzxy:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "playerId"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "playerState"

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "playerData"

    .line 4
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 5
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/cast/zzck;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 15
    instance-of v1, p1, Lcom/google/android/gms/internal/cast/zzck;

    if-nez v1, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/cast/zzck;

    .line 18
    iget v1, p0, Lcom/google/android/gms/internal/cast/zzck;->zzfd:I

    .line 19
    iget v2, p1, Lcom/google/android/gms/internal/cast/zzck;->zzfd:I

    if-ne v1, v2, :cond_1

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzck;->zzxg:Ljava/lang/String;

    .line 21
    iget-object v2, p1, Lcom/google/android/gms/internal/cast/zzck;->zzxg:Ljava/lang/String;

    .line 22
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzck;->zzxy:Lorg/json/JSONObject;

    .line 23
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzck;->zzxy:Lorg/json/JSONObject;

    .line 24
    invoke-static {v1, p1}, Lcom/google/android/gms/common/util/JsonUtils;->areJsonValuesEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public final getPlayerData()Lorg/json/JSONObject;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzck;->zzxy:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getPlayerId()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzck;->zzxg:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlayerState()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzck;->zzfd:I

    return v0
.end method
