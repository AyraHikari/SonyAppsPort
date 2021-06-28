.class final enum Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;
.super Ljava/lang/Enum;
.source "RemotePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PlayerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

.field public static final enum COMPLETED:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

.field public static final enum END:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

.field public static final enum ERROR:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

.field public static final enum IDLE:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

.field public static final enum PAUSED:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

.field public static final enum PREPARED:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

.field public static final enum PREPARING:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

.field public static final enum STARTED:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 43
    new-instance v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->IDLE:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    new-instance v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    const-string v1, "PREPARED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->PREPARED:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    new-instance v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    const-string v1, "PREPARING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->PREPARING:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    new-instance v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    const-string v1, "STARTED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->STARTED:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    new-instance v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    const-string v1, "PAUSED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->PAUSED:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    new-instance v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    const-string v1, "COMPLETED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->COMPLETED:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    new-instance v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    const-string v1, "ERROR"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->ERROR:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    new-instance v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    const-string v1, "END"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->END:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    const/16 v0, 0x8

    .line 42
    new-array v0, v0, [Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    sget-object v1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->IDLE:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->PREPARED:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->PREPARING:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->STARTED:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->PAUSED:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->COMPLETED:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->ERROR:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->END:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    aput-object v1, v0, v9

    sput-object v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->$VALUES:[Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;
    .locals 1

    .line 42
    const-class v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;
    .locals 1

    .line 42
    sget-object v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->$VALUES:[Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    return-object v0
.end method
