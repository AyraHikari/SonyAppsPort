.class public Lcom/sonyericsson/music/datacollection/firebase/FirebaseLibraryCountTask;
.super Lcom/sonyericsson/music/datacollection/firebase/FirebaseUserPropertiesTask;
.source "FirebaseLibraryCountTask.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseUserPropertiesTask;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private setUserProperties(III)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseUserPropertiesTask;->mAppContext:Landroid/content/Context;

    const-string v1, "music_localTrackCount"

    .line 45
    invoke-static {p1}, Lcom/sonyericsson/music/datacollection/DataCollectionUtils;->getLocalTracksCountBucket(I)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->setUserProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 46
    iget-object p1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseUserPropertiesTask;->mAppContext:Landroid/content/Context;

    const-string v0, "music_hiresTrackCount"

    .line 48
    invoke-static {p2}, Lcom/sonyericsson/music/datacollection/DataCollectionUtils;->getHdTracksCountBucket(I)Ljava/lang/String;

    move-result-object p2

    .line 47
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 46
    invoke-static {p1, v0, p2}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->setUserProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 49
    iget-object p1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseUserPropertiesTask;->mAppContext:Landroid/content/Context;

    const-string p2, "music_playlistCount"

    .line 51
    invoke-static {p3}, Lcom/sonyericsson/music/datacollection/DataCollectionUtils;->getLibraryCountBucket(I)Ljava/lang/String;

    move-result-object p3

    .line 50
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 49
    invoke-static {p1, p2, p3}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->setUserProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public permissionsGranted()Z
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseUserPropertiesTask;->mAppContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 39
    invoke-static {v0, v1}, Lcom/sonyericsson/music/common/PermissionUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 3

    .line 24
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 26
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseUserPropertiesTask;->mAppContext:Landroid/content/Context;

    .line 27
    invoke-static {v0}, Lcom/sonyericsson/music/datacollection/DataCollectionUtils;->getNumberOfLocalTracksAndMimeTypes(Landroid/content/Context;)Lcom/sonyericsson/music/datacollection/TracksCountAndMimeTypes;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/sonyericsson/music/datacollection/TracksCountAndMimeTypes;->getNbrOfLocalTracks()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 30
    iget-object v1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseUserPropertiesTask;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/common/DBUtils;->getAllPlaylistsCount(Landroid/content/Context;)I

    move-result v1

    .line 31
    invoke-virtual {v0}, Lcom/sonyericsson/music/datacollection/TracksCountAndMimeTypes;->getNbrOfLocalTracks()I

    move-result v2

    .line 32
    invoke-virtual {v0}, Lcom/sonyericsson/music/datacollection/TracksCountAndMimeTypes;->getNbrOfHdTracks()I

    move-result v0

    .line 31
    invoke-direct {p0, v2, v0, v1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseLibraryCountTask;->setUserProperties(III)V

    :cond_0
    return-void
.end method
