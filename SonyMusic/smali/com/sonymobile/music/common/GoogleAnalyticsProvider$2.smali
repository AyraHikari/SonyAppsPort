.class final Lcom/sonymobile/music/common/GoogleAnalyticsProvider$2;
.super Ljava/lang/Object;
.source "GoogleAnalyticsProvider.java"

# interfaces
.implements Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->loadGtmContainer(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContainerLoaded(Z)V
    .locals 4

    .line 334
    :try_start_0
    invoke-static {}, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    sget-object v0, Lcom/sonymobile/music/common/Debug;->DEBUG:Lcom/sonymobile/music/common/Debug;

    const-class v1, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;

    const-string v2, "onContainerLoaded"

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/music/debug/DebugBase;->logD(Ljava/lang/Class;Ljava/lang/String;)V

    .line 337
    :cond_0
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getContainerHolder()Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object v0

    if-nez p1, :cond_2

    .line 340
    sget-object p1, Lcom/sonymobile/music/common/Debug;->DEBUG:Lcom/sonymobile/music/common/Debug;

    const-class v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;

    const-string v1, "Load container failed"

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;)V

    .line 342
    invoke-static {}, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->access$200()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 343
    :try_start_1
    sget-object v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;->CONTAINER_LOAD_FAILED:Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

    invoke-static {v0}, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->access$302(Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;)Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

    .line 345
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    invoke-static {}, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->access$400()Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 372
    invoke-static {}, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->access$100()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 373
    sget-object p1, Lcom/sonymobile/music/common/Debug;->DEBUG:Lcom/sonymobile/music/common/Debug;

    const-class v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;

    const-string v1, "Counting down latch"

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/music/debug/DebugBase;->logD(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 345
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0

    .line 350
    :cond_2
    invoke-static {}, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->access$100()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 351
    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getContainer()Lcom/google/android/gms/tagmanager/Container;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "gagtm-containerVersion"

    .line 353
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tagmanager/Container;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 355
    sget-object v0, Lcom/sonymobile/music/common/Debug;->DEBUG:Lcom/sonymobile/music/common/Debug;

    const-class v1, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Container version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sonymobile/music/debug/DebugBase;->logD(Ljava/lang/Class;Ljava/lang/String;)V

    .line 360
    :cond_3
    invoke-static {}, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->access$200()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 361
    :try_start_4
    sget-object v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;->CONTAINER_LOAD_SUCCESS:Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

    invoke-static {v0}, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->access$302(Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;)Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

    .line 362
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 364
    :try_start_5
    invoke-static {}, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->access$100()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 365
    sget-object p1, Lcom/sonymobile/music/common/Debug;->DEBUG:Lcom/sonymobile/music/common/Debug;

    const-class v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;

    const-string v1, "Container loaded successfully"

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/music/debug/DebugBase;->logD(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 370
    :cond_4
    invoke-static {}, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->access$400()Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 372
    invoke-static {}, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->access$100()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 373
    sget-object p1, Lcom/sonymobile/music/common/Debug;->DEBUG:Lcom/sonymobile/music/common/Debug;

    const-class v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;

    const-string v1, "Counting down latch"

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/music/debug/DebugBase;->logD(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_5
    return-void

    :catchall_1
    move-exception v0

    .line 362
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    .line 370
    invoke-static {}, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->access$400()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 372
    invoke-static {}, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 373
    sget-object v0, Lcom/sonymobile/music/common/Debug;->DEBUG:Lcom/sonymobile/music/common/Debug;

    const-class v1, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;

    const-string v2, "Counting down latch"

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/music/debug/DebugBase;->logD(Ljava/lang/Class;Ljava/lang/String;)V

    .line 375
    :cond_6
    throw p1
.end method
