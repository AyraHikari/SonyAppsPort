.class Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$4;
.super Ljava/lang/Object;
.source "IMediaPlaybackStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->openSmartPlaylist(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

.field final synthetic val$playlistPosition:I

.field final synthetic val$shuffle:Z

.field final synthetic val$smartPlaylistType:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;IIZ)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$4;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    iput p2, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$4;->val$smartPlaylistType:I

    iput p3, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$4;->val$playlistPosition:I

    iput-boolean p4, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$4;->val$shuffle:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$4;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->access$000(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$4;->this$0:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->access$000(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$4;->val$smartPlaylistType:I

    iget v2, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$4;->val$playlistPosition:I

    iget-boolean v3, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$4;->val$shuffle:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/sonyericsson/music/proxyservice/MediaPlayback;->openSmartPlaylist(IIZ)V

    :cond_0
    return-void
.end method
