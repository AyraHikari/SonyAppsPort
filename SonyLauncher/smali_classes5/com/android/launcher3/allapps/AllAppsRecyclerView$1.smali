.class Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "AllAppsRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/AllAppsRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 98
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->-$$Nest$fgetmCachedScrollPositions(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 101
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 105
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;->onChanged()V

    .line 106
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 110
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;->onChanged()V

    .line 111
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .line 120
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;->onChanged()V

    .line 121
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 115
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;->onChanged()V

    .line 116
    return-void
.end method
