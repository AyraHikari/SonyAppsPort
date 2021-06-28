.class public Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger;
.super Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;
.source "PlayTimeLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;
    }
.end annotation


# static fields
.field static final ACTION_SEND_PLAY_TIME:Ljava/lang/String; = "com.sonyericsson.music.playtime.SEND_PLAY_TIME"

.field private static final CURRENT_DATA_VERSION:I = 0x2

.field private static final DATA_VERSION_WHEN_TIMESTAMP_CHANGED:I = 0x2

.field static final KEY_BUCKET_DATA:Ljava/lang/String; = "bucket_data"

.field static final KEY_DATA_VERSION:Ljava/lang/String; = "data_version"

.field static final KEY_PREF_LAST_BUCKET:Ljava/lang/String; = "last_bucket"

.field static final SHARED_PREF_PLAY_TIME:Ljava/lang/String; = "play_time"

.field private static sReportedToGAAndFirebase:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method private checkDataVersion()V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mAppContext:Landroid/content/Context;

    const-string v1, "play_time"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 68
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "data_version"

    .line 70
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    const-string v0, "bucket_data"

    .line 73
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "last_bucket"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    const-string v0, "data_version"

    .line 75
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private reportToGAAndFirebase()V
    .locals 3

    .line 99
    sget-boolean v0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger;->sReportedToGAAndFirebase:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.playtime.SEND_PLAY_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v1, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mAppContext:Landroid/content/Context;

    const-string v2, "com.sonyericsson.music.permission.BROADCAST"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 103
    sput-boolean v0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger;->sReportedToGAAndFirebase:Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected createDelayedRunnable(Landroid/content/Intent;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;

    iget-object v2, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected registerBroadcastReceiver()Z
    .locals 4

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 81
    iget-object v1, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackStartedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackPausedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackSkippedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackCompletedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getPlaybackErrorIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sonyericsson.music.playtime.SEND_PLAY_TIME"

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mAppContext:Landroid/content/Context;

    const-string v2, "com.sonyericsson.music.permission.BROADCAST"

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x1

    return v0
.end method

.method public start()V
    .locals 0

    .line 54
    invoke-super {p0}, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->start()V

    .line 56
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger;->checkDataVersion()V

    .line 58
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger;->reportToGAAndFirebase()V

    return-void
.end method
