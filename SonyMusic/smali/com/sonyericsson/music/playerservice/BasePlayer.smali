.class public abstract Lcom/sonyericsson/music/playerservice/BasePlayer;
.super Ljava/lang/Object;
.source "BasePlayer.java"

# interfaces
.implements Lcom/sonyericsson/music/playerservice/PlayerService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;
    }
.end annotation


# static fields
.field protected static final DIRECTION_NEXT:I = 0x0

.field protected static final DIRECTION_PREV:I = 0x1

.field protected static final NO_POSITION:I = -0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field protected mCurrentTrack:Lcom/sonyericsson/music/common/Track;

.field protected mPlayQueueInfo:Lcom/sonyericsson/music/playerutil/PlayQueueInfo;

.field protected mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

.field protected mRepeatMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 38
    iput v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mRepeatMode:I

    .line 47
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mContext:Landroid/content/Context;

    .line 49
    new-instance p1, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayQueueInfo:Lcom/sonyericsson/music/playerutil/PlayQueueInfo;

    .line 50
    new-instance p1, Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    return-void
.end method

.method private isTrackAvailable(Landroid/database/Cursor;)Z
    .locals 1

    const-string v0, "available"

    .line 403
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected createTrackFromPlayqueuePos(I)Lcom/sonyericsson/music/common/Track;
    .locals 3

    .line 271
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->isMain()Z

    move-result v0

    if-nez v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayQueueInfo:Lcom/sonyericsson/music/playerutil/PlayQueueInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 278
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 279
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 280
    invoke-static {v0}, Lcom/sonyericsson/music/common/TrackFactory;->createTrackFromPlayqueueCursor(Landroid/database/Cursor;)Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    move-object v1, p1

    .line 282
    :cond_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_1
    return-object v1

    .line 272
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be run on Worker thread."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected findNextPlayableTrack(IZ)Z
    .locals 8

    .line 306
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayQueueInfo:Lcom/sonyericsson/music/playerutil/PlayQueueInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "track_uri"

    .line 307
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    .line 309
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p2

    :goto_0
    const/4 v3, 0x0

    move v6, p1

    const/4 p1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge p1, p2, :cond_6

    if-nez v4, :cond_6

    const/4 v5, -0x1

    if-le v6, v5, :cond_3

    .line 315
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lt v6, v7, :cond_1

    const/4 v6, 0x0

    .line 319
    :cond_1
    invoke-interface {v0, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 320
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->isTrackAvailable(Landroid/database/Cursor;)Z

    move-result v6

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    move v5, v6

    const/4 v6, -0x1

    goto :goto_3

    .line 327
    :cond_3
    invoke-virtual {p0, v2, v0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->stepCursor(ZLandroid/database/Cursor;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 328
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->isTrackAvailable(Landroid/database/Cursor;)Z

    move-result v5

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_5

    .line 333
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sonyericsson/music/playerservice/BasePlayer;->isTrackPlayable(Landroid/net/Uri;)Z

    move-result v4

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_6
    if-eqz v5, :cond_7

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_4
    return v2
.end method

.method protected findPreviousPlayableTrack(Z)Z
    .locals 7

    .line 353
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayQueueInfo:Lcom/sonyericsson/music/playerutil/PlayQueueInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "track_uri"

    .line 354
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 357
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, p1, :cond_3

    if-nez v5, :cond_3

    .line 360
    invoke-virtual {p0, v3, v0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->stepCursor(ZLandroid/database/Cursor;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 361
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->isTrackAvailable(Landroid/database/Cursor;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 362
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sonyericsson/music/playerservice/BasePlayer;->isTrackPlayable(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return v5
.end method

.method public getDuration()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPlayQueuePosition()I
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayQueueInfo:Lcom/sonyericsson/music/playerutil/PlayQueueInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPlaybackPosition()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPlayerId()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 187
    iget v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mRepeatMode:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->getState()I

    move-result v0

    return v0
.end method

.method public getTrackUri()Landroid/net/Uri;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method protected abstract isTrackPlayable(Landroid/net/Uri;)Z
.end method

.method protected isTrackPlayable(Lcom/sonyericsson/music/common/Track;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 394
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/playerservice/BasePlayer;->isTrackPlayable(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public next()V
    .locals 0

    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 0

    return-void
.end method

.method public open(Landroid/net/Uri;IIZ)V
    .locals 0

    return-void
.end method

.method protected openPlayQueue(Landroid/net/Uri;I)I
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->getPlayqueueContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayQueueInfo:Lcom/sonyericsson/music/playerutil/PlayQueueInfo;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->setUri(Landroid/net/Uri;)V

    .line 216
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayQueueInfo:Lcom/sonyericsson/music/playerutil/PlayQueueInfo;

    invoke-virtual {p1}, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->openCursor()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 217
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayQueueInfo:Lcom/sonyericsson/music/playerutil/PlayQueueInfo;

    invoke-virtual {p1}, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 220
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_1

    if-ltz p2, :cond_0

    if-lt p2, p1, :cond_2

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    :cond_2
    :goto_0
    return p2
.end method

.method protected openTrackFromPlayQueuePos(I)Lcom/sonyericsson/music/common/Track;
    .locals 2

    .line 247
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/playerservice/BasePlayer;->createTrackFromPlayqueuePos(I)Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    .line 248
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayQueueInfo:Lcom/sonyericsson/music/playerutil/PlayQueueInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 251
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 253
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 254
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public play()V
    .locals 0

    return-void
.end method

.method public playQueueUpdated(I)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayQueueInfo:Lcom/sonyericsson/music/playerutil/PlayQueueInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 123
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayQueueInfo:Lcom/sonyericsson/music/playerutil/PlayQueueInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->openCursor()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayQueueInfo:Lcom/sonyericsson/music/playerutil/PlayQueueInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 126
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/playerservice/BasePlayer;->createTrackFromPlayqueuePos(I)Lcom/sonyericsson/music/common/Track;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 133
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/music/playerservice/BasePlayer;->playQueueUpdated(ZI)V

    return-void
.end method

.method protected abstract playQueueUpdated(ZI)V
.end method

.method public previous()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setPlayQueuePosition(IZ)V
    .locals 0

    return-void
.end method

.method public setPlaybackPosition(I)V
    .locals 0

    return-void
.end method

.method public setPlayerId(Ljava/lang/String;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->setPlayerId(Ljava/lang/String;)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0

    .line 182
    iput p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mRepeatMode:I

    return-void
.end method

.method public startWinding(Z)V
    .locals 0

    return-void
.end method

.method protected stepCursor(ZLandroid/database/Cursor;)Z
    .locals 0

    if-eqz p1, :cond_2

    .line 379
    invoke-interface {p2}, Landroid/database/Cursor;->isLast()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 382
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    return p1

    .line 380
    :cond_1
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    return p1

    .line 385
    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->isFirst()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-interface {p2}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 388
    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result p1

    return p1

    .line 386
    :cond_4
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToLast()Z

    move-result p1

    return p1
.end method

.method public stopWinding()V
    .locals 0

    return-void
.end method

.method protected validatePlayQueue()Z
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayQueueInfo:Lcom/sonyericsson/music/playerutil/PlayQueueInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
