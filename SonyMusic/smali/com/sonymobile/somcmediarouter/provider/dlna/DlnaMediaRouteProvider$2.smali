.class Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider$2;
.super Ljava/lang/Object;
.source "DlnaMediaRouteProvider.java"

# interfaces
.implements Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$ScanResultCallback;


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

    .line 67
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider$2;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateDlnaList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;",
            ">;)V"
        }
    .end annotation

    .line 70
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "callback updateDlnaList"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider$2;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;

    invoke-static {v0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->access$102(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;Ljava/util/List;)Ljava/util/List;

    .line 74
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider$2;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;

    invoke-static {v0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->access$200(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->publishRoutes(Ljava/util/ArrayList;)V

    return-void
.end method
