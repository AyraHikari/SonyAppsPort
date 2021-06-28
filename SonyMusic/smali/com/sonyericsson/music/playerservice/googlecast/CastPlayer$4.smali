.class Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$4;
.super Ljava/lang/Object;
.source "CastPlayer.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->prepare(Lcom/sonyericsson/music/common/Track;)V
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

.field final synthetic val$track:Lcom/sonyericsson/music/common/Track;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;Lcom/sonyericsson/music/common/Track;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$4;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    iput-object p2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$4;->val$track:Lcom/sonyericsson/music/common/Track;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;)V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$4;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->access$400(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$4$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$4$1;-><init>(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$4;Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 266
    check-cast p1, Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$4;->onResult(Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;)V

    return-void
.end method
