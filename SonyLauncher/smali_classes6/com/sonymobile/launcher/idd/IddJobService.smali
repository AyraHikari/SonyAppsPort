.class public Lcom/sonymobile/launcher/idd/IddJobService;
.super Landroid/app/job/JobService;
.source "IddJobService.java"


# static fields
.field private static final IDD_INTERVAL_TIME:I = 0x93a80

.field private static final IDD_INTERVAL_TIME_DEBUG:I = 0x3c

.field private static final TAG:Ljava/lang/String;

.field private static sLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/sonymobile/launcher/idd/IddJobService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/launcher/idd/IddJobService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static cancel(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 76
    sget-object v0, Lcom/sonymobile/launcher/idd/IddJobService;->TAG:Ljava/lang/String;

    const-string v1, "cancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 79
    .local v0, "scheduler":Landroid/app/job/JobScheduler;
    invoke-static {p0}, Lcom/sonymobile/launcher/idd/IddJobService;->hasPendingJob(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 81
    const/4 v1, 0x0

    sput-object v1, Lcom/sonymobile/launcher/idd/IddJobService;->sLauncher:Lcom/android/launcher3/Launcher;

    .line 83
    :cond_0
    return-void
.end method

.method private static getPendingJob(Landroid/content/Context;)Landroid/app/job/JobInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 90
    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 92
    .local v0, "scheduler":Landroid/app/job/JobScheduler;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v1

    return-object v1
.end method

.method public static hasPendingJob(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 86
    invoke-static {p0}, Lcom/sonymobile/launcher/idd/IddJobService;->getPendingJob(Landroid/content/Context;)Landroid/app/job/JobInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 57
    sget-object v0, Lcom/sonymobile/launcher/idd/IddJobService;->TAG:Ljava/lang/String;

    const-string v1, "schedule()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {p0}, Lcom/sonymobile/launcher/idd/IddJobService;->hasPendingJob(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const-string v1, "schedule() already job scheduled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void

    .line 62
    :cond_0
    invoke-static {p0}, Lcom/sonymobile/launcher/idd/IddJobService;->scheduleJob(Landroid/content/Context;)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 63
    .local v1, "builder":Landroid/app/job/JobInfo$Builder;
    nop

    .line 64
    const-string v2, "jobscheduler"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    .line 65
    .local v2, "scheduler":Landroid/app/job/JobScheduler;
    const/4 v3, 0x1

    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 66
    const-string v3, " could not schedule idd"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_1
    return-void
.end method

.method public static schedule(Landroid/content/Context;Lcom/android/launcher3/Launcher;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 71
    sput-object p1, Lcom/sonymobile/launcher/idd/IddJobService;->sLauncher:Lcom/android/launcher3/Launcher;

    .line 72
    invoke-static {p0}, Lcom/sonymobile/launcher/idd/IddJobService;->schedule(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method private static scheduleJob(Landroid/content/Context;)Landroid/app/job/JobInfo$Builder;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 46
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 47
    .local v0, "sharedPrefs":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/sonymobile/launcher/idd/Debug;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x3c

    goto :goto_0

    :cond_0
    const v1, 0x93a80

    .line 48
    .local v1, "interval":I
    :goto_0
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/sonymobile/launcher/idd/IddJobService;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v2, "componentName":Landroid/content/ComponentName;
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    const/16 v4, 0x80

    invoke-direct {v3, v4, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 50
    .local v3, "builder":Landroid/app/job/JobInfo$Builder;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 51
    mul-int/lit16 v4, v1, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    .line 52
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 53
    return-object v3
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 32
    sget-object v0, Lcom/sonymobile/launcher/idd/IddJobService;->TAG:Ljava/lang/String;

    const-string v1, "onStartJob()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {}, Lcom/sonymobile/launcher/idd/Idd$SettingsStatus;->getInstance()Lcom/sonymobile/launcher/idd/Idd$SettingsStatus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonymobile/launcher/idd/Idd$SettingsStatus;->send(Landroid/content/Context;)V

    .line 34
    invoke-static {}, Lcom/sonymobile/launcher/idd/Idd$AppLaunch;->getInstance()Lcom/sonymobile/launcher/idd/Idd$AppLaunch;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonymobile/launcher/idd/Idd$AppLaunch;->send(Landroid/content/Context;)V

    .line 35
    invoke-static {}, Lcom/sonymobile/launcher/idd/Idd$CustomOrder;->getInstance()Lcom/sonymobile/launcher/idd/Idd$CustomOrder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/launcher/idd/IddJobService;->sLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p0, v1}, Lcom/sonymobile/launcher/idd/Idd$CustomOrder;->send(Landroid/content/Context;Lcom/android/launcher3/Launcher;)V

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 41
    sget-object v0, Lcom/sonymobile/launcher/idd/IddJobService;->TAG:Ljava/lang/String;

    const-string v1, "onStopJob()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v0, 0x0

    return v0
.end method
