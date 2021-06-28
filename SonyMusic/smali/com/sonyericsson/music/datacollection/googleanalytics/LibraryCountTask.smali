.class public Lcom/sonyericsson/music/datacollection/googleanalytics/LibraryCountTask;
.super Lcom/sonyericsson/music/datacollection/googleanalytics/GACustomDimensionsTask;
.source "LibraryCountTask.java"


# static fields
.field private static final VALUE_SEPARATOR:Ljava/lang/String; = ";"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/datacollection/googleanalytics/GACustomDimensionsTask;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private createCustomDimensionLibraryCountString(IIIIIII)Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/sonyericsson/music/datacollection/DataCollectionUtils;->getLocalTracksCountBucket(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/sonyericsson/music/datacollection/DataCollectionUtils;->getHdTracksCountBucket(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Lcom/sonyericsson/music/datacollection/DataCollectionUtils;->getLibraryCountBucket(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p4}, Lcom/sonyericsson/music/datacollection/DataCollectionUtils;->getLibraryCountBucket(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p5}, Lcom/sonyericsson/music/datacollection/DataCollectionUtils;->getLibraryCountBucket(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_0

    .line 116
    invoke-static {p6, p5}, Lcom/sonymobile/music/common/MathUtil;->percent(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 118
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/sonyericsson/music/datacollection/DataCollectionUtils;->percentBucket(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p7}, Lcom/sonyericsson/music/datacollection/DataCollectionUtils;->getLibraryCountBucket(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public permissionsGranted()Z
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GACustomDimensionsTask;->mAppContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/sonyericsson/music/common/PermissionUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 10

    .line 43
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 45
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GACustomDimensionsTask;->mAppContext:Landroid/content/Context;

    .line 46
    invoke-static {v0}, Lcom/sonyericsson/music/datacollection/DataCollectionUtils;->getNumberOfLocalTracksAndMimeTypes(Landroid/content/Context;)Lcom/sonyericsson/music/datacollection/TracksCountAndMimeTypes;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/sonyericsson/music/datacollection/TracksCountAndMimeTypes;->getNbrOfLocalTracks()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 49
    iget-object v1, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GACustomDimensionsTask;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/common/DBUtils;->getArtistsCount(Landroid/content/Context;)I

    move-result v5

    .line 50
    iget-object v1, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GACustomDimensionsTask;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/common/DBUtils;->getAlbumsCount(Landroid/content/Context;)I

    move-result v6

    .line 51
    iget-object v1, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GACustomDimensionsTask;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/common/DBUtils;->getAllPlaylistsCount(Landroid/content/Context;)I

    move-result v7

    .line 52
    iget-object v1, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GACustomDimensionsTask;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/common/DBUtils;->getUserCreatedPlaylistsCount(Landroid/content/Context;)I

    move-result v8

    .line 53
    iget-object v1, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GACustomDimensionsTask;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/common/DBUtils;->getGenresCount(Landroid/content/Context;)I

    move-result v9

    .line 56
    invoke-virtual {v0}, Lcom/sonyericsson/music/datacollection/TracksCountAndMimeTypes;->getNbrOfLocalTracks()I

    move-result v3

    .line 57
    invoke-virtual {v0}, Lcom/sonyericsson/music/datacollection/TracksCountAndMimeTypes;->getNbrOfHdTracks()I

    move-result v4

    move-object v2, p0

    .line 55
    invoke-direct/range {v2 .. v9}, Lcom/sonyericsson/music/datacollection/googleanalytics/LibraryCountTask;->createCustomDimensionLibraryCountString(IIIIIII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "music-gagtm-localLibraryCount"

    .line 65
    invoke-static {v2, v1}, Lcom/sonymobile/music/common/GoogleAnalyticsConstants$CustomDimensions$CustomDimensionVersion;->addVersionPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    iget-object v2, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GACustomDimensionsTask;->mAppContext:Landroid/content/Context;

    const-string v3, "music-gagtm-localLibraryCount"

    invoke-static {v2, v3, v1}, Lcom/sonymobile/music/common/GoogleAnalyticsProxy;->setCustomDimension(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Lcom/sonyericsson/music/datacollection/TracksCountAndMimeTypes;->getMimeTypes()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "music-gagtm-localMimeTypes"

    .line 75
    invoke-virtual {v0}, Lcom/sonyericsson/music/datacollection/TracksCountAndMimeTypes;->getMimeTypes()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v1, v0}, Lcom/sonymobile/music/common/GoogleAnalyticsConstants$CustomDimensions$CustomDimensionVersion;->addVersionPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GACustomDimensionsTask;->mAppContext:Landroid/content/Context;

    const-string v2, "music-gagtm-localMimeTypes"

    invoke-static {v1, v2, v0}, Lcom/sonymobile/music/common/GoogleAnalyticsProxy;->setCustomDimension(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
