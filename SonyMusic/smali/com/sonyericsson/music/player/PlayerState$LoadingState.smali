.class public final enum Lcom/sonyericsson/music/player/PlayerState$LoadingState;
.super Ljava/lang/Enum;
.source "PlayerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/player/PlayerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/player/PlayerState$LoadingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/player/PlayerState$LoadingState;

.field public static final enum BUFFERING:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

.field public static final enum IDLE:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

.field public static final enum PREPARING:Lcom/sonyericsson/music/player/PlayerState$LoadingState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 27
    new-instance v0, Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/player/PlayerState$LoadingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/player/PlayerState$LoadingState;->IDLE:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    new-instance v0, Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    const-string v1, "BUFFERING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/music/player/PlayerState$LoadingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/player/PlayerState$LoadingState;->BUFFERING:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    new-instance v0, Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    const-string v1, "PREPARING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/music/player/PlayerState$LoadingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/player/PlayerState$LoadingState;->PREPARING:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    sget-object v1, Lcom/sonyericsson/music/player/PlayerState$LoadingState;->IDLE:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/player/PlayerState$LoadingState;->BUFFERING:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/music/player/PlayerState$LoadingState;->PREPARING:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/music/player/PlayerState$LoadingState;->$VALUES:[Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/player/PlayerState$LoadingState;
    .locals 1

    .line 27
    const-class v0, Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/player/PlayerState$LoadingState;
    .locals 1

    .line 27
    sget-object v0, Lcom/sonyericsson/music/player/PlayerState$LoadingState;->$VALUES:[Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/player/PlayerState$LoadingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    return-object v0
.end method
