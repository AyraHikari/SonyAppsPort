.class Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$27;
.super Ljava/lang/Object;
.source "IMediaPlaybackStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->setMediaRoute(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

.field final synthetic val$device:Landroid/os/Bundle;

.field final synthetic val$routeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 703
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$27;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$27;->val$device:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$27;->val$routeId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 706
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$27;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->access$000(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$27;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->access$000(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$27;->val$device:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$27;->val$routeId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/music/proxyservice/MediaPlayback;->setMediaRoute(Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
