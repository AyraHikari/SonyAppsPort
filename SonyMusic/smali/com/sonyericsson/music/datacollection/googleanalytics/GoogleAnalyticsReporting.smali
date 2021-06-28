.class public Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;
.super Ljava/lang/Object;
.source "GoogleAnalyticsReporting.java"

# interfaces
.implements Lcom/sonyericsson/music/MusicApplication$ConfigFetchCompleteListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mHighResSynced:Z

.field private final mIsServiceProcess:Z

.field private mPlaylistsSynced:Z

.field private final mReported:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;->mContext:Landroid/content/Context;

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;->mReported:Ljava/util/ArrayList;

    .line 34
    iput-boolean p2, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;->mIsServiceProcess:Z

    const/4 p1, 0x5

    .line 35
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private addTaskToList(Ljava/util/ArrayList;Lcom/sonyericsson/music/datacollection/googleanalytics/GACustomDimensionsTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/music/datacollection/googleanalytics/GACustomDimensionsTask;",
            ">;",
            "Lcom/sonyericsson/music/datacollection/googleanalytics/GACustomDimensionsTask;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 108
    invoke-virtual {p2}, Lcom/sonyericsson/music/datacollection/googleanalytics/GACustomDimensionsTask;->permissionsGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p2}, Lcom/sonyericsson/music/datacollection/googleanalytics/GACustomDimensionsTask;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;->allowedToSend(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private allowedToSend(Ljava/lang/String;)Z
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;->mReported:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;->mReported:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public onConfigFetchComplete()V
    .locals 3

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iget-boolean v1, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;->mIsServiceProcess:Z

    if-eqz v1, :cond_0

    .line 74
    new-instance v1, Lcom/sonyericsson/music/datacollection/googleanalytics/TrackInstalledExtensionsTask;

    iget-object v2, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonyericsson/music/datacollection/googleanalytics/TrackInstalledExtensionsTask;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;->addTaskToList(Ljava/util/ArrayList;Lcom/sonyericsson/music/datacollection/googleanalytics/GACustomDimensionsTask;)V

    .line 77
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 78
    iget-object v2, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public sendAnalytics()V
    .locals 3

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iget-boolean v1, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;->mIsServiceProcess:Z

    if-eqz v1, :cond_0

    .line 54
    new-instance v1, Lcom/sonyericsson/music/datacollection/googleanalytics/DriveUsageTask;

    iget-object v2, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonyericsson/music/datacollection/googleanalytics/DriveUsageTask;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;->addTaskToList(Ljava/util/ArrayList;Lcom/sonyericsson/music/datacollection/googleanalytics/GACustomDimensionsTask;)V

    goto :goto_0

    .line 56
    :cond_0
    new-instance v1, Lcom/sonyericsson/music/datacollection/googleanalytics/ReportPersonalDataCollectionConsentTask;

    iget-object v2, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonyericsson/music/datacollection/googleanalytics/ReportPersonalDataCollectionConsentTask;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;->addTaskToList(Ljava/util/ArrayList;Lcom/sonyericsson/music/datacollection/googleanalytics/GACustomDimensionsTask;)V

    .line 57
    new-instance v1, Lcom/sonyericsson/music/datacollection/googleanalytics/ThemeSelectionTask;

    iget-object v2, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonyericsson/music/datacollection/googleanalytics/ThemeSelectionTask;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;->addTaskToList(Ljava/util/ArrayList;Lcom/sonyericsson/music/datacollection/googleanalytics/GACustomDimensionsTask;)V

    .line 60
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 61
    iget-object v2, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 66
    :cond_1
    invoke-static {p0}, Lcom/sonyericsson/music/MusicApplication;->addConfigFetchCompleteListener(Lcom/sonyericsson/music/MusicApplication$ConfigFetchCompleteListener;)V

    return-void
.end method

.method public sendInitialAnalytics()V
    .locals 3

    .line 39
    iget-boolean v0, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;->mIsServiceProcess:Z

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 45
    iget-object v2, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sendSyncDependentAnalytics(Landroid/net/Uri;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 87
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;->mIsServiceProcess:Z

    if-eqz v0, :cond_3

    .line 88
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentSyncCompletedUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 89
    iput-boolean v1, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;->mPlaylistsSynced:Z

    goto :goto_0

    .line 90
    :cond_1
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia;->getContentSyncCompletedUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 91
    iput-boolean v1, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;->mHighResSynced:Z

    .line 94
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;->mPlaylistsSynced:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;->mHighResSynced:Z

    if-eqz p1, :cond_3

    .line 95
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    new-instance v0, Lcom/sonyericsson/music/datacollection/googleanalytics/LibraryCountTask;

    iget-object v1, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/datacollection/googleanalytics/LibraryCountTask;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;->addTaskToList(Ljava/util/ArrayList;Lcom/sonyericsson/music/datacollection/googleanalytics/GACustomDimensionsTask;)V

    .line 97
    new-instance v0, Lcom/sonyericsson/music/datacollection/googleanalytics/SendDataPlatformTask;

    iget-object v1, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/datacollection/googleanalytics/SendDataPlatformTask;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;->addTaskToList(Ljava/util/ArrayList;Lcom/sonyericsson/music/datacollection/googleanalytics/GACustomDimensionsTask;)V

    .line 99
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 100
    iget-object v1, p0, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    return-void
.end method
