.class public Lcom/android/launcher3/taskbar/TaskbarManager;
.super Ljava/lang/Object;
.source "TaskbarManager.java"


# static fields
.field private static final CHANGE_FLAGS:I = 0x14

.field private static final NAV_BAR_KIDS_MODE:Landroid/net/Uri;

.field private static final USER_SETUP_COMPLETE_URI:Landroid/net/Uri;


# instance fields
.field private mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

.field private final mComponentCallbacks:Landroid/content/ComponentCallbacks;

.field private final mContext:Landroid/content/Context;

.field private final mDispInfoChangeListener:Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

.field private final mDisplayController:Lcom/android/launcher3/util/DisplayController;

.field private final mNavBarKidsModeListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

.field private final mNavButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

.field private final mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

.field private final mShutdownReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

.field private mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private final mUnfoldProgressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

.field private final mUserSetupCompleteListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

.field private mUserUnlocked:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/launcher3/taskbar/TaskbarManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTaskbarActivityContext(Lcom/android/launcher3/taskbar/TaskbarManager;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserUnlocked(Lcom/android/launcher3/taskbar/TaskbarManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUserUnlocked:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mrecreateTaskbar(Lcom/android/launcher3/taskbar/TaskbarManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->recreateTaskbar()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-string v0, "user_setup_complete"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarManager;->USER_SETUP_COMPLETE_URI:Landroid/net/Uri;

    .line 64
    const-string v0, "nav_bar_kids_mode"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarManager;->NAV_BAR_KIDS_MODE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/TouchInteractionService;)V
    .locals 8
    .param p1, "service"    # Lcom/android/quickstep/TouchInteractionService;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lcom/android/launcher3/taskbar/unfold/NonDestroyableScopedUnfoldTransitionProgressProvider;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/unfold/NonDestroyableScopedUnfoldTransitionProgressProvider;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUnfoldProgressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    .line 88
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarSharedState;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/TaskbarSharedState;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUserUnlocked:Z

    .line 108
    sget-object v1, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/DisplayController;

    iput-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mDisplayController:Lcom/android/launcher3/util/DisplayController;

    .line 109
    const-class v2, Landroid/hardware/display/DisplayManager;

    .line 110
    invoke-virtual {p1, v2}, Lcom/android/quickstep/TouchInteractionService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 111
    .local v0, "display":Landroid/view/Display;
    const/16 v2, 0x7e8

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/quickstep/TouchInteractionService;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    .line 112
    new-instance v3, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    sget-object v4, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 113
    invoke-virtual {v4, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/quickstep/SystemUiProxy;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p1, v4, v5}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;-><init>(Lcom/android/quickstep/TouchInteractionService;Lcom/android/quickstep/SystemUiProxy;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mNavButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    .line 114
    new-instance v3, Lcom/android/launcher3/taskbar/TaskbarManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/launcher3/taskbar/TaskbarManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/taskbar/TaskbarManager;)V

    iput-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUserSetupCompleteListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    .line 115
    new-instance v4, Lcom/android/launcher3/taskbar/TaskbarManager$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/launcher3/taskbar/TaskbarManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/taskbar/TaskbarManager;)V

    iput-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mNavBarKidsModeListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    .line 117
    new-instance v5, Lcom/android/launcher3/taskbar/TaskbarManager$1;

    invoke-direct {v5, p0}, Lcom/android/launcher3/taskbar/TaskbarManager$1;-><init>(Lcom/android/launcher3/taskbar/TaskbarManager;)V

    iput-object v5, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    .line 162
    new-instance v6, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v7, Lcom/android/launcher3/taskbar/TaskbarManager$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Lcom/android/launcher3/taskbar/TaskbarManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/taskbar/TaskbarManager;)V

    invoke-direct {v6, v7}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    iput-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mShutdownReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    .line 163
    new-instance v7, Lcom/android/launcher3/taskbar/TaskbarManager$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0}, Lcom/android/launcher3/taskbar/TaskbarManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/taskbar/TaskbarManager;)V

    iput-object v7, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mDispInfoChangeListener:Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

    .line 168
    invoke-virtual {v1, v7}, Lcom/android/launcher3/util/DisplayController;->addChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    .line 169
    sget-object v1, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/SettingsCache;

    sget-object v7, Lcom/android/launcher3/taskbar/TaskbarManager;->USER_SETUP_COMPLETE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v7, v3}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    .line 171
    sget-object v1, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/SettingsCache;

    sget-object v3, Lcom/android/launcher3/taskbar/TaskbarManager;->NAV_BAR_KIDS_MODE:Landroid/net/Uri;

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    .line 173
    invoke-virtual {v2, v5}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 174
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 176
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->recreateTaskbar()V

    .line 177
    return-void
.end method

.method private createTaskbarUIControllerForActivity(Lcom/android/launcher3/statemanager/StatefulActivity;)Lcom/android/launcher3/taskbar/TaskbarUIController;
    .locals 2
    .param p1, "activity"    # Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 238
    instance-of v0, p1, Lcom/android/launcher3/BaseQuickstepLauncher;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.pc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    new-instance v0, Lcom/android/launcher3/taskbar/DesktopTaskbarUIController;

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/DesktopTaskbarUIController;-><init>(Lcom/android/launcher3/BaseQuickstepLauncher;)V

    return-object v0

    .line 242
    :cond_0
    new-instance v0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;-><init>(Lcom/android/launcher3/BaseQuickstepLauncher;)V

    return-object v0

    .line 244
    :cond_1
    instance-of v0, p1, Lcom/android/quickstep/RecentsActivity;

    if-eqz v0, :cond_2

    .line 245
    new-instance v0, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;

    move-object v1, p1

    check-cast v1, Lcom/android/quickstep/RecentsActivity;

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;-><init>(Lcom/android/quickstep/RecentsActivity;)V

    return-object v0

    .line 247
    :cond_2
    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarUIController;->DEFAULT:Lcom/android/launcher3/taskbar/TaskbarUIController;

    return-object v0
.end method

.method private destroyExistingTaskbar()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onDestroy()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 184
    :cond_0
    return-void
.end method

.method private getUnfoldTransitionProgressProviderForActivity(Lcom/android/launcher3/statemanager/StatefulActivity;)Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;
    .locals 1
    .param p1, "activity"    # Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 228
    instance-of v0, p1, Lcom/android/launcher3/BaseQuickstepLauncher;

    if-eqz v0, :cond_0

    .line 229
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getUnfoldTransitionProgressProvider()Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    move-result-object v0

    return-object v0

    .line 231
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private recreateTaskbar()V
    .locals 6

    .line 264
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->destroyExistingTaskbar()V

    .line 267
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUserUnlocked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 269
    .local v0, "dp":Lcom/android/launcher3/DeviceProfile;
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    .line 271
    .local v2, "isTaskBarEnabled":Z
    :goto_1
    if-nez v2, :cond_2

    .line 272
    sget-object v3, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/SystemUiProxy;

    .line 273
    invoke-virtual {v3, v1, v1}, Lcom/android/quickstep/SystemUiProxy;->notifyTaskbarStatus(ZZ)V

    .line 274
    return-void

    .line 277
    :cond_2
    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mNavButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    iget-object v5, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUnfoldProgressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    invoke-direct {v1, v3, v0, v4, v5}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;-><init>(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;)V

    iput-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 280
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->init(Lcom/android/launcher3/taskbar/TaskbarSharedState;)V

    .line 281
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v1, :cond_3

    .line 282
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 283
    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarManager;->createTaskbarUIControllerForActivity(Lcom/android/launcher3/statemanager/StatefulActivity;)Lcom/android/launcher3/taskbar/TaskbarUIController;

    move-result-object v1

    .line 282
    invoke-virtual {v3, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setUIController(Lcom/android/launcher3/taskbar/TaskbarUIController;)V

    .line 285
    :cond_3
    return-void
.end method


# virtual methods
.method public clearActivity(Lcom/android/launcher3/statemanager/StatefulActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 254
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-ne v0, p1, :cond_1

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 256
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v1, :cond_0

    .line 257
    sget-object v2, Lcom/android/launcher3/taskbar/TaskbarUIController;->DEFAULT:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setUIController(Lcom/android/launcher3/taskbar/TaskbarUIController;)V

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUnfoldProgressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    invoke-virtual {v1, v0}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->setSourceProvider(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V

    .line 261
    :cond_1
    return-void
.end method

.method public createLauncherStartFromSuwAnim(I)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 1
    .param p1, "duration"    # I

    .line 193
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-nez v0, :cond_0

    .line 194
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->createLauncherStartFromSuwAnim(I)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    .line 193
    :goto_0
    return-object v0
.end method

.method public destroy()V
    .locals 3

    .line 332
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->destroyExistingTaskbar()V

    .line 333
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mDisplayController:Lcom/android/launcher3/util/DisplayController;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mDispInfoChangeListener:Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/DisplayController;->removeChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    .line 334
    sget-object v0, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/SettingsCache;

    sget-object v1, Lcom/android/launcher3/taskbar/TaskbarManager;->USER_SETUP_COMPLETE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUserSetupCompleteListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    .line 336
    sget-object v0, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/SettingsCache;

    sget-object v1, Lcom/android/launcher3/taskbar/TaskbarManager;->NAV_BAR_KIDS_MODE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mNavBarKidsModeListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    .line 338
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 339
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mShutdownReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 340
    return-void
.end method

.method public disableNavBarElements(IIIZ)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "state1"    # I
    .param p3, "state2"    # I
    .param p4, "animate"    # Z

    .line 311
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->disableNavBarElements(IIIZ)V

    .line 314
    :cond_0
    return-void
.end method

.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TaskbarManager:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tTaskbarActivityContext: null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 353
    :goto_0
    return-void
.end method

.method public getCurrentActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    return-object v0
.end method

.method synthetic lambda$new$0$com-android-launcher3-taskbar-TaskbarManager(Z)V
    .locals 0
    .param p1, "isUserSetupComplete"    # Z

    .line 114
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->recreateTaskbar()V

    return-void
.end method

.method synthetic lambda$new$1$com-android-launcher3-taskbar-TaskbarManager(Z)V
    .locals 0
    .param p1, "isNavBarKidsMode"    # Z

    .line 115
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->recreateTaskbar()V

    return-void
.end method

.method synthetic lambda$new$2$com-android-launcher3-taskbar-TaskbarManager(Landroid/content/Intent;)V
    .locals 0
    .param p1, "i"    # Landroid/content/Intent;

    .line 162
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->destroyExistingTaskbar()V

    return-void
.end method

.method synthetic lambda$new$3$com-android-launcher3-taskbar-TaskbarManager(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/launcher3/util/DisplayController$Info;
    .param p3, "flags"    # I

    .line 164
    and-int/lit8 v0, p3, 0x14

    if-eqz v0, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->recreateTaskbar()V

    .line 167
    :cond_0
    return-void
.end method

.method public onNavButtonsDarkIntensityChanged(F)V
    .locals 1
    .param p1, "darkIntensity"    # F

    .line 323
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onNavButtonsDarkIntensityChanged(F)V

    .line 326
    :cond_0
    return-void
.end method

.method public onRotationProposal(IZ)V
    .locals 1
    .param p1, "rotation"    # I
    .param p2, "isValid"    # Z

    .line 305
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onRotationProposal(IZ)V

    .line 308
    :cond_0
    return-void
.end method

.method public onSystemBarAttributesChanged(II)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "behavior"    # I

    .line 317
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onSystemBarAttributesChanged(II)V

    .line 320
    :cond_0
    return-void
.end method

.method public onSystemUiFlagsChanged(I)V
    .locals 2
    .param p1, "systemUiStateFlags"    # I

    .line 288
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    iput p1, v0, Lcom/android/launcher3/taskbar/TaskbarSharedState;->sysuiStateFlags:I

    .line 289
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v0, :cond_0

    .line 290
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateSysuiStateFlags(IZ)V

    .line 292
    :cond_0
    return-void
.end method

.method public onUserUnlocked()V
    .locals 1

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUserUnlocked:Z

    .line 202
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->recreateTaskbar()V

    .line 203
    return-void
.end method

.method public setActivity(Lcom/android/launcher3/statemanager/StatefulActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 209
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-ne v0, p1, :cond_0

    .line 210
    return-void

    .line 212
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUnfoldProgressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->getUnfoldTransitionProgressProviderForActivity(Lcom/android/launcher3/statemanager/StatefulActivity;)Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->setSourceProvider(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V

    .line 216
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v0, :cond_1

    .line 217
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 218
    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarManager;->createTaskbarUIControllerForActivity(Lcom/android/launcher3/statemanager/StatefulActivity;)Lcom/android/launcher3/taskbar/TaskbarUIController;

    move-result-object v1

    .line 217
    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setUIController(Lcom/android/launcher3/taskbar/TaskbarUIController;)V

    .line 220
    :cond_1
    return-void
.end method

.method public setSetupUIVisible(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .line 298
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    iput-boolean p1, v0, Lcom/android/launcher3/taskbar/TaskbarSharedState;->setupUIVisible:Z

    .line 299
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setSetupUIVisible(Z)V

    .line 302
    :cond_0
    return-void
.end method
