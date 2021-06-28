.class Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$7$1;
.super Ljava/lang/Object;
.source "CastPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$7;->onResult(Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$7;

.field final synthetic val$mediaChannelResult:Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$7;Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$7$1;->this$1:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$7;

    iput-object p2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$7$1;->val$mediaChannelResult:Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$7$1;->val$mediaChannelResult:Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 451
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$7$1;->this$1:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$7;

    iget-object v0, v0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$7;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    sget-object v1, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;->ERROR:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    invoke-static {v0, v1}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->access$300(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;)V

    goto :goto_0

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$7$1;->this$1:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$7;

    iget-object v0, v0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$7;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    sget-object v1, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;->STARTED:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    invoke-static {v0, v1}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->access$300(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;)V

    :goto_0
    return-void
.end method
