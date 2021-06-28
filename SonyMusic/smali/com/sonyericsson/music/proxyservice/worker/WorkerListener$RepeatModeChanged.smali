.class public Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$RepeatModeChanged;
.super Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$WorkerUpdate;
.source "WorkerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RepeatModeChanged"
.end annotation


# instance fields
.field private mRepeatMode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 222
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$WorkerUpdate;-><init>()V

    .line 223
    iput p1, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$RepeatModeChanged;->mRepeatMode:I

    return-void
.end method


# virtual methods
.method public getRepeatMode()I
    .locals 1

    .line 227
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$RepeatModeChanged;->mRepeatMode:I

    return v0
.end method

.method public notify(Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;Lcom/sonyericsson/music/proxyservice/Notifier;Landroid/app/Notification;)V
    .locals 0

    .line 232
    iget p1, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$RepeatModeChanged;->mRepeatMode:I

    invoke-virtual {p2, p1}, Lcom/sonyericsson/music/proxyservice/Notifier;->notifyRepeatModeChanged(I)V

    return-void
.end method
