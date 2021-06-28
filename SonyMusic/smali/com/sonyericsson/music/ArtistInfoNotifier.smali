.class public Lcom/sonyericsson/music/ArtistInfoNotifier;
.super Ljava/lang/Object;
.source "ArtistInfoNotifier.java"

# interfaces
.implements Lcom/sonyericsson/music/MusicActivity$ArtResetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/ArtistInfoNotifier$GetArtistInfoRunnable;,
        Lcom/sonyericsson/music/ArtistInfoNotifier$ArtistChangeListener;
    }
.end annotation


# static fields
.field private static final DELAY_BEFORE_NOTIFYING_PREPARED_TRACK:I = 0x3e8

.field private static final RETAIN_ARTIST_INFO_KEY:Ljava/lang/String;


# instance fields
.field private mActivity:Lcom/sonyericsson/music/MusicActivity;

.field private mArtistInfo:Lcom/sonyericsson/music/common/ArtistInfo;

.field private mArtistInfoHandler:Landroid/os/Handler;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mGetArtistInfoRunnable:Ljava/lang/Runnable;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/ArtistInfoNotifier$ArtistChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiverRegistered:Z

.field private final mServiceConnection:Lcom/sonyericsson/music/MediaServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/music/ArtistInfoNotifier;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_retainArtistInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/music/ArtistInfoNotifier;->RETAIN_ARTIST_INFO_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/music/MusicActivity;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mListeners:Ljava/util/List;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mReceiverRegistered:Z

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mArtistInfo:Lcom/sonyericsson/music/common/ArtistInfo;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mArtistInfoHandler:Landroid/os/Handler;

    .line 59
    new-instance v0, Lcom/sonyericsson/music/ArtistInfoNotifier$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/ArtistInfoNotifier$1;-><init>(Lcom/sonyericsson/music/ArtistInfoNotifier;)V

    iput-object v0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    new-instance v0, Lcom/sonyericsson/music/ArtistInfoNotifier$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/ArtistInfoNotifier$2;-><init>(Lcom/sonyericsson/music/ArtistInfoNotifier;)V

    iput-object v0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mServiceConnection:Lcom/sonyericsson/music/MediaServiceConnection;

    .line 104
    iput-object p1, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/ArtistInfoNotifier;)Landroid/os/Handler;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mArtistInfoHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/ArtistInfoNotifier;)Lcom/sonyericsson/music/MusicActivity;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/ArtistInfoNotifier;)Lcom/sonyericsson/music/common/ArtistInfo;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mArtistInfo:Lcom/sonyericsson/music/common/ArtistInfo;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/music/ArtistInfoNotifier;Lcom/sonyericsson/music/common/ArtistInfo;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/ArtistInfoNotifier;->setArtistInfo(Lcom/sonyericsson/music/common/ArtistInfo;Z)V

    return-void
.end method

.method private getPlayerStateIntentFilter(Landroid/content/Context;)Landroid/content/IntentFilter;
    .locals 2

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    invoke-static {p1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackStartedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    invoke-static {p1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackToBePreparedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method private setArtistInfo(Lcom/sonyericsson/music/common/ArtistInfo;Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 179
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/ArtistInfo;->getTrackUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mArtistInfo:Lcom/sonyericsson/music/common/ArtistInfo;

    .line 180
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/common/ArtistInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    .line 181
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mArtistInfo:Lcom/sonyericsson/music/common/ArtistInfo;

    .line 182
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/ArtistInfoNotifier;->notifyListeners(Lcom/sonyericsson/music/common/ArtistInfo;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/sonyericsson/music/ArtistInfoNotifier$ArtistChangeListener;)Lcom/sonyericsson/music/common/ArtistInfo;
    .locals 1

    if-eqz p1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mArtistInfo:Lcom/sonyericsson/music/common/ArtistInfo;

    return-object p1
.end method

.method public getArtistInfo()Lcom/sonyericsson/music/common/ArtistInfo;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mArtistInfo:Lcom/sonyericsson/music/common/ArtistInfo;

    return-object v0
.end method

.method notifyListeners(Lcom/sonyericsson/music/common/ArtistInfo;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/ArtistInfoNotifier$ArtistChangeListener;

    .line 169
    invoke-interface {v1, p1}, Lcom/sonyericsson/music/ArtistInfoNotifier$ArtistChangeListener;->onArtistInfoChanged(Lcom/sonyericsson/music/common/ArtistInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onArtReset(ZZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 163
    iget-object p1, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mArtistInfo:Lcom/sonyericsson/music/common/ArtistInfo;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/ArtistInfoNotifier;->setArtistInfo(Lcom/sonyericsson/music/common/ArtistInfo;Z)V

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/sonyericsson/music/ArtistInfoNotifier$ArtistChangeListener;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public restoreNotifier()V
    .locals 2

    .line 194
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mArtistInfo:Lcom/sonyericsson/music/common/ArtistInfo;

    if-nez v1, :cond_0

    .line 197
    sget-object v1, Lcom/sonyericsson/music/ArtistInfoNotifier;->RETAIN_ARTIST_INFO_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/common/ArtistInfo;

    iput-object v0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mArtistInfo:Lcom/sonyericsson/music/common/ArtistInfo;

    :cond_0
    return-void
.end method

.method public retainNotifier()V
    .locals 3

    .line 187
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mArtistInfo:Lcom/sonyericsson/music/common/ArtistInfo;

    if-eqz v1, :cond_0

    .line 189
    sget-object v2, Lcom/sonyericsson/music/ArtistInfoNotifier;->RETAIN_ARTIST_INFO_KEY:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/music/RetainManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 5

    .line 135
    iget-boolean v0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    iget-object v1, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/ArtistInfoNotifier;->getPlayerStateIntentFilter(Landroid/content/Context;)Landroid/content/IntentFilter;

    move-result-object v2

    const-string v3, "com.sonyericsson.music.permission.BROADCAST"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mReceiverRegistered:Z

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    iget-object v1, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mServiceConnection:Lcom/sonyericsson/music/MediaServiceConnection;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/MusicActivity;->addMusicServiceConnectedListener(Lcom/sonyericsson/music/MediaServiceConnection;)V

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/MusicActivity;->addOnArtResetListener(Lcom/sonyericsson/music/MusicActivity$ArtResetListener;)Z

    return-void
.end method

.method public stop()V
    .locals 2

    .line 108
    iget-boolean v0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mReceiverRegistered:Z

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    iget-object v1, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mGetArtistInfoRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 114
    iget-object v1, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mArtistInfoHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mGetArtistInfoRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 118
    invoke-virtual {p0}, Lcom/sonyericsson/music/ArtistInfoNotifier;->retainNotifier()V

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mGetArtistInfoRunnable:Ljava/lang/Runnable;

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    iget-object v1, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mServiceConnection:Lcom/sonyericsson/music/MediaServiceConnection;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/MusicActivity;->removeMusicServiceConnectedListener(Lcom/sonyericsson/music/MediaServiceConnection;)V

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/MusicActivity;->removeOnArtResetListener(Lcom/sonyericsson/music/MusicActivity$ArtResetListener;)V

    return-void
.end method
