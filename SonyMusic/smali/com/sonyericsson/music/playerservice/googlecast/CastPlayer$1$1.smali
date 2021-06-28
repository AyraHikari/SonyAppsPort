.class Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1$1;
.super Ljava/lang/Object;
.source "CastPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1;->onStatusUpdated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1$1;->this$1:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 59
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1$1;->this$1:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1;

    iget-object v0, v0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->access$000(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 61
    sget-object v2, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 66
    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1$1;->this$1:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1;

    iget-object v3, v3, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    .line 68
    invoke-static {v3}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->access$200(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 69
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1$1;->this$1:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1;

    iget-object v3, v3, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    invoke-static {v3}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->access$200(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-ne v2, v4, :cond_2

    .line 70
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getIdleReason()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 71
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1$1;->this$1:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1;

    iget-object v0, v0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    sget-object v2, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;->COMPLETED:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    invoke-static {v0, v2}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->access$300(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;)V

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1$1;->this$1:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1;

    iget-object v0, v0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    invoke-static {v0, v1}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->access$202(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;Z)Z

    goto :goto_0

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1$1;->this$1:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1;

    iget-object v0, v0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    invoke-static {v0, v1}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->access$202(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;Z)Z

    :goto_0
    return-void
.end method
