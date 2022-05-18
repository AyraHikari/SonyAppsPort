.class Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$19;
.super Ljava/lang/Object;
.source "IMediaPlaybackStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->removeTrack(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;I)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$19;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    iput p2, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$19;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 509
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$19;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->access$000(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$19;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->access$000(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$19;->val$position:I

    invoke-interface {v0, v1}, Lcom/sonyericsson/music/proxyservice/MediaPlayback;->removeTrack(I)V

    :cond_0
    return-void
.end method
