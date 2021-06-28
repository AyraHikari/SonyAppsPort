.class public final enum Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;
.super Ljava/lang/Enum;
.source "DrmUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/DrmUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RightsCheckResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

.field public static final enum FILE_ACCESS_PERMISSION_DENIED:Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

.field public static final enum HAS_DRM_RIGHTS:Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

.field public static final enum HAS_NO_DRM_RIGHTS:Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 36
    new-instance v0, Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    const-string v1, "FILE_ACCESS_PERMISSION_DENIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;->FILE_ACCESS_PERMISSION_DENIED:Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    .line 39
    new-instance v0, Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    const-string v1, "HAS_DRM_RIGHTS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;->HAS_DRM_RIGHTS:Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    .line 42
    new-instance v0, Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    const-string v1, "HAS_NO_DRM_RIGHTS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;->HAS_NO_DRM_RIGHTS:Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    const/4 v0, 0x3

    .line 33
    new-array v0, v0, [Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    sget-object v1, Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;->FILE_ACCESS_PERMISSION_DENIED:Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;->HAS_DRM_RIGHTS:Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;->HAS_NO_DRM_RIGHTS:Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;->$VALUES:[Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;
    .locals 1

    .line 33
    const-class v0, Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;
    .locals 1

    .line 33
    sget-object v0, Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;->$VALUES:[Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    return-object v0
.end method
