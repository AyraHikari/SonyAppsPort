.class public final synthetic Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda2;->f$0:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda2;->f$0:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    check-cast p1, Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-static {v0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->lambda$rebindAdapters$2(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V

    return-void
.end method
