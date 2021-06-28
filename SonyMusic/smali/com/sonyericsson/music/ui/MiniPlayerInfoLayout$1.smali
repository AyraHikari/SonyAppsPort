.class synthetic Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout$1;
.super Ljava/lang/Object;
.source "MiniPlayerInfoLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$music$player$PlayerState$SkipDirection:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 122
    invoke-static {}, Lcom/sonyericsson/music/player/PlayerState$SkipDirection;->values()[Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout$1;->$SwitchMap$com$sonyericsson$music$player$PlayerState$SkipDirection:[I

    :try_start_0
    sget-object v0, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout$1;->$SwitchMap$com$sonyericsson$music$player$PlayerState$SkipDirection:[I

    sget-object v1, Lcom/sonyericsson/music/player/PlayerState$SkipDirection;->FORWARD:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout$1;->$SwitchMap$com$sonyericsson$music$player$PlayerState$SkipDirection:[I

    sget-object v1, Lcom/sonyericsson/music/player/PlayerState$SkipDirection;->BACKWARD:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
