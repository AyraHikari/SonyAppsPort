.class public Lcom/sonyericsson/music/datacollection/dataplatform/PlayMetering;
.super Ljava/lang/Object;
.source "PlayMetering.java"


# static fields
.field private static final METERING_DB_HELPER_LOCK:Ljava/lang/Object;

.field private static volatile sInstance:Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/datacollection/dataplatform/PlayMetering;->METERING_DB_HELPER_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllTables(Landroid/content/Context;)V
    .locals 0

    .line 72
    invoke-static {p0}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayMetering;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;->clearAll()V

    return-void
.end method

.method public static closeDatabase(Landroid/content/Context;)V
    .locals 1

    .line 86
    invoke-static {p0}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayMetering;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;->closeDatabaseInternal()V

    .line 87
    sget-object p0, Lcom/sonyericsson/music/datacollection/dataplatform/PlayMetering;->METERING_DB_HELPER_LOCK:Ljava/lang/Object;

    monitor-enter p0

    const/4 v0, 0x0

    .line 88
    :try_start_0
    sput-object v0, Lcom/sonyericsson/music/datacollection/dataplatform/PlayMetering;->sInstance:Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;

    .line 89
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static createInstanceForTest(Landroid/content/Context;)V
    .locals 1

    .line 47
    new-instance v0, Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sonyericsson/music/datacollection/dataplatform/PlayMetering;->sInstance:Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;

    return-void
.end method

.method public static finalizeOpenPlays(Landroid/content/Context;)V
    .locals 0

    .line 64
    invoke-static {p0}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayMetering;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;->finalizeOngoingPlays()V

    return-void
.end method

.method public static getDate()Ljava/lang/String;
    .locals 3

    .line 76
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 77
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDate(J)Ljava/lang/String;
    .locals 3

    .line 81
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 82
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;
    .locals 2

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 33
    sget-object v0, Lcom/sonyericsson/music/datacollection/dataplatform/PlayMetering;->sInstance:Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;

    if-nez v0, :cond_1

    .line 35
    sget-object v1, Lcom/sonyericsson/music/datacollection/dataplatform/PlayMetering;->METERING_DB_HELPER_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/sonyericsson/music/datacollection/dataplatform/PlayMetering;->sInstance:Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sonyericsson/music/datacollection/dataplatform/PlayMetering;->sInstance:Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;

    .line 39
    sget-object p0, Lcom/sonyericsson/music/datacollection/dataplatform/PlayMetering;->sInstance:Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;

    move-object v0, p0

    .line 41
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getTrackPlays(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/datacollection/dataplatform/TrackPlay;",
            ">;"
        }
    .end annotation

    .line 68
    invoke-static {p0}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayMetering;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;->getTrackPlays()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static trackPlayPause(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    .line 56
    invoke-static {p0}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayMetering;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;->trackPlayPause(Ljava/lang/String;J)V

    return-void
.end method

.method public static trackPlayStart(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;J)V
    .locals 8

    .line 52
    invoke-static {p0}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayMetering;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;->trackPlayStart(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static trackPlayStop(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    .line 60
    invoke-static {p0}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayMetering;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;->trackPlayStop(Ljava/lang/String;J)V

    return-void
.end method
