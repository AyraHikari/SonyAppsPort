.class public Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;
.super Lcom/android/launcher3/BaseDraggingActivity;
.source "SecondaryDisplayLauncher.java"

# interfaces
.implements Lcom/android/launcher3/model/BgDataModel$Callbacks;


# static fields
.field private static final TAG:Ljava/lang/String; = "SecondaryDisplayLauncher"


# instance fields
.field private mAppDrawerShown:Z

.field private mAppsButton:Landroid/view/View;

.field private mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;",
            ">;"
        }
    .end annotation
.end field

.field private mDragLayer:Lcom/android/launcher3/views/BaseDragLayer;

.field private mModel:Lcom/android/launcher3/LauncherModel;

.field private mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

.field private mStringCache:Lcom/android/launcher3/model/StringCache;


# direct methods
.method public static synthetic $r8$lambda$uNmYL-PWWdX5_Ep5XCS3mDbYBJQ(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->onIconClicked(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAppsButton(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsButton:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppsView(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;)Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/android/launcher3/BaseDraggingActivity;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppDrawerShown:Z

    return-void
.end method

.method private initUi()V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDragLayer:Lcom/android/launcher3/views/BaseDragLayer;

    if-eqz v0, :cond_0

    .line 89
    return-void

    .line 91
    :cond_0
    new-instance v0, Lcom/android/launcher3/InvariantDeviceProfile;

    .line 92
    invoke-virtual {p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 95
    .local v0, "currentDisplayIdp":Lcom/android/launcher3/InvariantDeviceProfile;
    invoke-virtual {v0, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 96
    invoke-virtual {v1, p0}, Lcom/android/launcher3/DeviceProfile;->toBuilder(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 97
    invoke-virtual {v1, v2}, Lcom/android/launcher3/DeviceProfile$Builder;->setMultiWindowMode(Z)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 98
    invoke-virtual {v1, v2}, Lcom/android/launcher3/DeviceProfile$Builder;->setTransposeLayoutWithOrientation(Z)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile$Builder;->build()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 100
    iget-object v1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->autoResizeAllAppsCells()V

    .line 102
    sget v1, Lcom/android/launcher3/R$layout;->secondary_launcher:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->setContentView(I)V

    .line 103
    sget v1, Lcom/android/launcher3/R$id;->drag_layer:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/views/BaseDragLayer;

    iput-object v1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDragLayer:Lcom/android/launcher3/views/BaseDragLayer;

    .line 104
    sget v1, Lcom/android/launcher3/R$id;->apps_view:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iput-object v1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    .line 105
    sget v1, Lcom/android/launcher3/R$id;->all_apps_button:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsButton:Landroid/view/View;

    .line 107
    new-instance v1, Lcom/android/launcher3/popup/PopupDataProvider;

    iget-object v2, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    .line 108
    invoke-virtual {v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/allapps/AllAppsStore;)V

    invoke-direct {v1, v3}, Lcom/android/launcher3/popup/PopupDataProvider;-><init>(Ljava/util/function/Consumer;)V

    iput-object v1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    .line 110
    iget-object v1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherModel;->addCallbacksAndLoad(Lcom/android/launcher3/model/BgDataModel$Callbacks;)Z

    .line 111
    return-void
.end method

.method private onIconClicked(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 268
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 270
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 271
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_3

    .line 272
    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    .line 274
    .local v1, "item":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v2, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_1

    .line 277
    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 278
    .local v2, "appInfo":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    invoke-virtual {v2, p0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getMarketIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 279
    .local v2, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 280
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 282
    .restart local v2    # "intent":Landroid/content/Intent;
    :goto_0
    if-eqz v2, :cond_2

    .line 285
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z

    goto :goto_1

    .line 283
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Input must have a valid intent"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 287
    .end local v1    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public bindAllApplications([Lcom/android/launcher3/model/data/AppInfo;I)V
    .locals 1
    .param p1, "apps"    # [Lcom/android/launcher3/model/data/AppInfo;
    .param p2, "flags"    # I

    .line 235
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/allapps/AllAppsStore;->setApps([Lcom/android/launcher3/model/data/AppInfo;I)V

    .line 236
    invoke-static {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->dismissInvalidPopup(Lcom/android/launcher3/BaseDraggingActivity;)V

    .line 237
    return-void
.end method

.method public bindAllAppsOwnOrder(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 241
    .local p1, "ownOrderApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    return-void
.end method

.method public bindDeepShortcutMap(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 230
    .local p1, "deepShortcutMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/ComponentKey;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->setDeepShortcutMap(Ljava/util/HashMap;)V

    .line 231
    return-void
.end method

.method public bindIncrementalDownloadProgressUpdated(Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 1
    .param p1, "app"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 181
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsStore;->updateProgressBar(Lcom/android/launcher3/model/data/AppInfo;)V

    .line 182
    return-void
.end method

.method public bindStringCache(Lcom/android/launcher3/model/StringCache;)V
    .locals 0
    .param p1, "cache"    # Lcom/android/launcher3/model/StringCache;

    .line 250
    iput-object p1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mStringCache:Lcom/android/launcher3/model/StringCache;

    .line 251
    return-void
.end method

.method public getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    return-object v0
.end method

.method public getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDragLayer:Lcom/android/launcher3/views/BaseDragLayer;

    return-object v0
.end method

.method public getItemOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 262
    new-instance v0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;)V

    return-object v0
.end method

.method public getOverviewPanel()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">()TT;"
        }
    .end annotation

    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDragLayer:Lcom/android/launcher3/views/BaseDragLayer;

    return-object v0
.end method

.method public getStringCache()Lcom/android/launcher3/model/StringCache;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mStringCache:Lcom/android/launcher3/model/StringCache;

    return-object v0
.end method

.method public isAppDrawerShown()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppDrawerShown:Z

    return v0
.end method

.method public onAppsButtonClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 188
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->showAppDrawer(Z)V

    .line 189
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 83
    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->onAttachedToWindow()V

    .line 84
    invoke-direct {p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->initUi()V

    .line 85
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 132
    invoke-virtual {p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->finishAutoCancelActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    return-void

    .line 138
    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 139
    .local v0, "topView":Lcom/android/launcher3/AbstractFloatingView;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/AbstractFloatingView;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 142
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->showAppDrawer(Z)V

    .line 144
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 74
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseDraggingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 76
    invoke-virtual {p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->initUi()V

    .line 79
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 148
    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->onDestroy()V

    .line 149
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherModel;->removeCallbacks(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    .line 150
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 115
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseDraggingActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 117
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    .line 120
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 121
    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 122
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .line 121
    invoke-virtual {v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 127
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->showAppDrawer(Z)V

    .line 128
    return-void
.end method

.method protected reapplyUi()V
    .locals 0

    .line 172
    return-void
.end method

.method public removeOwnOrderAppsItem(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 254
    return-void
.end method

.method public showAppDrawer(Z)V
    .locals 11
    .param p1, "show"    # Z

    .line 195
    iget-boolean v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppDrawerShown:Z

    if-ne p1, v0, :cond_0

    .line 196
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getWidth()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getHeight()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 200
    .local v0, "openR":F
    invoke-static {p0}, Lcom/android/launcher3/util/Themes;->getDialogCornerRadius(Landroid/content/Context;)F

    move-result v1

    .line 201
    .local v1, "closeR":F
    iget-object v2, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 203
    .local v2, "startR":F
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v5, 0x1

    aput v2, v3, v5

    .line 204
    .local v3, "buttonPos":[F
    iget-object v6, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDragLayer:Lcom/android/launcher3/views/BaseDragLayer;

    iget-object v7, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsButton:Landroid/view/View;

    invoke-virtual {v6, v7, v3}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[F)F

    .line 205
    iget-object v6, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDragLayer:Lcom/android/launcher3/views/BaseDragLayer;

    iget-object v7, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v6, v7, v3}, Lcom/android/launcher3/views/BaseDragLayer;->mapCoordInSelfToDescendant(Landroid/view/View;[F)V

    .line 206
    iget-object v6, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    aget v7, v3, v4

    float-to-int v7, v7

    aget v8, v3, v5

    float-to-int v8, v8

    .line 208
    if-eqz p1, :cond_1

    move v9, v1

    goto :goto_0

    :cond_1
    move v9, v0

    :goto_0
    if-eqz p1, :cond_2

    move v10, v0

    goto :goto_1

    :cond_2
    move v10, v1

    .line 206
    :goto_1
    invoke-static {v6, v7, v8, v9, v10}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v6

    .line 210
    .local v6, "animator":Landroid/animation/Animator;
    if-eqz p1, :cond_3

    .line 211
    iput-boolean v5, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppDrawerShown:Z

    .line 212
    iget-object v5, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setVisibility(I)V

    .line 213
    iget-object v4, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsButton:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 215
    :cond_3
    iput-boolean v4, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppDrawerShown:Z

    .line 216
    new-instance v4, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher$1;

    invoke-direct {v4, p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher$1;-><init>(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;)V

    invoke-virtual {v6, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 225
    :goto_2
    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    .line 226
    return-void
.end method
