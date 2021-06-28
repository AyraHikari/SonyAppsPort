.class Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$6;
.super Ljava/lang/Object;
.source "CastPlayer.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->seekTo(I)V
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


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$6;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;)V
    .locals 1

    .line 403
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$6;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    invoke-static {p1}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->access$400(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$6$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$6$1;-><init>(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$6;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 399
    check-cast p1, Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$6;->onResult(Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;)V

    return-void
.end method
