.class Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreatorFromL;
.super Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;
.source "NotificationCreatorFromL.java"


# static fields
.field private static final NEXT_ACTION_INDEX:I = 0x2

.field private static final PLAY_PAUSE_ACTION_INDEX:I = 0x1

.field private static final PREV_ACTION_INDEX:I


# instance fields
.field private mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreatorFromL;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    return-void
.end method


# virtual methods
.method getNotification(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Landroid/app/Notification;
    .locals 16
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    .line 46
    iget-object v3, v0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    move-object/from16 v4, p2

    invoke-static {v3, v4}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    new-instance v4, Landroidx/media/app/NotificationCompat$MediaStyle;

    invoke-direct {v4}, Landroidx/media/app/NotificationCompat$MediaStyle;-><init>()V

    .line 51
    iget-object v5, v0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreatorFromL;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v5}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/media/app/NotificationCompat$MediaStyle;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroidx/media/app/NotificationCompat$MediaStyle;

    .line 53
    iget-object v5, v0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    const/16 v6, 0x58

    const/4 v7, 0x6

    .line 54
    invoke-static {v5, v6, v7}, Lcom/sonyericsson/music/proxyservice/MediaButtonReceiver;->createInternalMediaButtonPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v5

    .line 57
    iget-object v6, v0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    const/4 v7, 0x3

    const/16 v8, 0x7f

    .line 58
    invoke-static {v6, v8, v7}, Lcom/sonyericsson/music/proxyservice/MediaButtonReceiver;->createInternalMediaButtonPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v6

    .line 61
    iget-object v8, v0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    const/16 v9, 0x57

    const/4 v10, 0x5

    .line 62
    invoke-static {v8, v9, v10}, Lcom/sonyericsson/music/proxyservice/MediaButtonReceiver;->createInternalMediaButtonPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v8

    .line 65
    iget-object v9, v0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    const/16 v10, 0x7e

    const/4 v11, 0x4

    .line 66
    invoke-static {v9, v10, v11}, Lcom/sonyericsson/music/proxyservice/MediaButtonReceiver;->createInternalMediaButtonPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v9

    .line 71
    sget-boolean v10, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_S_API:Z

    if-eqz v10, :cond_0

    const/high16 v10, 0x14000000

    goto :goto_0

    :cond_0
    const/high16 v10, 0x10000000

    .line 74
    :goto_0
    iget-object v11, v0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    const/16 v12, 0x9

    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.sonyericsson.music.service.internal.DISMISS"

    const/4 v15, 0x0

    const-class v7, Lcom/sonyericsson/music/proxyservice/PlaybackService;

    invoke-direct {v13, v14, v15, v11, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v11, v12, v13, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 78
    iget-object v10, v0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 79
    new-instance v11, Landroidx/core/app/NotificationCompat$Action;

    const v12, 0x7f0801c7

    const v13, 0x7f10006f

    .line 81
    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13, v5}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    if-eqz v2, :cond_1

    .line 84
    new-instance v5, Landroidx/core/app/NotificationCompat$Action;

    const v9, 0x7f0801d4

    const v12, 0x7f10006b

    .line 86
    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v9, v12, v6}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_1

    .line 88
    :cond_1
    new-instance v5, Landroidx/core/app/NotificationCompat$Action;

    const v6, 0x7f0801d6

    const v12, 0x7f10006c

    .line 90
    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v6, v12, v9}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 92
    :goto_1
    new-instance v6, Landroidx/core/app/NotificationCompat$Action;

    const v9, 0x7f0801d0

    const v12, 0x7f10006a

    .line 94
    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v9, v10, v8}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v8, 0x3

    .line 96
    new-array v8, v8, [I

    fill-array-data v8, :array_0

    invoke-virtual {v4, v8}, Landroidx/media/app/NotificationCompat$MediaStyle;->setShowActionsInCompactView([I)Landroidx/media/app/NotificationCompat$MediaStyle;

    if-nez p3, :cond_2

    .line 99
    iget-object v8, v0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0801c1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .line 101
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_2

    :cond_2
    move-object/from16 v8, p3

    .line 104
    :goto_2
    new-instance v9, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v10, v0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    const-string v12, "playback"

    invoke-direct {v9, v10, v12}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v10, 0x7f0801d3

    .line 106
    invoke-virtual {v9, v10}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 107
    invoke-virtual {v9, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 108
    invoke-virtual {v9, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 109
    invoke-virtual {v9, v8}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 110
    invoke-virtual {v9, v4}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    const-string v4, "transport"

    .line 111
    invoke-virtual {v9, v4}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {v9, v1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v1, 0x0

    .line 113
    invoke-virtual {v9, v1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 114
    invoke-virtual {v9, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 115
    invoke-virtual {v9, v11}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    .line 116
    invoke-virtual {v9, v5}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    .line 117
    invoke-virtual {v9, v6}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->getLaunchIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 119
    invoke-virtual {v9, v1}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    const-wide/16 v2, 0x0

    .line 120
    invoke-virtual {v9, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v2, 0x1

    .line 121
    invoke-virtual {v9, v2}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 122
    invoke-virtual {v9, v7}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 123
    invoke-virtual {v9, v1}, Landroidx/core/app/NotificationCompat$Builder;->setColorized(Z)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v1, -0x1

    .line 124
    invoke-virtual {v9, v1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 125
    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    return-object v1

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method
