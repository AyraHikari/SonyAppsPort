.class public final Lcom/google/android/gms/internal/cast/zzcf;
.super Ljava/lang/Object;


# static fields
.field private static final zzbf:Lcom/google/android/gms/internal/cast/zzdo;


# instance fields
.field protected final zzxj:I

.field protected final zzxk:I

.field protected final zzxl:Ljava/lang/String;

.field protected final zzxm:Lorg/json/JSONObject;

.field protected final zzxn:I

.field protected final zzxo:I

.field protected final zzxp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/cast/zzck;",
            ">;"
        }
    .end annotation
.end field

.field protected final zzxq:Lorg/json/JSONObject;

.field protected final zzxr:Ljava/lang/String;

.field protected final zzxs:Ljava/lang/String;

.field protected final zzxt:J

.field protected final zzxu:Ljava/lang/String;

.field protected final zzxv:Lcom/google/android/gms/internal/cast/zzcg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Lcom/google/android/gms/internal/cast/zzdo;

    const-string v1, "GameManagerMessage"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzdo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzcf;->zzbf:Lcom/google/android/gms/internal/cast/zzdo;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;Lorg/json/JSONObject;IILjava/util/List;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/google/android/gms/internal/cast/zzcg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "II",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/cast/zzck;",
            ">;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/cast/zzcg;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/cast/zzcf;->zzxj:I

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/cast/zzcf;->zzxk:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzcf;->zzxl:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/cast/zzcf;->zzxm:Lorg/json/JSONObject;

    .line 6
    iput p5, p0, Lcom/google/android/gms/internal/cast/zzcf;->zzxn:I

    .line 7
    iput p6, p0, Lcom/google/android/gms/internal/cast/zzcf;->zzxo:I

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/cast/zzcf;->zzxp:Ljava/util/List;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/cast/zzcf;->zzxq:Lorg/json/JSONObject;

    .line 10
    iput-object p9, p0, Lcom/google/android/gms/internal/cast/zzcf;->zzxr:Ljava/lang/String;

    .line 11
    iput-object p10, p0, Lcom/google/android/gms/internal/cast/zzcf;->zzxs:Ljava/lang/String;

    .line 12
    iput-wide p11, p0, Lcom/google/android/gms/internal/cast/zzcf;->zzxt:J

    .line 13
    iput-object p13, p0, Lcom/google/android/gms/internal/cast/zzcf;->zzxu:Ljava/lang/String;

    .line 14
    iput-object p14, p0, Lcom/google/android/gms/internal/cast/zzcf;->zzxv:Lcom/google/android/gms/internal/cast/zzcg;

    return-void
.end method

.method private static zza(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/cast/zzck;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 54
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 55
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    .line 58
    :try_start_0
    new-instance v5, Lcom/google/android/gms/internal/cast/zzck;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/cast/zzck;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_1

    :catch_0
    move-exception v3

    .line 61
    sget-object v5, Lcom/google/android/gms/internal/cast/zzcf;->zzbf:Lcom/google/android/gms/internal/cast/zzdo;

    const-string v6, "Exception when attempting to parse PlayerInfoMessageComponent at index %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    .line 63
    invoke-virtual {v5, v3, v6, v7}, Lcom/google/android/gms/internal/cast/zzdo;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    if-eqz v4, :cond_1

    .line 65
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected static zzl(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/cast/zzcf;
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "type"

    const/4 v2, -0x1

    .line 16
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v4, :pswitch_data_0

    .line 46
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/cast/zzcf;->zzbf:Lcom/google/android/gms/internal/cast/zzdo;

    goto/16 :goto_1

    .line 18
    :pswitch_0
    new-instance v18, Lcom/google/android/gms/internal/cast/zzcf;

    const-string v3, "statusCode"

    .line 19
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v3, "errorDescription"

    .line 20
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "extraMessageData"

    .line 21
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v3, "gameplayState"

    .line 22
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const-string v3, "lobbyState"

    .line 23
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    const-string v3, "players"

    .line 24
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/cast/zzcf;->zza(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v10

    const-string v3, "gameData"

    .line 25
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v3, "gameStatusText"

    .line 26
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v3, "playerId"

    .line 27
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-wide/16 v14, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v3, v18

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/internal/cast/zzcf;-><init>(IILjava/lang/String;Lorg/json/JSONObject;IILjava/util/List;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/google/android/gms/internal/cast/zzcg;)V

    return-object v18

    :pswitch_1
    const-string v3, "gameManagerConfig"

    .line 30
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 32
    new-instance v5, Lcom/google/android/gms/internal/cast/zzcg;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/cast/zzcg;-><init>(Lorg/json/JSONObject;)V

    move-object/from16 v17, v5

    goto :goto_0

    :cond_0
    move-object/from16 v17, v2

    .line 33
    :goto_0
    new-instance v18, Lcom/google/android/gms/internal/cast/zzcf;

    const-string v3, "statusCode"

    .line 34
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v3, "errorDescription"

    .line 35
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "extraMessageData"

    .line 36
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v3, "gameplayState"

    .line 37
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const-string v3, "lobbyState"

    .line 38
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    const-string v3, "players"

    .line 39
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/cast/zzcf;->zza(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v10

    const-string v3, "gameData"

    .line 40
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v3, "gameStatusText"

    .line 41
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v3, "playerId"

    .line 42
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v3, "requestId"

    .line 43
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    const-string v3, "playerToken"

    .line 44
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v3, v18

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/internal/cast/zzcf;-><init>(IILjava/lang/String;Lorg/json/JSONObject;IILjava/util/List;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/google/android/gms/internal/cast/zzcg;)V

    return-object v18

    :goto_1
    const-string v3, "Unrecognized Game Message type %d"

    const/4 v5, 0x1

    .line 46
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v1

    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/internal/cast/zzdo;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 49
    sget-object v3, Lcom/google/android/gms/internal/cast/zzcf;->zzbf:Lcom/google/android/gms/internal/cast/zzdo;

    const-string v4, "Exception while parsing GameManagerMessage from json"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4, v1}, Lcom/google/android/gms/internal/cast/zzdo;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
