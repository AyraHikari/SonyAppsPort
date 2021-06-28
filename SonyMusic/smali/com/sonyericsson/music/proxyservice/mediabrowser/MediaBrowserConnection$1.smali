.class Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection$1;
.super Ljava/lang/Object;
.source "MediaBrowserConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection$1;->this$0:Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection$1;->this$0:Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->access$000(Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;)V

    return-void
.end method
