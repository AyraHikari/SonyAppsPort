.class public Lcom/sonyericsson/music/datacollection/dataplatform/DataPlatformReporter;
.super Ljava/lang/Object;
.source "DataPlatformReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final ACTION_REPORT_PLAY_DATA:Ljava/lang/String; = "com.sonyericsson.music.dataplatform.ACTION_REPORT_PLAY_DATA"

.field public static final ACTION_REPORT_USER_DATA:Ljava/lang/String; = "com.sonyericsson.music.dataplatform.ACTION_REPORT_USER_DATA"

.field private static final USER_REPORT_INTERVAL:J = 0x5265c00L


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/datacollection/dataplatform/DataPlatformReporter;->mAppContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/sonyericsson/music/datacollection/dataplatform/DataPlatformReporter;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method private getUserMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .line 112
    invoke-static {p1}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 116
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->getTracksCounts(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v0

    .line 117
    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->getAlbumsCount(Landroid/content/Context;)I

    move-result v5

    .line 118
    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->getArtistsCount(Landroid/content/Context;)I

    move-result v6

    .line 119
    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->getAllPlaylistsCount(Landroid/content/Context;)I

    move-result v7

    .line 120
    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->getUserCreatedPlaylistsCount(Landroid/content/Context;)I

    move-result v8

    .line 122
    new-instance p1, Lcom/sonyericsson/music/datacollection/dataplatform/User;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/sonyericsson/music/datacollection/dataplatform/User;-><init>(IIIIII)V

    .line 126
    :try_start_0
    invoke-virtual {p1}, Lcom/sonyericsson/music/datacollection/dataplatform/User;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method

.method private getUserTrackPlayMessage(Lcom/sonyericsson/music/datacollection/dataplatform/TrackPlay;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 140
    new-instance v0, Lcom/sonyericsson/music/datacollection/dataplatform/UserPlay;

    invoke-direct {v0}, Lcom/sonyericsson/music/datacollection/dataplatform/UserPlay;-><init>()V

    .line 141
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/datacollection/dataplatform/UserPlay;->setPlayback(Lcom/sonyericsson/music/datacollection/dataplatform/TrackPlay;)V

    .line 143
    :try_start_0
    invoke-virtual {v0}, Lcom/sonyericsson/music/datacollection/dataplatform/UserPlay;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private sendMessage(Ljava/lang/String;)V
    .locals 4

    .line 160
    invoke-static {}, Lcom/sonyericsson/music/datacollection/dataplatform/DataPlatformUtils;->checkIddSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "com.sonyericsson.music"

    const-string v1, "9.4.10.A.0.22"

    const v2, 0x1294016

    .line 162
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/idd/api/Idd;->addAppDataJSON(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 54
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/dataplatform/DataPlatformReporter;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/music/common/ProcessUtils;->isRunningInServiceProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 59
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 61
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/dataplatform/DataPlatformReporter;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/music/datacollection/dataplatform/DataPlatformReporter;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/common/PermissionUtils;->isDataAllowed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/music/datacollection/dataplatform/DataPlatformReporter;->mAppContext:Landroid/content/Context;

    .line 66
    invoke-static {v1}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->isPersonalDataCollectionConsented(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    return-void

    :cond_2
    const-string v1, "com.sonyericsson.music.dataplatform.ACTION_REPORT_USER_DATA"

    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-wide/32 v0, 0x5265c00

    .line 75
    iget-object v2, p0, Lcom/sonyericsson/music/datacollection/dataplatform/DataPlatformReporter;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/music/datacollection/dataplatform/DataPlatformUtils;->debugDataPlatformData(Landroid/content/Context;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    const-wide/32 v0, 0xea60

    int-to-long v2, v2

    mul-long v0, v0, v2

    .line 83
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/music/datacollection/dataplatform/DataPlatformReporter;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->getUserDataReportTime(Landroid/content/Context;)J

    move-result-wide v2

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_7

    .line 86
    iget-object v2, p0, Lcom/sonyericsson/music/datacollection/dataplatform/DataPlatformReporter;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/sonyericsson/music/datacollection/dataplatform/DataPlatformReporter;->getUserMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 88
    invoke-direct {p0, v2}, Lcom/sonyericsson/music/datacollection/dataplatform/DataPlatformReporter;->sendMessage(Ljava/lang/String;)V

    .line 92
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/dataplatform/DataPlatformReporter;->mAppContext:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->setUserDataReportTime(Landroid/content/Context;J)V

    goto :goto_3

    :cond_5
    const-string v1, "com.sonyericsson.music.dataplatform.ACTION_REPORT_PLAY_DATA"

    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/dataplatform/DataPlatformReporter;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayMetering;->getTrackPlays(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 100
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/datacollection/dataplatform/TrackPlay;

    .line 102
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/datacollection/dataplatform/DataPlatformReporter;->getUserTrackPlayMessage(Lcom/sonyericsson/music/datacollection/dataplatform/TrackPlay;)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 104
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/datacollection/dataplatform/DataPlatformReporter;->sendMessage(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    :goto_3
    return-void

    .line 55
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uses a database that only supports access from theService process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method
