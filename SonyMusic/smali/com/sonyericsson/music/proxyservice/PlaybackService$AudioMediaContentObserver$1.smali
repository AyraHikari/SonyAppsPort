.class Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver$1;
.super Ljava/lang/Object;
.source "PlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;)V
    .locals 0

    .line 879
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver$1;->this$0:Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 882
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver$1;->this$0:Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->access$700(Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/metadata/MusicInfoService;->startMediaStoreDataSync(Landroid/content/Context;)V

    .line 883
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver$1;->this$0:Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->access$700(Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/metadata/MusicInfoService;->startHighResContainersSync(Landroid/content/Context;)V

    .line 884
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver$1;->this$0:Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->access$802(Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;J)J

    return-void
.end method
