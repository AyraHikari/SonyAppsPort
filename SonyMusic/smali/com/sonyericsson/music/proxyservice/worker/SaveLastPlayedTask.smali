.class public Lcom/sonyericsson/music/proxyservice/worker/SaveLastPlayedTask;
.super Lcom/sonyericsson/music/proxyservice/worker/Task;
.source "SaveLastPlayedTask.java"


# instance fields
.field private final mPlaybackPosition:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Task;-><init>()V

    .line 19
    iput p1, p0, Lcom/sonyericsson/music/proxyservice/worker/SaveLastPlayedTask;->mPlaybackPosition:I

    return-void
.end method


# virtual methods
.method public getPlaybackPosition()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/worker/SaveLastPlayedTask;->mPlaybackPosition:I

    return v0
.end method
