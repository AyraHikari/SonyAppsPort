.class Lcom/android/launcher3/allapps/FloatingHeaderView$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "FloatingHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/FloatingHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/FloatingHeaderView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/FloatingHeaderView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/FloatingHeaderView;

    .line 55
    iput-object p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView$1;->this$0:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0
    .param p1, "rv"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "newState"    # I

    .line 57
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3
    .param p1, "rv"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .line 61
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView$1;->this$0:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-static {v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->-$$Nest$fgetmCurrentRV(Lcom/android/launcher3/allapps/FloatingHeaderView;)Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 62
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView$1;->this$0:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-static {v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->-$$Nest$fgetmAnimator(Lcom/android/launcher3/allapps/FloatingHeaderView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView$1;->this$0:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-static {v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->-$$Nest$fgetmAnimator(Lcom/android/launcher3/allapps/FloatingHeaderView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView$1;->this$0:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-static {v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->-$$Nest$fgetmCurrentRV(Lcom/android/launcher3/allapps/FloatingHeaderView;)Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getCurrentScrollY()I

    move-result v0

    neg-int v0, v0

    .line 70
    .local v0, "current":I
    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView$1;->this$0:Lcom/android/launcher3/allapps/FloatingHeaderView;

    iget-boolean v1, v1, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderCollapsed:Z

    .line 71
    .local v1, "headerCollapsed":Z
    iget-object v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView$1;->this$0:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-static {v2, v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->-$$Nest$mmoved(Lcom/android/launcher3/allapps/FloatingHeaderView;I)V

    .line 72
    iget-object v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView$1;->this$0:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/FloatingHeaderView;->applyVerticalMove()V

    .line 73
    iget-object v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView$1;->this$0:Lcom/android/launcher3/allapps/FloatingHeaderView;

    iget-boolean v2, v2, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderCollapsed:Z

    if-eq v1, v2, :cond_2

    .line 74
    iget-object v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView$1;->this$0:Lcom/android/launcher3/allapps/FloatingHeaderView;

    .line 75
    invoke-virtual {v2}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    .line 76
    .local v2, "parent":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<*>;"
    invoke-virtual {v2}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->invalidateHeader()V

    .line 78
    .end local v2    # "parent":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<*>;"
    :cond_2
    return-void
.end method
