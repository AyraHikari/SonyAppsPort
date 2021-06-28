.class public Lcom/sonyericsson/music/proxyservice/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# static fields
.field private static final WAKELOCK_TIME:I = 0x1388

.field private static sAutoDismissAlarmPendingIntent:Landroid/app/PendingIntent;

.field private static sSleepTimerAlarmPendingIntent:Landroid/app/PendingIntent;

.field private static sTimedWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private acquireTimedWakeLock(Landroid/content/Context;)V
    .locals 2

    .line 112
    sget-object v0, Lcom/sonyericsson/music/proxyservice/AlarmReceiver;->sTimedWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    const-string v0, "power"

    .line 113
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 v0, 0x1

    const-class v1, Lcom/sonyericsson/music/proxyservice/AlarmReceiver;

    .line 115
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    sput-object p1, Lcom/sonyericsson/music/proxyservice/AlarmReceiver;->sTimedWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 117
    :cond_0
    sget-object p1, Lcom/sonyericsson/music/proxyservice/AlarmReceiver;->sTimedWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x1388

    .line 118
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_1
    return-void
.end method

.method public static getNotificationAutoDismissBroadcast(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .line 79
    sget-object v0, Lcom/sonyericsson/music/proxyservice/AlarmReceiver;->sAutoDismissAlarmPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sonyericsson/music/proxyservice/AlarmReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.sonyericsson.music.service.internal.DISMISS"

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.service.internal.EXTRA_DISMISS_IS_AUTOMATIC"

    const/4 v2, 0x1

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    sput-object p0, Lcom/sonyericsson/music/proxyservice/AlarmReceiver;->sAutoDismissAlarmPendingIntent:Landroid/app/PendingIntent;

    .line 86
    :cond_0
    sget-object p0, Lcom/sonyericsson/music/proxyservice/AlarmReceiver;->sAutoDismissAlarmPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public static getSleepTimerPauseBroadcast(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .line 68
    sget-object v0, Lcom/sonyericsson/music/proxyservice/AlarmReceiver;->sSleepTimerAlarmPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sonyericsson/music/proxyservice/AlarmReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.sonyericsson.music.service.internal.ACTION_PLAYBACK_PAUSE"

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "timer_extra"

    const/4 v2, 0x1

    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    sput-object p0, Lcom/sonyericsson/music/proxyservice/AlarmReceiver;->sSleepTimerAlarmPendingIntent:Landroid/app/PendingIntent;

    .line 75
    :cond_0
    sget-object p0, Lcom/sonyericsson/music/proxyservice/AlarmReceiver;->sSleepTimerAlarmPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public static setExactRtcAlarm(Landroid/app/AlarmManager;Landroid/app/PendingIntent;J)J
    .locals 3

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 93
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p3, 0x0

    const/16 v2, 0x17

    if-lt p2, v2, :cond_0

    .line 94
    invoke-virtual {p0, p3, v0, v1, p1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x13

    if-lt p2, v2, :cond_1

    .line 96
    invoke-virtual {p0, p3, v0, v1, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {p0, p3, v0, v1, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :goto_0
    return-wide v0
.end method

.method public static setInExactRtcAlarm(Landroid/app/AlarmManager;Landroid/app/PendingIntent;J)J
    .locals 2

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    const/4 p2, 0x0

    .line 107
    invoke-virtual {p0, p2, v0, v1, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-wide v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 37
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.sonyericsson.music.service.internal.ACTION_PLAYBACK_PAUSE"

    .line 39
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 41
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/sonyericsson/music/proxyservice/PlaybackService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.sonyericsson.music.service.internal.ACTION_PLAYBACK_PAUSE"

    .line 42
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "timer_extra"

    .line 43
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 46
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/AlarmReceiver;->acquireTimedWakeLock(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const-string v0, "com.sonyericsson.music.service.internal.DISMISS"

    .line 51
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 53
    :try_start_1
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/sonyericsson/music/proxyservice/PlaybackService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.sonyericsson.music.service.internal.DISMISS"

    .line 54
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.sonyericsson.music.service.internal.EXTRA_DISMISS_IS_AUTOMATIC"

    .line 55
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 56
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 58
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/AlarmReceiver;->acquireTimedWakeLock(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method
