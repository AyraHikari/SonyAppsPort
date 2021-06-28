.class Lcom/sonyericsson/music/search/SearchFragment$2;
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

    .line 106
    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment$2;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment$2;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment$2;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/search/SearchFragment;->access$200(Lcom/sonyericsson/music/search/SearchFragment;)Lcom/sonyericsson/music/search/MusicSearchView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment$2;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    iget-boolean v1, v0, Lcom/sonyericsson/music/search/SearchFragment;->mShouldToggleInput:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 112
    iput-boolean v1, v0, Lcom/sonyericsson/music/search/SearchFragment;->mShouldToggleInput:Z

    const/4 v1, 0x1

    .line 113
    iput-boolean v1, v0, Lcom/sonyericsson/music/search/SearchFragment;->mShouldClearFocus:Z

    goto :goto_0

    .line 114
    :cond_0
    iget-boolean v1, v0, Lcom/sonyericsson/music/search/SearchFragment;->mShouldClearFocus:Z

    if-eqz v1, :cond_1

    .line 115
    invoke-static {v0}, Lcom/sonyericsson/music/search/SearchFragment;->access$200(Lcom/sonyericsson/music/search/SearchFragment;)Lcom/sonyericsson/music/search/MusicSearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    :cond_1
    :goto_0
    return-void
.end method
