.class Lcom/sonyericsson/music/search/SearchFragment$6$1;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


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

    .line 400
    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment$6$1;->this$1:Lcom/sonyericsson/music/search/SearchFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4

    .line 410
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment$6$1;->this$1:Lcom/sonyericsson/music/search/SearchFragment$6;

    iget-object v0, v0, Lcom/sonyericsson/music/search/SearchFragment$6;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/search/SearchFragment;->access$700(Lcom/sonyericsson/music/search/SearchFragment;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 411
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment$6$1;->this$1:Lcom/sonyericsson/music/search/SearchFragment$6;

    iget-object p1, p1, Lcom/sonyericsson/music/search/SearchFragment$6;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-static {p1, v2}, Lcom/sonyericsson/music/search/SearchFragment;->access$702(Lcom/sonyericsson/music/search/SearchFragment;Z)Z

    .line 412
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment$6$1;->this$1:Lcom/sonyericsson/music/search/SearchFragment$6;

    iget-object p1, p1, Lcom/sonyericsson/music/search/SearchFragment$6;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/search/SearchFragment;->access$200(Lcom/sonyericsson/music/search/SearchFragment;)Lcom/sonyericsson/music/search/MusicSearchView;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment$6$1;->this$1:Lcom/sonyericsson/music/search/SearchFragment$6;

    iget-object v0, v0, Lcom/sonyericsson/music/search/SearchFragment$6;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/search/SearchFragment;->access$800(Lcom/sonyericsson/music/search/SearchFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return v1

    .line 416
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 417
    invoke-static {p1}, Lcom/sonyericsson/music/common/StringUtils;->trimEnd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment$6$1;->this$1:Lcom/sonyericsson/music/search/SearchFragment$6;

    iget-object v0, v0, Lcom/sonyericsson/music/search/SearchFragment$6;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/search/SearchFragment;->access$200(Lcom/sonyericsson/music/search/SearchFragment;)Lcom/sonyericsson/music/search/MusicSearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 424
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment$6$1;->this$1:Lcom/sonyericsson/music/search/SearchFragment$6;

    iget-object v0, v0, Lcom/sonyericsson/music/search/SearchFragment$6;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    iput-boolean v1, v0, Lcom/sonyericsson/music/search/SearchFragment;->mLaunchQueryHandled:Z

    .line 425
    invoke-static {v0, p1}, Lcom/sonyericsson/music/search/SearchFragment;->access$302(Lcom/sonyericsson/music/search/SearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 427
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "query_arg"

    .line 428
    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment$6$1;->this$1:Lcom/sonyericsson/music/search/SearchFragment$6;

    iget-object p1, p1, Lcom/sonyericsson/music/search/SearchFragment$6;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/loader/app/LoaderManager;->getLoader(I)Landroidx/loader/content/Loader;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 432
    invoke-virtual {p1}, Landroidx/loader/content/Loader;->cancelLoad()Z

    .line 435
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment$6$1;->this$1:Lcom/sonyericsson/music/search/SearchFragment$6;

    iget-object p1, p1, Lcom/sonyericsson/music/search/SearchFragment$6;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_4

    return v2

    .line 440
    :cond_4
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment$6$1;->this$1:Lcom/sonyericsson/music/search/SearchFragment$6;

    iget-object p1, p1, Lcom/sonyericsson/music/search/SearchFragment$6;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    iget-object v3, p0, Lcom/sonyericsson/music/search/SearchFragment$6$1;->this$1:Lcom/sonyericsson/music/search/SearchFragment$6;

    iget-object v3, v3, Lcom/sonyericsson/music/search/SearchFragment$6;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-virtual {p1, v2, v0, v3}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 441
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment$6$1;->this$1:Lcom/sonyericsson/music/search/SearchFragment$6;

    iget-object p1, p1, Lcom/sonyericsson/music/search/SearchFragment$6;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/search/SearchFragment;->access$900(Lcom/sonyericsson/music/search/SearchFragment;)V

    return v1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    .line 404
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment$6$1;->this$1:Lcom/sonyericsson/music/search/SearchFragment$6;

    iget-object p1, p1, Lcom/sonyericsson/music/search/SearchFragment$6;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/search/SearchFragment;->access$400(Lcom/sonyericsson/music/search/SearchFragment;)V

    const/4 p1, 0x1

    return p1
.end method
