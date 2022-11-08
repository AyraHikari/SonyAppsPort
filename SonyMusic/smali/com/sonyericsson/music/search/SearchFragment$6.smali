.class Lcom/sonyericsson/music/search/SearchFragment$6;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/search/SearchFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/search/SearchFragment;

.field final synthetic val$oldQuery:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/search/SearchFragment;Ljava/lang/String;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment$6;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    iput-object p2, p0, Lcom/sonyericsson/music/search/SearchFragment$6;->val$oldQuery:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 0

    .line 477
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment$6;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/search/SearchFragment;->access$1200(Lcom/sonyericsson/music/search/SearchFragment;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 4

    .line 389
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment$6;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 396
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->closeAndLockDrawer()V

    .line 398
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment$6;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/search/MusicSearchView;

    invoke-static {v0, p1}, Lcom/sonyericsson/music/search/SearchFragment;->access$202(Lcom/sonyericsson/music/search/SearchFragment;Lcom/sonyericsson/music/search/MusicSearchView;)Lcom/sonyericsson/music/search/MusicSearchView;

    .line 399
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment$6;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/search/SearchFragment;->access$200(Lcom/sonyericsson/music/search/SearchFragment;)Lcom/sonyericsson/music/search/MusicSearchView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setInputType(I)V

    .line 400
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment$6;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/search/SearchFragment;->access$200(Lcom/sonyericsson/music/search/SearchFragment;)Lcom/sonyericsson/music/search/MusicSearchView;

    move-result-object p1

    new-instance v1, Lcom/sonyericsson/music/search/SearchFragment$6$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/search/SearchFragment$6$1;-><init>(Lcom/sonyericsson/music/search/SearchFragment$6;)V

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 447
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment$6;->val$oldQuery:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 451
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment$6;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/search/SearchFragment;->access$200(Lcom/sonyericsson/music/search/SearchFragment;)Lcom/sonyericsson/music/search/MusicSearchView;

    move-result-object p1

    new-instance v1, Lcom/sonyericsson/music/search/SearchFragment$6$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/search/SearchFragment$6$2;-><init>(Lcom/sonyericsson/music/search/SearchFragment$6;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 463
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment$6;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    iget-boolean v1, p1, Lcom/sonyericsson/music/search/SearchFragment;->mLaunchQueryHandled:Z

    if-nez v1, :cond_2

    .line 464
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "query_arg"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sonyericsson/music/search/SearchFragment;->access$302(Lcom/sonyericsson/music/search/SearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 465
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment$6;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-static {p1, v0}, Lcom/sonyericsson/music/search/SearchFragment;->access$702(Lcom/sonyericsson/music/search/SearchFragment;Z)Z

    goto :goto_0

    .line 466
    :cond_2
    invoke-static {p1}, Lcom/sonyericsson/music/search/SearchFragment;->access$700(Lcom/sonyericsson/music/search/SearchFragment;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 467
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment$6;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/search/SearchFragment;->access$200(Lcom/sonyericsson/music/search/SearchFragment;)Lcom/sonyericsson/music/search/MusicSearchView;

    move-result-object p1

    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchFragment$6;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100280

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 470
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment$6;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/search/SearchFragment;->access$1100(Lcom/sonyericsson/music/search/SearchFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchFragment$6;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-static {v1}, Lcom/sonyericsson/music/search/SearchFragment;->access$1000(Lcom/sonyericsson/music/search/SearchFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 471
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment$6;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/search/SearchFragment;->access$1100(Lcom/sonyericsson/music/search/SearchFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchFragment$6;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-static {v1}, Lcom/sonyericsson/music/search/SearchFragment;->access$1000(Lcom/sonyericsson/music/search/SearchFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v0
.end method
