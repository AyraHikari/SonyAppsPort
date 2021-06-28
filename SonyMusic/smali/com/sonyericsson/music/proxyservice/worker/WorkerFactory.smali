.class public Lcom/sonyericsson/music/proxyservice/worker/WorkerFactory;
.super Ljava/lang/Object;
.source "WorkerFactory.java"


# static fields
.field private static sWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWorker(Landroid/os/Looper;Landroid/content/Context;Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;)Lcom/sonyericsson/music/proxyservice/worker/Worker;
    .locals 1

    .line 32
    sget-object v0, Lcom/sonyericsson/music/proxyservice/worker/WorkerFactory;->sWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/worker/Worker;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;)V

    return-object v0

    :cond_0
    return-object v0
.end method

.method public static setWorker(Lcom/sonyericsson/music/proxyservice/worker/Worker;)V
    .locals 0

    .line 39
    sput-object p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerFactory;->sWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    return-void
.end method
