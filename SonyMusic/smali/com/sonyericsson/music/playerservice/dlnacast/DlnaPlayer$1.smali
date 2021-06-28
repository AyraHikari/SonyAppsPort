.class Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer$1;
.super Ljava/lang/Object;
.source "DlnaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer$1;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer$1;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->handleOnPlaybackPositionUpdate()V

    return-void
.end method
