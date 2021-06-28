.class public Lcom/sonyericsson/music/common/DrmUtilsStub;
.super Ljava/lang/Object;
.source "DrmUtilsStub.java"

# interfaces
.implements Lcom/sonyericsson/music/common/DrmUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canForward(Landroid/net/Uri;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public hasValidRights(Landroid/net/Uri;)Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;
    .locals 0

    .line 18
    sget-object p1, Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;->HAS_DRM_RIGHTS:Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    return-object p1
.end method

.method public renewRights(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public validateDrm(Landroid/app/Activity;Landroid/net/Uri;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
