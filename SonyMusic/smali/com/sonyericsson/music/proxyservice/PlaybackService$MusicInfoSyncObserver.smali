.class Lcom/sonyericsson/music/proxyservice/PlaybackService$MusicInfoSyncObserver;
.super Landroid/database/ContentObserver;
.source "PlaybackService.java"

# interfaces
.implements Lcom/sonyericsson/music/MusicApplication$ConfigFetchCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/PlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MusicInfoSyncObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mRegistered:Z

.field private mUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 727
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 724
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$MusicInfoSyncObserver;->mUris:Ljava/util/List;

    .line 728
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$MusicInfoSyncObserver;->mContext:Landroid/content/Context;

    .line 729
    invoke-static {p0}, Lcom/sonyericsson/music/MusicApplication;->addConfigFetchCompleteListener(Lcom/sonyericsson/music/MusicApplication$ConfigFetchCompleteListener;)V

    return-void
.end method


# virtual methods
.method isRegistered()Z
    .locals 1

    .line 761
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$MusicInfoSyncObserver;->mRegistered:Z

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 766
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/music/proxyservice/PlaybackService$MusicInfoSyncObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 775
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentSyncCompletedUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 776
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia;->getContentSyncCompletedUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 778
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$MusicInfoSyncObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/MusicApplication;

    if-eqz p1, :cond_1

    .line 779
    invoke-static {}, Lcom/sonyericsson/music/MusicApplication;->isConfigFetchComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 783
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/MusicApplication;->sendSyncDependentAnalytics(Landroid/net/Uri;)V

    goto :goto_0

    .line 786
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$MusicInfoSyncObserver;->mUris:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 787
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$MusicInfoSyncObserver;->mUris:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onConfigFetchComplete()V
    .locals 3

    .line 795
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$MusicInfoSyncObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicApplication;

    if-eqz v0, :cond_0

    .line 797
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$MusicInfoSyncObserver;->mUris:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 801
    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/MusicApplication;->sendSyncDependentAnalytics(Landroid/net/Uri;)V

    goto :goto_0

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$MusicInfoSyncObserver;->mUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 805
    invoke-static {p0}, Lcom/sonyericsson/music/MusicApplication;->removeConfigFetchCompleteListener(Lcom/sonyericsson/music/MusicApplication$ConfigFetchCompleteListener;)V

    return-void
.end method

.method register()V
    .locals 3

    .line 733
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$MusicInfoSyncObserver;->mRegistered:Z

    if-nez v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$MusicInfoSyncObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 739
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentSyncCompletedUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 738
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 741
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$MusicInfoSyncObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 742
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia;->getContentSyncCompletedUri()Landroid/net/Uri;

    move-result-object v1

    .line 741
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x1

    .line 744
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$MusicInfoSyncObserver;->mRegistered:Z

    :cond_0
    return-void
.end method

.method unregister()V
    .locals 1

    .line 749
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$MusicInfoSyncObserver;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$MusicInfoSyncObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 756
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$MusicInfoSyncObserver;->mRegistered:Z

    :cond_0
    return-void
.end method
