.class Lcom/sonyericsson/music/MusicActivity$23;
.super Ljava/lang/Object;
.source "MusicActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/MusicActivity;->clearWearData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/MusicActivity;

.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MusicActivity;Landroid/content/Context;)V
    .locals 0

    .line 2342
    iput-object p1, p0, Lcom/sonyericsson/music/MusicActivity$23;->this$0:Lcom/sonyericsson/music/MusicActivity;

    iput-object p2, p0, Lcom/sonyericsson/music/MusicActivity$23;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private await(Lcom/google/android/gms/common/api/PendingResult;)Lcom/google/android/gms/common/api/Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/common/api/Result;",
            ">(",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2363
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/common/api/PendingResult;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2345
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity$23;->val$ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/wearable/Wearable;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    .line 2346
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    .line 2348
    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2349
    sget-object v1, Lcom/google/android/gms/wearable/Wearable;->DataApi:Lcom/google/android/gms/wearable/DataApi;

    invoke-interface {v1, v0}, Lcom/google/android/gms/wearable/DataApi;->getDataItems(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    .line 2350
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/MusicActivity$23;->await(Lcom/google/android/gms/common/api/PendingResult;)Lcom/google/android/gms/common/api/Result;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/DataItemBuffer;

    if-eqz v1, :cond_1

    .line 2353
    invoke-virtual {v1}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/wearable/DataItem;

    .line 2354
    sget-object v4, Lcom/google/android/gms/wearable/Wearable;->DataApi:Lcom/google/android/gms/wearable/DataApi;

    invoke-interface {v3}, Lcom/google/android/gms/wearable/DataItem;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v4, v0, v3}, Lcom/google/android/gms/wearable/DataApi;->deleteDataItems(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sonyericsson/music/MusicActivity$23;->await(Lcom/google/android/gms/common/api/PendingResult;)Lcom/google/android/gms/common/api/Result;

    goto :goto_0

    .line 2357
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->release()V

    :cond_1
    return-void
.end method
