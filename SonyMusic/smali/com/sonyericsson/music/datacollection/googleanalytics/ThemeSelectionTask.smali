.class public Lcom/sonyericsson/music/datacollection/googleanalytics/ThemeSelectionTask;
.super Lcom/sonyericsson/music/datacollection/googleanalytics/GACustomDimensionsTask;
.source "ThemeSelectionTask.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/datacollection/googleanalytics/GACustomDimensionsTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public permissionsGranted()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GACustomDimensionsTask;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/common/UIUtils;->isUseDarkTheme(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "music-gagtm-themeSetting"

    if-eqz v0, :cond_0

    const-string v0, "dark"

    goto :goto_0

    :cond_0
    const-string v0, "light"

    .line 25
    :goto_0
    invoke-static {v1, v0}, Lcom/sonymobile/music/common/GoogleAnalyticsConstants$CustomDimensions$CustomDimensionVersion;->addVersionPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GACustomDimensionsTask;->mAppContext:Landroid/content/Context;

    const-string v2, "music-gagtm-themeSetting"

    invoke-static {v1, v2, v0}, Lcom/sonymobile/music/common/GoogleAnalyticsProxy;->setCustomDimension(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
