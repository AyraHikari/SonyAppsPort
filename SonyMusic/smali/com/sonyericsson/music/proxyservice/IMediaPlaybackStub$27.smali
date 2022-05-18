.class Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$27;
.super Ljava/lang/Object;
.source "IMediaPlaybackStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->updateMediaRouteAndScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)V
    .locals 0

    .line 721
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$27;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 724
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$27;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->access$000(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$27;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->access$000(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/music/proxyservice/MediaPlayback;->updateMediaRouteAndScan()V

    :cond_0
    return-void
.end method
