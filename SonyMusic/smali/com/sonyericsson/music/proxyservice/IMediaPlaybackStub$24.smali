.class Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$24;
.super Ljava/lang/Object;
.source "IMediaPlaybackStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->setPersonalDataCollectionConsented(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

.field final synthetic val$consent:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;Z)V
    .locals 0

    .line 617
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$24;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    iput-boolean p2, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$24;->val$consent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 620
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$24;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->access$000(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$24;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->access$000(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$24;->val$consent:Z

    invoke-interface {v0, v1}, Lcom/sonyericsson/music/proxyservice/MediaPlayback;->setPersonalDataCollectionConsented(Z)V

    :cond_0
    return-void
.end method
