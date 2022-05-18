.class Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$1;
.super Ljava/lang/Object;
.source "MediaPlaybackImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$1;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$1;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->removeMediaRouterCallback()V

    return-void
.end method
