.class public final Lcom/sonyericsson/music/proxyservice/MediaButtonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaButtonReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static createInternalMediaButtonPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 2

    .line 60
    const-class v0, Lcom/sonyericsson/music/proxyservice/MediaButtonReceiver;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/sonyericsson/music/proxyservice/MediaButtonReceiver;->createInternalMediaButtonPendingIntent(Landroid/content/Context;IILjava/lang/Class;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method static createInternalMediaButtonPendingIntent(Landroid/content/Context;IILjava/lang/Class;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.KEY_EVENT"

    .line 72
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p3, :cond_0

    .line 74
    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, p0, p3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    if-eqz p4, :cond_1

    .line 77
    invoke-virtual {v0, p4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/high16 p1, 0x10000000

    .line 81
    sget-boolean p3, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_S_API:Z

    if-eqz p3, :cond_2

    const/high16 p1, 0x14000000

    .line 85
    :cond_2
    invoke-static {p0, p2, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private isSupportedMediaKey(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "android.intent.extra.KEY_EVENT"

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/KeyEvent;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 95
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v1, 0x56

    if-eq p1, v1, :cond_0

    const/16 v1, 0x4f

    if-eq p1, v1, :cond_0

    const/16 v1, 0x55

    if-eq p1, v1, :cond_0

    const/16 v1, 0x7e

    if-eq p1, v1, :cond_0

    const/16 v1, 0x7f

    if-eq p1, v1, :cond_0

    const/16 v1, 0x57

    if-eq p1, v1, :cond_0

    const/16 v1, 0x58

    if-eq p1, v1, :cond_0

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_0

    const/16 v1, 0x59

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.sonyericsson.music.intent.action.MEDIA_BUTTON"

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    :cond_0
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/proxyservice/MediaButtonReceiver;->isSupportedMediaKey(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    .line 41
    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->getMediaBrowserConnection(Landroid/content/Context;)Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;

    move-result-object p1

    .line 42
    invoke-virtual {p1, p2, v0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->addIntent(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V

    .line 44
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 45
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    :cond_1
    return-void
.end method
