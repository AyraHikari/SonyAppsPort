.class synthetic Lcom/sonyericsson/music/NowPlayingUpdater$4;
.super Ljava/lang/Object;
.source "NowPlayingUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/NowPlayingUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$music$NowPlayingUpdater$ChangeType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 277
    invoke-static {}, Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;->values()[Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/music/NowPlayingUpdater$4;->$SwitchMap$com$sonyericsson$music$NowPlayingUpdater$ChangeType:[I

    :try_start_0
    sget-object v0, Lcom/sonyericsson/music/NowPlayingUpdater$4;->$SwitchMap$com$sonyericsson$music$NowPlayingUpdater$ChangeType:[I

    sget-object v1, Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;->PLAY_CHANGE:Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/sonyericsson/music/NowPlayingUpdater$4;->$SwitchMap$com$sonyericsson$music$NowPlayingUpdater$ChangeType:[I

    sget-object v1, Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;->FOCUS_CHANGE:Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
