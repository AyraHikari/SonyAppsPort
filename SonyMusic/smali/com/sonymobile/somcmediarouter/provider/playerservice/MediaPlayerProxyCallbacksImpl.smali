.class Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyCallbacksImpl;
.super Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$CallbacksBase;
.source "MediaPlayerProxyCallbacksImpl.java"


# static fields
.field private static sActionFromMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sActionToMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sExtraFromMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sValueToMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyCallbacksImpl;->sActionFromMap:Ljava/util/LinkedHashMap;

    .line 16
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyCallbacksImpl;->sActionToMap:Ljava/util/LinkedHashMap;

    .line 18
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyCallbacksImpl;->sExtraFromMap:Ljava/util/LinkedHashMap;

    .line 20
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyCallbacksImpl;->sValueToMap:Ljava/util/LinkedHashMap;

    .line 23
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyCallbacksImpl;->sActionFromMap:Ljava/util/LinkedHashMap;

    const-string v1, "action_player_state"

    const-string v2, "com.sonyericsson.mediaproxy.playerservice.playercallbacks.ACTION_PLAYER_STATE"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyCallbacksImpl;->sActionFromMap:Ljava/util/LinkedHashMap;

    const-string v1, "action_playback_info"

    const-string v2, "com.sonyericsson.mediaproxy.playerservice.playercallbacks.ACTION_PLAYBACK_INFO"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyCallbacksImpl;->sActionToMap:Ljava/util/LinkedHashMap;

    const-string v1, "com.sonyericsson.mediaproxy.playerservice.playercallbacks.ACTION_PLAYER_STATE"

    const-string v2, "action_player_state"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyCallbacksImpl;->sActionToMap:Ljava/util/LinkedHashMap;

    const-string v1, "com.sonyericsson.mediaproxy.playerservice.playercallbacks.ACTION_PLAYBACK_INFO"

    const-string v2, "action_playback_info"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyCallbacksImpl;->sExtraFromMap:Ljava/util/LinkedHashMap;

    const-string v1, "extra_player_id"

    const-string v2, "com.sonyericsson.mediaproxy.playerservice.playercallbacks.EXTRA_PLAYER_ID"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyCallbacksImpl;->sExtraFromMap:Ljava/util/LinkedHashMap;

    const-string v1, "extra_track_completed"

    const-string v2, "com.sonyericsson.mediaproxy.playerservice.playercallbacks.EXTRA_TRACK_COMPLETED"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyCallbacksImpl;->sExtraFromMap:Ljava/util/LinkedHashMap;

    const-string v1, "extra_track_uri"

    const-string v2, "com.sonyericsson.mediaproxy.playerservice.playercallbacks.EXTRA_TRACK_URI"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyCallbacksImpl;->sExtraFromMap:Ljava/util/LinkedHashMap;

    const-string v1, "extra_state"

    const-string v2, "com.sonyericsson.mediaproxy.playerservice.playercallbacks.EXTRA_STATE"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyCallbacksImpl;->sExtraFromMap:Ljava/util/LinkedHashMap;

    const-string v1, "extra_error_code"

    const-string v2, "com.sonyericsson.mediaproxy.playerservice.playercallbacks.EXTRA_ERROR_CODE"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyCallbacksImpl;->sExtraFromMap:Ljava/util/LinkedHashMap;

    const-string v1, "extra_error_title"

    const-string v2, "com.sonyericsson.mediaproxy.playerservice.playercallbacks.EXTRA_ERROR_TITLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyCallbacksImpl;->sExtraFromMap:Ljava/util/LinkedHashMap;

    const-string v1, "extra_error_message"

    const-string v2, "com.sonyericsson.mediaproxy.playerservice.playercallbacks.EXTRA_ERROR_MESSAGE"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyCallbacksImpl;->sExtraFromMap:Ljava/util/LinkedHashMap;

    const-string v1, "extra_playback_position_changed"

    const-string v2, "com.sonyericsson.mediaproxy.playerservice.playercallbacks.EXTRA_PLAYBACK_POSITION_CHANGED"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyCallbacksImpl;->sValueToMap:Ljava/util/LinkedHashMap;

    const-string v1, "com.sonyericsson.mediaproxy.playerservice.playercallbacks.STATE_OPENED"

    const-string v2, "state_opened"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyCallbacksImpl;->sValueToMap:Ljava/util/LinkedHashMap;

    const-string v1, "com.sonyericsson.mediaproxy.playerservice.playercallbacks.STATE_PLAYING"

    const-string v2, "state_playing"

    .line 48
    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyCallbacksImpl;->sValueToMap:Ljava/util/LinkedHashMap;

    const-string v1, "com.sonyericsson.mediaproxy.playerservice.playercallbacks.STATE_PAUSED"

    const-string v2, "state_paused"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyCallbacksImpl;->sValueToMap:Ljava/util/LinkedHashMap;

    const-string v1, "com.sonyericsson.mediaproxy.playerservice.playercallbacks.STATE_RELEASED"

    const-string v2, "state_released"

    .line 51
    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyCallbacksImpl;->sValueToMap:Ljava/util/LinkedHashMap;

    const-string v1, "com.sonyericsson.mediaproxy.playerservice.playercallbacks.STATE_ERROR"

    const-string v2, "state_error"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyCallbacksImpl;->sValueToMap:Ljava/util/LinkedHashMap;

    const-string v1, "com.sonyericsson.mediaproxy.playerservice.playercallbacks.STATE_IDLE"

    const-string v2, "state_idle"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 57
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyCallbacksImpl;->sActionFromMap:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyCallbacksImpl;->sActionToMap:Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyCallbacksImpl;->sExtraFromMap:Ljava/util/LinkedHashMap;

    sget-object v3, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyCallbacksImpl;->sValueToMap:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$CallbacksBase;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V

    return-void
.end method
