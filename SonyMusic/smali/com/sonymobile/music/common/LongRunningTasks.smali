.class public Lcom/sonymobile/music/common/LongRunningTasks;
.super Ljava/lang/Object;
.source "LongRunningTasks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/music/common/LongRunningTasks$SerialExecutor;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE:I = 0x1

.field private static final LOW_PRIO_QUEUE_LIMIT:I = 0x40

.field public static final LRT_SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final LRT_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final QUEUE_SIZE:I = 0x80

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 45
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/sonymobile/music/common/LongRunningTasks;->CPU_COUNT:I

    .line 47
    sget v0, Lcom/sonymobile/music/common/LongRunningTasks;->CPU_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sonymobile/music/common/LongRunningTasks;->CORE_POOL_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 49
    sput v0, Lcom/sonymobile/music/common/LongRunningTasks;->MAXIMUM_POOL_SIZE:I

    .line 57
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/sonymobile/music/common/LongRunningTasks;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 60
    new-instance v0, Lcom/sonymobile/music/common/LongRunningTasks$1;

    invoke-direct {v0}, Lcom/sonymobile/music/common/LongRunningTasks$1;-><init>()V

    sput-object v0, Lcom/sonymobile/music/common/LongRunningTasks;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 68
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/sonymobile/music/common/LongRunningTasks;->CORE_POOL_SIZE:I

    sget v3, Lcom/sonymobile/music/common/LongRunningTasks;->MAXIMUM_POOL_SIZE:I

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/sonymobile/music/common/LongRunningTasks;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/sonymobile/music/common/LongRunningTasks;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    const-wide/16 v4, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/sonymobile/music/common/LongRunningTasks;->LRT_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 72
    new-instance v0, Lcom/sonymobile/music/common/LongRunningTasks$SerialExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonymobile/music/common/LongRunningTasks$SerialExecutor;-><init>(Lcom/sonymobile/music/common/LongRunningTasks$1;)V

    sput-object v0, Lcom/sonymobile/music/common/LongRunningTasks;->LRT_SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isOKToRunUITask()Z
    .locals 2

    .line 87
    sget-object v0, Lcom/sonymobile/music/common/LongRunningTasks;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
