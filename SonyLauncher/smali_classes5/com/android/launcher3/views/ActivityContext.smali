.class public interface abstract Lcom/android/launcher3/views/ActivityContext;
.super Ljava/lang/Object;
.source "ActivityContext.java"


# direct methods
.method public static synthetic lambda$getItemOnClickListener$0(Landroid/view/View;)V
    .locals 0
    .param p0, "v"    # Landroid/view/View;

    .line 192
    return-void
.end method

.method public static lookupContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .line 168
    invoke-static {p0}, Lcom/android/launcher3/views/ActivityContext;->lookupContextNoThrow(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 169
    .local v0, "activityContext":Landroid/content/Context;, "TT;"
    if-eqz v0, :cond_0

    .line 172
    return-object v0

    .line 170
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot find ActivityContext in parent tree"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static lookupContextNoThrow(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .line 180
    instance-of v0, p0, Lcom/android/launcher3/views/ActivityContext;

    if-eqz v0, :cond_0

    .line 181
    return-object p0

    .line 182
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 183
    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContextNoThrow(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 185
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public applyOverwritesToLogItem(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;)V
    .locals 0
    .param p1, "itemInfoBuilder"    # Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    .line 150
    return-void
.end method

.method public createSearchAdapterProvider(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)Lcom/android/launcher3/allapps/search/SearchAdapterProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "*>;)",
            "Lcom/android/launcher3/allapps/search/SearchAdapterProvider<",
            "*>;"
        }
    .end annotation

    .line 212
    .local p1, "appsView":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public findFolderIcon(I)Lcom/android/launcher3/folder/FolderIcon;
    .locals 1
    .param p1, "folderIconId"    # I

    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public finishAutoCancelActionMode()Z
    .locals 1

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "*>;"
        }
    .end annotation

    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getDeviceProfile()Lcom/android/launcher3/DeviceProfile;
.end method

.method public getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDragController()Lcom/android/launcher3/dragndrop/DragController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/dragndrop/DragController;",
            ">()TT;"
        }
    .end annotation

    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;
.end method

.method public getFolderBoundingBox()Landroid/graphics/Rect;
    .locals 1

    .line 76
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getAbsoluteOpenFolderBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getItemOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 190
    new-instance v0, Lcom/android/launcher3/views/ActivityContext$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/views/ActivityContext$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    .line 97
    instance-of v0, p0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 98
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .line 99
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    return-object v1

    .line 101
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnboardingPrefs()Lcom/android/launcher3/util/OnboardingPrefs;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/util/OnboardingPrefs<",
            "*>;"
        }
    .end annotation

    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;
    .locals 1

    .line 197
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSonyBadgeInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/sonymobile/launcher/badge/SonyBadgeInfo;
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;
    .locals 1

    .line 137
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    return-object v0
.end method

.method public getStringCache()Lcom/android/launcher3/model/StringCache;
    .locals 1

    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewCache()Lcom/android/launcher3/util/ViewCache;
    .locals 1

    .line 119
    new-instance v0, Lcom/android/launcher3/util/ViewCache;

    invoke-direct {v0}, Lcom/android/launcher3/util/ViewCache;-><init>()V

    return-object v0
.end method

.method public invalidateParent(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 69
    return-void
.end method

.method public isBindingItems()Z
    .locals 1

    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public shouldUseColorExtractionForPopup()Z
    .locals 1

    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method public updateOpenFolderPosition([ILandroid/graphics/Rect;II)V
    .locals 0
    .param p1, "inOutPosition"    # [I
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 90
    return-void
.end method
