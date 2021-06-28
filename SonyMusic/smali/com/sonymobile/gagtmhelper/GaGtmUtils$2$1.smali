.class Lcom/sonymobile/gagtmhelper/GaGtmUtils$2$1;
.super Ljava/lang/Object;
.source "GaGtmUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;->onResult(Lcom/google/android/gms/tagmanager/ContainerHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;


# direct methods
.method constructor <init>(Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;)V
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2$1;->this$1:Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 597
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 602
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2$1;->this$1:Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;

    iget-object v1, v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-static {v1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$800(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V

    .line 607
    iget-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2$1;->this$1:Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;

    iget-object v1, v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-virtual {v1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->setContainerDefaults()V

    .line 609
    iget-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2$1;->this$1:Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;

    iget-object v1, v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$902(Lcom/sonymobile/gagtmhelper/GaGtmUtils;Z)Z

    .line 611
    iget-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2$1;->this$1:Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;

    iget-object v1, v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-static {v1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$1000(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V

    .line 612
    iget-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2$1;->this$1:Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;

    iget-object v1, v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-static {v1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$1100(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V

    .line 613
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
