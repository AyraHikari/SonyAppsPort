.class Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$2;
.super Ljava/lang/Object;
.source "LocalPlayer.java"

# interfaces
.implements Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$VolumeControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->pauseWithFade()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)V
    .locals 0

    .line 750
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$2;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(F)V
    .locals 0

    .line 754
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$2;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->pause()V

    return-void
.end method
