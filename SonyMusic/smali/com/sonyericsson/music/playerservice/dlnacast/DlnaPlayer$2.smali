.class Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer$2;
.super Ljava/lang/Object;
.source "DlnaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->onError(Lcom/sonyericsson/music/common/Track;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;

.field final synthetic val$errorCode:I

.field final synthetic val$track:Lcom/sonyericsson/music/common/Track;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;Lcom/sonyericsson/music/common/Track;I)V
    .locals 0

    .line 863
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer$2;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;

    iput-object p2, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer$2;->val$track:Lcom/sonyericsson/music/common/Track;

    iput p3, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer$2;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 866
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer$2;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer$2;->val$track:Lcom/sonyericsson/music/common/Track;

    iget v2, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer$2;->val$errorCode:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->handleOnError(Lcom/sonyericsson/music/common/Track;I)V

    return-void
.end method
