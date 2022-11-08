.class public interface abstract Lcom/android/launcher3/allapps/SearchUiManager;
.super Ljava/lang/Object;
.source "SearchUiManager.java"


# virtual methods
.method public getBackgroundVisibility()Z
    .locals 1

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getEditText()Lcom/android/launcher3/ExtendedEditText;
.end method

.method public inZeroState()Z
    .locals 1

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public abstract initializeSearch(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "*>;)V"
        }
    .end annotation
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 43
    return-void
.end method

.method public refreshResults()V
    .locals 0

    .line 70
    return-void
.end method

.method public abstract resetSearch()V
.end method

.method public setBackgroundVisibility(ZF)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "maxAlpha"    # F

    .line 55
    return-void
.end method

.method public setFocusedResultTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 67
    return-void
.end method
