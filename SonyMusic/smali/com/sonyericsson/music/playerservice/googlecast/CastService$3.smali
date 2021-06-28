.class Lcom/sonyericsson/music/playerservice/googlecast/CastService$3;
.super Ljava/lang/Object;
.source "CastService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/playerservice/googlecast/CastService;->handleCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$3;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 471
    sget-object v0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    .line 474
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$3;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->access$302(Lcom/sonyericsson/music/playerservice/googlecast/CastService;Z)Z

    .line 476
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$3;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->access$1500(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$3;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->access$1600(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$3;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->access$1700(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 480
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$3;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    invoke-static {v2}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->access$1800(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/common/Track;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/music/common/Track;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 481
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$3;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    invoke-static {v2}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->access$2000(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$3;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    invoke-static {v4}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->access$1900(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/common/Track;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v6

    const/4 v7, -0x1

    move-object v4, v0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyIdle(ZLjava/lang/String;Ljava/lang/String;II)V

    .line 483
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$3;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    invoke-static {v2}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->access$2100(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 484
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$3;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    invoke-static {v2}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->access$2200(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 485
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$3;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->next()V

    goto :goto_0

    .line 486
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$3;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    invoke-static {v2}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->access$2300(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 487
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$3;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->getPlayQueuePosition()I

    move-result v2

    invoke-static {v0, v2, v3, v1}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->access$2400(Lcom/sonyericsson/music/playerservice/googlecast/CastService;IZZ)V

    goto :goto_0

    .line 488
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$3;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    invoke-static {v2}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->access$2500(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)I

    move-result v2

    if-nez v2, :cond_5

    .line 489
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$3;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    invoke-static {v2}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->access$2600(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/playerutil/PlayQueueInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 491
    invoke-interface {v2}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 492
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$3;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    invoke-static {v2, v1}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->access$2102(Lcom/sonyericsson/music/playerservice/googlecast/CastService;Z)Z

    .line 494
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$3;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    invoke-static {v1}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->access$2800(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    move-result-object v2

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$3;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    .line 496
    invoke-static {v1}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->access$2700(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/common/Track;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, v0

    move-object v4, v8

    .line 495
    invoke-virtual/range {v2 .. v7}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyPaused(Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 500
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$3;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->next()V

    goto :goto_0

    .line 503
    :cond_4
    sget-object v0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mIsInContinuousPlayingState false in onCompletion"

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/music/debug/DebugBase;->logW(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    return-void
.end method
