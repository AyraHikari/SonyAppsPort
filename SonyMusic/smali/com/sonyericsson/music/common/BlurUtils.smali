.class public Lcom/sonyericsson/music/common/BlurUtils;
.super Ljava/lang/Object;
.source "BlurUtils.java"


# static fields
.field public static final BLUR_IMAGE_SIZE:I = 0x10

.field private static final sAlphaPaint:Landroid/graphics/Paint;

.field private static final sBlur:Landroid/graphics/Bitmap;

.field private static final sCanvas:Landroid/graphics/Canvas;

.field private static sInitTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static sInput:Landroid/renderscript/Allocation;

.field private static sOutput:Landroid/renderscript/Allocation;

.field private static final sRectA:Landroid/graphics/Rect;

.field private static final sRectB:Landroid/graphics/Rect;

.field private static sScript:Landroid/renderscript/ScriptIntrinsicBlur;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x10

    .line 35
    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/music/common/BlurUtils;->sBlur:Landroid/graphics/Bitmap;

    .line 36
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/common/BlurUtils;->sCanvas:Landroid/graphics/Canvas;

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/sonyericsson/music/common/BlurUtils;->sAlphaPaint:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/common/BlurUtils;->sRectA:Landroid/graphics/Rect;

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/sonyericsson/music/common/BlurUtils;->sRectB:Landroid/graphics/Rect;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/renderscript/Allocation;
    .locals 1

    .line 27
    sget-object v0, Lcom/sonyericsson/music/common/BlurUtils;->sInput:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method static synthetic access$002(Landroid/renderscript/Allocation;)Landroid/renderscript/Allocation;
    .locals 0

    .line 27
    sput-object p0, Lcom/sonyericsson/music/common/BlurUtils;->sInput:Landroid/renderscript/Allocation;

    return-object p0
.end method

.method static synthetic access$100()Landroid/graphics/Bitmap;
    .locals 1

    .line 27
    sget-object v0, Lcom/sonyericsson/music/common/BlurUtils;->sBlur:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Landroid/renderscript/Allocation;)Landroid/renderscript/Allocation;
    .locals 0

    .line 27
    sput-object p0, Lcom/sonyericsson/music/common/BlurUtils;->sOutput:Landroid/renderscript/Allocation;

    return-object p0
.end method

.method static synthetic access$300()Landroid/renderscript/ScriptIntrinsicBlur;
    .locals 1

    .line 27
    sget-object v0, Lcom/sonyericsson/music/common/BlurUtils;->sScript:Landroid/renderscript/ScriptIntrinsicBlur;

    return-object v0
.end method

.method static synthetic access$302(Landroid/renderscript/ScriptIntrinsicBlur;)Landroid/renderscript/ScriptIntrinsicBlur;
    .locals 0

    .line 27
    sput-object p0, Lcom/sonyericsson/music/common/BlurUtils;->sScript:Landroid/renderscript/ScriptIntrinsicBlur;

    return-object p0
.end method

.method public static declared-synchronized getBlur(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    const-class v0, Lcom/sonyericsson/music/common/BlurUtils;

    monitor-enter v0

    if-eqz p0, :cond_1

    .line 90
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/music/common/BlurUtils;->waitForInitTask()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 96
    sget-object v1, Lcom/sonyericsson/music/common/BlurUtils;->sAlphaPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 97
    sget-object v1, Lcom/sonyericsson/music/common/BlurUtils;->sRectA:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 98
    sget-object v1, Lcom/sonyericsson/music/common/BlurUtils;->sCanvas:Landroid/graphics/Canvas;

    sget-object v2, Lcom/sonyericsson/music/common/BlurUtils;->sBlur:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 99
    sget-object v1, Lcom/sonyericsson/music/common/BlurUtils;->sCanvas:Landroid/graphics/Canvas;

    sget-object v2, Lcom/sonyericsson/music/common/BlurUtils;->sRectA:Landroid/graphics/Rect;

    sget-object v3, Lcom/sonyericsson/music/common/BlurUtils;->sRectB:Landroid/graphics/Rect;

    sget-object v5, Lcom/sonyericsson/music/common/BlurUtils;->sAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p0, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 101
    sget-object p0, Lcom/sonyericsson/music/common/BlurUtils;->sInput:Landroid/renderscript/Allocation;

    sget-object v1, Lcom/sonyericsson/music/common/BlurUtils;->sBlur:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 102
    sget-object p0, Lcom/sonyericsson/music/common/BlurUtils;->sScript:Landroid/renderscript/ScriptIntrinsicBlur;

    sget-object v1, Lcom/sonyericsson/music/common/BlurUtils;->sOutput:Landroid/renderscript/Allocation;

    invoke-virtual {p0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 103
    sget-object p0, Lcom/sonyericsson/music/common/BlurUtils;->sOutput:Landroid/renderscript/Allocation;

    sget-object v1, Lcom/sonyericsson/music/common/BlurUtils;->sBlur:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 106
    sget-object p0, Lcom/sonyericsson/music/common/BlurUtils;->sCanvas:Landroid/graphics/Canvas;

    const/16 v1, 0x60

    const/16 v2, 0x40

    invoke-virtual {p0, v1, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 108
    sget-object p0, Lcom/sonyericsson/music/common/BlurUtils;->sBlur:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/sonyericsson/music/common/BlurUtils;->sBlur:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 91
    monitor-exit v0

    return-object p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 5

    const-class v0, Lcom/sonyericsson/music/common/BlurUtils;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/sonyericsson/music/common/BlurUtils;->sInitTask:Ljava/util/concurrent/FutureTask;

    if-nez v1, :cond_0

    .line 55
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 58
    new-instance v3, Ljava/util/concurrent/FutureTask;

    new-instance v4, Lcom/sonyericsson/music/common/BlurUtils$1;

    invoke-direct {v4, p0, v1, v2}, Lcom/sonyericsson/music/common/BlurUtils$1;-><init>(Landroid/content/Context;J)V

    invoke-direct {v3, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    sput-object v3, Lcom/sonyericsson/music/common/BlurUtils;->sInitTask:Ljava/util/concurrent/FutureTask;

    .line 78
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sget-object v1, Lcom/sonyericsson/music/common/BlurUtils;->sInitTask:Ljava/util/concurrent/FutureTask;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static waitForInitTask()Z
    .locals 5

    .line 118
    sget-object v0, Lcom/sonyericsson/music/common/BlurUtils;->sInitTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 125
    :try_start_0
    sget-object v1, Lcom/sonyericsson/music/common/BlurUtils;->sInitTask:Ljava/util/concurrent/FutureTask;

    const-wide/16 v2, 0x1f4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    sget-object v0, Lcom/sonyericsson/music/common/BlurUtils;->sInitTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v0

    return v0

    :catch_0
    return v0

    :catch_1
    return v0

    :catch_2
    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
