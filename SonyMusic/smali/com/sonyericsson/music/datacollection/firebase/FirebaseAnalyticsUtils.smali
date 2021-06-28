.class public final Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsUtils;
.super Ljava/lang/Object;
.source "FirebaseAnalyticsUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleFirebaseAnalyticsSetup(Landroid/content/Context;Z)V
    .locals 1

    .line 35
    invoke-static {p0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsUtils;->isAnalyticsCollectionAllowed(Landroid/content/Context;)Z

    move-result v0

    .line 37
    invoke-static {p0, v0, p1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->setAnalyticsCollectionEnabled(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static isAnalyticsCollectionAllowed(Landroid/content/Context;)Z
    .locals 2

    .line 21
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isDataAllowed(Landroid/content/Context;)Z

    move-result v0

    .line 22
    invoke-static {p0}, Lcom/sonyericsson/music/datacollection/DataCollectionUtils;->isPersonalDataCollectionAllowedByUser(Landroid/content/Context;)Z

    move-result p0

    .line 23
    invoke-static {}, Lcom/sonyericsson/music/MusicApplication;->isGafDisabled()Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-nez v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
