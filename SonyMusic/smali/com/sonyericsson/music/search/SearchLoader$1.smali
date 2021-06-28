.class Lcom/sonyericsson/music/search/SearchLoader$1;
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

    .line 97
    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchLoader$1;->this$0:Lcom/sonyericsson/music/search/SearchLoader;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/music/search/SearchLoader$1;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 100
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchLoader$1;->this$0:Lcom/sonyericsson/music/search/SearchLoader;

    invoke-virtual {p1}, Landroidx/loader/content/Loader;->onContentChanged()V

    return-void
.end method
