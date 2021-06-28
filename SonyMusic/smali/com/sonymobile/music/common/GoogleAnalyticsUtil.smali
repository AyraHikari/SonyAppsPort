.class public Lcom/sonymobile/music/common/GoogleAnalyticsUtil;
.super Ljava/lang/Object;
.source "GoogleAnalyticsUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowGaTracking(Landroid/content/Context;)Z
    .locals 0

    .line 17
    invoke-static {p0}, Lcom/sonymobile/music/common/GoogleAnalyticsUtil;->isSomcGaEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isSomcGaEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 22
    invoke-static {p0}, Lcom/sonymobile/gagtmhelper/GaGtmSystemSetting;->readSomcGaSetting(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
