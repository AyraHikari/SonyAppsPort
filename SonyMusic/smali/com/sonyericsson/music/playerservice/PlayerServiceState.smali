.class public Lcom/sonyericsson/music/playerservice/PlayerServiceState;
.super Ljava/lang/Object;
.source "PlayerServiceState.java"


# static fields
.field public static final ERROR:I = 0x3

.field public static final IDLE:I = 0x1

.field public static final OPENED:I = 0x4

.field public static final PAUSED:I = 0x7

.field public static final PLAYING:I = 0x6

.field public static final RELEASED:I = 0x2

.field public static final SKIPPED:I = 0x5


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPlayerId:Ljava/lang/String;

.field private mPlayerState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 85
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->mPlayerId:Ljava/lang/String;

    return-void

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context not allowed to be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static addReceiverForegroundFlag(Landroid/content/Intent;)V
    .locals 2

    .line 253
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/high16 v0, 0x10000000

    .line 254
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private static sendLocalBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 260
    invoke-static {}, Lcom/sonyericsson/music/common/LocalBroadcastManagerFactory;->getLocalBroadcastManager()Lcom/sonyericsson/music/common/LocalBroadcastManagerWrapper;

    move-result-object v0

    .line 261
    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/music/common/LocalBroadcastManagerWrapper;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getPlayerId()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->mPlayerId:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 244
    iget v0, p0, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->mPlayerState:I

    return v0
.end method

.method public notifyAudioSessionUpdated(I)V
    .locals 3

    .line 236
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacksinternal.ACTION_AUDIO_SESSION_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_PLAYER_ID"

    .line 237
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->mPlayerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacksinternal.EXTRA_AUDIO_SESSION_ID"

    .line 238
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->addReceiverForegroundFlag(Landroid/content/Intent;)V

    .line 240
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->sendLocalBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public notifyBuffering(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.ACTION_PLAYER_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_PLAYER_ID"

    .line 205
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->mPlayerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_STATE"

    const-string v2, "com.sonyericsson.music.playerservice.playercallbacks.STATE_BUFFERING"

    .line 206
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_TRACK_URI"

    .line 207
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_DATA_URI"

    .line 208
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_PLAYLIST_POSITION"

    .line 209
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_BUFFERING_PROGRESS"

    .line 210
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->addReceiverForegroundFlag(Landroid/content/Intent;)V

    .line 212
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->sendLocalBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public notifyError(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x3

    .line 130
    iput v0, p0, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->mPlayerState:I

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.ACTION_PLAYER_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_PLAYER_ID"

    .line 133
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->mPlayerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_STATE"

    const-string v2, "com.sonyericsson.music.playerservice.playercallbacks.STATE_ERROR"

    .line 134
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_ERROR_CODE"

    .line 135
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_ERROR_MESSAGE"

    .line 136
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_ERROR_PLAYING"

    .line 137
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_TRACK_URI"

    .line 138
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_DATA_URI"

    .line 139
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_PLAYLIST_POSITION"

    .line 140
    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->addReceiverForegroundFlag(Landroid/content/Intent;)V

    .line 142
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->sendLocalBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public notifyIdle(ZLjava/lang/String;Ljava/lang/String;II)V
    .locals 3

    const/4 v0, 0x1

    .line 99
    iput v0, p0, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->mPlayerState:I

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.ACTION_PLAYER_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_PLAYER_ID"

    .line 102
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->mPlayerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_STATE"

    const-string v2, "com.sonyericsson.music.playerservice.playercallbacks.STATE_IDLE"

    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_TRACK_COMPLETED"

    .line 104
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string p1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_TRACK_URI"

    .line 106
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_DATA_URI"

    .line 107
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_PLAYLIST_POSITION"

    .line 108
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    :cond_0
    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->addReceiverForegroundFlag(Landroid/content/Intent;)V

    .line 111
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->sendLocalBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 113
    invoke-virtual {p0, p5}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyAudioSessionUpdated(I)V

    return-void
.end method

.method public notifyOpened(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x4

    .line 146
    iput v0, p0, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->mPlayerState:I

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.ACTION_PLAYER_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_PLAYER_ID"

    .line 149
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->mPlayerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_STATE"

    const-string v2, "com.sonyericsson.music.playerservice.playercallbacks.STATE_OPENED"

    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_TRACK_URI"

    .line 151
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_DATA_URI"

    .line 152
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_PLAYLIST_POSITION"

    .line 153
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->addReceiverForegroundFlag(Landroid/content/Intent;)V

    .line 155
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->sendLocalBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public notifyPaused(Ljava/lang/String;Ljava/lang/String;IZI)V
    .locals 2

    const/4 v0, 0x7

    .line 188
    iput v0, p0, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->mPlayerState:I

    if-eqz p4, :cond_0

    .line 191
    new-instance p4, Landroid/content/Intent;

    const-string v0, "com.sonyericsson.music.playerservice.playercallbacks.ACTION_PLAYER_STATE"

    invoke-direct {p4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_PLAYER_ID"

    .line 192
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->mPlayerId:Ljava/lang/String;

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_STATE"

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.STATE_PAUSED"

    .line 193
    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_TRACK_URI"

    .line 194
    invoke-virtual {p4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_DATA_URI"

    .line 195
    invoke-virtual {p4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_PLAYLIST_POSITION"

    .line 196
    invoke-virtual {p4, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_PAUSED_REASON"

    .line 197
    invoke-virtual {p4, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    invoke-static {p4}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->addReceiverForegroundFlag(Landroid/content/Intent;)V

    .line 199
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->mContext:Landroid/content/Context;

    invoke-static {p1, p4}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->sendLocalBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public notifyPlaybackPositionChanged(I)V
    .locals 3

    .line 217
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.ACTION_PLAYBACK_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_PLAYER_ID"

    .line 218
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->mPlayerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_PLAYBACK_POSITION_CHANGED"

    .line 219
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->addReceiverForegroundFlag(Landroid/content/Intent;)V

    .line 221
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->sendLocalBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public notifyPlaying(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    const/4 v0, 0x6

    .line 173
    iput v0, p0, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->mPlayerState:I

    .line 175
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.ACTION_PLAYER_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_PLAYER_ID"

    .line 176
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->mPlayerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_STATE"

    const-string v2, "com.sonyericsson.music.playerservice.playercallbacks.STATE_PLAYING"

    .line 177
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_TRACK_URI"

    .line 178
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_DATA_URI"

    .line 179
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_PLAYLIST_POSITION"

    .line 180
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->addReceiverForegroundFlag(Landroid/content/Intent;)V

    .line 182
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->sendLocalBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 184
    invoke-virtual {p0, p4}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyAudioSessionUpdated(I)V

    return-void
.end method

.method public notifyReleased()V
    .locals 3

    const/4 v0, 0x2

    .line 117
    iput v0, p0, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->mPlayerState:I

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.ACTION_PLAYER_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_PLAYER_ID"

    .line 120
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->mPlayerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_STATE"

    const-string v2, "com.sonyericsson.music.playerservice.playercallbacks.STATE_RELEASED"

    .line 121
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->addReceiverForegroundFlag(Landroid/content/Intent;)V

    .line 123
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->sendLocalBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v0, -0x1

    .line 125
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyAudioSessionUpdated(I)V

    return-void
.end method

.method public notifySeekDone(Ljava/lang/String;II)V
    .locals 3

    .line 225
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.ACTION_PLAYER_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_PLAYER_ID"

    .line 226
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->mPlayerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_STATE"

    const-string v2, "com.sonyericsson.music.playerservice.playercallbacks.STATE_SEEK_DONE"

    .line 227
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_TRACK_URI"

    .line 228
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_PLAYLIST_POSITION"

    .line 229
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_PLAYBACK_POSITION_CHANGED"

    .line 230
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->addReceiverForegroundFlag(Landroid/content/Intent;)V

    .line 232
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->sendLocalBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public notifySkipped(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    const/4 v0, 0x5

    .line 159
    iput v0, p0, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->mPlayerState:I

    .line 161
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.ACTION_PLAYER_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_PLAYER_ID"

    .line 162
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->mPlayerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_STATE"

    const-string v2, "com.sonyericsson.music.playerservice.playercallbacks.STATE_SKIPPED"

    .line 163
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_TRACK_URI"

    .line 164
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_DATA_URI"

    .line 165
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_OLD_PLAYBACK_POSITION"

    .line 166
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_PLAYLIST_POSITION"

    .line 167
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->addReceiverForegroundFlag(Landroid/content/Intent;)V

    .line 169
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->sendLocalBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public setPlayerId(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->mPlayerId:Ljava/lang/String;

    return-void
.end method
