.class public Lcom/sonymobile/launcher/allapps/AllAppsItemTouchHelperCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "AllAppsItemTouchHelperCallback.java"


# instance fields
.field private final mAdapter:Lcom/sonymobile/launcher/allapps/ItemTouchHelperAdapter;


# direct methods
.method public constructor <init>(Lcom/sonymobile/launcher/allapps/ItemTouchHelperAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/sonymobile/launcher/allapps/ItemTouchHelperAdapter;

    .line 41
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sonymobile/launcher/allapps/AllAppsItemTouchHelperCallback;->mAdapter:Lcom/sonymobile/launcher/allapps/ItemTouchHelperAdapter;

    .line 43
    return-void
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 90
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 91
    iget-object v0, p0, Lcom/sonymobile/launcher/allapps/AllAppsItemTouchHelperCallback;->mAdapter:Lcom/sonymobile/launcher/allapps/ItemTouchHelperAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonymobile/launcher/allapps/ItemTouchHelperAdapter;->onItemClear(I)Z

    .line 92
    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 3
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 57
    const/16 v0, 0xf

    .line 59
    .local v0, "dragFlags":I
    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sonymobile/launcher/allapps/AllAppsItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result v1

    return v1
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 3
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "source"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 67
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 68
    const/4 v0, 0x0

    return v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/launcher/allapps/AllAppsItemTouchHelperCallback;->mAdapter:Lcom/sonymobile/launcher/allapps/ItemTouchHelperAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/launcher/allapps/ItemTouchHelperAdapter;->onItemMove(II)Z

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .line 82
    if-eqz p2, :cond_0

    .line 83
    iget-object v0, p0, Lcom/sonymobile/launcher/allapps/AllAppsItemTouchHelperCallback;->mAdapter:Lcom/sonymobile/launcher/allapps/ItemTouchHelperAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonymobile/launcher/allapps/ItemTouchHelperAdapter;->onItemSelectedChanged(I)V

    .line 85
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 86
    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "i"    # I

    .line 77
    return-void
.end method
