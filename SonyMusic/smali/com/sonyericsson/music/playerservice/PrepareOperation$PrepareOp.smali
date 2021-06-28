.class public final enum Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;
.super Ljava/lang/Enum;
.source "PrepareOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playerservice/PrepareOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PrepareOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

.field public static final enum FAST_FORWARD:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

.field public static final enum NONE:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

.field public static final enum OPEN:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

.field public static final enum REWIND:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

.field public static final enum SKIP:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 18
    new-instance v0, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->NONE:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    new-instance v0, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    const-string v1, "OPEN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->OPEN:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    new-instance v0, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    const-string v1, "SKIP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->SKIP:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    new-instance v0, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    const-string v1, "FAST_FORWARD"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->FAST_FORWARD:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    new-instance v0, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    const-string v1, "REWIND"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->REWIND:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    const/4 v0, 0x5

    .line 17
    new-array v0, v0, [Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    sget-object v1, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->NONE:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->OPEN:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->SKIP:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->FAST_FORWARD:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->REWIND:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->$VALUES:[Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;
    .locals 1

    .line 17
    const-class v0, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;
    .locals 1

    .line 17
    sget-object v0, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->$VALUES:[Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    return-object v0
.end method
