.class Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$3;
.super Ljava/lang/Object;
.source "FirebaseRemoteConfigProvider.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->fetchGafConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;

.field final synthetic val$firebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$3;->this$0:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;

    iput-object p2, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$3;->val$firebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 323
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    instance-of p1, p1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchThrottledException;

    if-eqz p1, :cond_0

    .line 336
    invoke-static {}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->access$200()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 337
    :try_start_0
    sget-object v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;->CONFIG_FETCH_COMPLETE:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    invoke-static {v0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->access$302(Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;)Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    .line 338
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    iget-object p1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$3;->this$0:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;

    invoke-static {p1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->access$400(Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 338
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 346
    :cond_0
    invoke-static {}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->access$200()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 347
    :try_start_2
    sget-object v1, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;->CONFIG_FETCH_COMPLETE:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    invoke-static {v1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->access$302(Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;)Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    .line 348
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 358
    iget-object p1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$3;->val$firebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->activateFetched()Z

    .line 362
    iget-object p1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$3;->this$0:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;

    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$3;->val$firebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    invoke-static {p1, v0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->access$600(Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)V

    goto :goto_0

    .line 375
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$3;->this$0:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;

    invoke-static {p1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->access$400(Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;)V

    .line 380
    :goto_0
    invoke-static {}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->access$500()Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_1
    move-exception v0

    .line 348
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
