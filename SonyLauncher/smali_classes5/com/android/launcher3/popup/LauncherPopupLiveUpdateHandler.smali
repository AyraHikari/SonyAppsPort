.class public Lcom/android/launcher3/popup/LauncherPopupLiveUpdateHandler;
.super Lcom/android/launcher3/popup/PopupLiveUpdateHandler;
.source "LauncherPopupLiveUpdateHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/popup/PopupLiveUpdateHandler<",
        "Lcom/android/launcher3/Launcher;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V
    .locals 0
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            "Lcom/android/launcher3/popup/PopupContainerWithArrow<",
            "Lcom/android/launcher3/Launcher;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p2, "popupContainerWithArrow":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<Lcom/android/launcher3/Launcher;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/popup/PopupLiveUpdateHandler;-><init>(Landroid/content/Context;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    .line 34
    return-void
.end method

.method private getWidgetsView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;

    .line 37
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 39
    .local v1, "systemShortcutView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/popup/SystemShortcut$Widgets;

    if-eqz v2, :cond_0

    .line 40
    return-object v1

    .line 37
    .end local v1    # "systemShortcutView":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 43
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public onWidgetsBound()V
    .locals 7

    .line 48
    iget-object v0, p0, Lcom/android/launcher3/popup/LauncherPopupLiveUpdateHandler;->mPopupContainerWithArrow:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOriginalIcon()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    .line 49
    .local v0, "originalIcon":Lcom/android/launcher3/BubbleTextView;
    sget-object v1, Lcom/android/launcher3/popup/SystemShortcut;->WIDGETS:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    iget-object v2, p0, Lcom/android/launcher3/popup/LauncherPopupLiveUpdateHandler;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    .line 50
    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    .line 49
    invoke-interface {v1, v2, v3, v0}, Lcom/android/launcher3/popup/SystemShortcut$Factory;->getShortcut(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object v1

    .line 51
    .local v1, "widgetInfo":Lcom/android/launcher3/popup/SystemShortcut;
    iget-object v2, p0, Lcom/android/launcher3/popup/LauncherPopupLiveUpdateHandler;->mPopupContainerWithArrow:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-direct {p0, v2}, Lcom/android/launcher3/popup/LauncherPopupLiveUpdateHandler;->getWidgetsView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 52
    .local v2, "widgetsView":Landroid/view/View;
    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/popup/LauncherPopupLiveUpdateHandler;->mPopupContainerWithArrow:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getWidgetContainer()Landroid/view/ViewGroup;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 53
    iget-object v3, p0, Lcom/android/launcher3/popup/LauncherPopupLiveUpdateHandler;->mPopupContainerWithArrow:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getWidgetContainer()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/launcher3/popup/LauncherPopupLiveUpdateHandler;->getWidgetsView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 56
    :cond_0
    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-nez v2, :cond_3

    .line 58
    iget-object v4, p0, Lcom/android/launcher3/popup/LauncherPopupLiveUpdateHandler;->mPopupContainerWithArrow:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v4}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getSystemShortcutContainer()Landroid/view/ViewGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/popup/LauncherPopupLiveUpdateHandler;->mPopupContainerWithArrow:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    if-eq v4, v5, :cond_2

    .line 60
    iget-object v3, p0, Lcom/android/launcher3/popup/LauncherPopupLiveUpdateHandler;->mPopupContainerWithArrow:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getWidgetContainer()Landroid/view/ViewGroup;

    move-result-object v3

    if-nez v3, :cond_1

    .line 61
    iget-object v3, p0, Lcom/android/launcher3/popup/LauncherPopupLiveUpdateHandler;->mPopupContainerWithArrow:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-object v4, p0, Lcom/android/launcher3/popup/LauncherPopupLiveUpdateHandler;->mPopupContainerWithArrow:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    sget v5, Lcom/android/launcher3/R$layout;->widget_shortcut_container:I

    iget-object v6, p0, Lcom/android/launcher3/popup/LauncherPopupLiveUpdateHandler;->mPopupContainerWithArrow:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 62
    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 61
    invoke-virtual {v3, v4}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setWidgetContainer(Landroid/view/ViewGroup;)V

    .line 66
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/popup/LauncherPopupLiveUpdateHandler;->mPopupContainerWithArrow:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-object v4, p0, Lcom/android/launcher3/popup/LauncherPopupLiveUpdateHandler;->mPopupContainerWithArrow:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 67
    invoke-virtual {v4}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getWidgetContainer()Landroid/view/ViewGroup;

    move-result-object v4

    .line 66
    invoke-virtual {v3, v4, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->initializeWidgetShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;)V

    goto :goto_0

    .line 75
    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/popup/LauncherPopupLiveUpdateHandler;->mPopupContainerWithArrow:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->close(Z)V

    .line 76
    iget-object v3, p0, Lcom/android/launcher3/popup/LauncherPopupLiveUpdateHandler;->mPopupContainerWithArrow:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOriginalIcon()Lcom/android/launcher3/BubbleTextView;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    goto :goto_0

    .line 78
    :cond_3
    if-nez v1, :cond_5

    if-eqz v2, :cond_5

    .line 80
    iget-object v4, p0, Lcom/android/launcher3/popup/LauncherPopupLiveUpdateHandler;->mPopupContainerWithArrow:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v4}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getSystemShortcutContainer()Landroid/view/ViewGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/popup/LauncherPopupLiveUpdateHandler;->mPopupContainerWithArrow:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/launcher3/popup/LauncherPopupLiveUpdateHandler;->mPopupContainerWithArrow:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 82
    invoke-virtual {v4}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getWidgetContainer()Landroid/view/ViewGroup;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 83
    iget-object v3, p0, Lcom/android/launcher3/popup/LauncherPopupLiveUpdateHandler;->mPopupContainerWithArrow:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getWidgetContainer()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 85
    :cond_4
    iget-object v4, p0, Lcom/android/launcher3/popup/LauncherPopupLiveUpdateHandler;->mPopupContainerWithArrow:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->close(Z)V

    .line 86
    iget-object v3, p0, Lcom/android/launcher3/popup/LauncherPopupLiveUpdateHandler;->mPopupContainerWithArrow:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOriginalIcon()Lcom/android/launcher3/BubbleTextView;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 89
    :cond_5
    :goto_0
    return-void
.end method

.method protected showPopupContainerForIcon(Lcom/android/launcher3/BubbleTextView;)V
    .locals 0
    .param p1, "originalIcon"    # Lcom/android/launcher3/BubbleTextView;

    .line 93
    invoke-static {p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 94
    return-void
.end method
