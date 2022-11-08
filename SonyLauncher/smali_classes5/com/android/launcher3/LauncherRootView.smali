.class public Lcom/android/launcher3/LauncherRootView;
.super Lcom/android/launcher3/InsettableFrameLayout;
.source "LauncherRootView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/LauncherRootView$WindowStateListener;
    }
.end annotation


# static fields
.field private static final SYSTEM_GESTURE_EXCLUSION_RECT:Ljava/util/List;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

.field private mDisallowBackGesture:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private mForceHideBackArrow:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private final mSysUiScrim:Lcom/android/launcher3/graphics/SysUiScrim;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mWindowStateListener:Lcom/android/launcher3/LauncherRootView$WindowStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 29
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherRootView;->SYSTEM_GESTURE_EXCLUSION_RECT:Ljava/util/List;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherRootView;->mTempRect:Landroid/graphics/Rect;

    .line 41
    invoke-static {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/statemanager/StatefulActivity;

    iput-object v0, p0, Lcom/android/launcher3/LauncherRootView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 42
    new-instance v0, Lcom/android/launcher3/graphics/SysUiScrim;

    invoke-direct {v0, p0}, Lcom/android/launcher3/graphics/SysUiScrim;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherRootView;->mSysUiScrim:Lcom/android/launcher3/graphics/SysUiScrim;

    .line 43
    return-void
.end method

.method private handleSystemWindowInsets(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 47
    iget-object v0, p0, Lcom/android/launcher3/LauncherRootView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/DeviceProfile;->updateInsets(Landroid/graphics/Rect;)V

    .line 48
    iget-object v0, p0, Lcom/android/launcher3/LauncherRootView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 49
    .local v0, "resetState":Z
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherRootView;->setInsets(Landroid/graphics/Rect;)V

    .line 51
    if-eqz v0, :cond_0

    .line 52
    iget-object v2, p0, Lcom/android/launcher3/LauncherRootView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/statemanager/StateManager;->reapplyState(Z)V

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/LauncherRootView;->mSysUiScrim:Lcom/android/launcher3/graphics/SysUiScrim;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/graphics/SysUiScrim;->draw(Landroid/graphics/Canvas;)V

    .line 102
    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 103
    return-void
.end method

.method public dispatchInsets()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/LauncherRootView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/LauncherRootView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DeviceProfile;->updateInsets(Landroid/graphics/Rect;)V

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/LauncherRootView;->mInsets:Landroid/graphics/Rect;

    invoke-super {p0, v0}, Lcom/android/launcher3/InsettableFrameLayout;->setInsets(Landroid/graphics/Rect;)V

    .line 77
    return-void
.end method

.method public getSysUiScrim()Lcom/android/launcher3/graphics/SysUiScrim;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/launcher3/LauncherRootView;->mSysUiScrim:Lcom/android/launcher3/graphics/SysUiScrim;

    return-object v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 58
    sget-object v0, Lcom/android/launcher3/util/window/WindowManagerProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherRootView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/window/WindowManagerProxy;

    .line 59
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherRootView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/LauncherRootView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/launcher3/util/window/WindowManagerProxy;->normalizeWindowInsets(Landroid/content/Context;Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/android/launcher3/LauncherRootView;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherRootView;->handleSystemWindowInsets(Landroid/graphics/Rect;)V

    .line 61
    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 107
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/InsettableFrameLayout;->onLayout(ZIIII)V

    .line 108
    sget-object v0, Lcom/android/launcher3/LauncherRootView;->SYSTEM_GESTURE_EXCLUSION_RECT:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 109
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherRootView;->mDisallowBackGesture:Z

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherRootView;->setDisallowBackGesture(Z)V

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/LauncherRootView;->mSysUiScrim:Lcom/android/launcher3/graphics/SysUiScrim;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/graphics/SysUiScrim;->setSize(II)V

    .line 111
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .line 85
    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->onWindowFocusChanged(Z)V

    .line 86
    iget-object v0, p0, Lcom/android/launcher3/LauncherRootView;->mWindowStateListener:Lcom/android/launcher3/LauncherRootView$WindowStateListener;

    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherRootView$WindowStateListener;->onWindowFocusChanged(Z)V

    .line 89
    :cond_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 93
    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->onWindowVisibilityChanged(I)V

    .line 94
    iget-object v0, p0, Lcom/android/launcher3/LauncherRootView;->mWindowStateListener:Lcom/android/launcher3/LauncherRootView$WindowStateListener;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherRootView$WindowStateListener;->onWindowVisibilityChanged(I)V

    .line 97
    :cond_0
    return-void
.end method

.method public setDisallowBackGesture(Z)V
    .locals 1
    .param p1, "disallowBackGesture"    # Z

    .line 121
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->SEPARATE_RECENTS_ACTIVITY:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 124
    :cond_0
    iput-boolean p1, p0, Lcom/android/launcher3/LauncherRootView;->mDisallowBackGesture:Z

    .line 125
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherRootView;->mForceHideBackArrow:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    .line 127
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 126
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/launcher3/LauncherRootView;->SYSTEM_GESTURE_EXCLUSION_RECT:Ljava/util/List;

    .line 125
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherRootView;->setSystemGestureExclusionRects(Ljava/util/List;)V

    .line 128
    return-void

    .line 122
    :cond_3
    :goto_2
    return-void
.end method

.method public setForceHideBackArrow(Z)V
    .locals 1
    .param p1, "forceHideBackArrow"    # Z

    .line 115
    iput-boolean p1, p0, Lcom/android/launcher3/LauncherRootView;->mForceHideBackArrow:Z

    .line 116
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherRootView;->mDisallowBackGesture:Z

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherRootView;->setDisallowBackGesture(Z)V

    .line 117
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 68
    iget-object v0, p0, Lcom/android/launcher3/LauncherRootView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->setInsets(Landroid/graphics/Rect;)V

    .line 70
    iget-object v0, p0, Lcom/android/launcher3/LauncherRootView;->mSysUiScrim:Lcom/android/launcher3/graphics/SysUiScrim;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/graphics/SysUiScrim;->onInsetsChanged(Landroid/graphics/Rect;)V

    .line 72
    :cond_0
    return-void
.end method

.method public setWindowStateListener(Lcom/android/launcher3/LauncherRootView$WindowStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/launcher3/LauncherRootView$WindowStateListener;

    .line 80
    iput-object p1, p0, Lcom/android/launcher3/LauncherRootView;->mWindowStateListener:Lcom/android/launcher3/LauncherRootView$WindowStateListener;

    .line 81
    return-void
.end method
