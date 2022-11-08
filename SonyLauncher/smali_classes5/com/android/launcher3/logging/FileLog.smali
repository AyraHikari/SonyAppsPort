.class public final Lcom/android/launcher3/logging/FileLog;
.super Ljava/lang/Object;
.source "FileLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logging/FileLog$LogWriterCallback;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/text/DateFormat;

.field protected static final ENABLED:Z = true

.field private static final FILE_NAME_PREFIX:Ljava/lang/String; = "log-"

.field public static final LOG_DAYS:I = 0x4

.field private static final MAX_LOG_FILE_SIZE:J = 0x800000L

.field private static sHandler:Landroid/os/Handler;

.field private static sLogsDirectory:Ljava/io/File;


# direct methods
.method static bridge synthetic -$$Nest$sfgetsHandler()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logging/FileLog;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsLogsDirectory()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logging/FileLog;->sLogsDirectory:Ljava/io/File;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smdumpFile(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/logging/FileLog;->dumpFile(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 37
    nop

    .line 38
    const/4 v0, 0x3

    invoke-static {v0, v0}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/logging/FileLog;->DATE_FORMAT:Ljava/text/DateFormat;

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/logging/FileLog;->sHandler:Landroid/os/Handler;

    .line 43
    sput-object v0, Lcom/android/launcher3/logging/FileLog;->sLogsDirectory:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 66
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {p0, p1}, Lcom/android/launcher3/logging/FileLog;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 61
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/logging/FileLog;->print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 63
    return-void
.end method

.method private static dumpFile(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p0, "out"    # Ljava/io/PrintWriter;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 213
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/launcher3/logging/FileLog;->sLogsDirectory:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    .local v0, "logFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    const/4 v1, 0x0

    .line 218
    .local v1, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    .line 219
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- logfile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 223
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 222
    .end local v3    # "line":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 228
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 229
    throw v2

    .line 225
    :catch_0
    move-exception v2

    .line 228
    :goto_1
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 231
    .end local v1    # "in":Ljava/io/BufferedReader;
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 76
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {p0, p1}, Lcom/android/launcher3/logging/FileLog;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 71
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/logging/FileLog;->print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 73
    return-void
.end method

.method public static flushAll(Ljava/io/PrintWriter;)Z
    .locals 6
    .param p0, "out"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 115
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/launcher3/logging/FileLog;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 116
    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 115
    const/4 v4, 0x3

    invoke-static {v2, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 116
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 118
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 119
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static getHandler()Landroid/os/Handler;
    .locals 5

    .line 97
    sget-object v0, Lcom/android/launcher3/logging/FileLog;->DATE_FORMAT:Ljava/text/DateFormat;

    monitor-enter v0

    .line 98
    :try_start_0
    sget-object v1, Lcom/android/launcher3/logging/FileLog;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 99
    new-instance v1, Landroid/os/Handler;

    const-string v2, "file-logger"

    invoke-static {v2}, Lcom/android/launcher3/util/Executors;->createAndStartNewLooper(Ljava/lang/String;)Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;-><init>(Lcom/android/launcher3/logging/FileLog$LogWriterCallback-IA;)V

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v1, Lcom/android/launcher3/logging/FileLog;->sHandler:Landroid/os/Handler;

    .line 102
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    sget-object v0, Lcom/android/launcher3/logging/FileLog;->sHandler:Landroid/os/Handler;

    return-object v0

    .line 102
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getLogFiles()[Ljava/io/File;
    .locals 7

    .line 238
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/android/launcher3/logging/FileLog;->flushAll(Ljava/io/PrintWriter;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 240
    :goto_1
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/io/File;

    .line 241
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_0

    .line 242
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/launcher3/logging/FileLog;->sLogsDirectory:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "log-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 241
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 244
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static print(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/logging/FileLog;->print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 82
    return-void
.end method

.method public static print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 88
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/android/launcher3/logging/FileLog;->DATE_FORMAT:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v2, 0x2

    aput-object p1, v0, v2

    const-string v2, "%s %s %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "out":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_0
    invoke-static {}, Lcom/android/launcher3/logging/FileLog;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 93
    return-void
.end method

.method public static setDir(Ljava/io/File;)V
    .locals 2
    .param p0, "logsDir"    # Ljava/io/File;

    .line 49
    sget-object v0, Lcom/android/launcher3/logging/FileLog;->DATE_FORMAT:Ljava/text/DateFormat;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/android/launcher3/logging/FileLog;->sHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher3/logging/FileLog;->sLogsDirectory:Ljava/io/File;

    invoke-virtual {p0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    sget-object v1, Lcom/android/launcher3/logging/FileLog;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    check-cast v1, Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 53
    const/4 v1, 0x0

    sput-object v1, Lcom/android/launcher3/logging/FileLog;->sHandler:Landroid/os/Handler;

    .line 55
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    sput-object p0, Lcom/android/launcher3/logging/FileLog;->sLogsDirectory:Ljava/io/File;

    .line 58
    return-void

    .line 55
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
