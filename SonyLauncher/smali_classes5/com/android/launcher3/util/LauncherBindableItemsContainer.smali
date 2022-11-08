.class public interface abstract Lcom/android/launcher3/util/LauncherBindableItemsContainer;
.super Ljava/lang/Object;
.source "LauncherBindableItemsContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;
    }
.end annotation


# direct methods
.method public static synthetic lambda$updateRestoreItems$1(Ljava/util/HashSet;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 3
    .param p0, "updates"    # Ljava/util/HashSet;
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "v"    # Landroid/view/View;

    .line 75
    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->applyLoadingState(Z)V

    goto :goto_0

    .line 78
    :cond_0
    instance-of v0, p2, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->applyState()V

    goto :goto_0

    .line 82
    :cond_1
    instance-of v0, p2, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_2

    .line 83
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/util/LauncherBindableItemsContainer$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/launcher3/util/LauncherBindableItemsContainer$$ExternalSyntheticLambda0;-><init>(Ljava/util/HashSet;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/FolderIcon;->updatePreviewItems(Ljava/util/function/Predicate;)V

    .line 86
    :cond_2
    :goto_0
    return v1
.end method

.method public static synthetic lambda$updateWorkspaceItems$0(Ljava/util/HashSet;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 7
    .param p0, "updates"    # Ljava/util/HashSet;
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "v"    # Landroid/view/View;

    .line 47
    instance-of v0, p2, Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 49
    .local v0, "si":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    move-object v2, p2

    check-cast v2, Lcom/android/launcher3/BubbleTextView;

    .line 50
    .local v2, "shortcut":Lcom/android/launcher3/BubbleTextView;
    invoke-virtual {v2}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v3

    .line 51
    .local v3, "oldIcon":Landroid/graphics/drawable/Drawable;
    instance-of v4, v3, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    .line 52
    invoke-virtual {v4}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->hasNotCompleted()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v1

    .line 53
    .local v4, "oldPromiseState":Z
    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isPromise()Z

    move-result v6

    if-eq v6, v4, :cond_1

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    invoke-virtual {v2, v0, v5}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    .end local v0    # "si":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v2    # "shortcut":Lcom/android/launcher3/BubbleTextView;
    .end local v3    # "oldIcon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "oldPromiseState":Z
    goto :goto_2

    .line 54
    :cond_2
    instance-of v0, p1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_3

    instance-of v0, p2, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_3

    .line 55
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/util/LauncherBindableItemsContainer$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/launcher3/util/LauncherBindableItemsContainer$$ExternalSyntheticLambda0;-><init>(Ljava/util/HashSet;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/FolderIcon;->updatePreviewItems(Ljava/util/function/Predicate;)V

    goto :goto_3

    .line 54
    :cond_3
    :goto_2
    nop

    .line 59
    :goto_3
    return v1
.end method


# virtual methods
.method public abstract mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V
.end method

.method public updateRestoreItems(Ljava/util/HashSet;Lcom/android/launcher3/views/ActivityContext;)V
    .locals 2
    .param p2, "context"    # Lcom/android/launcher3/views/ActivityContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/views/ActivityContext;",
            ")V"
        }
    .end annotation

    .line 74
    .local p1, "updates":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/util/LauncherBindableItemsContainer$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/launcher3/util/LauncherBindableItemsContainer$$ExternalSyntheticLambda2;-><init>(Ljava/util/HashSet;)V

    .line 89
    .local v0, "op":Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;
    invoke-interface {p0, v0}, Lcom/android/launcher3/util/LauncherBindableItemsContainer;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    .line 90
    invoke-static {p2}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v1

    .line 91
    .local v1, "folder":Lcom/android/launcher3/folder/Folder;
    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/Folder;->iterateOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    .line 94
    :cond_0
    return-void
.end method

.method public updateWorkspaceItems(Ljava/util/List;Lcom/android/launcher3/views/ActivityContext;)V
    .locals 3
    .param p2, "context"    # Lcom/android/launcher3/views/ActivityContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;",
            "Lcom/android/launcher3/views/ActivityContext;",
            ")V"
        }
    .end annotation

    .line 45
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 46
    .local v0, "updates":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    new-instance v1, Lcom/android/launcher3/util/LauncherBindableItemsContainer$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/launcher3/util/LauncherBindableItemsContainer$$ExternalSyntheticLambda1;-><init>(Ljava/util/HashSet;)V

    .line 62
    .local v1, "op":Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;
    invoke-interface {p0, v1}, Lcom/android/launcher3/util/LauncherBindableItemsContainer;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    .line 63
    invoke-static {p2}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v2

    .line 64
    .local v2, "openFolder":Lcom/android/launcher3/folder/Folder;
    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {v2, v1}, Lcom/android/launcher3/folder/Folder;->iterateOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    .line 67
    :cond_0
    return-void
.end method
