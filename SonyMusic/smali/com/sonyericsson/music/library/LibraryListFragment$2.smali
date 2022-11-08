.class Lcom/sonyericsson/music/library/LibraryListFragment$2;
.super Ljava/lang/Object;
.source "LibraryListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/library/LibraryListFragment;->restoreListState()V
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

    .line 250
    iput-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment$2;->this$0:Lcom/sonyericsson/music/library/LibraryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment$2;->this$0:Lcom/sonyericsson/music/library/LibraryListFragment;

    iget-object v1, v0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListViewState:Landroid/os/Parcelable;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
