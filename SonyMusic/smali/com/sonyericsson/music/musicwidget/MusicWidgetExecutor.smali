.class public Lcom/sonyericsson/music/musicwidget/MusicWidgetExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "MusicWidgetExecutor.java"


# static fields
.field private static final STATIC_INSTANCE:Lcom/sonyericsson/music/musicwidget/MusicWidgetExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/sonyericsson/music/musicwidget/MusicWidgetExecutor;

    invoke-direct {v0}, Lcom/sonyericsson/music/musicwidget/MusicWidgetExecutor;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/musicwidget/MusicWidgetExecutor;->STATIC_INSTANCE:Lcom/sonyericsson/music/musicwidget/MusicWidgetExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 21
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 22
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method

.method public static final getMusicWidgetExecutor()Lcom/sonyericsson/music/musicwidget/MusicWidgetExecutor;
    .locals 1

    .line 26
    sget-object v0, Lcom/sonyericsson/music/musicwidget/MusicWidgetExecutor;->STATIC_INSTANCE:Lcom/sonyericsson/music/musicwidget/MusicWidgetExecutor;

    return-object v0
.end method
