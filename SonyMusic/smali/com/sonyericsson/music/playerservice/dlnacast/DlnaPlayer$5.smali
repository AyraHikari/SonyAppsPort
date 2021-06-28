.class Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer$5;
.super Ljava/lang/Object;
.source "DlnaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->onUpdateState(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;

.field final synthetic val$tmpState:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;)V
    .locals 0

    .line 911
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer$5;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;

    iput-object p2, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer$5;->val$tmpState:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 914
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer$5;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer$5;->val$tmpState:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    sget-object v2, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->STARTED:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->handlePlayingStateUpdated(Z)V

    return-void
.end method
