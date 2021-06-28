.class public final Lcom/sonyericsson/music/common/DataSaverUtil;
.super Ljava/lang/Object;
.source "DataSaverUtil.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/common/DataSaverUtil$DataSaverStatus;
    }
.end annotation


# static fields
.field public static final DATA_SAVER_STATUS_INACTIVE:I = -0x1

.field public static final DATA_SAVE_POLICY_DATA_PLATFORM:I = 0x0

.field public static final DATA_SAVE_POLICY_NONE:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataSaverStatus(Landroid/content/Context;)Lcom/sonyericsson/music/common/DataSaverUtil$DataSaverStatus;
    .locals 3

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, -0x1

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    const-string v0, "connectivity"

    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_0

    .line 35
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Lcom/sonyericsson/music/common/DataSaverUtil$DataSaverStatus;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getRestrictBackgroundStatus()I

    move-result p0

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/common/DataSaverUtil$DataSaverStatus;-><init>(I)V

    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Lcom/sonyericsson/music/common/DataSaverUtil$DataSaverStatus;

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/common/DataSaverUtil$DataSaverStatus;-><init>(I)V

    goto :goto_0

    .line 43
    :cond_1
    new-instance v0, Lcom/sonyericsson/music/common/DataSaverUtil$DataSaverStatus;

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/common/DataSaverUtil$DataSaverStatus;-><init>(I)V

    :goto_0
    return-object v0
.end method

.method public static isAllowedToSendData(Landroid/content/Context;I)Z
    .locals 0

    .line 52
    invoke-static {p0}, Lcom/sonyericsson/music/common/DataSaverUtil;->getDataSaverStatus(Landroid/content/Context;)Lcom/sonyericsson/music/common/DataSaverUtil$DataSaverStatus;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 54
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/common/DataSaverUtil$DataSaverStatus;->isAllowedToSendData(I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
