.class public final enum Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;
.super Ljava/lang/Enum;
.source "DlnaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PositionGetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;

.field public static final enum CACHED:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;

.field public static final enum CALCULATED:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 176
    new-instance v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;

    const-string v1, "CACHED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;->CACHED:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;

    new-instance v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;

    const-string v1, "CALCULATED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;->CALCULATED:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;

    const/4 v0, 0x2

    .line 175
    new-array v0, v0, [Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;

    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;->CACHED:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;->CALCULATED:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;->$VALUES:[Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 175
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;
    .locals 1

    .line 175
    const-class v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;
    .locals 1

    .line 175
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;->$VALUES:[Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;

    invoke-virtual {v0}, [Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;

    return-object v0
.end method
