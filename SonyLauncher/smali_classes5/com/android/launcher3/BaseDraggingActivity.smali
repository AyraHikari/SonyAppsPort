.class public abstract Lcom/android/launcher3/BaseDraggingActivity;
.super Lcom/android/launcher3/BaseActivity;
.source "BaseDraggingActivity.java"

# interfaces
.implements Landroid/app/WallpaperManager$OnColorsChangedListener;
.implements Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;


# static fields
.field public static final AUTO_CANCEL_ACTION_MODE:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "BaseDraggingActivity"


# instance fields
.field private mCurrentActionMode:Landroid/view/ActionMode;

.field protected mIsSafeModeEnabled:Z

.field private mOnResumeCallbacks:Lcom/android/launcher3/util/RunnableList;

.field private mOnStartCallback:Ljava/lang/Runnable;

.field private mThemeRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/BaseDraggingActivity;->AUTO_CANCEL_ACTION_MODE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/android/launcher3/BaseActivity;-><init>()V

    .line 68
    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mOnResumeCallbacks:Lcom/android/launcher3/util/RunnableList;

    .line 70
    sget v0, Lcom/android/launcher3/R$style;->AppTheme:I

    iput v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mThemeRes:I

    return-void
.end method

.method private updateTheme()V
    .locals 2

    .line 114
    iget v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mThemeRes:I

    invoke-static {p0}, Lcom/android/launcher3/util/Themes;->getActivityThemeRes(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->recreate()V

    .line 117
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnResumeCallback(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 99
    iget-object v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mOnResumeCallbacks:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method

.method public clearRunOnceOnStartCallback()V
    .locals 1

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mOnStartCallback:Ljava/lang/Runnable;

    .line 181
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

    .line 222
    .local p1, "allApps":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<*>;"
    new-instance v0, Lcom/android/launcher3/allapps/search/DefaultSearchAdapterProvider;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/search/DefaultSearchAdapterProvider;-><init>(Lcom/android/launcher3/views/AppLauncher;)V

    return-object v0
.end method

.method public finishAutoCancelActionMode()Z
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mCurrentActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/launcher3/BaseDraggingActivity;->AUTO_CANCEL_ACTION_MODE:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/view/ActionMode;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mCurrentActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 135
    const/4 v0, 0x1

    return v0

    .line 137
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 151
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/BaseActivity;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v0

    .line 152
    .local v0, "wrapper":Lcom/android/launcher3/util/ActivityOptionsWrapper;
    iget-object v1, v0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->onEndCallback:Lcom/android/launcher3/util/RunnableList;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/BaseDraggingActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/launcher3/BaseDraggingActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/BaseDraggingActivity;->addOnResumeCallback(Ljava/lang/Runnable;)V

    .line 153
    return-object v0
.end method

.method public getItemOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 198
    sget-object v0, Lcom/android/launcher3/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected getMultiWindowDisplaySize()Lcom/android/launcher3/util/WindowBounds;
    .locals 7

    .line 204
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/WindowBounds;->fromWindowMetrics(Landroid/view/WindowMetrics;)Lcom/android/launcher3/util/WindowBounds;

    move-result-object v0

    return-object v0

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 210
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 211
    .local v1, "mwSize":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 212
    new-instance v2, Lcom/android/launcher3/util/WindowBounds;

    new-instance v3, Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/util/WindowBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v2
.end method

.method public abstract getOverviewPanel()Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">()TT;"
        }
    .end annotation
.end method

.method public abstract getRootView()Landroid/view/View;
.end method

.method public isAppBlockedForSafeMode()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mIsSafeModeEnabled:Z

    return v0
.end method

.method synthetic lambda$onCreate$0$com-android-launcher3-BaseDraggingActivity()Ljava/lang/Boolean;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 127
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mCurrentActionMode:Landroid/view/ActionMode;

    .line 129
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 121
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 122
    iput-object p1, p0, Lcom/android/launcher3/BaseDraggingActivity;->mCurrentActionMode:Landroid/view/ActionMode;

    .line 123
    return-void
.end method

.method public onColorsChanged(Landroid/app/WallpaperColors;I)V
    .locals 0
    .param p1, "wallpaperColors"    # Landroid/app/WallpaperColors;
    .param p2, "which"    # I

    .line 104
    invoke-direct {p0}, Lcom/android/launcher3/BaseDraggingActivity;->updateTheme()V

    .line 105
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 109
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 110
    invoke-direct {p0}, Lcom/android/launcher3/BaseDraggingActivity;->updateTheme()V

    .line 111
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 74
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    new-instance v0, Lcom/android/launcher3/BaseDraggingActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/BaseDraggingActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/BaseDraggingActivity;)V

    const-string v1, "isSafeMode"

    invoke-static {v1, v0}, Lcom/android/launcher3/util/TraceHelper;->allowIpcs(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mIsSafeModeEnabled:Z

    .line 78
    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/DisplayController;->addChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    .line 81
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    if-eqz v0, :cond_0

    .line 82
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseDraggingActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    .line 83
    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;)V

    .line 85
    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/util/Themes;->getActivityThemeRes(Landroid/content/Context;)I

    move-result v0

    .line 86
    .local v0, "themeRes":I
    iget v1, p0, Lcom/android/launcher3/BaseDraggingActivity;->mThemeRes:I

    if-eq v0, v1, :cond_1

    .line 87
    iput v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mThemeRes:I

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseDraggingActivity;->setTheme(I)V

    .line 90
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 168
    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onDestroy()V

    .line 169
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    if-eqz v0, :cond_0

    .line 170
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseDraggingActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    invoke-virtual {v0, p0}, Landroid/app/WallpaperManager;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    .line 172
    :cond_0
    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/DisplayController;->removeChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    .line 173
    return-void
.end method

.method protected onDeviceProfileInitiated()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/DeviceProfile;->updateIsSeascape(Landroid/content/Context;)Z

    .line 187
    :cond_0
    return-void
.end method

.method public onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/launcher3/util/DisplayController$Info;
    .param p3, "flags"    # I

    .line 191
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/DeviceProfile;->updateIsSeascape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->reapplyUi()V

    .line 194
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 94
    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onResume()V

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mOnResumeCallbacks:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {v0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndClear()V

    .line 96
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 158
    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onStart()V

    .line 160
    iget-object v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mOnStartCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mOnStartCallback:Ljava/lang/Runnable;

    .line 164
    :cond_0
    return-void
.end method

.method protected abstract reapplyUi()V
.end method

.method public returnToHomescreen()V
    .locals 0

    .line 146
    return-void
.end method

.method public runOnceOnStart(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 176
    iput-object p1, p0, Lcom/android/launcher3/BaseDraggingActivity;->mOnStartCallback:Ljava/lang/Runnable;

    .line 177
    return-void
.end method
