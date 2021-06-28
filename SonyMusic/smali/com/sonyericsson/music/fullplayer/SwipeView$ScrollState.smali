.class public final enum Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;
.super Ljava/lang/Enum;
.source "SwipeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/fullplayer/SwipeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScrollState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

.field public static final enum DRAGGING:Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

.field public static final enum IDLE:Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

.field public static final enum SCROLLING:Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

.field public static final enum SNAPPING:Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 47
    new-instance v0, Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;->IDLE:Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    .line 48
    new-instance v0, Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    const-string v1, "DRAGGING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;->DRAGGING:Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    .line 49
    new-instance v0, Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    const-string v1, "SNAPPING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;->SNAPPING:Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    .line 50
    new-instance v0, Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    const-string v1, "SCROLLING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;->SCROLLING:Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    const/4 v0, 0x4

    .line 46
    new-array v0, v0, [Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    sget-object v1, Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;->IDLE:Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;->DRAGGING:Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;->SNAPPING:Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;->SCROLLING:Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;->$VALUES:[Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;
    .locals 1

    .line 46
    const-class v0, Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;
    .locals 1

    .line 46
    sget-object v0, Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;->$VALUES:[Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/fullplayer/SwipeView$ScrollState;

    return-object v0
.end method
