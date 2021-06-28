.class Lcom/sonyericsson/music/search/SearchFragment$3;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/search/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/search/SearchFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/search/SearchFragment;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment$3;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment$3;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment$3;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/search/SearchFragment;->access$200(Lcom/sonyericsson/music/search/SearchFragment;)Lcom/sonyericsson/music/search/MusicSearchView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment$3;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/search/SearchFragment;->access$300(Lcom/sonyericsson/music/search/SearchFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment$3;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/search/SearchFragment;->access$200(Lcom/sonyericsson/music/search/SearchFragment;)Lcom/sonyericsson/music/search/MusicSearchView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchFragment$3;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-static {v1}, Lcom/sonyericsson/music/search/SearchFragment;->access$300(Lcom/sonyericsson/music/search/SearchFragment;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment$3;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/search/SearchFragment;->access$200(Lcom/sonyericsson/music/search/SearchFragment;)Lcom/sonyericsson/music/search/MusicSearchView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchFragment$3;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    const v2, 0x7f10027e

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
