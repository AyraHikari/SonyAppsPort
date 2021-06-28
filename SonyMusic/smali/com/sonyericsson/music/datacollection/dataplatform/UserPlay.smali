.class Lcom/sonyericsson/music/datacollection/dataplatform/UserPlay;
.super Ljava/lang/Object;
.source "UserPlay.java"


# instance fields
.field private mTrackPlay:Lcom/sonyericsson/music/datacollection/dataplatform/TrackPlay;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method setPlayback(Lcom/sonyericsson/music/datacollection/dataplatform/TrackPlay;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/sonyericsson/music/datacollection/dataplatform/UserPlay;->mTrackPlay:Lcom/sonyericsson/music/datacollection/dataplatform/TrackPlay;

    return-void
.end method

.method toJson()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 23
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    const-string v2, "plays"

    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "artist"

    .line 25
    iget-object v2, p0, Lcom/sonyericsson/music/datacollection/dataplatform/UserPlay;->mTrackPlay:Lcom/sonyericsson/music/datacollection/dataplatform/TrackPlay;

    invoke-virtual {v2}, Lcom/sonyericsson/music/datacollection/dataplatform/TrackPlay;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "start_time"

    .line 26
    iget-object v2, p0, Lcom/sonyericsson/music/datacollection/dataplatform/UserPlay;->mTrackPlay:Lcom/sonyericsson/music/datacollection/dataplatform/TrackPlay;

    invoke-virtual {v2}, Lcom/sonyericsson/music/datacollection/dataplatform/TrackPlay;->getStartDate()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayMetering;->getDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "play_duration"

    .line 27
    iget-object v2, p0, Lcom/sonyericsson/music/datacollection/dataplatform/UserPlay;->mTrackPlay:Lcom/sonyericsson/music/datacollection/dataplatform/TrackPlay;

    invoke-virtual {v2}, Lcom/sonyericsson/music/datacollection/dataplatform/TrackPlay;->getPlayDuration()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method
