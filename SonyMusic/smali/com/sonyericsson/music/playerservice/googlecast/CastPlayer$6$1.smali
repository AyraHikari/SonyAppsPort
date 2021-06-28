.class Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$6$1;
.super Ljava/lang/Object;
.source "CastPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$6;->onResult(Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$6;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$6;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$6$1;->this$1:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$6$1;->this$1:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$6;

    iget-object v0, v0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$6;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->access$700(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;)Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$CastPlayerListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    return-void
.end method
