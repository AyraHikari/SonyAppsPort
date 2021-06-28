.class Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$15;
.super Ljava/lang/Object;
.source "IMediaPlaybackStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->setQueuePosition(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

.field final synthetic val$index:I

.field final synthetic val$startPlaying:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;IZ)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$15;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    iput p2, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$15;->val$index:I

    iput-boolean p3, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$15;->val$startPlaying:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 418
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$15;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->access$000(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$15;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->access$000(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$15;->val$index:I

    iget-boolean v2, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$15;->val$startPlaying:Z

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/music/proxyservice/MediaPlayback;->setQueuePosition(IZ)V

    :cond_0
    return-void
.end method
