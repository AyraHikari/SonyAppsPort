.class Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider$3;
.super Ljava/lang/Object;
.source "DlnaMediaRouteProvider.java"

# interfaces
.implements Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$ProviderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;


# direct methods
.method constructor <init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider$3;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClearRouteId()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider$3;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->access$602(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onUpdateDmrList()V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider$3;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->access$500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->updateDmrList()V

    return-void
.end method

.method public onVolumeChanged(Ljava/lang/String;I)V
    .locals 3

    .line 215
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 216
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVolumeChanged() ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " volume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider$3;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;

    invoke-static {v0, p1, p2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->access$400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;Ljava/lang/String;I)V

    return-void
.end method
