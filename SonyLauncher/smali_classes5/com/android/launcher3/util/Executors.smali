.class public Lcom/android/launcher3/util/Executors;
.super Ljava/lang/Object;
.source "Executors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/Executors$SimpleThreadFactory;
    }
.end annotation


# static fields
.field private static final KEEP_ALIVE:I = 0x1

.field public static final MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

.field public static final MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

.field private static final PACKAGE_EXECUTORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/util/LooperExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private static final POOL_SIZE:I

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static final UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 36
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sput v4, Lcom/android/launcher3/util/Executors;->POOL_SIZE:I

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/Executors;->PACKAGE_EXECUTORS:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v5, 0x1

    move-object v2, v0

    move v3, v4

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 51
    new-instance v0, Lcom/android/launcher3/util/LooperExecutor;

    .line 52
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    .line 57
    new-instance v0, Lcom/android/launcher3/util/LooperExecutor;

    .line 59
    const-string v1, "UiThreadHelper"

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lcom/android/launcher3/util/Executors;->createAndStartNewLooper(Ljava/lang/String;I)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    .line 80
    new-instance v0, Lcom/android/launcher3/util/LooperExecutor;

    .line 81
    const-string v1, "launcher-loader"

    invoke-static {v1}, Lcom/android/launcher3/util/Executors;->createAndStartNewLooper(Ljava/lang/String;)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAndStartNewLooper(Ljava/lang/String;)Landroid/os/Looper;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher3/util/Executors;->createAndStartNewLooper(Ljava/lang/String;I)Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static createAndStartNewLooper(Ljava/lang/String;I)Landroid/os/Looper;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "priority"    # I

    .line 72
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 73
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 74
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    return-object v1
.end method

.method public static getPackageExecutor(Ljava/lang/String;)Lcom/android/launcher3/util/LooperExecutor;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 89
    sget-object v0, Lcom/android/launcher3/util/Executors;->PACKAGE_EXECUTORS:Ljava/util/Map;

    new-instance v1, Lcom/android/launcher3/util/Executors$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/util/Executors$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/LooperExecutor;

    return-object v0
.end method

.method static synthetic lambda$getPackageExecutor$0(Ljava/lang/String;)Lcom/android/launcher3/util/LooperExecutor;
    .locals 2
    .param p0, "p"    # Ljava/lang/String;

    .line 90
    new-instance v0, Lcom/android/launcher3/util/LooperExecutor;

    .line 91
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/launcher3/util/Executors;->createAndStartNewLooper(Ljava/lang/String;I)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    .line 90
    return-object v0
.end method
