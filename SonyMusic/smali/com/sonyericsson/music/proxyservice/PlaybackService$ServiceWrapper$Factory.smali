.class Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper$Factory;
.super Ljava/lang/Object;
.source "PlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# static fields
.field private static sServiceWrapper:Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static newServiceWrapper(Landroid/app/Service;)Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;
    .locals 1

    .line 621
    sget-object v0, Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper$Factory;->sServiceWrapper:Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;

    if-nez v0, :cond_0

    .line 623
    new-instance v0, Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;-><init>(Landroid/app/Service;)V

    :cond_0
    return-object v0
.end method

.method static setServiceWrapper(Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;)V
    .locals 0

    .line 629
    sput-object p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper$Factory;->sServiceWrapper:Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;

    return-void
.end method
