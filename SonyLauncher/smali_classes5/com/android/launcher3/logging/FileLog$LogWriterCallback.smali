.class Lcom/android/launcher3/logging/FileLog$LogWriterCallback;
.super Ljava/lang/Object;
.source "FileLog.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logging/FileLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogWriterCallback"
.end annotation


# static fields
.field private static final CLOSE_DELAY:J = 0x1388L

.field private static final MSG_CLOSE:I = 0x2

.field private static final MSG_FLUSH:I = 0x3

.field private static final MSG_WRITE:I = 0x1


# instance fields
.field private mCurrentFileName:Ljava/lang/String;

.field private mCurrentWriter:Ljava/io/PrintWriter;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentFileName:Ljava/lang/String;

    .line 136
    iput-object v0, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/logging/FileLog$LogWriterCallback-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;-><init>()V

    return-void
.end method

.method private closeWriter()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    .line 141
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 145
    invoke-static {}, Lcom/android/launcher3/logging/FileLog;->-$$Nest$sfgetsLogsDirectory()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    const-string v3, "log-"

    packed-switch v0, :pswitch_data_0

    .line 208
    return v1

    .line 195
    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->closeWriter()V

    .line 196
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 199
    .local v0, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;>;"
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 200
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 201
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/launcher3/logging/FileLog;->-$$Nest$smdumpFile(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 200
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 204
    .end local v4    # "i":I
    :cond_0
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 205
    return v1

    .line 191
    .end local v0    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;>;"
    :pswitch_1
    invoke-direct {p0}, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->closeWriter()V

    .line 192
    return v1

    .line 150
    :pswitch_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 152
    .local v0, "cal":Ljava/util/Calendar;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    rem-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "fileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 155
    invoke-direct {p0}, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->closeWriter()V

    .line 159
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    if-nez v3, :cond_4

    .line 160
    iput-object v2, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentFileName:Ljava/lang/String;

    .line 162
    const/4 v3, 0x0

    .line 163
    .local v3, "append":Z
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/android/launcher3/logging/FileLog;->-$$Nest$sfgetsLogsDirectory()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 164
    .local v4, "logFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 165
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 166
    .local v5, "modifiedTime":Ljava/util/Calendar;
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 170
    const/16 v6, 0xa

    const/16 v7, 0x24

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 171
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 172
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0x800000

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    move v6, v1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    move v3, v6

    .line 174
    .end local v5    # "modifiedTime":Ljava/util/Calendar;
    :cond_3
    new-instance v5, Ljava/io/PrintWriter;

    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v4, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v5, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v5, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    .line 177
    .end local v3    # "append":Z
    .end local v4    # "logFile":Ljava/io/File;
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    iget-object v3, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 181
    invoke-static {}, Lcom/android/launcher3/logging/FileLog;->-$$Nest$sfgetsHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    invoke-static {}, Lcom/android/launcher3/logging/FileLog;->-$$Nest$sfgetsHandler()Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    goto :goto_2

    .line 183
    :catch_0
    move-exception v3

    .line 184
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "FileLog"

    const-string v5, "Error writing logs to file"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    invoke-direct {p0}, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->closeWriter()V

    .line 188
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    return v1

    .line 146
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_5
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
