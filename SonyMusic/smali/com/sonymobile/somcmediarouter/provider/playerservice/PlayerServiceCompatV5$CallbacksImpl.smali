.class Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$CallbacksImpl;
.super Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$CallbacksBase;
.source "PlayerServiceCompatV5.java"


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

    .line 61
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$CallbacksImpl;->sActionFromMap:Ljava/util/LinkedHashMap;

    .line 63
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$CallbacksImpl;->sActionToMap:Ljava/util/LinkedHashMap;

    .line 65
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$CallbacksImpl;->sExtraFromMap:Ljava/util/LinkedHashMap;

    .line 67
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$CallbacksImpl;->sValueToMap:Ljava/util/LinkedHashMap;

    .line 71
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$CallbacksImpl;->sActionFromMap:Ljava/util/LinkedHashMap;

    const-string v1, "action_player_state"

    const-string v2, "com.sonyericsson.dlna.playerservice.playercallbacks.ACTION_PLAYER_STATE"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$CallbacksImpl;->sActionFromMap:Ljava/util/LinkedHashMap;

    const-string v1, "action_playback_info"

    const-string v2, "com.sonyericsson.dlna.playerservice.playercallbacks.ACTION_PLAYBACK_INFO"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$CallbacksImpl;->sActionToMap:Ljava/util/LinkedHashMap;

    const-string v1, "com.sonyericsson.dlna.playerservice.playercallbacks.ACTION_PLAYER_STATE"

    const-string v2, "action_player_state"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$CallbacksImpl;->sActionToMap:Ljava/util/LinkedHashMap;

    const-string v1, "com.sonyericsson.dlna.playerservice.playercallbacks.ACTION_PLAYBACK_INFO"

    const-string v2, "action_playback_info"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$CallbacksImpl;->sExtraFromMap:Ljava/util/LinkedHashMap;

    const-string v1, "extra_player_id"

    const-string v2, "com.sonyericsson.dlna.playerservice.playercallbacks.EXTRA_PLAYER_ID"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$CallbacksImpl;->sExtraFromMap:Ljava/util/LinkedHashMap;

    const-string v1, "extra_track_completed"

    const-string v2, "com.sonyericsson.dlna.playerservice.playercallbacks.EXTRA_TRACK_COMPLETED"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$CallbacksImpl;->sExtraFromMap:Ljava/util/LinkedHashMap;

    const-string v1, "extra_track_uri"

    const-string v2, "com.sonyericsson.dlna.playerservice.playercallbacks.EXTRA_TRACK_URI"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$CallbacksImpl;->sExtraFromMap:Ljava/util/LinkedHashMap;

    const-string v1, "extra_state"

    const-string v2, "com.sonyericsson.dlna.playerservice.playercallbacks.EXTRA_STATE"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$CallbacksImpl;->sExtraFromMap:Ljava/util/LinkedHashMap;

    const-string v1, "extra_error_code"

    const-string v2, "com.sonyericsson.dlna.playerservice.playercallbacks.EXTRA_ERROR_CODE"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$CallbacksImpl;->sExtraFromMap:Ljava/util/LinkedHashMap;

    const-string v1, "extra_error_title"

    const-string v2, "com.sonyericsson.dlna.playerservice.playercallbacks.EXTRA_ERROR_TITLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$CallbacksImpl;->sExtraFromMap:Ljava/util/LinkedHashMap;

    const-string v1, "extra_error_message"

    const-string v2, "com.sonyericsson.dlna.playerservice.playercallbacks.EXTRA_ERROR_MESSAGE"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$CallbacksImpl;->sExtraFromMap:Ljava/util/LinkedHashMap;

    const-string v1, "extra_playback_position_changed"

    const-string v2, "com.sonyericsson.dlna.playerservice.playercallbacks.EXTRA_PLAYBACK_POSITION_CHANGED"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$CallbacksImpl;->sValueToMap:Ljava/util/LinkedHashMap;

    const-string v1, "com.sonyericsson.dlna.playerservice.playercallbacks.STATE_OPENED"

    const-string v2, "state_opened"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$CallbacksImpl;->sValueToMap:Ljava/util/LinkedHashMap;

    const-string v1, "com.sonyericsson.dlna.playerservice.playercallbacks.STATE_PLAYING"

    const-string v2, "state_playing"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$CallbacksImpl;->sValueToMap:Ljava/util/LinkedHashMap;

    const-string v1, "com.sonyericsson.dlna.playerservice.playercallbacks.STATE_PAUSED"

    const-string v2, "state_paused"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$CallbacksImpl;->sValueToMap:Ljava/util/LinkedHashMap;

    const-string v1, "com.sonyericsson.dlna.playerservice.playercallbacks.STATE_RELEASED"

    const-string v2, "state_released"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$CallbacksImpl;->sValueToMap:Ljava/util/LinkedHashMap;

    const-string v1, "com.sonyericsson.dlna.playerservice.playercallbacks.STATE_ERROR"

    const-string v2, "state_error"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$CallbacksImpl;->sValueToMap:Ljava/util/LinkedHashMap;

    const-string v1, "com.sonyericsson.dlna.playerservice.playercallbacks.STATE_IDLE"

    const-string v2, "state_idle"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 96
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$CallbacksImpl;->sActionFromMap:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$CallbacksImpl;->sActionToMap:Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$CallbacksImpl;->sExtraFromMap:Ljava/util/LinkedHashMap;

    sget-object v3, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$CallbacksImpl;->sValueToMap:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$CallbacksBase;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V

    return-void
.end method
