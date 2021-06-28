.class Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$PlaybackError;
.super Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$WorkerUpdate;
.source "WorkerInternalUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlaybackError"
.end annotation


# instance fields
.field private mErrorMsg:Ljava/lang/String;

.field private mErrorPlaying:Z

.field private mErrorTitle:Ljava/lang/String;

.field private mErrorType:I


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 161
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$WorkerUpdate;-><init>()V

    .line 162
    iput p1, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$PlaybackError;->mErrorType:I

    .line 163
    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$PlaybackError;->mErrorTitle:Ljava/lang/String;

    .line 164
    iput-object p3, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$PlaybackError;->mErrorMsg:Ljava/lang/String;

    .line 165
    iput-boolean p4, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$PlaybackError;->mErrorPlaying:Z

    return-void
.end method


# virtual methods
.method public notify(Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;Lcom/sonyericsson/music/proxyservice/Notifier;Landroid/app/Notification;)V
    .locals 3

    .line 170
    iget p3, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$PlaybackError;->mErrorType:I

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$PlaybackError;->mErrorTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$PlaybackError;->mErrorMsg:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$PlaybackError;->mErrorPlaying:Z

    invoke-virtual {p2, p3, v0, v1, v2}, Lcom/sonyericsson/music/proxyservice/Notifier;->notifyPlaybackError(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 172
    invoke-virtual {p1, p2, p3, v0}, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->handlePlaybackIntent(Ljava/lang/String;Lcom/sonyericsson/music/common/Track;Z)V

    return-void
.end method
