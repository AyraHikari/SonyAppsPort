.class Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$DlnaControllerHandler;
.super Ljava/lang/Object;
.source "DlnaMediaRouteController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DlnaControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;


# direct methods
.method private constructor <init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;)V
    .locals 0

    .line 826
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$DlnaControllerHandler;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$1;)V
    .locals 0

    .line 826
    invoke-direct {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$DlnaControllerHandler;-><init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 835
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-nez v0, :cond_9

    .line 836
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 837
    aget-object v0, p1, v0

    check-cast v0, Landroid/content/Intent;

    .line 838
    aget-object p1, p1, v1

    check-cast p1, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;

    if-eqz v0, :cond_0

    .line 839
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 840
    :goto_0
    sget-boolean v3, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v3, :cond_1

    .line 841
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage() action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v2, :cond_8

    .line 844
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v3, "android.media.intent.action.PLAY"

    .line 848
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 849
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$DlnaControllerHandler;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;

    invoke-static {v2, v0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$900(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)V

    goto :goto_2

    :cond_3
    const-string v3, "android.media.intent.action.SEEK"

    .line 850
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 851
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$DlnaControllerHandler;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;

    invoke-static {v2, v0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$1000(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)V

    goto :goto_2

    :cond_4
    const-string v3, "android.media.intent.action.GET_STATUS"

    .line 852
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 853
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$DlnaControllerHandler;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;

    invoke-static {v2, v0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$1100(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)V

    goto :goto_2

    :cond_5
    const-string v3, "android.media.intent.action.PAUSE"

    .line 854
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 855
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$DlnaControllerHandler;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;

    invoke-static {v2, v0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$1200(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)V

    goto :goto_2

    :cond_6
    const-string v3, "android.media.intent.action.RESUME"

    .line 856
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 857
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$DlnaControllerHandler;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;

    invoke-static {v2, v0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$1300(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)V

    goto :goto_2

    :cond_7
    const-string v3, "android.media.intent.action.STOP"

    .line 858
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 859
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$DlnaControllerHandler;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;

    invoke-static {v2, v0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$1400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)V

    goto :goto_2

    :cond_8
    :goto_1
    return v1

    :cond_9
    if-ne v0, v1, :cond_a

    .line 863
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$DlnaControllerHandler;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;I)V

    goto :goto_2

    :cond_a
    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    .line 865
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$DlnaControllerHandler;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$1600(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;I)V

    :cond_b
    :goto_2
    return v1
.end method
