.class public final Lcom/sonyericsson/music/proxyservice/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"


# static fields
.field private static final COMPLEMENTARY_WHITELIST:[[Ljava/lang/String;

.field private static final WHITELISTED_BROADCAST_PACKAGES:[Ljava/lang/String;


# instance fields
.field final mContext:Landroid/content/Context;

.field private mNotificationId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x5

    .line 36
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.sonyericsson.musicvisualizer"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "com.sonymobile.lifelog"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "com.sonyericsson.advancedwidget.music"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "com.sonyericsson.tvlauncher"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "com.sonymobile.carhome"

    const/4 v5, 0x4

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/music/proxyservice/Notifier;->WHITELISTED_BROADCAST_PACKAGES:[Ljava/lang/String;

    .line 45
    new-array v0, v3, [[Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/String;

    const-string v4, "com.sonyericsson.advancedwidget.music"

    aput-object v4, v1, v2

    const-string v4, "com.sonyericsson.home"

    aput-object v4, v1, v3

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/music/proxyservice/Notifier;->COMPLEMENTARY_WHITELIST:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/sonyericsson/music/proxyservice/Notifier;->mNotificationId:I

    if-eqz p1, :cond_0

    .line 56
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/Notifier;->mContext:Landroid/content/Context;

    return-void

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context is not allowed to be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static addReceiverForegroundFlag(Landroid/content/Intent;)V
    .locals 2

    .line 373
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/high16 v0, 0x10000000

    .line 374
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private static addTrackUriStringExtra(Landroid/content/Intent;Lcom/sonyericsson/music/common/Track;)V
    .locals 1

    .line 361
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "TRACK_URI"

    .line 363
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private getComplementaryWhitelisting(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 423
    sget-object v0, Lcom/sonyericsson/music/proxyservice/Notifier;->COMPLEMENTARY_WHITELIST:[[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 427
    sget-object v4, Lcom/sonyericsson/music/proxyservice/Notifier;->COMPLEMENTARY_WHITELIST:[[Ljava/lang/String;

    aget-object v4, v4, v2

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 428
    sget-object v3, Lcom/sonyericsson/music/proxyservice/Notifier;->COMPLEMENTARY_WHITELIST:[[Ljava/lang/String;

    aget-object v3, v3, v2

    const/4 v4, 0x1

    aget-object v3, v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    move-object p1, v3

    :cond_2
    return-object p1
.end method

.method private sendBroadcast(Landroid/content/Intent;)V
    .locals 5

    .line 386
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/Notifier;->sendInternalBroadcast(Landroid/content/Intent;)V

    .line 388
    sget-object v0, Lcom/sonyericsson/music/proxyservice/Notifier;->WHITELISTED_BROADCAST_PACKAGES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 389
    iget-object v4, p0, Lcom/sonyericsson/music/proxyservice/Notifier;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/sonyericsson/music/common/AvailabilityUtils;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 390
    invoke-direct {p0, v3}, Lcom/sonyericsson/music/proxyservice/Notifier;->getComplementaryWhitelisting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 391
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 392
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendBroadcastOrdered(Landroid/content/Intent;)V
    .locals 6

    .line 406
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/Notifier;->sendInternalBroadcastOrdered(Landroid/content/Intent;)V

    .line 408
    sget-object v0, Lcom/sonyericsson/music/proxyservice/Notifier;->WHITELISTED_BROADCAST_PACKAGES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 409
    iget-object v4, p0, Lcom/sonyericsson/music/proxyservice/Notifier;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/sonyericsson/music/common/AvailabilityUtils;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 410
    invoke-direct {p0, v3}, Lcom/sonyericsson/music/proxyservice/Notifier;->getComplementaryWhitelisting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 411
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 412
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/Notifier;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendInternalBroadcast(Landroid/content/Intent;)V
    .locals 2

    .line 379
    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/Notifier;->addReceiverForegroundFlag(Landroid/content/Intent;)V

    .line 380
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/Notifier;->mContext:Landroid/content/Context;

    const-string v1, "com.sonyericsson.music.permission.BROADCAST"

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private sendInternalBroadcastOrdered(Landroid/content/Intent;)V
    .locals 2

    .line 399
    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/Notifier;->addReceiverForegroundFlag(Landroid/content/Intent;)V

    .line 400
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/Notifier;->mContext:Landroid/content/Context;

    const-string v1, "com.sonyericsson.music.permission.BROADCAST"

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clearNotification(Landroid/content/Context;)V
    .locals 2

    .line 69
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/Notifier;->mNotificationId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 70
    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    .line 71
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    const/4 p1, -0x1

    .line 72
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/proxyservice/Notifier;->registerNotificationId(I)V

    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/Notifier;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public notifyBufferingUpdated()V
    .locals 2

    .line 344
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/Notifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getBufferingUpdatedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/Notifier;->sendInternalBroadcastOrdered(Landroid/content/Intent;)V

    return-void
.end method

.method public notifyEnqueued(I)V
    .locals 2

    .line 353
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.playbackcontrol.ENQUEUED_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ENQUEUED_TYPE"

    .line 354
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/Notifier;->mContext:Landroid/content/Context;

    const-string v1, "com.sonyericsson.music.permission.BROADCAST"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public notifyPlaybackError(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 321
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/Notifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getPlaybackErrorIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ERROR_CODE"

    .line 322
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "ERROR_TITLE"

    .line 323
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "ERROR_MSG"

    .line 324
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "ERROR_PLAYING"

    .line 325
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 326
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/Notifier;->sendBroadcastOrdered(Landroid/content/Intent;)V

    .line 328
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public notifyRepeatModeChanged(I)V
    .locals 2

    .line 338
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/Notifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getRepeatModeChangedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "REPEAT_MODE"

    .line 339
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/Notifier;->sendInternalBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public notifyShuffleChanged(Z)V
    .locals 2

    .line 332
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/Notifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getShuffleChangedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "IS_SHUFFLED"

    .line 333
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 334
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/Notifier;->sendInternalBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public notifyTrackCompleted(Lcom/sonyericsson/music/common/Track;IJ)V
    .locals 4

    if-eqz p1, :cond_0

    .line 168
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/Notifier;->mContext:Landroid/content/Context;

    .line 169
    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackCompletedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "TRACK_ID"

    .line 171
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "TRACK_NAME"

    .line 173
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ARTIST_ID"

    .line 175
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getArtistId()J

    move-result-wide v2

    .line 174
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "ARTIST_NAME"

    .line 177
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getArtist()Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ALBUM_ID"

    .line 179
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getAlbumId()J

    move-result-wide v2

    .line 178
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "ALBUM_NAME"

    .line 181
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getAlbum()Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "TRACK_POSITION"

    .line 182
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "TIMESTAMP_MS"

    .line 184
    invoke-virtual {v0, p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 185
    invoke-static {v0, p1}, Lcom/sonyericsson/music/proxyservice/Notifier;->addTrackUriStringExtra(Landroid/content/Intent;Lcom/sonyericsson/music/common/Track;)V

    .line 186
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/Notifier;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public notifyTrackPaused(Lcom/sonyericsson/music/common/Track;IJ)V
    .locals 4

    if-eqz p1, :cond_0

    .line 257
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/Notifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackPausedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "TRACK_ID"

    .line 258
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "TRACK_NAME"

    .line 260
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ARTIST_ID"

    .line 262
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getArtistId()J

    move-result-wide v2

    .line 261
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "ARTIST_NAME"

    .line 264
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getArtist()Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ALBUM_ID"

    .line 266
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getAlbumId()J

    move-result-wide v2

    .line 265
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "ALBUM_NAME"

    .line 268
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getAlbum()Ljava/lang/String;

    move-result-object v2

    .line 267
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "TRACK_POSITION"

    .line 269
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "TIMESTAMP_MS"

    .line 270
    invoke-virtual {v0, p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 271
    invoke-static {v0, p1}, Lcom/sonyericsson/music/proxyservice/Notifier;->addTrackUriStringExtra(Landroid/content/Intent;Lcom/sonyericsson/music/common/Track;)V

    .line 272
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/Notifier;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public notifyTrackPrepared(Lcom/sonyericsson/music/common/Track;J)V
    .locals 4

    if-eqz p1, :cond_0

    .line 137
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/Notifier;->mContext:Landroid/content/Context;

    .line 138
    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackPreparedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "TRACK_ID"

    .line 139
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "TRACK_NAME"

    .line 141
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ARTIST_ID"

    .line 143
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getArtistId()J

    move-result-wide v2

    .line 142
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "ARTIST_NAME"

    .line 145
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getArtist()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ALBUM_ID"

    .line 147
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getAlbumId()J

    move-result-wide v2

    .line 146
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "ALBUM_NAME"

    .line 149
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getAlbum()Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "IS_LOCAL"

    .line 151
    invoke-static {p1}, Lcom/sonyericsson/music/common/Track;->isTrackMediaStoreContent(Lcom/sonyericsson/music/common/Track;)Z

    move-result v2

    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "TIMESTAMP_MS"

    .line 152
    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 153
    invoke-static {v0, p1}, Lcom/sonyericsson/music/proxyservice/Notifier;->addTrackUriStringExtra(Landroid/content/Intent;Lcom/sonyericsson/music/common/Track;)V

    .line 154
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/Notifier;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public notifyTrackSeeked(Lcom/sonyericsson/music/common/Track;IZJ)V
    .locals 4

    if-eqz p1, :cond_0

    .line 286
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/Notifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackSeekedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "TRACK_ID"

    .line 288
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getId()J

    move-result-wide v2

    .line 287
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "TRACK_NAME"

    .line 290
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 289
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ARTIST_ID"

    .line 292
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getArtistId()J

    move-result-wide v2

    .line 291
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "ARTIST_NAME"

    .line 294
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getArtist()Ljava/lang/String;

    move-result-object v2

    .line 293
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ALBUM_ID"

    .line 296
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getAlbumId()J

    move-result-wide v2

    .line 295
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "ALBUM_NAME"

    .line 298
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getAlbum()Ljava/lang/String;

    move-result-object v2

    .line 297
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "TRACK_POSITION"

    .line 299
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "TRACK_DURATION"

    .line 301
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getDuration()I

    move-result v1

    .line 300
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "SEEK_FORWARD"

    .line 302
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "TIMESTAMP_MS"

    .line 303
    invoke-virtual {v0, p2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 304
    invoke-static {v0, p1}, Lcom/sonyericsson/music/proxyservice/Notifier;->addTrackUriStringExtra(Landroid/content/Intent;Lcom/sonyericsson/music/common/Track;)V

    .line 305
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/Notifier;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public notifyTrackSkipped(Lcom/sonyericsson/music/common/Track;IJ)V
    .locals 4

    if-eqz p1, :cond_0

    .line 227
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/Notifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackSkippedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "TRACK_ID"

    .line 228
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "TRACK_NAME"

    .line 230
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ARTIST_ID"

    .line 232
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getArtistId()J

    move-result-wide v2

    .line 231
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "ARTIST_NAME"

    .line 234
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getArtist()Ljava/lang/String;

    move-result-object v2

    .line 233
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ALBUM_ID"

    .line 236
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getAlbumId()J

    move-result-wide v2

    .line 235
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "ALBUM_NAME"

    .line 238
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getAlbum()Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "TRACK_POSITION"

    .line 239
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "TRACK_DURATION"

    .line 241
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getDuration()I

    move-result v1

    .line 240
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "TIMESTAMP_MS"

    .line 242
    invoke-virtual {v0, p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 243
    invoke-static {v0, p1}, Lcom/sonyericsson/music/proxyservice/Notifier;->addTrackUriStringExtra(Landroid/content/Intent;Lcom/sonyericsson/music/common/Track;)V

    .line 244
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/Notifier;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public notifyTrackStarted(Lcom/sonyericsson/music/common/Track;J)V
    .locals 4

    if-eqz p1, :cond_0

    .line 198
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/Notifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackStartedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "TRACK_ID"

    .line 199
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "TRACK_NAME"

    .line 201
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ARTIST_ID"

    .line 203
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getArtistId()J

    move-result-wide v2

    .line 202
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "ARTIST_NAME"

    .line 205
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getArtist()Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ALBUM_ID"

    .line 207
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getAlbumId()J

    move-result-wide v2

    .line 206
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "ALBUM_NAME"

    .line 209
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getAlbum()Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "TRACK_DURATION"

    .line 211
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getDuration()I

    move-result v2

    .line 210
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "TIMESTAMP_MS"

    .line 212
    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 213
    invoke-static {v0, p1}, Lcom/sonyericsson/music/proxyservice/Notifier;->addTrackUriStringExtra(Landroid/content/Intent;Lcom/sonyericsson/music/common/Track;)V

    .line 214
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/Notifier;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public notifyTrackToBePrepared(Lcom/sonyericsson/music/common/Track;Landroid/net/Uri;IJ)V
    .locals 4

    if-eqz p1, :cond_1

    .line 95
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/Notifier;->mContext:Landroid/content/Context;

    .line 96
    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackToBePreparedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "TRACK_ID"

    .line 97
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "TRACK_NAME"

    .line 99
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ARTIST_ID"

    .line 101
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getArtistId()J

    move-result-wide v2

    .line 100
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "ARTIST_NAME"

    .line 103
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getArtist()Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ALBUM_ID"

    .line 105
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getAlbumId()J

    move-result-wide v2

    .line 104
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "ALBUM_NAME"

    .line 107
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getAlbum()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "IS_LOCAL"

    .line 109
    invoke-static {p1}, Lcom/sonyericsson/music/common/Track;->isTrackMediaStoreContent(Lcom/sonyericsson/music/common/Track;)Z

    move-result v2

    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "PLAYQUEUE_SUPPORTED"

    .line 110
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/Notifier;->mContext:Landroid/content/Context;

    .line 111
    invoke-static {v2, p1}, Lcom/sonyericsson/music/common/Track;->isTrackPlayQueueSupported(Landroid/content/Context;Lcom/sonyericsson/music/common/Track;)Z

    move-result v2

    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "TRACK_POSITION"

    .line 113
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v2

    .line 112
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "TIMESTAMP_MS"

    .line 114
    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 117
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "PREVIOUS_TRACK_URI"

    .line 118
    invoke-virtual {v0, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "PREVIOUS_TRACK_POSITION"

    .line 120
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    :cond_0
    invoke-static {v0, p1}, Lcom/sonyericsson/music/proxyservice/Notifier;->addTrackUriStringExtra(Landroid/content/Intent;Lcom/sonyericsson/music/common/Track;)V

    .line 125
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/Notifier;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public registerNotificationId(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/sonyericsson/music/proxyservice/Notifier;->mNotificationId:I

    return-void
.end method

.method public sendNotification(Landroid/app/Notification;Z)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 77
    iget p2, p0, Lcom/sonyericsson/music/proxyservice/Notifier;->mNotificationId:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 78
    :cond_0
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/Notifier;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p2

    const/4 v0, 0x2

    .line 79
    invoke-virtual {p2, v0, p1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/proxyservice/Notifier;->registerNotificationId(I)V

    :cond_1
    return-void
.end method
