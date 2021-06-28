.class Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1;
.super Ljava/lang/Object;
.source "CastPlayer.java"

# interfaces
.implements Lcom/google/android/gms/cast/RemoteMediaPlayer$OnStatusUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1;Lcom/google/android/gms/cast/MediaStatus;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1;->logRemotePlayerState(Lcom/google/android/gms/cast/MediaStatus;)V

    return-void
.end method

.method private logRemotePlayerState(Lcom/google/android/gms/cast/MediaStatus;)V
    .locals 4

    .line 83
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 101
    sget-object p1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Remote state: unknown"

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/music/debug/DebugBase;->logD(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :pswitch_0
    sget-object p1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Remote state: buffering"

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/music/debug/DebugBase;->logD(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :pswitch_1
    sget-object p1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Remote state: paused"

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/music/debug/DebugBase;->logD(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :pswitch_2
    sget-object p1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Remote state: playing"

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/music/debug/DebugBase;->logD(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :pswitch_3
    sget-object v0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Remote state: idle"

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/music/debug/DebugBase;->logD(Ljava/lang/Class;Ljava/lang/String;)V

    .line 92
    sget-object v0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "idle reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaStatus;->getIdleReason()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sonymobile/music/debug/DebugBase;->logD(Ljava/lang/Class;Ljava/lang/String;)V

    .line 93
    sget-object p1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsPlaying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    invoke-static {v2}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->access$200(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/music/debug/DebugBase;->logD(Ljava/lang/Class;Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onStatusUpdated()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->access$400(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1$1;-><init>(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
