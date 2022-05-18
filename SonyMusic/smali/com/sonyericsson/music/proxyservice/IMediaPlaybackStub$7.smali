.class Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$7;
.super Ljava/lang/Object;
.source "IMediaPlaybackStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->pauseDelayed(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

.field final synthetic val$delayInMillis:J


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;J)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$7;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    iput-wide p2, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$7;->val$delayInMillis:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$7;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->access$000(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$7;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->access$000(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$7;->val$delayInMillis:J

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/music/proxyservice/MediaPlayback;->pause(J)V

    :cond_0
    return-void
.end method
