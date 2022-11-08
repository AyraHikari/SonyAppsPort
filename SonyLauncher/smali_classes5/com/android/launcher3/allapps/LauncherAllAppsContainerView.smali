.class public Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;
.super Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
.source "LauncherAllAppsContainerView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
        "Lcom/android/launcher3/Launcher;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method


# virtual methods
.method protected getNavBarScrimHeight(Landroid/view/WindowInsets;)I
    .locals 1
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 66
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getTappableElementInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    return v0

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 48
    iget-object v0, p0, Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    .line 50
    const/4 v0, 0x0

    return v0

    .line 53
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 58
    iget-object v0, p0, Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x0

    return v0

    .line 61
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
