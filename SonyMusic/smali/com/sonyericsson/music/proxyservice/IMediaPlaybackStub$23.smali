.class Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$23;
.super Ljava/lang/Object;
.source "IMediaPlaybackStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->setClearAudioEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;Z)V
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$23;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    iput-boolean p2, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$23;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 597
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$23;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->access$000(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$23;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->access$000(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$23;->val$enabled:Z

    invoke-interface {v0, v1}, Lcom/sonyericsson/music/proxyservice/MediaPlayback;->setClearAudioEnabled(Z)V

    :cond_0
    return-void
.end method
