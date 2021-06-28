.class public Lcom/sonyericsson/music/common/VersionUtils;
.super Ljava/lang/Object;
.source "VersionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/common/VersionUtils$AppBuild;
    }
.end annotation


# static fields
.field private static sLatestAvailableVersionCode:I

.field private static sVersionCode:I

.field private static sVersionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppBuild()Lcom/sonyericsson/music/common/VersionUtils$AppBuild;
    .locals 4

    .line 66
    invoke-static {}, Lcom/sonyericsson/music/common/VersionUtils;->getVersionName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v2, "\\."

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 76
    array-length v2, v0

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    return-object v1

    :cond_1
    const/4 v2, 0x4

    .line 82
    aget-object v0, v0, v2

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/VersionUtils$AppBuild;->getAppBuild(I)Lcom/sonyericsson/music/common/VersionUtils$AppBuild;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method public static getLatestAvailableVersionCode()I
    .locals 1

    .line 98
    sget v0, Lcom/sonyericsson/music/common/VersionUtils;->sLatestAvailableVersionCode:I

    return v0
.end method

.method public static getVersionCode()I
    .locals 1

    .line 62
    sget v0, Lcom/sonyericsson/music/common/VersionUtils;->sVersionCode:I

    return v0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/sonyericsson/music/common/VersionUtils;->sVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public static logVersionName()V
    .locals 4

    .line 51
    invoke-static {}, Lcom/sonyericsson/music/common/VersionUtils;->getVersionName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    const-class v1, Lcom/sonyericsson/music/MusicApplication;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logVersionName (version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sonyericsson/music/common/VersionUtils;->sVersionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/music/debug/DebugBase;->log(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setLatestAvailableVersionCode(I)V
    .locals 0

    .line 94
    sput p0, Lcom/sonyericsson/music/common/VersionUtils;->sLatestAvailableVersionCode:I

    return-void
.end method

.method public static setVersionCode(I)V
    .locals 0

    .line 58
    sput p0, Lcom/sonyericsson/music/common/VersionUtils;->sVersionCode:I

    return-void
.end method

.method public static setVersionName(Ljava/lang/String;)V
    .locals 0

    .line 43
    sput-object p0, Lcom/sonyericsson/music/common/VersionUtils;->sVersionName:Ljava/lang/String;

    return-void
.end method
