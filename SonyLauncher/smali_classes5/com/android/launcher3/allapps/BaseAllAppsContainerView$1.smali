.class Lcom/android/launcher3/allapps/BaseAllAppsContainerView$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "BaseAllAppsContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/BaseAllAppsContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    .line 129
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView$1;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView$1;"
    iput-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .line 132
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView$1;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView$1;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getCurrentScrollY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->updateHeaderScroll(I)V

    .line 133
    return-void
.end method
