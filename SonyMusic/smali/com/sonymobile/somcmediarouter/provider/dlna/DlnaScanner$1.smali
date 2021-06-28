.class Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$1;
.super Landroid/database/ContentObserver;
.source "DlnaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;


# direct methods
.method constructor <init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;Landroid/os/Handler;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$1;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 117
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentObserver:onChange"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 122
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$1;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->access$100(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;I)V

    return-void
.end method
