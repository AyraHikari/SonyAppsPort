.class Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection$2;
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

    .line 54
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection$2;->this$0:Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection$2;->this$0:Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->access$100(Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 58
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection$2;->this$0:Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->access$100(Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    :goto_0
    if-eqz v0, :cond_4

    .line 60
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sonyericsson.music.intent.action.MEDIA_BUTTON"

    .line 62
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    .line 63
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "com.sonyericsson.music.service.internal.ACTION_POPULATE_WIDGET"

    .line 65
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 66
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection$2;->this$0:Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/BroadcastReceiver$PendingResult;

    invoke-static {v3, v2, v0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->access$300(Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V

    goto :goto_2

    .line 64
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection$2;->this$0:Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/content/Intent;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/BroadcastReceiver$PendingResult;

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->access$200(Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V

    .line 69
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection$2;->this$0:Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->access$100(Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection$2;->this$0:Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->access$100(Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 73
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection$2;->this$0:Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->access$500(Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection$2;->this$0:Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;

    invoke-static {v1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;->access$400(Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserConnection;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
