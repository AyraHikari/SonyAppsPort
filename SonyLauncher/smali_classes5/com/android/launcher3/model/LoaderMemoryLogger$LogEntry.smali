.class Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;
.super Ljava/lang/Object;
.source "LoaderMemoryLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/LoaderMemoryLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogEntry"
.end annotation


# instance fields
.field protected final mLogLevel:I

.field protected final mLogString:Ljava/lang/String;

.field protected final mLogTag:Ljava/lang/String;

.field protected final mStackStrace:Ljava/lang/Exception;


# direct methods
.method protected constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "logLevel"    # I
    .param p2, "logTag"    # Ljava/lang/String;
    .param p3, "logString"    # Ljava/lang/String;
    .param p4, "stackStrace"    # Ljava/lang/Exception;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;->mLogLevel:I

    .line 86
    iput-object p2, p0, Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;->mLogTag:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;->mLogString:Ljava/lang/String;

    .line 88
    iput-object p4, p0, Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;->mStackStrace:Ljava/lang/Exception;

    .line 89
    return-void
.end method
