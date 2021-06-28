.class Lcom/sonyericsson/music/search/SearchLoader$2;
.super Landroid/database/ContentObserver;
.source "SearchLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/search/SearchLoader;->onStartLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/search/SearchLoader;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/search/SearchLoader;Landroid/os/Handler;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchLoader$2;->this$0:Lcom/sonyericsson/music/search/SearchLoader;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/music/search/SearchLoader$2;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 118
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchLoader$2;->this$0:Lcom/sonyericsson/music/search/SearchLoader;

    invoke-static {p1}, Lcom/sonyericsson/music/search/SearchLoader;->access$000(Lcom/sonyericsson/music/search/SearchLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/search/SearchResult;

    if-eqz p1, :cond_0

    .line 119
    invoke-interface {p1}, Lcom/sonyericsson/music/search/SearchResult;->hasHistoryData()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchLoader$2;->this$0:Lcom/sonyericsson/music/search/SearchLoader;

    invoke-virtual {p1}, Landroidx/loader/content/Loader;->onContentChanged()V

    :cond_0
    return-void
.end method
