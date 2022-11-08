.class synthetic Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$3;
.super Ljava/lang/Object;
.source "LocalPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$music$playerservice$PrepareOperation$PrepareOp:[I

.field static final synthetic $SwitchMap$com$sonymobile$music$audioplayer$AudioPlayer$PlayerState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1283
    invoke-static {}, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->values()[Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$3;->$SwitchMap$com$sonyericsson$music$playerservice$PrepareOperation$PrepareOp:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$3;->$SwitchMap$com$sonyericsson$music$playerservice$PrepareOperation$PrepareOp:[I

    sget-object v2, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->SKIP:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$3;->$SwitchMap$com$sonyericsson$music$playerservice$PrepareOperation$PrepareOp:[I

    sget-object v3, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->OPEN:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$3;->$SwitchMap$com$sonyericsson$music$playerservice$PrepareOperation$PrepareOp:[I

    sget-object v4, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->FAST_FORWARD:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$3;->$SwitchMap$com$sonyericsson$music$playerservice$PrepareOperation$PrepareOp:[I

    sget-object v5, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->REWIND:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 315
    :catch_3
    invoke-static {}, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->values()[Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$3;->$SwitchMap$com$sonymobile$music$audioplayer$AudioPlayer$PlayerState:[I

    :try_start_4
    sget-object v4, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$3;->$SwitchMap$com$sonymobile$music$audioplayer$AudioPlayer$PlayerState:[I

    sget-object v5, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PREPARED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$3;->$SwitchMap$com$sonymobile$music$audioplayer$AudioPlayer$PlayerState:[I

    sget-object v4, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->COMPLETED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$3;->$SwitchMap$com$sonymobile$music$audioplayer$AudioPlayer$PlayerState:[I

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->IDLE:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$3;->$SwitchMap$com$sonymobile$music$audioplayer$AudioPlayer$PlayerState:[I

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->END:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
