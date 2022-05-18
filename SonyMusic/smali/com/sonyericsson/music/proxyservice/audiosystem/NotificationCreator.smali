.class abstract Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;
.super Ljava/lang/Object;
.source "NotificationCreator.java"


# static fields
.field protected static final PENDING_INTENT_REQUEST_CODE_DISMISS:I = 0x8

.field protected static final PENDING_INTENT_REQUEST_CODE_EXPANDED_DISMISS:I = 0x9

.field protected static final PENDING_INTENT_REQUEST_CODE_EXPANDED_NEXT:I = 0x5

.field protected static final PENDING_INTENT_REQUEST_CODE_EXPANDED_PAUSE:I = 0x3

.field protected static final PENDING_INTENT_REQUEST_CODE_EXPANDED_PLAY:I = 0x4

.field protected static final PENDING_INTENT_REQUEST_CODE_EXPANDED_PREV:I = 0x6

.field protected static final PENDING_INTENT_REQUEST_CODE_LAUNCH:I = 0x7

.field protected static final PENDING_INTENT_REQUEST_CODE_NEXT:I = 0x2

.field protected static final PENDING_INTENT_REQUEST_CODE_PAUSE:I = 0x0

.field protected static final PENDING_INTENT_REQUEST_CODE_PLAY:I = 0x1


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    return-void
.end method

.method static getNotificationCreator(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat;)Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;
    .locals 2

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 35
    new-instance v0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreatorFromL;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreatorFromL;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat;)V

    return-object v0

    .line 37
    :cond_0
    new-instance p1, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreatorPreL;

    invoke-direct {p1, p0}, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreatorPreL;-><init>(Landroid/content/Context;)V

    return-object p1
.end method


# virtual methods
.method getLaunchIntent()Landroid/app/PendingIntent;
    .locals 4

    .line 46
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "launch_player"

    const/4 v2, 0x1

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    sget-boolean v1, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_S_API:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x14000000

    goto :goto_0

    :cond_0
    const/high16 v1, 0x10000000

    .line 53
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->mContext:Landroid/content/Context;

    const/4 v3, 0x7

    .line 54
    invoke-static {v2, v3, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method abstract getNotification(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Landroid/app/Notification;
.end method
