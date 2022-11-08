.class Lcom/android/launcher3/views/RecyclerViewFastScroller$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RecyclerViewFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/views/RecyclerViewFastScroller;->setRecyclerView(Lcom/android/launcher3/FastScrollRecyclerView;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/views/RecyclerViewFastScroller;


# direct methods
.method constructor <init>(Lcom/android/launcher3/views/RecyclerViewFastScroller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/views/RecyclerViewFastScroller;

    .line 183
    iput-object p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller$2;->this$0:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .line 186
    iget-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller$2;->this$0:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-static {v0, p3}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->-$$Nest$fputmDy(Lcom/android/launcher3/views/RecyclerViewFastScroller;I)V

    .line 192
    iget-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller$2;->this$0:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    iget-object v0, v0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    invoke-virtual {v0, p3}, Lcom/android/launcher3/FastScrollRecyclerView;->onUpdateScrollbar(I)V

    .line 193
    return-void
.end method
