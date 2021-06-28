.class Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;
.super Ljava/lang/Object;
.source "GaGtmUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/gagtmhelper/GaGtmUtils;->init(Landroid/content/Context;Ljava/lang/String;IIILcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;


# direct methods
.method constructor <init>(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 230
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-static {v1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$100(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 233
    iget-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-static {v1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$200(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GaGtmHelper"

    const-string v3, "running on Xperia"

    .line 236
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-static {v1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$300(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/gagtmhelper/GaGtmSystemSetting;->readSomcGaSetting(Landroid/content/Context;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 243
    iget-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    new-instance v2, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

    iget-object v3, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-static {v3}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$300(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$402(Lcom/sonymobile/gagtmhelper/GaGtmUtils;Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;)Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

    goto :goto_0

    .line 247
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-static {v1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$300(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setAppOptOut(Z)V

    goto :goto_0

    .line 252
    :cond_2
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "GaGtmHelper"

    const-string v2, "running on non-Xperia"

    .line 253
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-static {v1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$500(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V

    .line 258
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
