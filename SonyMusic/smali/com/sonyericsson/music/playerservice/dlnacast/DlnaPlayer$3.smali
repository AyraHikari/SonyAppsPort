.class Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer$3;
.super Ljava/lang/Object;
.source "DlnaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->onCompletion(Lcom/sonyericsson/music/common/Track;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;

.field final synthetic val$track:Lcom/sonyericsson/music/common/Track;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;Lcom/sonyericsson/music/common/Track;)V
    .locals 0

    .line 875
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer$3;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;

    iput-object p2, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer$3;->val$track:Lcom/sonyericsson/music/common/Track;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 878
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer$3;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer$3;->val$track:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->handleOnCompletion(Lcom/sonyericsson/music/common/Track;)V

    return-void
.end method
