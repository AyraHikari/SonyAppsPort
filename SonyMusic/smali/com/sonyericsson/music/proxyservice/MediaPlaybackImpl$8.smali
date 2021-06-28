.class Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$8;
.super Landroid/os/AsyncTask;
.source "MediaPlaybackImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->openFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)V
    .locals 0

    .line 799
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$8;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .line 802
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "query"

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    .line 803
    aget-object p1, p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 804
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$8;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    iget-object p1, p1, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sonyericsson/music/search/SearchUtils;->interpretSearchQuery(Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 799
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$8;->doInBackground([Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 3

    if-nez p1, :cond_0

    .line 812
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$8;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->play()V

    goto :goto_1

    .line 814
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/music/common/MediaStoreUriMatcher;->getUriType(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 817
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$8;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->open(Landroid/net/Uri;IZ)V

    :goto_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 799
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$8;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method
