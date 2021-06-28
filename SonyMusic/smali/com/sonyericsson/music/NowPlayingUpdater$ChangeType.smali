.class public final enum Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;
.super Ljava/lang/Enum;
.source "NowPlayingUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/NowPlayingUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChangeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;

.field public static final enum FOCUS_CHANGE:Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;

.field public static final enum PLAY_CHANGE:Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 41
    new-instance v0, Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;

    const-string v1, "FOCUS_CHANGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;->FOCUS_CHANGE:Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;

    new-instance v0, Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;

    const-string v1, "PLAY_CHANGE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;->PLAY_CHANGE:Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;

    const/4 v0, 0x2

    .line 40
    new-array v0, v0, [Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;

    sget-object v1, Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;->FOCUS_CHANGE:Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;->PLAY_CHANGE:Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;->$VALUES:[Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;
    .locals 1

    .line 40
    const-class v0, Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;
    .locals 1

    .line 40
    sget-object v0, Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;->$VALUES:[Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;

    return-object v0
.end method
