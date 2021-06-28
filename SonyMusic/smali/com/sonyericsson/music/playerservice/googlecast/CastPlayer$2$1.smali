.class Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$2$1;
.super Ljava/lang/Object;
.source "CastPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$2;->onReconnectChannel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$2;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$2;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$2$1;->this$1:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 116
    sget-object v0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$2$1;->this$1:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$2;

    iget-object v0, v0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$2;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->access$000(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$2$1;->this$1:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$2;

    iget-object v1, v1, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$2;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    invoke-static {v1}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->access$500(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$2$1;->this$1:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$2;

    iget-object v2, v2, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$2;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    invoke-static {v2}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->access$000(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->getNamespace()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$2$1;->this$1:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$2;

    iget-object v3, v3, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$2;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    invoke-static {v3}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->access$000(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/cast/Cast$CastApi;->setMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
