.class synthetic Lcom/sonymobile/music/audioplayer/AudioPlayer$1;
.super Ljava/lang/Object;
.source "AudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/music/audioplayer/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonymobile$music$audioplayer$AudioPlayer$PlayerState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 498
    invoke-static {}, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->values()[Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$1;->$SwitchMap$com$sonymobile$music$audioplayer$AudioPlayer$PlayerState:[I

    :try_start_0
    sget-object v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$1;->$SwitchMap$com$sonymobile$music$audioplayer$AudioPlayer$PlayerState:[I

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PREPARING:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$1;->$SwitchMap$com$sonymobile$music$audioplayer$AudioPlayer$PlayerState:[I

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PREPARED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
