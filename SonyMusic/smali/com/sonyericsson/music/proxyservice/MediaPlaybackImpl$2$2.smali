.class Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2$2;
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

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;Landroid/content/Context;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2$2;->this$1:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;

    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/metadata/MusicInfoService;->startMediaStoreDataSync(Landroid/content/Context;)V

    return-void
.end method
