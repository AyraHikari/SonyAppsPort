.class Lcom/sonyericsson/music/datacollection/dataplatform/User;
.super Ljava/lang/Object;
.source "User.java"


# instance fields
.field private final mAlbumsCount:I

.field private final mArtistsCount:I

.field private final mHdTracksCount:I

.field private final mPlaylistsCount:I

.field private final mTracksCount:I

.field private final mUserPlaylistsCount:I


# direct methods
.method constructor <init>(IIIIII)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/sonyericsson/music/datacollection/dataplatform/User;->mTracksCount:I

    .line 22
    iput p2, p0, Lcom/sonyericsson/music/datacollection/dataplatform/User;->mHdTracksCount:I

    .line 23
    iput p3, p0, Lcom/sonyericsson/music/datacollection/dataplatform/User;->mAlbumsCount:I

    .line 24
    iput p4, p0, Lcom/sonyericsson/music/datacollection/dataplatform/User;->mArtistsCount:I

    .line 25
    iput p5, p0, Lcom/sonyericsson/music/datacollection/dataplatform/User;->mPlaylistsCount:I

    .line 26
    iput p6, p0, Lcom/sonyericsson/music/datacollection/dataplatform/User;->mUserPlaylistsCount:I

    return-void
.end method


# virtual methods
.method toJson()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 30
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    const-string v2, "users"

    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "tracks"

    .line 32
    iget v2, p0, Lcom/sonyericsson/music/datacollection/dataplatform/User;->mTracksCount:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "hires_tracks"

    .line 33
    iget v2, p0, Lcom/sonyericsson/music/datacollection/dataplatform/User;->mHdTracksCount:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "albums"

    .line 34
    iget v2, p0, Lcom/sonyericsson/music/datacollection/dataplatform/User;->mAlbumsCount:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "artists"

    .line 35
    iget v2, p0, Lcom/sonyericsson/music/datacollection/dataplatform/User;->mArtistsCount:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "playlists"

    .line 36
    iget v2, p0, Lcom/sonyericsson/music/datacollection/dataplatform/User;->mPlaylistsCount:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "user_playlists"

    .line 37
    iget v2, p0, Lcom/sonyericsson/music/datacollection/dataplatform/User;->mUserPlaylistsCount:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method
