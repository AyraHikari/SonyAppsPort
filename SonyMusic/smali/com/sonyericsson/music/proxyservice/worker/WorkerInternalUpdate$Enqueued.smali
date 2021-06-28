.class Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$Enqueued;
.super Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$WorkerUpdate;
.source "WorkerInternalUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Enqueued"
.end annotation


# instance fields
.field private mEnqueueType:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 179
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$WorkerUpdate;-><init>()V

    .line 180
    iput p1, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$Enqueued;->mEnqueueType:I

    return-void
.end method


# virtual methods
.method public notify(Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;Lcom/sonyericsson/music/proxyservice/Notifier;Landroid/app/Notification;)V
    .locals 0

    .line 185
    iget p1, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$Enqueued;->mEnqueueType:I

    invoke-virtual {p2, p1}, Lcom/sonyericsson/music/proxyservice/Notifier;->notifyEnqueued(I)V

    return-void
.end method
