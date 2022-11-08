.class Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "AllAppsFastScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyScroller"
.end annotation


# instance fields
.field private final mTargetPosition:I

.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;I)V
    .locals 0
    .param p2, "targetPosition"    # I

    .line 65
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    .line 66
    invoke-static {p1}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->-$$Nest$fgetmRv(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;)Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 68
    iput p2, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;->mTargetPosition:I

    .line 69
    invoke-virtual {p0, p2}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;->setTargetPosition(I)V

    .line 70
    return-void
.end method


# virtual methods
.method protected getVerticalSnapPreference()I
    .locals 1

    .line 74
    const/4 v0, -0x1

    return v0
.end method

.method protected onStart()V
    .locals 2

    .line 97
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->onStart()V

    .line 98
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;->mTargetPosition:I

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    invoke-static {v1}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->-$$Nest$fgetmTargetFastScrollPosition(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->-$$Nest$msetLastHolderSelected(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;Z)V

    .line 100
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->-$$Nest$fputmLastSelectedViewHolder(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 102
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 79
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->onStop()V

    .line 80
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;->mTargetPosition:I

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    invoke-static {v1}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->-$$Nest$fgetmTargetFastScrollPosition(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 82
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->-$$Nest$fgetmRv(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;)Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;->mTargetPosition:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 86
    .local v0, "currentHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    invoke-static {v1}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->-$$Nest$fgetmLastSelectedViewHolder(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 87
    return-void

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->-$$Nest$msetLastHolderSelected(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;Z)V

    .line 91
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    invoke-static {v1, v0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->-$$Nest$fputmLastSelectedViewHolder(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 92
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->-$$Nest$msetLastHolderSelected(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;Z)V

    .line 93
    return-void
.end method
