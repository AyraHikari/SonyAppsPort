.class public Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerException;
.super Ljava/lang/Exception;
.source "AudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/music/audioplayer/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioPlayerException"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Exception;)V
    .locals 1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
