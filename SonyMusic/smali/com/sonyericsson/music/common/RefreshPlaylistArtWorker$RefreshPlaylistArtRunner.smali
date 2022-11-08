.class Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$RefreshPlaylistArtRunner;
.super Ljava/lang/Object;
.source "RefreshPlaylistArtWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RefreshPlaylistArtRunner"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$RefreshPlaylistArtRunner;->mContext:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$RefreshPlaylistArtRunner;->mIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 121
    new-instance v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;

    iget-object v1, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$RefreshPlaylistArtRunner;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$1;)V

    .line 122
    iget-object v1, p0, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$RefreshPlaylistArtRunner;->mIntent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->access$100(Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;Landroid/content/Intent;)V

    return-void
.end method
