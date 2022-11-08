.class public Lcom/android/launcher3/taskbar/TaskbarActivityContext;
.super Lcom/android/launcher3/taskbar/BaseTaskbarContext;
.source "TaskbarActivityContext.java"


# static fields
.field private static final ENABLE_THREE_BUTTON_TASKBAR:Z

.field private static final IME_DRAWS_IME_NAV_BAR_RES_NAME:Ljava/lang/String; = "config_imeDrawsImeNavBar"

.field private static final TAG:Ljava/lang/String; = "TaskbarActivityContext"

.field private static final WINDOW_TITLE:Ljava/lang/String; = "Taskbar"


# instance fields
.field private final mAccessibilityDelegate:Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;

.field private mBindingItems:Z

.field private final mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field private final mDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

.field private final mImeDrawsImeNavBar:Z

.field private mIsDestroyed:Z

.field private mIsExcludeFromMagnificationRegion:Z

.field private mIsFullscreen:Z

.field private final mIsNavBarForceVisible:Z

.field private final mIsNavBarKidsMode:Z

.field private final mIsSafeModeEnabled:Z

.field private final mIsUserSetupComplete:Z

.field private mLastRequestedNonFullscreenHeight:I

.field private final mLeftCorner:Landroid/view/RoundedCorner;

.field private final mNavMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

.field private final mRightCorner:Landroid/view/RoundedCorner;

.field private final mViewCache:Lcom/android/launcher3/util/ViewCache;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 103
    nop

    .line 104
    const-string v0, "persist.debug.taskbar_three_button"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->ENABLE_THREE_BUTTON_TASKBAR:Z

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;)V
    .locals 36
    .param p1, "windowContext"    # Landroid/content/Context;
    .param p2, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p3, "buttonController"    # Lcom/android/launcher3/taskbar/TaskbarNavButtonController;
    .param p4, "unfoldTransitionProgressProvider"    # Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    .line 138
    move-object/from16 v13, p0

    move-object/from16 v12, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;-><init>(Landroid/content/Context;)V

    .line 122
    new-instance v0, Lcom/android/launcher3/util/ViewCache;

    invoke-direct {v0}, Lcom/android/launcher3/util/ViewCache;-><init>()V

    iput-object v0, v13, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mViewCache:Lcom/android/launcher3/util/ViewCache;

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, v13, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsDestroyed:Z

    .line 130
    iput-boolean v0, v13, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsExcludeFromMagnificationRegion:Z

    .line 131
    iput-boolean v0, v13, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mBindingItems:Z

    .line 139
    invoke-virtual {v12, v13}, Lcom/android/launcher3/DeviceProfile;->copy(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iput-object v1, v13, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 143
    .local v11, "resources":Landroid/content/res/Resources;
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v1

    iput-object v1, v13, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mNavMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    .line 144
    const-string v1, "config_imeDrawsImeNavBar"

    invoke-static {v1, v11, v0}, Lcom/android/launcher3/ResourceUtils;->getBoolByName(Ljava/lang/String;Landroid/content/res/Resources;Z)Z

    move-result v1

    iput-boolean v1, v13, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mImeDrawsImeNavBar:Z

    .line 145
    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarActivityContext$$ExternalSyntheticLambda6;

    invoke-direct {v1, v13}, Lcom/android/launcher3/taskbar/TaskbarActivityContext$$ExternalSyntheticLambda6;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    const-string v2, "isSafeMode"

    invoke-static {v2, v1}, Lcom/android/launcher3/util/TraceHelper;->allowIpcs(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v13, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsSafeModeEnabled:Z

    .line 147
    sget-object v1, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, v13}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/SettingsCache;

    .line 148
    const-string v2, "user_setup_complete"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 147
    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;I)Z

    move-result v1

    iput-boolean v1, v13, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsUserSetupComplete:Z

    .line 149
    sget-object v1, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, v13}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/SettingsCache;

    .line 150
    const-string v2, "nav_bar_kids_mode"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 149
    invoke-virtual {v1, v3, v0}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;I)Z

    move-result v1

    iput-boolean v1, v13, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsNavBarForceVisible:Z

    .line 151
    sget-object v1, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, v13}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/SettingsCache;

    .line 152
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 151
    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;I)Z

    move-result v1

    iput-boolean v1, v13, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsNavBarKidsMode:Z

    .line 154
    invoke-direct {v13, v11}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateIconSize(Landroid/content/res/Resources;)V

    .line 157
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v10

    .line 158
    .local v10, "display":Landroid/view/Display;
    invoke-virtual {v10}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_0

    .line 159
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v1

    :goto_0
    move-object v9, v1

    .line 161
    .local v9, "c":Landroid/content/Context;
    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v9, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/view/WindowManager;

    iput-object v15, v13, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowManager:Landroid/view/WindowManager;

    .line 162
    const/4 v1, 0x3

    invoke-virtual {v10, v1}, Landroid/view/Display;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v1

    iput-object v1, v13, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mLeftCorner:Landroid/view/RoundedCorner;

    .line 163
    const/4 v1, 0x2

    invoke-virtual {v10, v1}, Landroid/view/Display;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v1

    iput-object v1, v13, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mRightCorner:Landroid/view/RoundedCorner;

    .line 166
    iget-object v1, v13, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/android/launcher3/R$layout;->taskbar:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    iput-object v8, v13, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    .line 168
    sget v0, Lcom/android/launcher3/R$id;->taskbar_view:I

    invoke-virtual {v8, v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/launcher3/taskbar/TaskbarView;

    .line 169
    .local v7, "taskbarView":Lcom/android/launcher3/taskbar/TaskbarView;
    sget v0, Lcom/android/launcher3/R$id;->taskbar_scrim:I

    invoke-virtual {v8, v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/launcher3/taskbar/TaskbarScrimView;

    .line 170
    .local v6, "taskbarScrimView":Lcom/android/launcher3/taskbar/TaskbarScrimView;
    sget v0, Lcom/android/launcher3/R$id;->navbuttons_view:I

    invoke-virtual {v8, v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/FrameLayout;

    .line 171
    .local v5, "navButtonsView":Landroid/widget/FrameLayout;
    sget v0, Lcom/android/launcher3/R$id;->stashed_handle:I

    invoke-virtual {v8, v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/launcher3/taskbar/StashedHandleView;

    .line 173
    .local v4, "stashedHandleView":Lcom/android/launcher3/taskbar/StashedHandleView;
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;

    invoke-direct {v0, v13}, Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    iput-object v0, v13, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mAccessibilityDelegate:Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;

    .line 176
    new-instance v3, Lcom/android/launcher3/taskbar/TaskbarControllers;

    new-instance v2, Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-direct {v2, v13}, Lcom/android/launcher3/taskbar/TaskbarDragController;-><init>(Lcom/android/launcher3/taskbar/BaseTaskbarContext;)V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.pc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    new-instance v0, Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;

    invoke-direct {v0, v13, v5}, Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Landroid/widget/FrameLayout;)V

    move-object/from16 v28, v0

    goto :goto_1

    .line 181
    :cond_1
    new-instance v0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-direct {v0, v13, v5}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Landroid/widget/FrameLayout;)V

    move-object/from16 v28, v0

    :goto_1
    new-instance v0, Lcom/android/systemui/shared/rotation/RotationButtonController;

    move-object v14, v0

    sget v1, Lcom/android/launcher3/R$color;->taskbar_nav_icon_light_color:I

    .line 183
    invoke-virtual {v9, v1}, Landroid/content/Context;->getColor(I)I

    move-result v16

    sget v1, Lcom/android/launcher3/R$color;->taskbar_nav_icon_dark_color:I

    .line 184
    invoke-virtual {v9, v1}, Landroid/content/Context;->getColor(I)I

    move-result v17

    sget v18, Lcom/android/launcher3/R$drawable;->ic_sysbar_rotate_button_ccw_start_0:I

    sget v19, Lcom/android/launcher3/R$drawable;->ic_sysbar_rotate_button_ccw_start_90:I

    sget v20, Lcom/android/launcher3/R$drawable;->ic_sysbar_rotate_button_cw_start_0:I

    sget v21, Lcom/android/launcher3/R$drawable;->ic_sysbar_rotate_button_cw_start_90:I

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarActivityContext$$ExternalSyntheticLambda7;

    invoke-direct {v1, v13}, Lcom/android/launcher3/taskbar/TaskbarActivityContext$$ExternalSyntheticLambda7;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    move-object/from16 v22, v1

    move-object/from16 v1, p0

    move-object/from16 v29, v2

    move/from16 v2, v16

    move-object/from16 v30, v3

    move/from16 v3, v17

    move-object/from16 v31, v14

    move-object v14, v4

    .end local v4    # "stashedHandleView":Lcom/android/launcher3/taskbar/StashedHandleView;
    .local v14, "stashedHandleView":Lcom/android/launcher3/taskbar/StashedHandleView;
    move/from16 v4, v18

    move-object/from16 v32, v5

    .end local v5    # "navButtonsView":Landroid/widget/FrameLayout;
    .local v32, "navButtonsView":Landroid/widget/FrameLayout;
    move/from16 v5, v19

    move-object/from16 v33, v11

    move-object v11, v6

    .end local v6    # "taskbarScrimView":Lcom/android/launcher3/taskbar/TaskbarScrimView;
    .local v11, "taskbarScrimView":Lcom/android/launcher3/taskbar/TaskbarScrimView;
    .local v33, "resources":Landroid/content/res/Resources;
    move/from16 v6, v20

    move-object/from16 v34, v10

    move-object v10, v7

    .end local v7    # "taskbarView":Lcom/android/launcher3/taskbar/TaskbarView;
    .local v10, "taskbarView":Lcom/android/launcher3/taskbar/TaskbarView;
    .local v34, "display":Landroid/view/Display;
    move/from16 v7, v21

    move-object/from16 v35, v9

    move-object v9, v8

    .end local v9    # "c":Landroid/content/Context;
    .local v35, "c":Landroid/content/Context;
    move-object/from16 v8, v22

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/shared/rotation/RotationButtonController;-><init>(Landroid/content/Context;IIIIIILjava/util/function/Supplier;)V

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    move-object v1, v15

    move-object v15, v0

    invoke-direct {v0, v13, v9}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarDragLayer;)V

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarViewController;

    move-object/from16 v16, v0

    invoke-direct {v0, v13, v10}, Lcom/android/launcher3/taskbar/TaskbarViewController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarView;)V

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;

    move-object/from16 v17, v0

    invoke-direct {v0, v13, v11}, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarScrimView;)V

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;

    move-object/from16 v18, v0

    .line 194
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    move-object/from16 v3, p4

    invoke-direct {v0, v13, v3, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;-><init>(Lcom/android/launcher3/taskbar/BaseTaskbarContext;Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;Landroid/view/WindowManager;Landroid/view/IWindowManager;)V

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

    move-object/from16 v19, v0

    invoke-direct {v0, v13}, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    new-instance v0, Lcom/android/launcher3/taskbar/StashedHandleViewController;

    move-object/from16 v20, v0

    invoke-direct {v0, v13, v14}, Lcom/android/launcher3/taskbar/StashedHandleViewController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/StashedHandleView;)V

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarStashController;

    move-object/from16 v21, v0

    invoke-direct {v0, v13}, Lcom/android/launcher3/taskbar/TaskbarStashController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarEduController;

    move-object/from16 v22, v0

    invoke-direct {v0, v13}, Lcom/android/launcher3/taskbar/TaskbarEduController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;

    move-object/from16 v23, v0

    invoke-direct {v0, v13}, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarPopupController;

    move-object/from16 v24, v0

    invoke-direct {v0, v13}, Lcom/android/launcher3/taskbar/TaskbarPopupController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;

    move-object/from16 v25, v0

    invoke-direct {v0, v13}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    new-instance v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    move-object/from16 v26, v0

    invoke-direct {v0, v13, v12}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/DeviceProfile;)V

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    move-object/from16 v27, v0

    invoke-direct {v0, v13}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    move-object/from16 v0, v35

    .end local v35    # "c":Landroid/content/Context;
    .local v0, "c":Landroid/content/Context;
    move-object/from16 v9, v30

    move-object v2, v10

    move-object/from16 v1, v34

    .end local v10    # "taskbarView":Lcom/android/launcher3/taskbar/TaskbarView;
    .end local v34    # "display":Landroid/view/Display;
    .local v1, "display":Landroid/view/Display;
    .local v2, "taskbarView":Lcom/android/launcher3/taskbar/TaskbarView;
    move-object/from16 v10, p0

    move-object v5, v11

    move-object/from16 v4, v33

    .end local v11    # "taskbarScrimView":Lcom/android/launcher3/taskbar/TaskbarScrimView;
    .end local v33    # "resources":Landroid/content/res/Resources;
    .local v4, "resources":Landroid/content/res/Resources;
    .local v5, "taskbarScrimView":Lcom/android/launcher3/taskbar/TaskbarScrimView;
    move-object/from16 v11, v29

    move-object/from16 v12, p3

    move-object v6, v13

    move-object/from16 v13, v28

    move-object v7, v14

    move-object/from16 v14, v31

    .end local v14    # "stashedHandleView":Lcom/android/launcher3/taskbar/StashedHandleView;
    .local v7, "stashedHandleView":Lcom/android/launcher3/taskbar/StashedHandleView;
    invoke-direct/range {v9 .. v27}, Lcom/android/launcher3/taskbar/TaskbarControllers;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarDragController;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Lcom/android/systemui/shared/rotation/RotationButtonController;Lcom/android/launcher3/taskbar/TaskbarDragLayerController;Lcom/android/launcher3/taskbar/TaskbarViewController;Lcom/android/launcher3/taskbar/TaskbarScrimViewController;Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;Lcom/android/launcher3/taskbar/TaskbarKeyguardController;Lcom/android/launcher3/taskbar/StashedHandleViewController;Lcom/android/launcher3/taskbar/TaskbarStashController;Lcom/android/launcher3/taskbar/TaskbarEduController;Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;Lcom/android/launcher3/taskbar/TaskbarPopupController;Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;Lcom/android/launcher3/taskbar/TaskbarInsetsController;)V

    move-object/from16 v8, v30

    iput-object v8, v6, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 204
    return-void
.end method

.method private onNotificationShadeExpandChanged(ZZ)V
    .locals 4
    .param p1, "isExpanded"    # Z
    .param p2, "skipAnim"    # Z

    .line 477
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 478
    .local v0, "alpha":F
    :goto_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 479
    .local v1, "anim":Landroid/animation/AnimatorSet;
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getTaskbarIconAlpha()Lcom/android/launcher3/util/MultiValueAlpha;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v2

    .line 480
    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v2

    .line 479
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 481
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result v2

    if-nez v2, :cond_1

    .line 482
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->getNotificationShadeBgTaskbar()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v2

    .line 483
    invoke-virtual {v2, v0}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 482
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 485
    :cond_1
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 486
    if-eqz p2, :cond_2

    .line 487
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->end()V

    .line 489
    :cond_2
    return-void
.end method

.method private startItemInfoActivity(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 700
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 701
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 703
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    const-string v1, "Main"

    const-string v2, "start: taskbarAppIcon"

    invoke-static {v1, v2}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 706
    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 708
    :cond_0
    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    .line 709
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v4

    const/4 v5, 0x0

    .line 708
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/pm/LauncherApps;->startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    :goto_0
    goto :goto_1

    .line 711
    :catch_0
    move-exception v1

    .line 712
    .local v1, "e":Ljava/lang/RuntimeException;
    sget v2, Lcom/android/launcher3/R$string;->activity_not_found:I

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 713
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 714
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to launch. tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TaskbarActivityContext"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 716
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return-void
.end method

.method private updateIconSize(Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 236
    sget v0, Lcom/android/launcher3/R$dimen;->taskbar_icon_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 237
    .local v0, "taskbarIconSize":F
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, p1}, Lcom/android/launcher3/DeviceProfile;->updateIconSize(FLandroid/content/res/Resources;)V

    .line 238
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 239
    .local v1, "iconScale":F
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v2, v1, p1}, Lcom/android/launcher3/DeviceProfile;->updateIconSize(FLandroid/content/res/Resources;)V

    .line 240
    return-void
.end method


# virtual methods
.method public addWindowView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "windowLayoutParams"    # Landroid/view/WindowManager$LayoutParams;

    .line 610
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 611
    return-void
.end method

.method public applyOverwritesToLogItem(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;)V
    .locals 5
    .param p1, "itemInfoBuilder"    # Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    .line 328
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->hasContainerInfo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    return-void

    .line 331
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    .line 333
    .local v0, "oldContainer":Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->hasPredictedHotseatContainer()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 334
    nop

    .line 335
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getPredictedHotseatContainer()Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    move-result-object v1

    .line 337
    .local v1, "predictedHotseat":Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    move-result-object v2

    .line 339
    .local v2, "taskbarBuilder":Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;
    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->hasIndex()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 340
    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->setIndex(I)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    .line 342
    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->hasCardinality()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 343
    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->getCardinality()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->setCardinality(I)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    .line 346
    :cond_2
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v3

    .line 347
    invoke-virtual {v3, v2}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setTaskBarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v3

    .line 346
    invoke-virtual {p1, v3}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    .line 348
    .end local v1    # "predictedHotseat":Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;
    .end local v2    # "taskbarBuilder":Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;
    goto/16 :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->hasHotseat()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 349
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getHotseat()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    move-result-object v1

    .line 351
    .local v1, "hotseat":Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    move-result-object v2

    .line 353
    .restart local v2    # "taskbarBuilder":Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;
    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->hasIndex()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 354
    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->setIndex(I)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    .line 357
    :cond_4
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v3

    .line 358
    invoke-virtual {v3, v2}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setTaskBarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v3

    .line 357
    invoke-virtual {p1, v3}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    .line 359
    .end local v1    # "hotseat":Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;
    .end local v2    # "taskbarBuilder":Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;
    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->hasFolder()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getFolder()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->hasHotseat()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 360
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getFolder()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    move-result-object v1

    .line 361
    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;

    .line 362
    .local v1, "folderBuilder":Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;
    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->getHotseat()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    move-result-object v2

    .line 364
    .local v2, "hotseat":Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    move-result-object v3

    .line 366
    .local v3, "taskbarBuilder":Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;
    invoke-virtual {v2}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->hasIndex()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 367
    invoke-virtual {v2}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->setIndex(I)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    .line 370
    :cond_6
    invoke-virtual {v1, v3}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->setTaskbar(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;

    .line 371
    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->clearHotseat()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;

    .line 372
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v4

    .line 373
    invoke-virtual {v4, v1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setFolder(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v4

    .line 372
    invoke-virtual {p1, v4}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    .line 374
    .end local v1    # "folderBuilder":Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;
    .end local v2    # "hotseat":Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;
    .end local v3    # "taskbarBuilder":Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;
    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->hasAllAppsContainer()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 375
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v1

    .line 376
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getAllAppsContainer()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;

    .line 377
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->setTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;

    move-result-object v2

    .line 376
    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v1

    .line 375
    invoke-virtual {p1, v1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    goto :goto_0

    .line 378
    :cond_8
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->hasPredictionContainer()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 379
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v1

    .line 380
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getPredictionContainer()Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;

    .line 381
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;->setTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;

    move-result-object v2

    .line 380
    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setPredictionContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v1

    .line 379
    invoke-virtual {p1, v1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    .line 383
    :cond_9
    :goto_0
    return-void
.end method

.method public createDefaultWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 251
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mLastRequestedNonFullscreenHeight:I

    const/4 v1, -0x1

    const/16 v3, 0x7e8

    const v4, 0x20000008

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 258
    .local v0, "windowLayoutParams":Landroid/view/WindowManager$LayoutParams;
    const-string v1, "Taskbar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 259
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 260
    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 261
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 262
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    .line 263
    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 264
    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 265
    const/16 v1, 0x40

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 267
    return-object v0
.end method

.method protected createLauncherStartFromSuwAnim(I)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 5
    .param p1, "duration"    # I

    .line 762
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 763
    .local v0, "fullAnimation":Landroid/animation/AnimatorSet;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 765
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    .line 766
    .local v1, "uiController":Lcom/android/launcher3/taskbar/TaskbarUIController;
    instance-of v2, v1, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    if-eqz v2, :cond_0

    .line 767
    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    invoke-virtual {v2, v0, p1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->addLauncherResumeAnimation(Landroid/animation/AnimatorSet;I)V

    .line 770
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v2, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->addUnstashToHotseatAnimation(Landroid/animation/AnimatorSet;I)V

    .line 772
    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ALL_APPS_BUTTON_IN_HOTSEAT:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-nez v2, :cond_1

    .line 773
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 774
    .local v2, "alphaOverride":Landroid/animation/ValueAnimator;
    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 775
    new-instance v3, Lcom/android/launcher3/taskbar/TaskbarActivityContext$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 779
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 782
    .end local v2    # "alphaOverride":Landroid/animation/ValueAnimator;
    :cond_1
    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->wrap(Landroid/animation/AnimatorSet;J)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v2

    return-object v2

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public disableNavBarElements(IIIZ)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "state1"    # I
    .param p3, "state2"    # I
    .param p4, "animate"    # Z

    .line 496
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDisplayId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 497
    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-virtual {v0, p3}, Lcom/android/systemui/shared/rotation/RotationButtonController;->onDisable2FlagChanged(I)V

    .line 500
    return-void
.end method

.method protected dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TaskbarActivityContext:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 814
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mNavMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "%s\tmNavMode=%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 816
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-boolean v3, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mImeDrawsImeNavBar:Z

    .line 817
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v4

    .line 816
    const-string v3, "%s\tmImeDrawsImeNavBar=%b"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-boolean v3, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsUserSetupComplete:Z

    .line 819
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v4

    .line 818
    const-string v3, "%s\tmIsUserSetupComplete=%b"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 820
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 821
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    .line 820
    const-string v3, "%s\tmWindowLayoutParams.height=%dpx"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 822
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mBindingItems:Z

    .line 823
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    .line 822
    const-string v1, "%s\tmBindInProgress=%b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 824
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/taskbar/TaskbarControllers;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 825
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/DeviceProfile;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 826
    return-void
.end method

.method public excludeFromMagnificationRegion(Z)V
    .locals 3
    .param p1, "exclude"    # Z

    .line 791
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsExcludeFromMagnificationRegion:Z

    if-ne v0, p1, :cond_0

    .line 792
    return-void

    .line 795
    :cond_0
    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsExcludeFromMagnificationRegion:Z

    .line 796
    if-eqz p1, :cond_1

    .line 797
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0

    .line 800
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v2, -0x200001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 803
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 804
    return-void
.end method

.method public getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mAccessibilityDelegate:Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;

    return-object v0
.end method

.method public getDefaultTaskbarWindowHeight()I
    .locals 3

    .line 579
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getLeftCornerRadius()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getRightCornerRadius()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getDeviceProfile()Lcom/android/launcher3/DeviceProfile;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    return-object v0
.end method

.method public getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 387
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDragController()Lcom/android/launcher3/dragndrop/DragController;
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragController()Lcom/android/launcher3/taskbar/TaskbarDragController;

    move-result-object v0

    return-object v0
.end method

.method public getDragController()Lcom/android/launcher3/taskbar/TaskbarDragController;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    return-object v0
.end method

.method public getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    return-object v0
.end method

.method public bridge synthetic getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v0

    return-object v0
.end method

.method public getFolderBoundingBox()Landroid/graphics/Rect;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->getFolderBoundingBox()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getItemOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 320
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarActivityContext$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    return-object v0
.end method

.method public getLeftCornerRadius()I
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mLeftCorner:Landroid/view/RoundedCorner;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarPopupController:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarPopupController;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v0

    return-object v0
.end method

.method public getRightCornerRadius()I
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mRightCorner:Landroid/view/RoundedCorner;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;
    .locals 1

    .line 246
    invoke-super {p0}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    return-object v0
.end method

.method public getViewCache()Lcom/android/launcher3/util/ViewCache;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mViewCache:Lcom/android/launcher3/util/ViewCache;

    return-object v0
.end method

.method public getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public imeDrawsImeNavBar()Z
    .locals 1

    .line 283
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mImeDrawsImeNavBar:Z

    return v0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarSharedState;)V
    .locals 3
    .param p1, "sharedState"    # Lcom/android/launcher3/taskbar/TaskbarSharedState;

    .line 207
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDefaultTaskbarWindowHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mLastRequestedNonFullscreenHeight:I

    .line 208
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->createDefaultWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 211
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarControllers;->init(Lcom/android/launcher3/taskbar/TaskbarSharedState;)V

    .line 212
    iget v0, p1, Lcom/android/launcher3/taskbar/TaskbarSharedState;->sysuiStateFlags:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateSysuiStateFlags(IZ)V

    .line 214
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    return-void
.end method

.method public isBindingItems()Z
    .locals 1

    .line 403
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mBindingItems:Z

    return v0
.end method

.method public isGestureNav()Z
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mNavMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    sget-object v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isNavBarForceVisible()Z
    .locals 1

    .line 743
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsNavBarForceVisible:Z

    return v0
.end method

.method protected isNavBarKidsModeActive()Z
    .locals 1

    .line 739
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsNavBarKidsMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTaskbarWindowFullscreen()Z
    .locals 1

    .line 536
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsFullscreen:Z

    return v0
.end method

.method public isThreeButtonNav()Z
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mNavMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    sget-object v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isUserSetupComplete()Z
    .locals 1

    .line 735
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsUserSetupComplete:Z

    return v0
.end method

.method synthetic lambda$createLauncherStartFromSuwAnim$6$com-android-launcher3-taskbar-TaskbarActivityContext(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "a"    # Landroid/animation/ValueAnimator;

    .line 777
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getAllAppsButtonView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 778
    return-void
.end method

.method synthetic lambda$new$0$com-android-launcher3-taskbar-TaskbarActivityContext()Ljava/lang/Boolean;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$new$1$com-android-launcher3-taskbar-TaskbarActivityContext()Ljava/lang/Integer;
    .locals 1

    .line 189
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onTaskbarIconClicked$2$com-android-launcher3-taskbar-TaskbarActivityContext()V
    .locals 1

    .line 633
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowFocusableForIme(Z)V

    return-void
.end method

.method synthetic lambda$onTaskbarIconClicked$3$com-android-launcher3-taskbar-TaskbarActivityContext(Lcom/android/launcher3/folder/Folder;I)V
    .locals 2
    .param p1, "folder"    # Lcom/android/launcher3/folder/Folder;
    .param p2, "newState"    # I

    .line 629
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 630
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowFocusableForIme(Z)V

    goto :goto_0

    .line 631
    :cond_0
    if-nez p2, :cond_1

    .line 633
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarActivityContext$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->post(Ljava/lang/Runnable;)Z

    .line 634
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/Folder;->setOnFolderStateChangedListener(Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;)V

    .line 636
    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$onTaskbarIconClicked$4$com-android-launcher3-taskbar-TaskbarActivityContext(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 1
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "itemView"    # Landroid/view/View;

    .line 645
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    .line 646
    invoke-virtual {v0, p2}, Lcom/android/launcher3/taskbar/TaskbarViewController;->setClickAndLongClickListenersForIcon(Landroid/view/View;)V

    .line 648
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 649
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$onTaskbarIconClicked$5$com-android-launcher3-taskbar-TaskbarActivityContext(Lcom/android/launcher3/folder/Folder;)V
    .locals 2
    .param p1, "folder"    # Lcom/android/launcher3/folder/Folder;

    .line 641
    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->animateOpen()V

    .line 642
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_FOLDER_OPEN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 644
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarActivityContext$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext$$ExternalSyntheticLambda8;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/Folder;->iterateOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    .line 651
    return-void
.end method

.method synthetic lambda$showPopupMenuForIcon$7$com-android-launcher3-taskbar-TaskbarActivityContext(Lcom/android/launcher3/BubbleTextView;)V
    .locals 1
    .param p1, "btv"    # Lcom/android/launcher3/BubbleTextView;

    .line 808
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarPopupController:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarPopupController;->showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    return-void
.end method

.method maybeSetTaskbarWindowNotFullscreen()V
    .locals 1

    .line 529
    const v0, 0x7ffff

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getAnyView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    .line 530
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->isSystemDragInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowFullscreen(Z)V

    .line 533
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(I)V
    .locals 1
    .param p1, "configChanges"    # I

    .line 271
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarControllers;->onConfigurationChanged(I)V

    .line 272
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsDestroyed:Z

    .line 446
    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarUIController;->DEFAULT:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setUIController(Lcom/android/launcher3/taskbar/TaskbarUIController;)V

    .line 447
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarControllers;->onDestroy()V

    .line 448
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 449
    return-void
.end method

.method public onDragEnd()V
    .locals 0

    .line 417
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->maybeSetTaskbarWindowNotFullscreen()V

    .line 418
    return-void
.end method

.method public onDragStart()V
    .locals 1

    .line 412
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowFullscreen(Z)V

    .line 413
    return-void
.end method

.method public onLongPressToUnstashTaskbar()Z
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->onLongPressToUnstashTaskbar()Z

    move-result v0

    return v0
.end method

.method public onNavButtonsDarkIntensityChanged(F)V
    .locals 1
    .param p1, "darkIntensity"    # F

    .line 507
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->getTaskbarNavButtonDarkIntensity()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v0

    .line 511
    invoke-virtual {v0, p1}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    .line 512
    return-void
.end method

.method public onPopupVisibilityChanged(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .line 422
    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowFocusable(Z)V

    .line 423
    return-void
.end method

.method public onRotationProposal(IZ)V
    .locals 1
    .param p1, "rotation"    # I
    .param p2, "isValid"    # Z

    .line 492
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/shared/rotation/RotationButtonController;->onRotationProposal(IZ)V

    .line 493
    return-void
.end method

.method public onSystemBarAttributesChanged(II)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "behavior"    # I

    .line 503
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/shared/rotation/RotationButtonController;->onBehaviorChanged(II)V

    .line 504
    return-void
.end method

.method protected onTaskbarIconClicked(Landroid/view/View;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;

    .line 619
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 620
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v1, :cond_0

    .line 621
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task;

    .line 622
    .local v1, "task":Lcom/android/systemui/shared/recents/model/Task;
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v2

    iget-object v3, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 623
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v4

    .line 622
    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecents(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;)Z

    .line 624
    .end local v1    # "task":Lcom/android/systemui/shared/recents/model/Task;
    goto/16 :goto_2

    :cond_0
    instance-of v1, v0, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v1, :cond_1

    .line 625
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/folder/FolderIcon;

    .line 626
    .local v1, "folderIcon":Lcom/android/launcher3/folder/FolderIcon;
    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v2

    .line 628
    .local v2, "folder":Lcom/android/launcher3/folder/Folder;
    new-instance v3, Lcom/android/launcher3/taskbar/TaskbarActivityContext$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/Folder;->setOnFolderStateChangedListener(Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;)V

    .line 638
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowFullscreen(Z)V

    .line 640
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/taskbar/TaskbarActivityContext$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, v2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->post(Ljava/lang/Runnable;)Z

    .line 652
    .end local v1    # "folderIcon":Lcom/android/launcher3/folder/FolderIcon;
    .end local v2    # "folder":Lcom/android/launcher3/folder/Folder;
    goto/16 :goto_2

    :cond_1
    instance-of v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const-string v2, "TaskbarActivityContext"

    if-eqz v1, :cond_6

    .line 653
    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 654
    .local v1, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    invoke-virtual {v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isDisabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 655
    invoke-static {v1, p0}, Lcom/android/launcher3/touch/ItemClickHandler;->handleDisabledItemClicked(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/Context;)Z

    goto/16 :goto_1

    .line 657
    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 658
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    .line 660
    .local v3, "intent":Landroid/content/Intent;
    const/4 v5, 0x0

    :try_start_0
    iget-boolean v6, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsSafeModeEnabled:Z

    if-eqz v6, :cond_3

    invoke-static {p0, v3}, Lcom/android/launcher3/util/PackageManagerHelper;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 661
    sget v4, Lcom/android/launcher3/R$string;->safemode_shortcut_error:I

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 662
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 663
    :cond_3
    invoke-virtual {v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isPromise()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "Main"

    if-eqz v6, :cond_4

    .line 664
    :try_start_1
    const-string v6, "start: taskbarPromiseIcon"

    invoke-static {v7, v6}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    new-instance v6, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v6, p0}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    .line 667
    invoke-virtual {v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/launcher3/util/PackageManagerHelper;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 668
    invoke-virtual {v6, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    move-object v3, v4

    .line 669
    invoke-virtual {p0, v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 671
    :cond_4
    iget v4, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->itemType:I

    const/4 v6, 0x6

    if-ne v4, v6, :cond_5

    .line 672
    const-string v4, "start: taskbarDeepShortcut"

    invoke-static {v7, v4}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    invoke-virtual {v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v10

    .line 675
    .local v10, "id":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v9

    .line 676
    .local v9, "packageName":Ljava/lang/String;
    const-class v4, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v4}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/content/pm/LauncherApps;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    .line 677
    invoke-virtual/range {v8 .. v13}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 678
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "id":Ljava/lang/String;
    goto :goto_0

    .line 679
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->startItemInfoActivity(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 682
    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v4, v4, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {v4, v1}, Lcom/android/launcher3/taskbar/TaskbarUIController;->onTaskbarIconLaunched(Lcom/android/launcher3/model/data/ItemInfo;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 687
    goto :goto_1

    .line 683
    :catch_0
    move-exception v4

    .line 684
    .local v4, "e":Ljava/lang/RuntimeException;
    sget v6, Lcom/android/launcher3/R$string;->activity_not_found:I

    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 685
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 686
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to launch. tag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 689
    .end local v1    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :goto_1
    goto :goto_2

    :cond_6
    instance-of v1, v0, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v1, :cond_7

    .line 690
    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->startItemInfoActivity(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 691
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/taskbar/TaskbarUIController;->onTaskbarIconLaunched(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_2

    .line 693
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type clicked: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :goto_2
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    .line 697
    return-void
.end method

.method public removeWindowView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 615
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 616
    return-void
.end method

.method public setBindingItems(Z)V
    .locals 0
    .param p1, "bindingItems"    # Z

    .line 407
    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mBindingItems:Z

    .line 408
    return-void
.end method

.method public setSetupUIVisible(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .line 438
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->setSetupUIVisible(Z)V

    .line 439
    return-void
.end method

.method public setTaskbarWindowFocusable(Z)V
    .locals 3
    .param p1, "focusable"    # Z

    .line 587
    if-eqz p1, :cond_0

    .line 588
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 592
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 593
    return-void
.end method

.method public setTaskbarWindowFocusableForIme(Z)V
    .locals 1
    .param p1, "focusable"    # Z

    .line 600
    if-eqz p1, :cond_0

    .line 601
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->moveNavButtonsToNewWindow()V

    goto :goto_0

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->moveNavButtonsBackToTaskbarWindow()V

    .line 605
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowFocusable(Z)V

    .line 606
    return-void
.end method

.method public setTaskbarWindowFullscreen(Z)V
    .locals 2
    .param p1, "fullscreen"    # Z

    .line 518
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAutohideSuspendController:Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;->updateFlag(IZ)V

    .line 520
    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsFullscreen:Z

    .line 521
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mLastRequestedNonFullscreenHeight:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowHeight(I)V

    .line 522
    return-void
.end method

.method public setTaskbarWindowHeight(I)V
    .locals 3
    .param p1, "height"    # I

    .line 555
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v0, p1, :cond_3

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 558
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget p1, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    goto :goto_0

    .line 561
    :cond_1
    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mLastRequestedNonFullscreenHeight:I

    .line 562
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsFullscreen:Z

    if-eqz v0, :cond_2

    .line 567
    return-void

    .line 570
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 571
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->onTaskbarWindowHeightOrInsetsChanged()V

    .line 572
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    return-void

    .line 556
    :cond_3
    :goto_1
    return-void
.end method

.method public setUIController(Lcom/android/launcher3/taskbar/TaskbarUIController;)V
    .locals 2
    .param p1, "uiController"    # Lcom/android/launcher3/taskbar/TaskbarUIController;

    .line 429
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->onDestroy()V

    .line 430
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iput-object p1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    .line 431
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarUIController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    .line 432
    return-void
.end method

.method public showPopupMenuForIcon(Lcom/android/launcher3/BubbleTextView;)V
    .locals 1
    .param p1, "btv"    # Lcom/android/launcher3/BubbleTextView;

    .line 807
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowFullscreen(Z)V

    .line 808
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarActivityContext$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/BubbleTextView;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/BubbleTextView;->post(Ljava/lang/Runnable;)Z

    .line 809
    return-void
.end method

.method public startTaskbarUnstashHint(Z)V
    .locals 1
    .param p1, "animateForward"    # Z

    .line 731
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->startUnstashHint(Z)V

    .line 732
    return-void
.end method

.method public updateDeviceProfile(Lcom/android/launcher3/DeviceProfile;)V
    .locals 2
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;

    .line 224
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->updateDeviceProfile(Lcom/android/launcher3/DeviceProfile;)V

    .line 225
    invoke-virtual {p1, p0}, Lcom/android/launcher3/DeviceProfile;->copy(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 226
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateIconSize(Landroid/content/res/Resources;)V

    .line 228
    const/4 v0, 0x0

    const v1, 0x7a274

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V

    .line 230
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsFullscreen:Z

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowFullscreen(Z)V

    .line 232
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->dispatchDeviceProfileChanged()V

    .line 233
    return-void
.end method

.method public updateInsetRoundedCornerFrame(Z)V
    .locals 3
    .param p1, "shouldInsetsRoundedCorner"    # Z

    .line 543
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-boolean p1, v0, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    .line 548
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 549
    return-void

    .line 545
    :cond_1
    :goto_0
    return-void
.end method

.method public updateSysuiStateFlags(IZ)V
    .locals 5
    .param p1, "systemUiStateFlags"    # I
    .param p2, "fromInit"    # Z

    .line 452
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForSysuiFlags(IZ)V

    .line 454
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    .line 455
    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->isImeVisible()Z

    move-result v1

    .line 454
    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->setImeIsVisible(Z)V

    .line 456
    const/16 v0, 0x804

    .line 458
    .local v0, "shadeExpandedFlags":I
    and-int v1, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-direct {p0, v1, p2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onNotificationShadeExpandChanged(ZZ)V

    .line 459
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v4, v4, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    .line 460
    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->isRecentsDisabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 461
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isNavBarKidsModeActive()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v2

    .line 459
    :goto_2
    invoke-virtual {v1, v4}, Lcom/android/launcher3/taskbar/TaskbarViewController;->setRecentsButtonDisabled(Z)V

    .line 462
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v4, v4, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    .line 463
    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->isHomeDisabled()Z

    move-result v4

    .line 462
    invoke-virtual {v1, v4}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->setIsHomeButtonDisabled(Z)V

    .line 464
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarKeyguardController:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->updateStateForSysuiFlags(I)V

    .line 465
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    if-nez p2, :cond_4

    .line 466
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isUserSetupComplete()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    goto :goto_4

    :cond_4
    :goto_3
    nop

    .line 465
    :goto_4
    invoke-virtual {v1, p1, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForSysuiFlags(IZ)V

    .line 467
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarScrimViewController:Lcom/android/launcher3/taskbar/TaskbarScrimViewController;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->updateStateForSysuiFlags(IZ)V

    .line 469
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->updateSysuiFlags(I)V

    .line 470
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarForceVisibleImmersiveController:Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->updateSysuiFlags(I)V

    .line 471
    return-void
.end method
