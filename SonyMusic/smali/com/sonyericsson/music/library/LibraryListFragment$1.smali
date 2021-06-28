.class Lcom/sonyericsson/music/library/LibraryListFragment$1;
.super Ljava/lang/Object;
.source "LibraryListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/LibraryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/library/LibraryListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/library/LibraryListFragment;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment$1;->this$0:Lcom/sonyericsson/music/library/LibraryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment$1;->this$0:Lcom/sonyericsson/music/library/LibraryListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/sonyericsson/music/library/LibraryListFragment$1;->this$0:Lcom/sonyericsson/music/library/LibraryListFragment;

    iget-object v1, v1, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 74
    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/music/library/LibraryListAdapter;->setLoading(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method
