.class public Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;
.super Ljava/lang/Object;
.source "FirebaseAnalyticsReporting.java"


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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->mContext:Landroid/content/Context;

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->mReported:Ljava/util/ArrayList;

    .line 32
    iput-boolean p2, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->mIsServiceProcess:Z

    const/4 p1, 0x5

    .line 33
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private addTaskToList(Ljava/util/ArrayList;Lcom/sonyericsson/music/datacollection/firebase/FirebaseUserPropertiesTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/music/datacollection/firebase/FirebaseUserPropertiesTask;",
            ">;",
            "Lcom/sonyericsson/music/datacollection/firebase/FirebaseUserPropertiesTask;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 93
    invoke-virtual {p2}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseUserPropertiesTask;->permissionsGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p2}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseUserPropertiesTask;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->allowedToSend(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private allowedToSend(Ljava/lang/String;)Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->mReported:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->mReported:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public sendAnalytics()V
    .locals 3

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    iget-boolean v1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->mIsServiceProcess:Z

    if-eqz v1, :cond_0

    .line 53
    new-instance v1, Lcom/sonyericsson/music/datacollection/firebase/FirebaseDriveUsageTask;

    iget-object v2, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseDriveUsageTask;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->addTaskToList(Ljava/util/ArrayList;Lcom/sonyericsson/music/datacollection/firebase/FirebaseUserPropertiesTask;)V

    goto :goto_0

    .line 55
    :cond_0
    new-instance v1, Lcom/sonyericsson/music/datacollection/firebase/FirebaseQuickPlaySelectionTask;

    iget-object v2, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseQuickPlaySelectionTask;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->addTaskToList(Ljava/util/ArrayList;Lcom/sonyericsson/music/datacollection/firebase/FirebaseUserPropertiesTask;)V

    .line 56
    new-instance v1, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRepeatModeTask;

    iget-object v2, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRepeatModeTask;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->addTaskToList(Ljava/util/ArrayList;Lcom/sonyericsson/music/datacollection/firebase/FirebaseUserPropertiesTask;)V

    .line 57
    new-instance v1, Lcom/sonyericsson/music/datacollection/firebase/FirebaseThemeSelectionTask;

    iget-object v2, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseThemeSelectionTask;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->addTaskToList(Ljava/util/ArrayList;Lcom/sonyericsson/music/datacollection/firebase/FirebaseUserPropertiesTask;)V

    .line 58
    new-instance v1, Lcom/sonyericsson/music/datacollection/firebase/FirebaseReportPersonalDataCollectionConsentTask;

    iget-object v2, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseReportPersonalDataCollectionConsentTask;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->addTaskToList(Ljava/util/ArrayList;Lcom/sonyericsson/music/datacollection/firebase/FirebaseUserPropertiesTask;)V

    .line 62
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

    .line 63
    iget-object v2, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public sendInitialAnalytics()V
    .locals 3

    .line 37
    iget-boolean v0, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->mIsServiceProcess:Z

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    new-instance v1, Lcom/sonyericsson/music/datacollection/firebase/FirebaseBuildIdTask;

    iget-object v2, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseBuildIdTask;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->addTaskToList(Ljava/util/ArrayList;Lcom/sonyericsson/music/datacollection/firebase/FirebaseUserPropertiesTask;)V

    .line 41
    new-instance v1, Lcom/sonyericsson/music/datacollection/firebase/FirebaseBuildTypeTask;

    iget-object v2, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseBuildTypeTask;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->addTaskToList(Ljava/util/ArrayList;Lcom/sonyericsson/music/datacollection/firebase/FirebaseUserPropertiesTask;)V

    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 44
    iget-object v2, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sendSyncDependentAnalytics(Landroid/net/Uri;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 72
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->mIsServiceProcess:Z

    if-eqz v0, :cond_3

    .line 73
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentSyncCompletedUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 74
    iput-boolean v1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->mPlaylistsSynced:Z

    goto :goto_0

    .line 75
    :cond_1
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia;->getContentSyncCompletedUri()Landroid/net/Uri;

    move-result-object v0

    .line 76
    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 77
    iput-boolean v1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->mHighResSynced:Z

    .line 80
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->mPlaylistsSynced:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->mHighResSynced:Z

    if-eqz p1, :cond_3

    .line 81
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    new-instance v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseLibraryCountTask;

    iget-object v1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseLibraryCountTask;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->addTaskToList(Ljava/util/ArrayList;Lcom/sonyericsson/music/datacollection/firebase/FirebaseUserPropertiesTask;)V

    .line 84
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 85
    iget-object v1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    return-void
.end method
