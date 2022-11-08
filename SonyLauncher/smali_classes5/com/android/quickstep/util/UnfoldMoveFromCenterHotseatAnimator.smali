.class public Lcom/android/quickstep/util/UnfoldMoveFromCenterHotseatAnimator;
.super Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;
.source "UnfoldMoveFromCenterHotseatAnimator.java"


# instance fields
.field private final mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Landroid/view/WindowManager;)V
    .locals 0
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "windowManager"    # Landroid/view/WindowManager;

    .line 33
    invoke-direct {p0, p2}, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;-><init>(Landroid/view/WindowManager;)V

    .line 34
    iput-object p1, p0, Lcom/android/quickstep/util/UnfoldMoveFromCenterHotseatAnimator;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 35
    return-void
.end method


# virtual methods
.method protected onPrepareViewsForAnimation()V
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/android/quickstep/util/UnfoldMoveFromCenterHotseatAnimator;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    .line 41
    .local v0, "hotseat":Lcom/android/launcher3/Hotseat;
    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    .line 42
    .local v1, "hotseatIcons":Landroid/view/ViewGroup;
    invoke-virtual {p0, v0}, Lcom/android/quickstep/util/UnfoldMoveFromCenterHotseatAnimator;->disableClipping(Landroid/view/ViewGroup;)V

    .line 44
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 45
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 46
    .local v3, "child":Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/android/quickstep/util/UnfoldMoveFromCenterHotseatAnimator;->registerViewForAnimation(Landroid/view/View;)V

    .line 44
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public onTransitionFinished()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/quickstep/util/UnfoldMoveFromCenterHotseatAnimator;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/util/UnfoldMoveFromCenterHotseatAnimator;->restoreClipping(Landroid/view/ViewGroup;)V

    .line 53
    invoke-super {p0}, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->onTransitionFinished()V

    .line 54
    return-void
.end method
