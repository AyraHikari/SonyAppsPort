.class Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;
.super Ljava/lang/Object;
.source "PlayTimeLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlayTimeRunnable"
.end annotation


# static fields
.field private static final BUCKET_COUNT:I = 0x7

.field private static final BUCKET_DURATION_IN_MS:J = 0x5265c00L

.field private static final MILLISECONDS_PER_SECOND:J = 0x3e8L

.field private static final ONE_HOUR_IN_SECONDS:J = 0xe10L

.field private static final ONE_MINUTE_IN_SECONDS:J = 0x3cL

.field private static sPlayStart:J = -0x8000000000000000L

.field private static sPlayTimeCalculator:Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeCalculator;


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;->mAppContext:Landroid/content/Context;

    .line 128
    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method private addPlayTime(J)Ljava/lang/String;
    .locals 13

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;->mAppContext:Landroid/content/Context;

    const-string v1, "play_time"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 191
    sget-object v3, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;->sPlayTimeCalculator:Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeCalculator;

    if-nez v3, :cond_2

    const-string v3, "bucket_data"

    const/4 v4, 0x0

    .line 192
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/LongStringSerialization;->deserialize(Ljava/lang/String;)[J

    move-result-object v3

    const-string v4, "last_bucket"

    const-wide/16 v5, 0x0

    .line 194
    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    const/4 v4, 0x7

    if-eqz v3, :cond_1

    .line 196
    array-length v5, v3

    if-eq v5, v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v8, v3

    goto :goto_1

    .line 197
    :cond_1
    :goto_0
    new-array v3, v4, [J

    move-object v8, v3

    .line 200
    :goto_1
    new-instance v3, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeCalculator;

    const-wide/32 v9, 0x5265c00

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeCalculator;-><init>([JJJ)V

    sput-object v3, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;->sPlayTimeCalculator:Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeCalculator;

    .line 204
    :cond_2
    sget-object v3, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;->sPlayTimeCalculator:Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeCalculator;

    invoke-virtual {v3, v1, v2, p1, p2}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeCalculator;->addPlay(JJ)V

    .line 206
    sget-object p1, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;->sPlayTimeCalculator:Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeCalculator;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeCalculator;->getPlayTimeBuckets()[J

    move-result-object p1

    .line 207
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v3, "bucket_data"

    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/LongStringSerialization;->serialize([J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 208
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "last_bucket"

    invoke-interface {p1, p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 210
    sget-object p1, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;->sPlayTimeCalculator:Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeCalculator;

    .line 211
    invoke-virtual {p1, v1, v2}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeCalculator;->getAveragePlayTimeInMs(J)J

    move-result-wide p1

    .line 210
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;->getAveragePlayTimeBucket(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getAveragePlayTimeBucket(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x3e8

    .line 229
    div-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const-string p1, "Error < 0 seconds"

    return-object p1

    :cond_0
    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    const-string p1, "00h00m00s - 00h00m00s"

    return-object p1

    :cond_1
    const-wide/16 v0, 0xa

    cmp-long v2, p1, v0

    if-gez v2, :cond_2

    const-string p1, "00h00m00s - 00h00m10s"

    return-object p1

    :cond_2
    const-wide/16 v0, 0x3c

    cmp-long v2, p1, v0

    if-gez v2, :cond_3

    const-string p1, "00h00m10s - 00h01m00s"

    return-object p1

    :cond_3
    const-wide/16 v0, 0x258

    cmp-long v2, p1, v0

    if-gez v2, :cond_4

    const-string p1, "00h01m00s - 00h10m00s"

    return-object p1

    :cond_4
    const-wide/16 v0, 0x708

    cmp-long v2, p1, v0

    if-gez v2, :cond_5

    const-string p1, "00h10m00s - 00h30m00s"

    return-object p1

    :cond_5
    const-wide/16 v0, 0xe10

    cmp-long v2, p1, v0

    if-gez v2, :cond_6

    const-string p1, "00h30m00s - 01h00m00s"

    return-object p1

    :cond_6
    const-wide/16 v0, 0x1c20

    cmp-long v2, p1, v0

    if-gez v2, :cond_7

    const-string p1, "01h00m00s - 02h00m00s"

    return-object p1

    :cond_7
    const-wide/16 v0, 0x3840

    cmp-long v2, p1, v0

    if-gez v2, :cond_8

    const-string p1, "02h00m00s - 04h00m00s"

    return-object p1

    :cond_8
    const-wide/32 v0, 0x15180

    cmp-long v2, p1, v0

    if-gez v2, :cond_9

    const-string p1, "04h00m00s - 24h00m00s"

    return-object p1

    :cond_9
    const-string p1, "Error > 24 hours"

    return-object p1
.end method

.method private onPause(J)V
    .locals 5

    .line 170
    sget-wide v0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;->sPlayStart:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    sub-long/2addr p1, v0

    .line 173
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;->addPlayTime(J)Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;->sendAveragePlayTimeToGoogleAnalytics(Ljava/lang/String;)V

    .line 175
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;->sendAveragePlayTimeToFirebase(Ljava/lang/String;)V

    .line 176
    sput-wide v2, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;->sPlayStart:J

    :cond_0
    return-void
.end method

.method private onPlay(J)V
    .locals 5

    .line 164
    sget-wide v0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;->sPlayStart:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 165
    sput-wide p1, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;->sPlayStart:J

    :cond_0
    return-void
.end method

.method private sendAveragePlayTimeToFirebase(Ljava/lang/String;)V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;->mAppContext:Landroid/content/Context;

    const-string v1, "music_playTime"

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->setUserProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private sendAveragePlayTimeToGoogleAnalytics(Ljava/lang/String;)V
    .locals 2

    const-string v0, "music-gagtm-playTime"

    .line 221
    invoke-static {v0, p1}, Lcom/sonymobile/music/common/GoogleAnalyticsConstants$CustomDimensions$CustomDimensionVersion;->addVersionPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;->mAppContext:Landroid/content/Context;

    const-string v1, "music-gagtm-playTime"

    invoke-static {v0, v1, p1}, Lcom/sonymobile/music/common/GoogleAnalyticsProxy;->setCustomDimension(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 133
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "com.sonyericsson.music.playtime.SEND_PLAY_TIME"

    .line 141
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v0, 0x0

    .line 142
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;->addPlayTime(J)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;->sendAveragePlayTimeToGoogleAnalytics(Ljava/lang/String;)V

    .line 146
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;->sendAveragePlayTimeToFirebase(Ljava/lang/String;)V

    goto :goto_1

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackStartedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;->mIntent:Landroid/content/Intent;

    const-string v1, "TIMESTAMP_MS"

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 148
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 151
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;->onPlay(J)V

    goto :goto_1

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackPausedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;->mAppContext:Landroid/content/Context;

    .line 153
    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackSkippedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;->mAppContext:Landroid/content/Context;

    .line 154
    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackCompletedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;->mAppContext:Landroid/content/Context;

    .line 155
    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getPlaybackErrorIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;->mIntent:Landroid/content/Intent;

    const-string v1, "TIMESTAMP_MS"

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 156
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 159
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger$PlayTimeRunnable;->onPause(J)V

    :cond_4
    :goto_1
    return-void
.end method
