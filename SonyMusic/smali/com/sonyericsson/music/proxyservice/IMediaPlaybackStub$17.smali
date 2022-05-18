.class Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$17;
.super Ljava/lang/Object;
.source "IMediaPlaybackStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->enqueueTrack(Landroid/net/Uri;Landroid/net/Uri;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

.field final synthetic val$enqueueLast:Z

.field final synthetic val$enqueueType:I

.field final synthetic val$sourcePosition:I

.field final synthetic val$sourceUri:Landroid/net/Uri;

.field final synthetic val$trackUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;Landroid/net/Uri;Landroid/net/Uri;IIZ)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$17;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$17;->val$trackUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$17;->val$sourceUri:Landroid/net/Uri;

    iput p4, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$17;->val$sourcePosition:I

    iput p5, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$17;->val$enqueueType:I

    iput-boolean p6, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$17;->val$enqueueLast:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 464
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$17;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->access$000(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$17;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->access$000(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$17;->val$trackUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$17;->val$sourceUri:Landroid/net/Uri;

    iget v4, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$17;->val$sourcePosition:I

    iget v5, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$17;->val$enqueueType:I

    iget-boolean v6, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$17;->val$enqueueLast:Z

    invoke-interface/range {v1 .. v6}, Lcom/sonyericsson/music/proxyservice/MediaPlayback;->enqueueTrack(Landroid/net/Uri;Landroid/net/Uri;IIZ)V

    :cond_0
    return-void
.end method
