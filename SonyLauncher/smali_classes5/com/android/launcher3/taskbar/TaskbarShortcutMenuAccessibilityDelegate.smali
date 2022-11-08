.class public Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;
.super Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;
.source "TaskbarShortcutMenuAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<",
        "Lcom/android/launcher3/taskbar/TaskbarActivityContext;",
        ">;"
    }
.end annotation


# static fields
.field public static final MOVE_TO_BOTTOM_OR_RIGHT:I

.field public static final MOVE_TO_TOP_OR_LEFT:I


# instance fields
.field private final mLauncherApps:Landroid/content/pm/LauncherApps;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    sget v0, Lcom/android/launcher3/R$id;->action_move_to_top_or_left:I

    sput v0, Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;->MOVE_TO_TOP_OR_LEFT:I

    .line 49
    sget v0, Lcom/android/launcher3/R$id;->action_move_to_bottom_or_right:I

    sput v0, Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;->MOVE_TO_BOTTOM_OR_RIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .locals 6
    .param p1, "context"    # Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;-><init>(Landroid/content/Context;)V

    .line 55
    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 57
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->DEEP_SHORTCUTS:I

    new-instance v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    sget v3, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->DEEP_SHORTCUTS:I

    sget v4, Lcom/android/launcher3/R$string;->action_deep_shortcut:I

    const/16 v5, 0x2f

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->SHORTCUTS_AND_NOTIFICATIONS:I

    new-instance v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    sget v3, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->DEEP_SHORTCUTS:I

    sget v4, Lcom/android/launcher3/R$string;->shortcuts_menu_with_notifications_description:I

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;->MOVE_TO_TOP_OR_LEFT:I

    new-instance v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    sget v3, Lcom/android/launcher3/R$string;->move_drop_target_top_or_left:I

    const/16 v4, 0x28

    invoke-direct {v2, p0, v1, v3, v4}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;->MOVE_TO_BOTTOM_OR_RIGHT:I

    new-instance v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    sget v3, Lcom/android/launcher3/R$string;->move_drop_target_bottom_or_right:I

    const/16 v4, 0x2e

    invoke-direct {v2, p0, v1, v3, v4}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    return-void
.end method


# virtual methods
.method protected beginAccessibleDrag(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z
    .locals 1
    .param p1, "item"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "fromKeyboard"    # Z

    .line 113
    const/4 v0, 0x0

    return v0
.end method

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
            "Lcom/android/launcher3/taskbar/TaskbarActivityContext;",
            ">.",
            "LauncherAction;",
            ">;)V"
        }
    .end annotation

    .line 71
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<Lcom/android/launcher3/taskbar/TaskbarActivityContext;>.LauncherAction;>;"
    invoke-static {p2}, Lcom/android/launcher3/util/ShortcutUtil;->supportsShortcuts(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_TASKBAR_POPUP_MENU:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->getInstanceIfConnected()Lcom/android/launcher3/notification/NotificationListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 73
    sget v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->SHORTCUTS_AND_NOTIFICATIONS:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->DEEP_SHORTCUTS:I

    .line 72
    :goto_0
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;->MOVE_TO_TOP_OR_LEFT:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;->MOVE_TO_BOTTOM_OR_RIGHT:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method protected performAction(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;IZ)Z
    .locals 10
    .param p1, "host"    # Landroid/view/View;
    .param p2, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "action"    # I
    .param p4, "fromKeyboard"    # Z

    .line 81
    instance-of v0, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    sget v0, Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;->MOVE_TO_TOP_OR_LEFT:I

    if-eq p3, v0, :cond_0

    sget v3, Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;->MOVE_TO_BOTTOM_OR_RIGHT:I

    if-ne p3, v3, :cond_3

    .line 83
    :cond_0
    move-object v3, p2

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 84
    .local v3, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    if-ne p3, v0, :cond_1

    .line 85
    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move v0, v1

    .line 87
    .local v0, "side":I
    iget v1, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->itemType:I

    const/4 v4, 0x6

    if-ne v1, v4, :cond_2

    .line 88
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/quickstep/SystemUiProxy;

    .line 89
    invoke-virtual {v3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    .line 90
    invoke-virtual {v3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    iget-object v9, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    .line 88
    move v7, v0

    invoke-virtual/range {v4 .. v9}, Lcom/android/quickstep/SystemUiProxy;->startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 95
    :cond_2
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/SystemUiProxy;

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 97
    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    iget-object v6, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    .line 96
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/pm/LauncherApps;->getMainActivityLaunchIntent(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 95
    invoke-virtual {v1, v4, v5, v0, v7}, Lcom/android/quickstep/SystemUiProxy;->startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 102
    :goto_1
    return v2

    .line 103
    .end local v0    # "side":I
    .end local v3    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :cond_3
    sget v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->DEEP_SHORTCUTS:I

    if-eq p3, v0, :cond_5

    sget v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->SHORTCUTS_AND_NOTIFICATIONS:I

    if-ne p3, v0, :cond_4

    goto :goto_2

    .line 108
    :cond_4
    return v1

    .line 104
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->showPopupMenuForIcon(Lcom/android/launcher3/BubbleTextView;)V

    .line 106
    return v2
.end method
