.class Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$16;
.super Ljava/lang/Object;
.source "IMediaPlaybackStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->enqueue(Landroid/net/Uri;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

.field final synthetic val$enqueueLast:Z

.field final synthetic val$enqueueType:I

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;Landroid/net/Uri;IZ)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$16;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$16;->val$uri:Landroid/net/Uri;

    iput p3, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$16;->val$enqueueType:I

    iput-boolean p4, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$16;->val$enqueueLast:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 440
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$16;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->access$000(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$16;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->access$000(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$16;->val$uri:Landroid/net/Uri;

    iget v2, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$16;->val$enqueueType:I

    iget-boolean v3, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$16;->val$enqueueLast:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/sonyericsson/music/proxyservice/MediaPlayback;->enqueue(Landroid/net/Uri;IZ)V

    :cond_0
    return-void
.end method
