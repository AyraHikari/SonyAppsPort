.class Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$18;
.super Ljava/lang/Object;
.source "IMediaPlaybackStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->removeTracks(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

.field final synthetic val$tracks:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;Ljava/util/List;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$18;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$18;->val$tracks:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$18;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->access$000(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$18;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->access$000(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$18;->val$tracks:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/sonyericsson/music/proxyservice/MediaPlayback;->removeTracks(Ljava/util/List;)V

    :cond_0
    return-void
.end method
