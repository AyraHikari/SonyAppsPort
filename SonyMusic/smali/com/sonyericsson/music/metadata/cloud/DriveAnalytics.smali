.class public Lcom/sonyericsson/music/metadata/cloud/DriveAnalytics;
.super Ljava/lang/Object;
.source "DriveAnalytics.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reportDriveUsageCustomDimension(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-static {p0, v0}, Lcom/sonyericsson/music/metadata/cloud/DriveAnalytics;->reportDriveUsageCustomDimension(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static reportDriveUsageCustomDimension(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 64
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    if-nez p1, :cond_0

    const-string p1, "pref_key_status"

    const/4 v0, 0x1

    .line 68
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "default"

    aput-object v2, v0, v1

    .line 69
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/music/common/SettingsProviderWrapper;->get(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "music_driveUsage"

    .line 79
    invoke-static {p0, v0, p1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->setUserProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "music-gagtm-driveUsage"

    .line 82
    invoke-static {v0, p1}, Lcom/sonymobile/music/common/GoogleAnalyticsConstants$CustomDimensions$CustomDimensionVersion;->addVersionPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "music-gagtm-driveUsage"

    .line 83
    invoke-static {p0, v0, p1}, Lcom/sonymobile/music/common/GoogleAnalyticsProxy;->setCustomDimension(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static reset(Landroid/content/Context;)V
    .locals 4

    .line 31
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    const-string v0, "pref_key_status"

    const/4 v1, 0x1

    .line 33
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/music/common/SettingsProviderWrapper;->get(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "default"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "disconnected"

    .line 37
    invoke-static {p0, v0}, Lcom/sonyericsson/music/metadata/cloud/DriveAnalytics;->updateConnectionState(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static sendDownloadEvent(Landroid/content/Context;)V
    .locals 5

    const-string v0, "drive_download"

    .line 87
    invoke-static {p0, v0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->logEvent(Landroid/content/Context;Ljava/lang/String;)Z

    const-string v0, "drive"

    const-string v1, "download"

    const-string v2, ""

    const-wide/16 v3, 0x0

    .line 90
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 89
    invoke-static {p0, v0, v1, v2, v3}, Lcom/sonymobile/music/common/GoogleAnalyticsProxy;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static sendLocalPlayEvent(Landroid/content/Context;)V
    .locals 5

    const-string v0, "drive_local_play"

    .line 101
    invoke-static {p0, v0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->logEvent(Landroid/content/Context;Ljava/lang/String;)Z

    const-string v0, "drive"

    const-string v1, "local_play"

    const-string v2, ""

    const-wide/16 v3, 0x0

    .line 104
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 103
    invoke-static {p0, v0, v1, v2, v3}, Lcom/sonymobile/music/common/GoogleAnalyticsProxy;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static sendRemotePlayEvent(Landroid/content/Context;)V
    .locals 5

    const-string v0, "drive_remote_play"

    .line 94
    invoke-static {p0, v0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->logEvent(Landroid/content/Context;Ljava/lang/String;)Z

    const-string v0, "drive"

    const-string v1, "remote_play"

    const-string v2, ""

    const-wide/16 v3, 0x0

    .line 97
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 96
    invoke-static {p0, v0, v1, v2, v3}, Lcom/sonymobile/music/common/GoogleAnalyticsProxy;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static updateConnectionState(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 44
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonyericsson/music/metadata/cloud/DriveAnalytics$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/music/metadata/cloud/DriveAnalytics$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
