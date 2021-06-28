.class public final enum Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;
.super Ljava/lang/Enum;
.source "AudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/music/audioplayer/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

.field public static final enum COMPLETED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

.field public static final enum END:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

.field public static final enum ERROR:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

.field public static final enum IDLE:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

.field public static final enum PAUSED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

.field public static final enum PREPARED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

.field public static final enum PREPARING:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

.field public static final enum STARTED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 33
    new-instance v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->IDLE:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    new-instance v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    const-string v1, "PREPARED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PREPARED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    new-instance v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    const-string v1, "PREPARING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PREPARING:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    new-instance v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    const-string v1, "STARTED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->STARTED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    new-instance v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    const-string v1, "PAUSED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PAUSED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    new-instance v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    const-string v1, "COMPLETED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->COMPLETED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    new-instance v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    const-string v1, "ERROR"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->ERROR:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    new-instance v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    const-string v1, "END"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->END:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    const/16 v0, 0x8

    .line 32
    new-array v0, v0, [Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->IDLE:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PREPARED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PREPARING:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->STARTED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PAUSED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->COMPLETED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->ERROR:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->END:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    aput-object v1, v0, v9

    sput-object v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->$VALUES:[Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;
    .locals 1

    .line 32
    const-class v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;
    .locals 1

    .line 32
    sget-object v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->$VALUES:[Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    invoke-virtual {v0}, [Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    return-object v0
.end method
