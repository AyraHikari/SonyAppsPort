.class Lcom/sonyericsson/music/playerservice/googlecast/CastService$2;
.super Ljava/lang/Object;
.source "CastService.java"

# interfaces
.implements Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playerservice/googlecast/CastService;
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

    .line 126
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$2;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorListener()V
    .locals 8

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$2;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    sget-object v1, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;->ERROR:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    invoke-static {v0, v1}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->access$202(Lcom/sonyericsson/music/playerservice/googlecast/CastService;Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;)Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$2;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->access$302(Lcom/sonyericsson/music/playerservice/googlecast/CastService;Z)Z

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$2;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->access$1000(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$2;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->access$1100(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getDataUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$2;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->access$1300(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    move-result-object v2

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$2;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->access$1200(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyPaused(Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$2;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    new-instance v2, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;

    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->access$1400(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/common/Track;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v1, v4, v3, v5}, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;-><init>(ILjava/lang/String;Lcom/sonyericsson/music/common/Track;Z)V

    invoke-static {v0, v2}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->access$900(Lcom/sonyericsson/music/playerservice/googlecast/CastService;Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;)V

    return-void
.end method
