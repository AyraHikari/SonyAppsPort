.class Lcom/sonyericsson/music/search/SearchFragment$6$2;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/search/SearchFragment$6;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/music/search/SearchFragment$6;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/search/SearchFragment$6;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment$6$2;->this$1:Lcom/sonyericsson/music/search/SearchFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 454
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment$6$2;->this$1:Lcom/sonyericsson/music/search/SearchFragment$6;

    iget-object v0, v0, Lcom/sonyericsson/music/search/SearchFragment$6;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/search/SearchFragment;->access$200(Lcom/sonyericsson/music/search/SearchFragment;)Lcom/sonyericsson/music/search/MusicSearchView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment$6$2;->this$1:Lcom/sonyericsson/music/search/SearchFragment$6;

    iget-object v0, v0, Lcom/sonyericsson/music/search/SearchFragment$6;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/search/SearchFragment;->access$200(Lcom/sonyericsson/music/search/SearchFragment;)Lcom/sonyericsson/music/search/MusicSearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment$6$2;->this$1:Lcom/sonyericsson/music/search/SearchFragment$6;

    iget-object v0, v0, Lcom/sonyericsson/music/search/SearchFragment$6;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/search/SearchFragment;->access$200(Lcom/sonyericsson/music/search/SearchFragment;)Lcom/sonyericsson/music/search/MusicSearchView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchFragment$6$2;->this$1:Lcom/sonyericsson/music/search/SearchFragment$6;

    iget-object v1, v1, Lcom/sonyericsson/music/search/SearchFragment$6;->val$oldQuery:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method
