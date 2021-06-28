.class Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4$1;
.super Ljava/lang/Object;
.source "DlnaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->isPlayanywhereReleased(Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;Landroid/content/Intent;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4$1;->this$1:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;

    iput-object p2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 402
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4$1;->this$1:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;

    iget-object v0, v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2702(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Z)Z

    .line 403
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4$1;->this$1:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;

    iget-object v0, v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2800(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;I)V

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4$1;->this$1:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;

    iget-object v0, v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2900(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
