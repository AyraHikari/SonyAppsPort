.class public Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;
.super Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
.source "ShortcutMenuAccessibilityDelegate.java"


# static fields
.field private static final DISMISS_NOTIFICATION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    sget v0, Lcom/android/launcher3/R$id;->action_dismiss_notification:I

    sput v0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->DISMISS_NOTIFICATION:I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 5
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 46
    invoke-direct {p0, p1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 47
    iget-object v0, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->DISMISS_NOTIFICATION:I

    new-instance v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    sget v3, Lcom/android/launcher3/R$string;->action_dismiss_notification:I

    const/16 v4, 0x34

    invoke-direct {v2, p0, v1, v3, v4}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected getSupportedActions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<",
            "Lcom/android/launcher3/Launcher;",
            ">.",
            "LauncherAction;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<Lcom/android/launcher3/Launcher;>.LauncherAction;>;"
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->ADD_TO_WORKSPACE:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :cond_0
    instance-of v0, p1, Lcom/android/launcher3/notification/NotificationMainView;

    if-eqz v0, :cond_1

    .line 56
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationMainView;->canChildBeDismissed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->DISMISS_NOTIFICATION:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$performAction$0$com-android-launcher3-accessibility-ShortcutMenuAccessibilityDelegate(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I[I)V
    .locals 7
    .param p1, "info"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p2, "screenId"    # I
    .param p3, "coordinates"    # [I

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    const/4 v0, 0x0

    aget v5, p3, v0

    const/4 v0, 0x1

    aget v6, p3, v0

    const/16 v3, -0x64

    move-object v2, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 78
    iget-object v1, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;Z)V

    .line 79
    iget-object v0, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    .line 80
    sget v0, Lcom/android/launcher3/R$string;->item_added_to_workspace:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->announceConfirmation(I)V

    .line 81
    return-void
.end method

.method protected performAction(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;IZ)Z
    .locals 7
    .param p1, "host"    # Landroid/view/View;
    .param p2, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "action"    # I
    .param p4, "fromKeyboard"    # Z

    .line 64
    sget v0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->ADD_TO_WORKSPACE:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v0, :cond_2

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-nez v0, :cond_0

    .line 66
    return v2

    .line 68
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getFinalInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    .line 69
    .local v0, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 70
    .local v3, "coordinates":[I
    invoke-virtual {p0, p2, v3}, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->findSpaceOnWorkspace(Lcom/android/launcher3/model/data/ItemInfo;[I)I

    move-result v4

    .line 71
    .local v4, "screenId":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 72
    return v2

    .line 74
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    sget-object v5, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    new-instance v6, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v0, v4, v3}, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;Lcom/android/launcher3/model/data/WorkspaceItemInfo;I[I)V

    invoke-static {v6}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v6

    invoke-virtual {v2, v5, v1, v6}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;ZLandroid/animation/Animator$AnimatorListener;)V

    .line 82
    return v1

    .line 83
    .end local v0    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v3    # "coordinates":[I
    .end local v4    # "screenId":I
    :cond_2
    sget v0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->DISMISS_NOTIFICATION:I

    if-ne p3, v0, :cond_4

    .line 84
    instance-of v0, p1, Lcom/android/launcher3/notification/NotificationMainView;

    if-nez v0, :cond_3

    .line 85
    return v2

    .line 87
    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationMainView;->onChildDismissed()V

    .line 88
    sget v0, Lcom/android/launcher3/R$string;->notification_dismissed:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->announceConfirmation(I)V

    .line 89
    return v1

    .line 91
    :cond_4
    return v2
.end method
