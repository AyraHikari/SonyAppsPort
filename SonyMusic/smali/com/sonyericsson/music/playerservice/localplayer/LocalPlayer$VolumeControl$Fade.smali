.class public final enum Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;
.super Ljava/lang/Enum;
.source "LocalPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Fade"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;

.field public static final enum FAST:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;

.field public static final enum NONE:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;

.field public static final enum SLOW:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;

.field public static final enum SUPER_SLOW:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;


# instance fields
.field public final delayMillis:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1957
    new-instance v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;->NONE:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;

    .line 1958
    new-instance v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;

    const-string v1, "FAST"

    const/4 v3, 0x1

    const/16 v4, 0x14

    invoke-direct {v0, v1, v3, v4}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;->FAST:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;

    .line 1959
    new-instance v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;

    const-string v1, "SLOW"

    const/4 v4, 0x2

    const/16 v5, 0x64

    invoke-direct {v0, v1, v4, v5}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;->SLOW:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;

    .line 1960
    new-instance v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;

    const-string v1, "SUPER_SLOW"

    const/4 v5, 0x3

    const/16 v6, 0x258

    invoke-direct {v0, v1, v5, v6}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;->SUPER_SLOW:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;

    const/4 v0, 0x4

    .line 1956
    new-array v0, v0, [Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;

    sget-object v1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;->NONE:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;->FAST:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;->SLOW:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;->SUPER_SLOW:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;->$VALUES:[Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1964
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1965
    iput p3, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;->delayMillis:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;
    .locals 1

    .line 1956
    const-class v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;
    .locals 1

    .line 1956
    sget-object v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;->$VALUES:[Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;

    return-object v0
.end method
