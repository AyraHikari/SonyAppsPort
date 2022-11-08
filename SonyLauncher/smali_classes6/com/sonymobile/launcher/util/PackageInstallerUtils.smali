.class public Lcom/sonymobile/launcher/util/PackageInstallerUtils;
.super Ljava/lang/Object;
.source "PackageInstallerUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPossibleAutoInstallSession(Landroid/content/pm/PackageInstaller$SessionInfo;)Z
    .locals 2
    .param p0, "info"    # Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 18
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallReason()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method
