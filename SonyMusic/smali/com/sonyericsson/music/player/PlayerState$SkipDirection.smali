.class public final enum Lcom/sonyericsson/music/player/PlayerState$SkipDirection;
.super Ljava/lang/Enum;
.source "PlayerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/player/PlayerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SkipDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/player/PlayerState$SkipDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

.field public static final enum BACKWARD:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

.field public static final enum FORWARD:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

.field public static final enum NONE:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 29
    new-instance v0, Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/player/PlayerState$SkipDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/player/PlayerState$SkipDirection;->NONE:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    new-instance v0, Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    const-string v1, "FORWARD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/music/player/PlayerState$SkipDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/player/PlayerState$SkipDirection;->FORWARD:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    new-instance v0, Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    const-string v1, "BACKWARD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/music/player/PlayerState$SkipDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/player/PlayerState$SkipDirection;->BACKWARD:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    sget-object v1, Lcom/sonyericsson/music/player/PlayerState$SkipDirection;->NONE:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/player/PlayerState$SkipDirection;->FORWARD:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/music/player/PlayerState$SkipDirection;->BACKWARD:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/music/player/PlayerState$SkipDirection;->$VALUES:[Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/player/PlayerState$SkipDirection;
    .locals 1

    .line 29
    const-class v0, Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/player/PlayerState$SkipDirection;
    .locals 1

    .line 29
    sget-object v0, Lcom/sonyericsson/music/player/PlayerState$SkipDirection;->$VALUES:[Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/player/PlayerState$SkipDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    return-object v0
.end method
