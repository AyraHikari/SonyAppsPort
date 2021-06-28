.class public Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$ShuffleChanged;
.super Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$WorkerUpdate;
.source "WorkerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShuffleChanged"
.end annotation


# instance fields
.field private mShuffled:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 205
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$WorkerUpdate;-><init>()V

    .line 206
    iput-boolean p1, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$ShuffleChanged;->mShuffled:Z

    return-void
.end method


# virtual methods
.method public isShuffled()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$ShuffleChanged;->mShuffled:Z

    return v0
.end method

.method public notify(Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;Lcom/sonyericsson/music/proxyservice/Notifier;Landroid/app/Notification;)V
    .locals 0

    .line 215
    iget-boolean p1, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$ShuffleChanged;->mShuffled:Z

    invoke-virtual {p2, p1}, Lcom/sonyericsson/music/proxyservice/Notifier;->notifyShuffleChanged(Z)V

    return-void
.end method
