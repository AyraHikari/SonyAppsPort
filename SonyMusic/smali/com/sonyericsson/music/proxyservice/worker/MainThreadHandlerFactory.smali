.class Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandlerFactory;
.super Ljava/lang/Object;
.source "MainThreadHandlerFactory.java"


# static fields
.field static mHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getMainThreadHandler(Landroid/content/Context;Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;)Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;
    .locals 1

    .line 31
    sget-object v0, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandlerFactory;->mHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;)V

    return-object v0

    :cond_0
    return-object v0
.end method

.method static setHandler(Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;)V
    .locals 0

    .line 39
    sput-object p0, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandlerFactory;->mHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    return-void
.end method
