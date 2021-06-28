.class public final enum Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;
.super Ljava/lang/Enum;
.source "ScalingUtilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/ScalingUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScalingLogic"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;

.field public static final enum CROP:Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;

.field public static final enum FIT:Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 112
    new-instance v0, Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;

    const-string v1, "CROP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;->CROP:Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;

    new-instance v0, Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;

    const-string v1, "FIT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;->FIT:Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;

    const/4 v0, 0x2

    .line 111
    new-array v0, v0, [Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;

    sget-object v1, Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;->CROP:Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;->FIT:Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;->$VALUES:[Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;
    .locals 1

    .line 111
    const-class v0, Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;
    .locals 1

    .line 111
    sget-object v0, Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;->$VALUES:[Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;

    return-object v0
.end method
