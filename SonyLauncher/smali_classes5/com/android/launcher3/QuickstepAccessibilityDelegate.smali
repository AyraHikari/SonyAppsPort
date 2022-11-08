.class public Lcom/android/launcher3/QuickstepAccessibilityDelegate;
.super Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
.source "QuickstepAccessibilityDelegate.java"


# direct methods
.method public constructor <init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V
    .locals 6
    .param p1, "launcher"    # Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    .line 31
    invoke-direct {p0, p1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 32
    iget-object v0, p0, Lcom/android/launcher3/QuickstepAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/QuickstepAccessibilityDelegate;->PIN_PREDICTION:I

    new-instance v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    sget v3, Lcom/android/launcher3/QuickstepAccessibilityDelegate;->PIN_PREDICTION:I

    sget v4, Lcom/android/launcher3/R$string;->pin_prediction:I

    const/16 v5, 0x2c

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected getSupportedActions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;)V
    .locals 4
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

    .line 38
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<Lcom/android/launcher3/Launcher;>.LauncherAction;>;"
    instance-of v0, p1, Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->isPinned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    sget v1, Lcom/android/launcher3/QuickstepAccessibilityDelegate;->PIN_PREDICTION:I

    sget v2, Lcom/android/launcher3/R$string;->pin_prediction:I

    const/16 v3, 0x2c

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->getSupportedActions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;)V

    .line 43
    return-void
.end method

.method protected performAction(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;IZ)Z
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "action"    # I
    .param p4, "fromKeyboard"    # Z

    .line 47
    iget-object v0, p0, Lcom/android/launcher3/QuickstepAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    .line 48
    .local v0, "launcher":Lcom/android/launcher3/uioverrides/QuickstepLauncher;
    sget v1, Lcom/android/launcher3/QuickstepAccessibilityDelegate;->PIN_PREDICTION:I

    if-ne p3, v1, :cond_1

    .line 49
    invoke-virtual {v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getHotseatPredictionController()Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    move-result-object v1

    if-nez v1, :cond_0

    .line 50
    const/4 v1, 0x0

    return v1

    .line 52
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getHotseatPredictionController()Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->pinPrediction(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 53
    const/4 v1, 0x1

    return v1

    .line 55
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->performAction(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;IZ)Z

    move-result v1

    return v1
.end method
