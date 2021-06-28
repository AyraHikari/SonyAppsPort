.class public Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;
.super Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
.source "MediaBrowserConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection$CustomActionResult;
    }
.end annotation


# static fields
.field private static final DELAY_MEDIABROWSER_DISCONNECT:I = 0x1388

.field private static sMediaBrowserConnection:Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mDispatchRunnable:Ljava/lang/Runnable;

.field private final mFinishRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private final mIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/content/Intent;",
            "Landroid/content/BroadcastReceiver$PendingResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsFinished:Z

.field private mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

.field private mMediaBrowserIsConnected:Z

.field private mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mHandler:Landroid/os/Handler;

    .line 47
    new-instance v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection$1;-><init>(Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;)V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mFinishRunnable:Ljava/lang/Runnable;

    .line 54
    new-instance v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection$2;-><init>(Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;)V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mDispatchRunnable:Ljava/lang/Runnable;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mAppContext:Landroid/content/Context;

    .line 79
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mIntents:Ljava/util/List;

    .line 81
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->connect()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->finish()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mIntents:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->dispatchMediaButton(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->dispatchCustomAction(Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;)Ljava/lang/Runnable;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mFinishRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;)Landroid/os/Handler;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private connect()V
    .locals 4

    .line 126
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mAppContext:Landroid/content/Context;

    const-class v2, Lcom/sonyericsson/music/proxyservice/PlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mAppContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, p0, v3}, Landroid/support/v4/media/MediaBrowserCompat;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->connect()V

    return-void
.end method

.method private dispatchCustomAction(Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 3

    .line 117
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mMediaBrowserIsConnected:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    new-instance v1, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection$CustomActionResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection$CustomActionResult;-><init>(Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection$1;)V

    invoke-virtual {v0, p1, v2, v1}, Landroid/support/v4/media/MediaBrowserCompat;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat$CustomActionCallback;)V

    .line 121
    invoke-virtual {p2}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    :cond_0
    return-void
.end method

.method private dispatchMediaButton(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    const-string v0, "android.intent.extra.KEY_EVENT"

    .line 110
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/KeyEvent;

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    .line 112
    invoke-virtual {p2}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    :cond_0
    return-void
.end method

.method private finish()V
    .locals 2

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mMediaBrowserIsConnected:Z

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->disconnect()V

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mIsFinished:Z

    .line 165
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mIntents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 166
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getMediaBrowserConnection(Landroid/content/Context;)Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;
    .locals 1

    .line 85
    sget-object v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->sMediaBrowserConnection:Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    new-instance v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->sMediaBrowserConnection:Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;

    .line 89
    :cond_1
    sget-object p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->sMediaBrowserConnection:Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;

    return-object p0
.end method


# virtual methods
.method public addIntent(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 2

    .line 93
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mIntents:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 98
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mDispatchRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public isFinished()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mIsFinished:Z

    return v0
.end method

.method public onConnected()V
    .locals 3

    .line 134
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mMediaBrowserIsConnected:Z

    .line 137
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/MediaBrowserCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->mDispatchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->finish()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onConnectionFailed()V
    .locals 0

    .line 149
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->finish()V

    return-void
.end method

.method public onConnectionSuspended()V
    .locals 0

    .line 154
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->finish()V

    return-void
.end method
