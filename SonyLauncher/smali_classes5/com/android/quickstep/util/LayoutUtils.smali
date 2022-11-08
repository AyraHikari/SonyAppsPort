.class public Lcom/android/quickstep/util/LayoutUtils;
.super Ljava/lang/Object;
.source "LayoutUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultSwipeHeight(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;

    .line 35
    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    int-to-float v0, v0

    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    sub-float/2addr v0, v1

    .line 36
    .local v0, "swipeHeight":F
    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne v1, v2, :cond_0

    .line 37
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 39
    :cond_0
    return v0
.end method

.method public static getShelfTrackingDistance(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/touch/PagedOrientationHandler;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p2, "orientationHandler"    # Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 46
    .local v0, "taskSize":Landroid/graphics/Rect;
    sget-object v1, Lcom/android/quickstep/LauncherActivityInterface;->INSTANCE:Lcom/android/quickstep/LauncherActivityInterface;

    invoke-virtual {v1, p0, p1, v0}, Lcom/android/quickstep/LauncherActivityInterface;->calculateTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    .line 47
    invoke-interface {p2, p1, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getDistanceToBottomOfRect(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)I

    move-result v1

    return v1
.end method

.method public static setViewEnabled(Landroid/view/View;Z)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "enabled"    # Z

    .line 56
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 57
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 59
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/quickstep/util/LayoutUtils;->setViewEnabled(Landroid/view/View;Z)V

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
