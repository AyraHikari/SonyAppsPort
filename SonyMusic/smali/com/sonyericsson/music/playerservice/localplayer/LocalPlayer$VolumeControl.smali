.class Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;
.super Landroid/os/Handler;
.source "LocalPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VolumeControl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$VolumeControlListener;,
        Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;
    }
.end annotation


# static fields
.field private static final ADJUST_SLOPE:F = 0.2f

.field private static final VOLUME_MIN_STEP:F = 0.05f

.field private static final VOLUME_STEP_MESSAGE:I = 0x1


# instance fields
.field private mCurrentVolume:F

.field private mListener:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$VolumeControlListener;

.field private mMinStep:F

.field private final mPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/music/audioplayer/AudioPlayer<",
            "Lcom/sonyericsson/music/common/Track;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetVolume:F


# direct methods
.method public constructor <init>(Lcom/sonymobile/music/audioplayer/AudioPlayer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/music/audioplayer/AudioPlayer<",
            "Lcom/sonyericsson/music/common/Track;",
            ">;)V"
        }
    .end annotation

    .line 1981
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const v0, 0x3d4ccccd    # 0.05f

    .line 1976
    iput v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;->mMinStep:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1982
    iput v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;->mCurrentVolume:F

    .line 1983
    iput v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;->mTargetVolume:F

    .line 1984
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;->mPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    return-void
.end method

.method private scheduleVolume(FFI)V
    .locals 4

    sub-float v0, p2, p1

    .line 2047
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;->mMinStep:F

    const/4 v3, 0x1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 2049
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2050
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;->updateVolume(F)V

    .line 2051
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;->mListener:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$VolumeControlListener;

    if-eqz p1, :cond_1

    .line 2052
    invoke-interface {p1, p2}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$VolumeControlListener;->onDone(F)V

    goto :goto_0

    :cond_0
    const p2, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, p2

    add-float/2addr p1, v0

    .line 2057
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;->updateVolume(F)V

    .line 2058
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2060
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 2061
    iput v3, p1, Landroid/os/Message;->what:I

    .line 2062
    iput p3, p1, Landroid/os/Message;->arg1:I

    int-to-long p2, p3

    .line 2063
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateVolume(F)V
    .locals 1

    .line 2071
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;->mPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->hasPlayer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2072
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;->mPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    invoke-virtual {v0, p1, p1}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->setVolume(FF)V

    .line 2076
    :cond_0
    iput p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;->mCurrentVolume:F

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 2041
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2042
    iget v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;->mTargetVolume:F

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;->updateVolume(F)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1989
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1991
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1992
    iget v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;->mCurrentVolume:F

    iget v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;->mTargetVolume:F

    invoke-direct {p0, v0, v1, p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;->scheduleVolume(FFI)V

    return-void

    .line 1995
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVolume(FLcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;)V
    .locals 1

    const/4 v0, 0x0

    .line 2033
    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;->setVolume(FLcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$VolumeControlListener;)V

    return-void
.end method

.method public setVolume(FLcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$VolumeControlListener;)V
    .locals 3

    .line 2007
    iput p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;->mTargetVolume:F

    .line 2008
    iget v0, p2, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;->delayMillis:I

    const v1, 0x3d4ccccd    # 0.05f

    const/16 v2, 0x64

    if-lt v0, v2, :cond_0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x41200000    # 10.0f

    mul-float v1, v1, v0

    .line 2009
    iput v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;->mMinStep:F

    goto :goto_0

    .line 2011
    :cond_0
    iput v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;->mMinStep:F

    .line 2013
    :goto_0
    iget p2, p2, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;->delayMillis:I

    if-lez p2, :cond_1

    .line 2014
    iget v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;->mCurrentVolume:F

    invoke-direct {p0, v0, p1, p2}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;->scheduleVolume(FFI)V

    .line 2015
    iput-object p3, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;->mListener:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$VolumeControlListener;

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    .line 2017
    invoke-virtual {p0, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2018
    iget p2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;->mTargetVolume:F

    invoke-direct {p0, p2}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;->updateVolume(F)V

    if-eqz p3, :cond_2

    .line 2020
    invoke-interface {p3, p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$VolumeControlListener;->onDone(F)V

    :cond_2
    :goto_1
    return-void
.end method
