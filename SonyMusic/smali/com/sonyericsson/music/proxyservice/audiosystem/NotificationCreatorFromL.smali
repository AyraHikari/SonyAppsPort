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

    .line 37
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreatorFromL;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    return-void
.end method


# virtual methods
.method getNotification(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Landroid/app/Notification;
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 48
    new-instance v0, Landroidx/media/app/NotificationCompat$MediaStyle;

    invoke-direct {v0}, Landroidx/media/app/NotificationCompat$MediaStyle;-><init>()V

    .line 50
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreatorFromL;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media/app/NotificationCompat$MediaStyle;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroidx/media/app/NotificationCompat$MediaStyle;

    .line 52
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    const/16 v2, 0x58

    const/4 v3, 0x6

    .line 53
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/music/proxyservice/MediaButtonReceiver;->createInternalMediaButtonPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    const/16 v4, 0x7f

    .line 57
    invoke-static {v2, v4, v3}, Lcom/sonyericsson/music/proxyservice/MediaButtonReceiver;->createInternalMediaButtonPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v2

    .line 60
    iget-object v4, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    const/16 v5, 0x57

    const/4 v6, 0x5

    .line 61
    invoke-static {v4, v5, v6}, Lcom/sonyericsson/music/proxyservice/MediaButtonReceiver;->createInternalMediaButtonPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v4

    .line 64
    iget-object v5, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    const/16 v6, 0x7e

    const/4 v7, 0x4

    .line 65
    invoke-static {v5, v6, v7}, Lcom/sonyericsson/music/proxyservice/MediaButtonReceiver;->createInternalMediaButtonPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v5

    .line 69
    iget-object v6, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.sonyericsson.music.service.internal.DISMISS"

    const-class v9, Lcom/sonyericsson/music/proxyservice/PlaybackService;

    const/4 v10, 0x0

    invoke-direct {v7, v8, v10, v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v8, 0x9

    const/high16 v9, 0x10000000

    invoke-static {v6, v8, v7, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 73
    iget-object v7, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 74
    new-instance v8, Landroidx/core/app/NotificationCompat$Action;

    const v9, 0x7f10006f

    .line 76
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0801c7

    invoke-direct {v8, v10, v9, v1}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    if-eqz p4, :cond_0

    .line 79
    new-instance v1, Landroidx/core/app/NotificationCompat$Action;

    const v5, 0x7f0801d4

    const v9, 0x7f10006b

    .line 81
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v5, v9, v2}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 83
    :cond_0
    new-instance v1, Landroidx/core/app/NotificationCompat$Action;

    const v2, 0x7f0801d6

    const v9, 0x7f10006c

    .line 85
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v2, v9, v5}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 87
    :goto_0
    new-instance v2, Landroidx/core/app/NotificationCompat$Action;

    const v5, 0x7f0801d0

    const v9, 0x7f10006a

    .line 89
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v5, v7, v4}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 91
    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v0, v3}, Landroidx/media/app/NotificationCompat$MediaStyle;->setShowActionsInCompactView([I)Landroidx/media/app/NotificationCompat$MediaStyle;

    if-nez p3, :cond_1

    .line 94
    iget-object p3, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v3, 0x7f0801c1

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    .line 96
    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p3

    .line 99
    :cond_1
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    const-string v5, "playback"

    invoke-direct {v3, v4, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x7f0801d3

    .line 101
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 102
    invoke-virtual {v3, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 103
    invoke-virtual {v3, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 104
    invoke-virtual {v3, p3}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 105
    invoke-virtual {v3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    const-string p3, "transport"

    .line 106
    invoke-virtual {v3, p3}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " - "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-virtual {v3, p1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 p1, 0x0

    .line 108
    invoke-virtual {v3, p1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 109
    invoke-virtual {v3, p4}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 110
    invoke-virtual {v3, v8}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    .line 111
    invoke-virtual {v3, v1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    .line 112
    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    .line 113
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->getLaunchIntent()Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 114
    invoke-virtual {v3, p1}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    const-wide/16 p2, 0x0

    .line 115
    invoke-virtual {v3, p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    const/4 p2, 0x1

    .line 116
    invoke-virtual {v3, p2}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 117
    invoke-virtual {v3, v6}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 118
    invoke-virtual {v3, p1}, Landroidx/core/app/NotificationCompat$Builder;->setColorized(Z)Landroidx/core/app/NotificationCompat$Builder;

    const/4 p1, -0x1

    .line 119
    invoke-virtual {v3, p1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 120
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method
