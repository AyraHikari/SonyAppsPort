.class Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$4;
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

    .line 273
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$4;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$4;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->isPlayExpected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$4;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->access$200(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;->setServiceToBackground(Z)V

    :cond_0
    return-void
.end method
