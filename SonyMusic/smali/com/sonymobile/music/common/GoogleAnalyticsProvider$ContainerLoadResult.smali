.class public final enum Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;
.super Ljava/lang/Enum;
.source "GoogleAnalyticsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/music/common/GoogleAnalyticsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContainerLoadResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

.field public static final enum CONTAINER_LOAD_FAILED:Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

.field public static final enum CONTAINER_LOAD_IN_PROGRESS:Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

.field public static final enum CONTAINER_LOAD_NONE:Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

.field public static final enum CONTAINER_LOAD_SUCCESS:Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 59
    new-instance v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

    const-string v1, "CONTAINER_LOAD_SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;->CONTAINER_LOAD_SUCCESS:Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

    .line 62
    new-instance v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

    const-string v1, "CONTAINER_LOAD_FAILED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;->CONTAINER_LOAD_FAILED:Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

    .line 65
    new-instance v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

    const-string v1, "CONTAINER_LOAD_IN_PROGRESS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;->CONTAINER_LOAD_IN_PROGRESS:Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

    .line 68
    new-instance v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

    const-string v1, "CONTAINER_LOAD_NONE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;->CONTAINER_LOAD_NONE:Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

    const/4 v0, 0x4

    .line 57
    new-array v0, v0, [Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

    sget-object v1, Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;->CONTAINER_LOAD_SUCCESS:Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;->CONTAINER_LOAD_FAILED:Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;->CONTAINER_LOAD_IN_PROGRESS:Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;->CONTAINER_LOAD_NONE:Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;->$VALUES:[Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;
    .locals 1

    .line 57
    const-class v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;
    .locals 1

    .line 57
    sget-object v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;->$VALUES:[Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

    invoke-virtual {v0}, [Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

    return-object v0
.end method
