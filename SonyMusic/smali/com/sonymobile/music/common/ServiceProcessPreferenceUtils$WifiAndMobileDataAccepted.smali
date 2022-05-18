.class public final enum Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;
.super Ljava/lang/Enum;
.source "ServiceProcessPreferenceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WifiAndMobileDataAccepted"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;

.field public static final enum ACCEPTED:Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;

.field public static final enum DECLINED:Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;

.field public static final enum NOT_SET:Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 51
    new-instance v0, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;

    const-string v1, "NOT_SET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;->NOT_SET:Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;

    .line 52
    new-instance v0, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;

    const-string v1, "ACCEPTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;->ACCEPTED:Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;

    .line 53
    new-instance v0, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;

    const-string v1, "DECLINED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;->DECLINED:Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;

    const/4 v0, 0x3

    .line 50
    new-array v0, v0, [Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;

    sget-object v1, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;->NOT_SET:Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;->ACCEPTED:Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;->DECLINED:Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;->$VALUES:[Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;
    .locals 1

    .line 50
    const-class v0, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;
    .locals 1

    .line 50
    sget-object v0, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;->$VALUES:[Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;

    invoke-virtual {v0}, [Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;

    return-object v0
.end method
