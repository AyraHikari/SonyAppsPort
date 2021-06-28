.class final enum Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;
.super Ljava/lang/Enum;
.source "PlayqueueAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PlayingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;

.field public static final enum BUFFERING:Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;

.field public static final enum NONE:Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;

.field public static final enum PAUSED:Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;

.field public static final enum PLAYING:Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 44
    new-instance v0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;->NONE:Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;

    new-instance v0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;

    const-string v1, "BUFFERING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;->BUFFERING:Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;

    new-instance v0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;

    const-string v1, "PLAYING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;->PLAYING:Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;

    new-instance v0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;

    const-string v1, "PAUSED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;->PAUSED:Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;

    const/4 v0, 0x4

    .line 43
    new-array v0, v0, [Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;

    sget-object v1, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;->NONE:Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;->BUFFERING:Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;->PLAYING:Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;->PAUSED:Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;->$VALUES:[Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;
    .locals 1

    .line 43
    const-class v0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;
    .locals 1

    .line 43
    sget-object v0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;->$VALUES:[Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;

    return-object v0
.end method
