.class Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaScannerHandler;
.super Landroid/os/Handler;
.source "DlnaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DlnaScannerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;


# direct methods
.method public constructor <init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;Landroid/os/Looper;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaScannerHandler;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;

    .line 246
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 251
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 252
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 253
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage MSG_SETUP"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaScannerHandler;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$ScanResultCallback;

    invoke-static {v0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->access$202(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$ScanResultCallback;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$ScanResultCallback;

    .line 257
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaScannerHandler;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->access$300(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;)V

    goto/16 :goto_0

    :cond_1
    const/4 p1, 0x2

    if-ne v0, p1, :cond_3

    .line 260
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_2

    .line 261
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage MSG_SETUP_DMR_CURSOR"

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_2
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaScannerHandler;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->access$400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;)V

    .line 266
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaScannerHandler;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->access$200(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$ScanResultCallback;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 267
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaScannerHandler;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->access$200(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$ScanResultCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaScannerHandler;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->access$500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$ScanResultCallback;->updateDlnaList(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x3

    if-ne v0, p1, :cond_5

    .line 271
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_4

    .line 272
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage MSG_UPDATE_DMR_LIST"

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_4
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaScannerHandler;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->access$600(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;)V

    goto :goto_0

    :cond_5
    const/4 p1, 0x4

    if-ne v0, p1, :cond_8

    .line 278
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_6

    .line 279
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage MSG_TEARDOWN"

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_6
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaScannerHandler;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->access$700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaScannerHandler;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->access$802(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 284
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaScannerHandler;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->access$902(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaScannerHandler;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaScannerHandler;

    .line 285
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaScannerHandler;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->access$1000(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;)V

    .line 288
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaScannerHandler;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->access$1100(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;)V

    .line 290
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_7

    .line 291
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage MSG_TEARDOWN end"

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_7
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 285
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_8
    :goto_0
    return-void
.end method
