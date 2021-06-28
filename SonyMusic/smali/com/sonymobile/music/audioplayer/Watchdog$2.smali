.class Lcom/sonymobile/music/audioplayer/Watchdog$2;
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

    .line 208
    iput-object p1, p0, Lcom/sonymobile/music/audioplayer/Watchdog$2;->this$0:Lcom/sonymobile/music/audioplayer/Watchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 211
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
