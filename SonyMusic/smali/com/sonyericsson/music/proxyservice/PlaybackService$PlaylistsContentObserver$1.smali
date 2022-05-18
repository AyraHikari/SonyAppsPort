.class Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver$1;
.super Ljava/lang/Object;
.source "PlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;)V
    .locals 0

    .line 711
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver$1;->this$0:Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 714
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver$1;->this$0:Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;->access$500(Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/metadata/MusicInfoService;->startPlaylistSync(Landroid/content/Context;)V

    .line 715
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver$1;->this$0:Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;->access$602(Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;J)J

    return-void
.end method
