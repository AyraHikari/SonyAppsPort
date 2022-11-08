.class public Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;
.super Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;
.source "UnfoldMoveFromCenterWorkspaceAnimator.java"


# instance fields
.field private final mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Landroid/view/WindowManager;)V
    .locals 0
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "windowManager"    # Landroid/view/WindowManager;

    .line 34
    invoke-direct {p0, p2}, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;-><init>(Landroid/view/WindowManager;)V

    .line 35
    iput-object p1, p0, Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 36
    return-void
.end method


# virtual methods
.method synthetic lambda$onPrepareViewsForAnimation$0$com-android-quickstep-util-UnfoldMoveFromCenterWorkspaceAnimator(Landroid/view/View;)V
    .locals 4
    .param p1, "page"    # Landroid/view/View;

    .line 45
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 46
    .local v0, "cellLayout":Lcom/android/launcher3/CellLayout;
    nop

    .line 47
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    .line 48
    .local v1, "itemsContainer":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    invoke-virtual {p0, v0}, Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;->disableClipping(Landroid/view/ViewGroup;)V

    .line 50
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 51
    invoke-virtual {v1, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 52
    .local v3, "child":Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;->registerViewForAnimation(Landroid/view/View;)V

    .line 50
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method synthetic lambda$onTransitionFinished$1$com-android-quickstep-util-UnfoldMoveFromCenterWorkspaceAnimator(Landroid/view/View;)V
    .locals 1
    .param p1, "page"    # Landroid/view/View;

    .line 62
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;->restoreClipping(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected onPrepareViewsForAnimation()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 43
    .local v0, "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    new-instance v1, Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;)V

    .line 44
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    .line 56
    invoke-virtual {p0, v0}, Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;->disableClipping(Landroid/view/ViewGroup;)V

    .line 57
    return-void
.end method

.method public onTransitionFinished()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;->restoreClipping(Landroid/view/ViewGroup;)V

    .line 62
    iget-object v0, p0, Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    .line 63
    invoke-super {p0}, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->onTransitionFinished()V

    .line 64
    return-void
.end method
