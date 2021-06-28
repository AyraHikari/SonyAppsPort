.class Lcom/sonyericsson/music/settings/CustomizeMyLibraryActivity$1;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "CustomizeMyLibraryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/settings/CustomizeMyLibraryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/settings/CustomizeMyLibraryActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/settings/CustomizeMyLibraryActivity;II)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryActivity$1;->this$0:Lcom/sonyericsson/music/settings/CustomizeMyLibraryActivity;

    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    const/4 p1, 0x3

    const/4 p2, 0x0

    .line 77
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 65
    iget-object p1, p0, Lcom/sonyericsson/music/settings/CustomizeMyLibraryActivity$1;->this$0:Lcom/sonyericsson/music/settings/CustomizeMyLibraryActivity;

    iget-object p1, p1, Lcom/sonyericsson/music/settings/CustomizeMyLibraryActivity;->mAdapter:Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    .line 66
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    .line 65
    invoke-virtual {p1, p2, p3}, Lcom/sonyericsson/music/settings/CustomizeMyLibraryAdapter;->swapPosition(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
