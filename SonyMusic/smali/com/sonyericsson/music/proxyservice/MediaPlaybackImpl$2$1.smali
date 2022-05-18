.class Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2$1;
.super Ljava/lang/Object;
.source "MediaPlaybackImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2$1;->this$1:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2$1;->this$1:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->openLastPlayed(Z)V

    return-void
.end method
