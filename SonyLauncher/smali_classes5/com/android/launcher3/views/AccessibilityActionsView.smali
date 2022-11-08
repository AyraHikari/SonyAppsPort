.class public Lcom/android/launcher3/views/AccessibilityActionsView;
.super Landroid/view/View;
.source "AccessibilityActionsView.java"

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/View;",
        "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/views/AccessibilityActionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/AccessibilityActionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/AccessibilityActionsView;->setWillNotDraw(Z)V

    .line 55
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7

    .line 65
    invoke-super {p0}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 66
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {p0}, Lcom/android/launcher3/views/AccessibilityActionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    .line 67
    .local v1, "l":Lcom/android/launcher3/Launcher;
    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v3, Lcom/android/launcher3/R$string;->all_apps_button_label:I

    sget v4, Lcom/android/launcher3/R$string;->all_apps_button_label:I

    .line 68
    invoke-virtual {v1, v4}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 67
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 69
    invoke-static {v1}, Lcom/android/launcher3/views/OptionsPopupView;->getOptions(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    .line 70
    .local v3, "item":Lcom/android/launcher3/views/OptionsPopupView$OptionItem;
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget v5, v3, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->labelRes:I

    iget-object v6, v3, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->label:Ljava/lang/CharSequence;

    invoke-direct {v4, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 71
    .end local v3    # "item":Lcom/android/launcher3/views/OptionsPopupView$OptionItem;
    goto :goto_0

    .line 72
    :cond_0
    return-object v0
.end method

.method public onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V
    .locals 1
    .param p1, "finalState"    # Lcom/android/launcher3/LauncherState;

    .line 59
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_0

    .line 60
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 59
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/AccessibilityActionsView;->setImportantForAccessibility(I)V

    .line 61
    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/AccessibilityActionsView;->onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 77
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 78
    return v1

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/views/AccessibilityActionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 81
    .local v0, "l":Lcom/android/launcher3/Launcher;
    sget v2, Lcom/android/launcher3/R$string;->all_apps_button_label:I

    if-ne p1, v2, :cond_1

    .line 82
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 83
    return v1

    .line 85
    :cond_1
    invoke-static {v0}, Lcom/android/launcher3/views/OptionsPopupView;->getOptions(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    .line 86
    .local v3, "item":Lcom/android/launcher3/views/OptionsPopupView$OptionItem;
    iget v4, v3, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->labelRes:I

    if-ne v4, p1, :cond_3

    .line 87
    iget-object v4, v3, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->eventId:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    invoke-interface {v4}, Lcom/android/launcher3/logging/StatsLogManager$EventEnum;->getId()I

    move-result v4

    if-lez v4, :cond_2

    .line 88
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v4

    iget-object v5, v3, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->eventId:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    invoke-interface {v4, v5}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 90
    :cond_2
    iget-object v4, v3, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->clickListener:Landroid/view/View$OnLongClickListener;

    invoke-interface {v4, p0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 91
    return v1

    .line 94
    .end local v3    # "item":Lcom/android/launcher3/views/OptionsPopupView$OptionItem;
    :cond_3
    goto :goto_0

    .line 95
    :cond_4
    const/4 v1, 0x0

    return v1
.end method
