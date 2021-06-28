.class Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;
.super Ljava/lang/Object;
.source "GaGtmUtils.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/gagtmhelper/GaGtmUtils;->downloadContainerLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/tagmanager/ContainerHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;


# direct methods
.method constructor <init>(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 551
    check-cast p1, Lcom/google/android/gms/tagmanager/ContainerHolder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;->onResult(Lcom/google/android/gms/tagmanager/ContainerHolder;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/tagmanager/ContainerHolder;)V
    .locals 2

    .line 554
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GaGtmHelper"

    const-string v1, "onResult"

    .line 555
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-static {v0, p1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$602(Lcom/sonymobile/gagtmhelper/GaGtmUtils;Lcom/google/android/gms/tagmanager/ContainerHolder;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 562
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "GaGtmHelper"

    const-string v1, "containerHolder was null"

    .line 563
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_1
    iget-object p1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-static {p1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$700(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 567
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "GaGtmHelper"

    const-string v1, "Calling callback"

    .line 568
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_2
    iget-object p1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-static {p1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$700(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;->onContainerLoaded(Z)V

    :cond_3
    return-void

    .line 576
    :cond_4
    invoke-interface {p1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result p1

    if-nez p1, :cond_8

    .line 578
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "GaGtmHelper"

    const-string v1, "success was false"

    .line 579
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_5
    iget-object p1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-static {p1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$700(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 583
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "GaGtmHelper"

    const-string v1, "Calling callback"

    .line 584
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_6
    iget-object p1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-static {p1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$700(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;->onContainerLoaded(Z)V

    :cond_7
    return-void

    .line 594
    :cond_8
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2$1;-><init>(Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;)V

    const-string v1, "downloadContainerLocked_thread"

    invoke-direct {p1, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 615
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 617
    iget-object p1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-static {p1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$700(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 618
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "GaGtmHelper"

    const-string v0, "Calling callback"

    .line 619
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_9
    iget-object p1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-static {p1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$700(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;->onContainerLoaded(Z)V

    :cond_a
    return-void
.end method
