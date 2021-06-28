.class Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreatorPreL;
.super Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;
.source "NotificationCreatorPreL.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private setUpNotificationExpandedView()Landroid/widget/RemoteViews;
    .locals 9

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    const/16 v1, 0x58

    const/4 v2, 0x6

    .line 120
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/proxyservice/MediaButtonReceiver;->createInternalMediaButtonPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    const/16 v2, 0x7f

    const/4 v3, 0x3

    .line 124
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/music/proxyservice/MediaButtonReceiver;->createInternalMediaButtonPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v1

    .line 127
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    const/16 v3, 0x57

    const/4 v4, 0x5

    .line 128
    invoke-static {v2, v3, v4}, Lcom/sonyericsson/music/proxyservice/MediaButtonReceiver;->createInternalMediaButtonPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v2

    .line 131
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    const/16 v4, 0x7e

    const/4 v5, 0x4

    .line 132
    invoke-static {v3, v4, v5}, Lcom/sonyericsson/music/proxyservice/MediaButtonReceiver;->createInternalMediaButtonPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v3

    .line 135
    iget-object v4, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.sonyericsson.music.service.internal.DISMISS"

    const-class v7, Lcom/sonyericsson/music/proxyservice/PlaybackService;

    const/4 v8, 0x0

    invoke-direct {v5, v6, v8, v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v6, 0x9

    const/high16 v7, 0x10000000

    invoke-static {v4, v6, v5, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 139
    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0c00b6

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v6, 0x7f090192

    .line 142
    invoke-virtual {v5, v6, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f090179

    .line 143
    invoke-virtual {v5, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f09015e

    .line 144
    invoke-virtual {v5, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f090182

    .line 145
    invoke-virtual {v5, v0, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f090076

    .line 146
    invoke-virtual {v5, v0, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f09015f

    .line 148
    invoke-virtual {v5, v0, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f090193

    .line 149
    invoke-virtual {v5, v0, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object v5
.end method

.method private setUpNotificationView()Landroid/widget/RemoteViews;
    .locals 8

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    const/16 v1, 0x7f

    const/4 v2, 0x0

    .line 90
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/proxyservice/MediaButtonReceiver;->createInternalMediaButtonPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    const/16 v2, 0x57

    const/4 v3, 0x2

    .line 94
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/music/proxyservice/MediaButtonReceiver;->createInternalMediaButtonPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    const/16 v3, 0x7e

    const/4 v4, 0x1

    .line 98
    invoke-static {v2, v3, v4}, Lcom/sonyericsson/music/proxyservice/MediaButtonReceiver;->createInternalMediaButtonPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v2

    .line 101
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sonyericsson.music.service.internal.DISMISS"

    const-class v6, Lcom/sonyericsson/music/proxyservice/PlaybackService;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7, v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v5, 0x8

    const/high16 v6, 0x10000000

    invoke-static {v3, v5, v4, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 105
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0c00b5

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v5, 0x7f090179

    .line 107
    invoke-virtual {v4, v5, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f09015e

    .line 108
    invoke-virtual {v4, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f090182

    .line 109
    invoke-virtual {v4, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f090076

    .line 110
    invoke-virtual {v4, v0, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f09015f

    .line 112
    invoke-virtual {v4, v0, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object v4
.end method


# virtual methods
.method getNotification(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Landroid/app/Notification;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    .line 32
    iget-object v4, v0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez p3, :cond_0

    .line 36
    iget-object v5, v0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0801c1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 38
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object/from16 v5, p3

    .line 41
    :goto_0
    new-instance v6, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v7, v0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreatorPreL;->setUpNotificationView()Landroid/widget/RemoteViews;

    move-result-object v7

    const v8, 0x7f090050

    .line 45
    invoke-virtual {v7, v8, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v9, 0x7f090213

    .line 46
    invoke-virtual {v7, v9, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 v11, 0x0

    if-eqz v3, :cond_1

    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    const/16 v12, 0x8

    :goto_1
    const v13, 0x7f090179

    .line 48
    invoke-virtual {v7, v13, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz v3, :cond_2

    const/16 v12, 0x8

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    :goto_2
    const v14, 0x7f090182

    .line 49
    invoke-virtual {v7, v14, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz v3, :cond_3

    const/4 v12, 0x0

    goto :goto_3

    :cond_3
    const/16 v12, 0x8

    :goto_3
    const v15, 0x7f09015e

    .line 50
    invoke-virtual {v7, v15, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz v3, :cond_4

    const/16 v12, 0x8

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    :goto_4
    const v10, 0x7f09015f

    .line 51
    invoke-virtual {v7, v10, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v12, 0x7f0900db

    if-eqz v5, :cond_5

    .line 54
    invoke-virtual {v7, v12, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 56
    :cond_5
    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 57
    invoke-virtual {v6, v11}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 58
    invoke-virtual {v6, v3}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    const v7, 0x7f0801d3

    .line 59
    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 60
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->getLaunchIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    const-string v4, "transport"

    .line 63
    invoke-virtual {v6, v4}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v4, -0x1

    .line 64
    invoke-virtual {v6, v4}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 66
    invoke-virtual {v6}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 69
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreatorPreL;->setUpNotificationExpandedView()Landroid/widget/RemoteViews;

    move-result-object v6

    if-eqz v3, :cond_6

    const/4 v7, 0x0

    goto :goto_5

    :cond_6
    const/16 v7, 0x8

    .line 71
    :goto_5
    invoke-virtual {v6, v13, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz v3, :cond_7

    const/16 v7, 0x8

    goto :goto_6

    :cond_7
    const/4 v7, 0x0

    .line 72
    :goto_6
    invoke-virtual {v6, v14, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz v3, :cond_8

    const/4 v7, 0x0

    goto :goto_7

    :cond_8
    const/16 v7, 0x8

    .line 73
    :goto_7
    invoke-virtual {v6, v15, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v7, 0x7f090192

    if-eqz v3, :cond_9

    const/4 v13, 0x0

    goto :goto_8

    :cond_9
    const/16 v13, 0x8

    .line 74
    :goto_8
    invoke-virtual {v6, v7, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz v3, :cond_a

    const/16 v7, 0x8

    goto :goto_9

    :cond_a
    const/4 v7, 0x0

    .line 75
    :goto_9
    invoke-virtual {v6, v10, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v7, 0x7f090193

    if-eqz v3, :cond_b

    const/16 v11, 0x8

    .line 76
    :cond_b
    invoke-virtual {v6, v7, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 78
    iput-object v6, v4, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 79
    invoke-virtual {v6, v8, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 80
    invoke-virtual {v6, v9, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    if-eqz v5, :cond_c

    .line 82
    invoke-virtual {v6, v12, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :cond_c
    return-object v4
.end method
