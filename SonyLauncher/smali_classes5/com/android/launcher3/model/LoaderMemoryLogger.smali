.class public Lcom/android/launcher3/model/LoaderMemoryLogger;
.super Ljava/lang/Object;
.source "LoaderMemoryLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LoaderMemoryLogger"


# instance fields
.field private final mLogEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderMemoryLogger;->mLogEntries:Ljava/util/ArrayList;

    .line 34
    return-void
.end method


# virtual methods
.method protected addLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "logLevel"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "log"    # Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/model/LoaderMemoryLogger;->addLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 38
    return-void
.end method

.method protected addLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "logLevel"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "log"    # Ljava/lang/String;
    .param p4, "stackTrace"    # Ljava/lang/Exception;

    .line 42
    packed-switch p1, :pswitch_data_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid log level provided: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderMemoryLogger;->mLogEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    nop

    .line 55
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected clearLogs()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderMemoryLogger;->mLogEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 59
    return-void
.end method

.method protected printLogs()V
    .locals 7

    .line 62
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderMemoryLogger;->mLogEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;

    .line 63
    .local v1, "logEntry":Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "LoaderMemoryLogger"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, v1, Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;->mLogTag:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "%s: %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "tag":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;->mStackStrace:Ljava/lang/Exception;

    if-nez v4, :cond_0

    .line 65
    iget-object v2, v1, Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;->mLogString:Ljava/lang/String;

    goto :goto_1

    .line 66
    :cond_0
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, v1, Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;->mLogString:Ljava/lang/String;

    aput-object v4, v2, v5

    iget-object v4, v1, Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;->mStackStrace:Ljava/lang/Exception;

    .line 69
    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 66
    const-string v4, "%s\n%s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    nop

    .line 71
    .local v2, "logString":Ljava/lang/String;
    iget v4, v1, Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;->mLogLevel:I

    invoke-static {v4, v3, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v1    # "logEntry":Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;
    .end local v2    # "logString":Ljava/lang/String;
    .end local v3    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderMemoryLogger;->clearLogs()V

    .line 74
    return-void
.end method
