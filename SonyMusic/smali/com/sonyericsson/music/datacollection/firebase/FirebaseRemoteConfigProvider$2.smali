.class Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$2;
.super Ljava/lang/Object;
.source "FirebaseRemoteConfigProvider.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCanceledListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->fetchGafConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$2;->this$0:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 2

    .line 375
    invoke-static {}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->access$200()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 376
    :try_start_0
    sget-object v1, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;->CONFIG_FETCH_COMPLETE:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    invoke-static {v1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->access$302(Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;)Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    .line 377
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$2;->this$0:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;

    invoke-static {v0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->access$400(Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;)V

    .line 383
    invoke-static {}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->access$500()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v1

    .line 377
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
