.class Lcom/sonymobile/music/audioplayer/Watchdog$1;
.super Ljava/lang/Object;
.source "Watchdog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/music/audioplayer/Watchdog;->causeHalt(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/music/audioplayer/Watchdog;


# direct methods
.method constructor <init>(Lcom/sonymobile/music/audioplayer/Watchdog;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/sonymobile/music/audioplayer/Watchdog$1;->this$0:Lcom/sonymobile/music/audioplayer/Watchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkThreadsForHangingCalls()V
    .locals 2

    const-wide/16 v0, 0x3a98

    .line 175
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 162
    :goto_0
    invoke-direct {p0}, Lcom/sonymobile/music/audioplayer/Watchdog$1;->checkThreadsForHangingCalls()V

    goto :goto_0
.end method
