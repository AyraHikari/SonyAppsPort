.class public Lcom/sonyericsson/music/proxyservice/PlaybackService$ProxyServiceBinder;
.super Landroid/os/Binder;
.source "PlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/PlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProxyServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/proxyservice/PlaybackService;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/music/proxyservice/PlaybackService;)V
    .locals 0

    .line 562
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$ProxyServiceBinder;->this$0:Lcom/sonyericsson/music/proxyservice/PlaybackService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getMediaPlayback()Lcom/sonyericsson/music/proxyservice/MediaPlayback;
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$ProxyServiceBinder;->this$0:Lcom/sonyericsson/music/proxyservice/PlaybackService;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    return-object v0
.end method

.method public getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$ProxyServiceBinder;->this$0:Lcom/sonyericsson/music/proxyservice/PlaybackService;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->getPlaybackState()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0
.end method
