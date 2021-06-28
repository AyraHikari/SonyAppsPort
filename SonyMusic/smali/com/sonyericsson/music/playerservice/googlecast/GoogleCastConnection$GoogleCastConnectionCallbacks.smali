.class Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;
.super Ljava/lang/Object;
.source "GoogleCastConnection.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GoogleCastConnectionCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$1;)V
    .locals 0

    .line 235
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;-><init>(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;Landroid/os/Bundle;)V
    .locals 0

    .line 235
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;->reconnectChannels(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;)V
    .locals 0

    .line 235
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;->launchApplication()V

    return-void
.end method

.method private launchApplication()V
    .locals 5

    .line 296
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    invoke-static {v1}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->access$1000(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    const-string v2, "F3F3F51B"

    new-instance v3, Lcom/google/android/gms/cast/LaunchOptions$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/cast/LaunchOptions$Builder;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/gms/cast/LaunchOptions$Builder;->setRelaunchIfRunning(Z)Lcom/google/android/gms/cast/LaunchOptions$Builder;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/LaunchOptions$Builder;->build()Lcom/google/android/gms/cast/LaunchOptions;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/cast/Cast$CastApi;->launchApplication(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks$2;-><init>(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;)V

    .line 297
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method private reconnectChannels(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING"

    .line 332
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 336
    invoke-static {p1, p1}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->setCastDevice(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 337
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->teardown()V

    goto :goto_0

    .line 339
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    invoke-static {p1}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->access$1300(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;)V

    :goto_0
    return-void
.end method

.method private rejoinApplication()V
    .locals 4

    .line 263
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    invoke-static {v1}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->access$1000(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    const-string v2, "F3F3F51B"

    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    invoke-static {v3}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->access$1100(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/cast/Cast$CastApi;->joinApplication(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks$1;-><init>(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;)V

    .line 264
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->access$200(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;Z)V

    .line 242
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->access$300(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->access$302(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;Z)Z

    .line 244
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;->reconnectChannels(Landroid/os/Bundle;)V

    .line 245
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    invoke-static {p1}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->access$400(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 247
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    invoke-static {p1}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->access$500(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 248
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;->rejoinApplication()V

    goto :goto_0

    .line 250
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;->launchApplication()V

    :goto_0
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1

    .line 257
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->access$200(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;Z)V

    .line 258
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->access$302(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;Z)Z

    return-void
.end method
