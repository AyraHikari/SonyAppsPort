.class Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$3;
.super Ljava/lang/Object;
.source "IMediaPlaybackStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->openWithMetadata(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

.field final synthetic val$album:Ljava/lang/String;

.field final synthetic val$artist:Ljava/lang/String;

.field final synthetic val$playbackPos:I

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$3;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$3;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$3;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$3;->val$album:Ljava/lang/String;

    iput-object p5, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$3;->val$artist:Ljava/lang/String;

    iput p6, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$3;->val$playbackPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$3;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->access$000(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$3;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->access$000(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$3;->val$uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$3;->val$title:Ljava/lang/String;

    iget-object v4, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$3;->val$album:Ljava/lang/String;

    iget-object v5, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$3;->val$artist:Ljava/lang/String;

    iget v6, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$3;->val$playbackPos:I

    invoke-interface/range {v1 .. v6}, Lcom/sonyericsson/music/proxyservice/MediaPlayback;->open(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
