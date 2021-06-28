.class public Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;
.super Landroid/os/Handler;
.source "ServiceStubHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;
    }
.end annotation


# static fields
.field private static final LOCKS_VALUES:I = 0x9

.field static final LOCK_ALBUM_NAME:I = 0x4

.field static final LOCK_ARTIST_NAME:I = 0x3

.field static final LOCK_DURATION:I = 0x1

.field static final LOCK_GET_QUEUE_POS:I = 0x7

.field static final LOCK_IS_PLAYING:I = 0x2

.field static final LOCK_IS_PLAYQUEUE_MODE:I = 0x8

.field static final LOCK_POSITION:I = 0x0

.field static final LOCK_TRACK:I = 0x6

.field static final LOCK_TRACK_NAME:I = 0x5

.field static final MSG_GET_ALBUM_NAME:I = 0x5a

.field static final MSG_GET_ARTIST_NAME:I = 0x50

.field static final MSG_GET_DURATION:I = 0x6e

.field static final MSG_GET_POS:I = 0x3c

.field static final MSG_GET_QUEUE_POS:I = 0x78

.field static final MSG_GET_TRACK:I = 0x46

.field static final MSG_GET_TRACK_NAME:I = 0x64

.field static final MSG_IS_PLAYING:I = 0xa

.field static final MSG_IS_PLAYQUEUE_MODE:I = 0x8c

.field static final MSG_NEXT:I = 0x28

.field static final MSG_PAUSE:I = 0x1e

.field static final MSG_PLAY:I = 0x14

.field static final MSG_PREV:I = 0x32

.field static final MSG_SET_QUEUE_POS:I = 0x82

.field static final MSG_SHUFFLE_NEXT:I = 0x96

.field static final QUEUE_POSITION:Ljava/lang/String; = "queue_position"

.field static final START_PLAYING:Ljava/lang/String; = "start_playing"


# instance fields
.field private mAlbumName:Ljava/lang/String;

.field private mArtistName:Ljava/lang/String;

.field private mDuration:J

.field private mIsInPlayqueueMode:Z

.field private mIsPlaying:Z

.field final mLock:Ljava/lang/Object;

.field private final mLockValues:[Z

.field private mMediaController:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;

.field private mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlayback;

.field private mPlayqueuePos:I

.field private mPos:J

.field private mTrack:Lcom/sonyericsson/music/common/Track;

.field private mTrackName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 143
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    const/16 v0, 0x9

    .line 111
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLockValues:[Z

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mIsPlaying:Z

    const-wide/16 v1, -0x1

    .line 117
    iput-wide v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mPos:J

    .line 120
    iput-wide v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mDuration:J

    const-string v1, ""

    .line 123
    iput-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mArtistName:Ljava/lang/String;

    const-string v1, ""

    .line 126
    iput-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mAlbumName:Ljava/lang/String;

    const-string v1, ""

    .line 129
    iput-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mTrackName:Ljava/lang/String;

    const/4 v1, -0x1

    .line 132
    iput v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mPlayqueuePos:I

    .line 135
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mIsInPlayqueueMode:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .locals 2

    .line 147
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 108
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    const/16 p1, 0x9

    .line 111
    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLockValues:[Z

    const/4 p1, 0x0

    .line 114
    iput-boolean p1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mIsPlaying:Z

    const-wide/16 v0, -0x1

    .line 117
    iput-wide v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mPos:J

    .line 120
    iput-wide v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mDuration:J

    const-string v0, ""

    .line 123
    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mArtistName:Ljava/lang/String;

    const-string v0, ""

    .line 126
    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mAlbumName:Ljava/lang/String;

    const-string v0, ""

    .line 129
    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mTrackName:Ljava/lang/String;

    const/4 v0, -0x1

    .line 132
    iput v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mPlayqueuePos:I

    .line 135
    iput-boolean p1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mIsInPlayqueueMode:Z

    return-void
.end method


# virtual methods
.method getAlbumId()J
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getAlbumId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method getAlbumName()Ljava/lang/String;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method getArtistId()J
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getArtistId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method getArtistName()Ljava/lang/String;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method getDuration()J
    .locals 2

    .line 366
    iget-wide v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mDuration:J

    return-wide v0
.end method

.method getPath()Ljava/lang/String;
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mTrack:Lcom/sonyericsson/music/common/Track;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 442
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getDataUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1

    :cond_1
    return-object v1
.end method

.method getPosition()J
    .locals 2

    .line 376
    iget-wide v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mPos:J

    return-wide v0
.end method

.method getQueuePosition()I
    .locals 1

    .line 457
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mPlayqueuePos:I

    return v0
.end method

.method getTrackId()J
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method getTrackName()Ljava/lang/String;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mTrackName:Ljava/lang/String;

    return-object v0
.end method

.method getTrackUri()Landroid/net/Uri;
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 206
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_3

    .line 235
    :sswitch_0
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mMediaController:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;

    if-eqz p1, :cond_11

    const-string v0, "com.sonyericsson.music.mediasession.customcommand.SHUFFLE_NEXT"

    .line 236
    invoke-virtual {p1, v0, v3, v3}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    goto/16 :goto_3

    .line 338
    :sswitch_1
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_0
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    if-eqz p1, :cond_0

    .line 340
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    invoke-interface {p1}, Lcom/sonyericsson/music/proxyservice/MediaPlayback;->getPlaybackState()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isInPlayQueueMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mIsInPlayqueueMode:Z

    .line 342
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLockValues:[Z

    const/16 v1, 0x8

    aput-boolean v4, p1, v1

    .line 343
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 344
    monitor-exit v0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 328
    :sswitch_2
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 329
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mMediaController:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;

    if-eqz v1, :cond_1

    .line 330
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "queue_position"

    .line 331
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 332
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mMediaController:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;->setPlayQueuePos(J)V

    .line 334
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 335
    monitor-exit v0

    goto/16 :goto_3

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 311
    :sswitch_3
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 312
    :try_start_2
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mMediaController:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;

    if-eqz v0, :cond_3

    .line 313
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mMediaController:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "android.media.metadata.TRACK_NUMBER"

    .line 321
    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mPlayqueuePos:I

    .line 323
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLockValues:[Z

    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    .line 324
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 325
    monitor-exit p1

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 247
    :sswitch_4
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 248
    :try_start_3
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mMediaController:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;

    if-eqz v0, :cond_5

    .line 249
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mMediaController:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "android.media.metadata.DURATION"

    .line 251
    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1

    :cond_4
    const-wide/16 v0, 0x0

    :goto_1
    iput-wide v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mDuration:J

    .line 254
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLockValues:[Z

    aput-boolean v4, v0, v2

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 256
    monitor-exit p1

    goto/16 :goto_3

    :catchall_3
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    .line 300
    :sswitch_5
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 301
    :try_start_4
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mMediaController:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;

    if-eqz v0, :cond_7

    .line 302
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mMediaController:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "android.media.metadata.TITLE"

    .line 304
    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_6
    iput-object v3, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mTrackName:Ljava/lang/String;

    .line 306
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLockValues:[Z

    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    .line 307
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 308
    monitor-exit p1

    goto/16 :goto_3

    :catchall_4
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    .line 289
    :sswitch_6
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 290
    :try_start_5
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mMediaController:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;

    if-eqz v0, :cond_9

    .line 291
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mMediaController:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v1, "android.media.metadata.ALBUM"

    .line 293
    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_8
    iput-object v3, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mAlbumName:Ljava/lang/String;

    .line 295
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLockValues:[Z

    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    .line 296
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 297
    monitor-exit p1

    goto/16 :goto_3

    :catchall_5
    move-exception v0

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v0

    .line 278
    :sswitch_7
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 279
    :try_start_6
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mMediaController:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;

    if-eqz v0, :cond_b

    .line 280
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mMediaController:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v2, "android.media.metadata.ARTIST"

    .line 282
    invoke-virtual {v0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_a
    iput-object v3, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mArtistName:Ljava/lang/String;

    .line 284
    :cond_b
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLockValues:[Z

    aput-boolean v4, v0, v1

    .line 285
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 286
    monitor-exit p1

    goto/16 :goto_3

    :catchall_6
    move-exception v0

    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v0

    .line 268
    :sswitch_8
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 269
    :try_start_7
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    if-eqz v0, :cond_d

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    invoke-interface {v0}, Lcom/sonyericsson/music/proxyservice/MediaPlayback;->getPlaybackState()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 271
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->buildUpon()Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->build()Lcom/sonyericsson/music/common/Track;

    move-result-object v3

    :cond_c
    iput-object v3, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mTrack:Lcom/sonyericsson/music/common/Track;

    .line 273
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLockValues:[Z

    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    .line 274
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 275
    monitor-exit p1

    goto/16 :goto_3

    :catchall_7
    move-exception v0

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v0

    .line 259
    :sswitch_9
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 260
    :try_start_8
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    if-eqz v0, :cond_e

    .line 261
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    invoke-interface {v0}, Lcom/sonyericsson/music/proxyservice/MediaPlayback;->getPlaybackPosition()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mPos:J

    .line 263
    :cond_e
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLockValues:[Z

    aput-boolean v4, v0, v4

    .line 264
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 265
    monitor-exit p1

    goto :goto_3

    :catchall_8
    move-exception v0

    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v0

    .line 242
    :sswitch_a
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mMediaController:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;

    if-eqz p1, :cond_11

    .line 243
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;->prev()V

    goto :goto_3

    .line 230
    :sswitch_b
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mMediaController:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;

    if-eqz p1, :cond_11

    .line 231
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;->next()V

    goto :goto_3

    .line 225
    :sswitch_c
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mMediaController:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;

    if-eqz p1, :cond_11

    .line 226
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;->pause()V

    goto :goto_3

    .line 220
    :sswitch_d
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mMediaController:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;

    if-eqz p1, :cond_11

    .line 221
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;->play()V

    goto :goto_3

    .line 208
    :sswitch_e
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 209
    :try_start_9
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mMediaController:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;

    if-eqz v0, :cond_10

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mMediaController:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 213
    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    if-ne v0, v1, :cond_f

    goto :goto_2

    :cond_f
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mIsPlaying:Z

    .line 215
    :cond_10
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLockValues:[Z

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 217
    monitor-exit p1

    goto :goto_3

    :catchall_9
    move-exception v0

    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw v0

    :cond_11
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_e
        0x14 -> :sswitch_d
        0x1e -> :sswitch_c
        0x28 -> :sswitch_b
        0x32 -> :sswitch_a
        0x3c -> :sswitch_9
        0x46 -> :sswitch_8
        0x50 -> :sswitch_7
        0x5a -> :sswitch_6
        0x64 -> :sswitch_5
        0x6e -> :sswitch_4
        0x78 -> :sswitch_3
        0x82 -> :sswitch_2
        0x8c -> :sswitch_1
        0x96 -> :sswitch_0
    .end sparse-switch
.end method

.method isInPlayqueueMode()Z
    .locals 1

    .line 477
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mIsInPlayqueueMode:Z

    return v0
.end method

.method isInitiated()Z
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mMediaController:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isLocked(I)Z
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLockValues:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method isPlaying()Z
    .locals 1

    .line 356
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mIsPlaying:Z

    return v0
.end method

.method sendMessageAndLock(II)V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mLockValues:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    .line 198
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method setMediaController(Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mMediaController:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;

    return-void
.end method

.method setMediaPlayback(Lcom/sonyericsson/music/proxyservice/MediaPlayback;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    return-void
.end method

.method shutdown()V
    .locals 1

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->setMediaController(Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;)V

    .line 160
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->setMediaPlayback(Lcom/sonyericsson/music/proxyservice/MediaPlayback;)V

    return-void
.end method

.method startPlayback(Landroid/net/Uri;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;->mMediaController:Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;->playFromMediaId(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
