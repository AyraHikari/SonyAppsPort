.class public Lcom/sonyericsson/music/datacollection/googleanalytics/TrackInstalledExtensionsTask;
.super Lcom/sonyericsson/music/datacollection/googleanalytics/GACustomDimensionsTask;
.source "TrackInstalledExtensionsTask.java"


# static fields
.field private static final REPORT_STRING_EXTERNAL:Ljava/lang/String; = "e"

.field private static final REPORT_STRING_MORA:Ljava/lang/String; = "m"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
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
    .locals 4

    .line 39
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 48
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GACustomDimensionsTask;->mAppContext:Landroid/content/Context;

    .line 49
    invoke-static {v0}, Lcom/sonyericsson/music/extension/ExtensionManager;->getInstalledExtensions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 56
    :goto_0
    invoke-static {}, Lcom/sonyericsson/music/MusicApplication;->isMoraDisabled()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GACustomDimensionsTask;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/music/common/AvailabilityUtils;->isMoraStoreEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 60
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e"

    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "m"

    .line 62
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "music-gagtm-installedExtensions"

    .line 66
    invoke-static {v1, v0}, Lcom/sonymobile/music/common/GoogleAnalyticsConstants$CustomDimensions$CustomDimensionVersion;->addVersionPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GACustomDimensionsTask;->mAppContext:Landroid/content/Context;

    const-string v2, "music-gagtm-installedExtensions"

    invoke-static {v1, v2, v0}, Lcom/sonymobile/music/common/GoogleAnalyticsProxy;->setCustomDimension(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
