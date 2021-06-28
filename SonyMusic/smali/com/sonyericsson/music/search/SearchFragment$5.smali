.class Lcom/sonyericsson/music/search/SearchFragment$5;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/search/SearchFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 230
    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment$5;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 233
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment$5;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/search/SearchFragment;->access$400(Lcom/sonyericsson/music/search/SearchFragment;)V

    .line 234
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment$5;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/search/SearchFragment;->access$600(Lcom/sonyericsson/music/search/SearchFragment;)Lcom/sonyericsson/music/library/PaddedHeaderListScroller;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment$5;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    .line 235
    invoke-static {v0}, Lcom/sonyericsson/music/search/SearchFragment;->access$500(Lcom/sonyericsson/music/search/SearchFragment;)Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v0

    .line 234
    invoke-virtual {p1, v0, p2}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->onPaddedHeaderListScrollStateChanged(Lcom/sonyericsson/music/ToolbarControl;I)V

    return-void
.end method
