.class Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$4$1;
.super Ljava/lang/Object;
.source "CastPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$4;->onResult(Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$4;

.field final synthetic val$result:Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$4;Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$4$1;->this$1:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$4;

    iput-object p2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$4$1;->val$result:Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$4$1;->this$1:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$4;

    iget-object v0, v0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$4;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->access$602(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;Lcom/google/android/gms/common/api/PendingResult;)Lcom/google/android/gms/common/api/PendingResult;

    .line 273
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$4$1;->val$result:Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$4$1;->this$1:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$4;

    iget-object v0, v0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$4;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    sget-object v1, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;->PREPARED:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    invoke-static {v0, v1}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->access$300(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;)V

    .line 275
    sget-object v0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    goto :goto_0

    .line 281
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    .line 286
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$4$1;->this$1:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$4;

    iget-object v0, v0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$4;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    sget-object v1, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;->ERROR:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    invoke-static {v0, v1}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->access$300(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;)V

    :goto_0
    return-void
.end method
