.class Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$3;
.super Ljava/lang/Object;
.source "CastPlayer.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->createRemoteMediaPlayer()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$success:[Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;[ZLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$3;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    iput-object p2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$3;->val$success:[Z

    iput-object p3, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;)V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$3;->val$success:[Z

    invoke-interface {p1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result p1

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 203
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 199
    check-cast p1, Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$3;->onResult(Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;)V

    return-void
.end method
