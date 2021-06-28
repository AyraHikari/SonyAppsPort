.class Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks$1;
.super Ljava/lang/Object;
.source "GoogleCastConnection.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;->rejoinApplication()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks$1;->this$1:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;)V
    .locals 3

    .line 267
    invoke-interface {p1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks$1;->this$1:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;

    iget-object v0, v0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->access$600(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;Z)V

    .line 274
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks$1;->this$1:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;

    iget-object v0, v0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    invoke-interface {p1}, Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;->getSessionId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->access$700(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;Ljava/lang/String;)V

    .line 284
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks$1;->this$1:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;

    invoke-static {p1, v1}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;->access$800(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;Landroid/os/Bundle;)V

    .line 285
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks$1;->this$1:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;

    iget-object p1, p1, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    invoke-static {p1}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->access$400(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 288
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks$1;->this$1:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;

    iget-object p1, p1, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    invoke-static {p1, v1}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->access$700(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;Ljava/lang/String;)V

    .line 289
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks$1;->this$1:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;

    invoke-static {p1}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;->access$900(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 264
    check-cast p1, Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks$1;->onResult(Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;)V

    return-void
.end method
