.class public Lcom/android/launcher3/Launcher;
.super Lcom/android/launcher3/statemanager/StatefulActivity;
.source "Launcher.java"

# interfaces
.implements Lcom/android/systemui/plugins/shared/LauncherExterns;
.implements Lcom/android/launcher3/model/BgDataModel$Callbacks;
.implements Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/Launcher$NonConfigInstance;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/statemanager/StatefulActivity<",
        "Lcom/android/launcher3/LauncherState;",
        ">;",
        "Lcom/android/systemui/plugins/shared/LauncherExterns;",
        "Lcom/android/launcher3/model/BgDataModel$Callbacks;",
        "Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/LauncherOverlayPlugin;",
        ">;",
        "Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;"
    }
.end annotation


# static fields
.field public static final ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/ActivityTracker<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private static final BOUNCE_ANIMATION_TENSION:F = 1.3f

.field static final DEBUG_STRICT_MODE:Z = false

.field public static final DISPLAY_ALL_APPS_TRACE_COOKIE:I = 0x1

.field private static final DISPLAY_ALL_APPS_TRACE_METHOD_NAME:Ljava/lang/String; = "DisplayAllApps"

.field public static final DISPLAY_WORKSPACE_TRACE_COOKIE:I = 0x0

.field private static final DISPLAY_WORKSPACE_TRACE_METHOD_NAME:Ljava/lang/String; = "DisplayWorkspaceFirstFrame"

.field static final LOGD:Z = false

.field public static final NEW_APPS_ANIMATION_DELAY:I = 0x1f4

.field private static final NEW_APPS_ANIMATION_INACTIVE_TIMEOUT_SECONDS:I = 0x5

.field public static final NEW_APPS_PAGE_MOVE_DELAY:I = 0x1f4

.field private static final ON_ACTIVITY_RESULT_ANIMATION_DELAY:I = 0x1f4

.field public static final ON_CREATE_EVT:Ljava/lang/String; = "Launcher.onCreate"

.field public static final ON_NEW_INTENT_EVT:Ljava/lang/String; = "Launcher.onNewIntent"

.field public static final ON_RESUME_EVT:Ljava/lang/String; = "Launcher.onResume"

.field public static final ON_START_EVT:Ljava/lang/String; = "Launcher.onStart"

.field private static final REQUEST_BIND_APPWIDGET:I = 0xb

.field public static final REQUEST_BIND_PENDING_APPWIDGET:I = 0xc

.field private static final REQUEST_CREATE_APPWIDGET:I = 0x5

.field private static final REQUEST_CREATE_SHORTCUT:I = 0x1

.field protected static final REQUEST_LAST:I = 0x64

.field private static final REQUEST_PERMISSION_CALL_PHONE:I = 0xe

.field private static final REQUEST_PICK_APPWIDGET:I = 0x9

.field public static final REQUEST_RECONFIGURE_APPWIDGET:I = 0xd

.field private static final RUNTIME_STATE:Ljava/lang/String; = "launcher.state"

.field private static final RUNTIME_STATE_CURRENT_SCREEN_IDS:Ljava/lang/String; = "launcher.current_screen_ids"

.field private static final RUNTIME_STATE_PENDING_ACTIVITY_RESULT:Ljava/lang/String; = "launcher.activity_result"

.field private static final RUNTIME_STATE_PENDING_REQUEST_ARGS:Ljava/lang/String; = "launcher.request_args"

.field private static final RUNTIME_STATE_PENDING_REQUEST_CODE:Ljava/lang/String; = "launcher.request_code"

.field private static final RUNTIME_STATE_WIDGET_PANEL:Ljava/lang/String; = "launcher.widget_panel"

.field public static final TAG:Ljava/lang/String; = "Launcher"

.field private static final THEME_CROSS_FADE_ANIMATION_DURATION:I = 0x177


# instance fields
.field private mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

.field mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

.field protected mAllAppsSessionLogId:Lcom/android/launcher3/logging/InstanceId;

.field private mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

.field private mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

.field mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private mBadgeListener:Lcom/sonymobile/launcher/badge/SonyBadgeManager$BadgeListener;

.field private mDeferOverlayCallbacks:Z

.field private final mDeferredOverlayCallbacks:Ljava/lang/Runnable;

.field private mDragController:Lcom/android/launcher3/dragndrop/DragController;

.field mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

.field private mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

.field private mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

.field mHotseat:Lcom/android/launcher3/Hotseat;

.field private mIconCache:Lcom/android/launcher3/icons/IconCache;

.field protected mLastTouchUpTime:J

.field private mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

.field private mModel:Lcom/android/launcher3/LauncherModel;

.field private mModelWriter:Lcom/android/launcher3/model/ModelWriter;

.field private mOldConfig:Landroid/content/res/Configuration;

.field private mOnDeferredActivityLaunchCallback:Ljava/lang/Runnable;

.field private mOnInitialBindListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mOnboardingPrefs:Lcom/android/launcher3/util/OnboardingPrefs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/OnboardingPrefs<",
            "+",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field protected mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

.field private mOverviewPanel:Landroid/view/View;

.field private mPagesToBindSynchronously:Lcom/android/launcher3/util/IntSet;

.field protected mPendingActivityRequestCode:I

.field private mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

.field private mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

.field private mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

.field private mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

.field private mPrevLauncherState:Lcom/android/launcher3/LauncherState;

.field private mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

.field private final mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field mScrimView:Lcom/android/launcher3/views/ScrimView;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mSonyBadgeDataProvider:Lcom/sonymobile/launcher/badge/SonyBadgeDataProvider;

.field protected mStateManager:Lcom/android/launcher3/statemanager/StateManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/statemanager/StateManager<",
            "Lcom/android/launcher3/LauncherState;",
            ">;"
        }
    .end annotation
.end field

.field private mStringCache:Lcom/android/launcher3/model/StringCache;

.field private mSynchronouslyBoundPages:Lcom/android/launcher3/util/IntSet;

.field private final mTmpAddItemCellCoordinates:[I

.field private mTouchInProgress:Z

.field private mUserChangedCallbackCloseable:Lcom/android/launcher3/util/SafeCloseable;

.field mWorkspace:Lcom/android/launcher3/Workspace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/Workspace<",
            "*>;"
        }
    .end annotation
.end field

.field mWorkspaceLoading:Z


# direct methods
.method public static synthetic $r8$lambda$EszfyIOnunVS2-fDTTjWznzgyl0(Lcom/android/launcher3/Launcher;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->updateNotificationDots(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gOgw2lWxIvn_eg_T2ZPXAZTVjqQ(Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->checkIfOverlayStillDeferred()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmPrevLauncherState(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mPrevLauncherState:Lcom/android/launcher3/LauncherState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSonyBadgeDataProvider(Lcom/android/launcher3/Launcher;)Lcom/sonymobile/launcher/badge/SonyBadgeDataProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mSonyBadgeDataProvider:Lcom/sonymobile/launcher/badge/SonyBadgeDataProvider;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 263
    new-instance v0, Lcom/android/launcher3/util/ActivityTracker;

    invoke-direct {v0}, Lcom/android/launcher3/util/ActivityTracker;-><init>()V

    sput-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 258
    invoke-direct {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;-><init>()V

    .line 333
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    .line 369
    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mSynchronouslyBoundPages:Lcom/android/launcher3/util/IntSet;

    .line 370
    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPagesToBindSynchronously:Lcom/android/launcher3/util/IntSet;

    .line 386
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    .line 395
    new-instance v0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda23;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDeferredOverlayCallbacks:Ljava/lang/Runnable;

    .line 397
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/Launcher;->mLastTouchUpTime:J

    .line 1502
    new-instance v0, Lcom/android/launcher3/Launcher$6;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$6;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 3351
    new-instance v0, Lcom/android/launcher3/Launcher$10;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$10;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mBadgeListener:Lcom/sonymobile/launcher/badge/SonyBadgeManager$BadgeListener;

    return-void
.end method

.method private addAppWidgetFromDrop(Lcom/android/launcher3/widget/PendingAddWidgetInfo;)V
    .locals 7
    .param p1, "info"    # Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    .line 1911
    iget-object v0, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 1913
    .local v0, "hostView":Landroid/appwidget/AppWidgetHostView;
    invoke-virtual {p1}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    move-result-object v1

    .line 1914
    .local v1, "addFlowHandler":Lcom/android/launcher3/widget/WidgetAddFlowHandler;
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1919
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    .line 1921
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v3

    .line 1922
    .local v3, "appWidgetId":I
    invoke-virtual {p0, v3, p1, v0, v1}, Lcom/android/launcher3/Launcher;->addAppWidgetFromDropImpl(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;)V

    .line 1925
    iput-object v2, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    goto :goto_1

    .line 1929
    .end local v3    # "appWidgetId":I
    :cond_0
    iget v3, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->itemType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 1930
    sget-object v3, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v3, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/widget/custom/CustomWidgetManager;

    iget-object v4, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->getWidgetIdForCustomProvider(Landroid/content/ComponentName;)I

    move-result v3

    .restart local v3    # "appWidgetId":I
    goto :goto_0

    .line 1933
    .end local v3    # "appWidgetId":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v3

    .line 1935
    .restart local v3    # "appWidgetId":I
    :goto_0
    iget-object v4, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    .line 1937
    .local v4, "options":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    iget-object v6, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {v5, v3, v6, v4}, Lcom/android/launcher3/widget/WidgetManagerHelper;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v5

    .line 1939
    .local v5, "success":Z
    if-eqz v5, :cond_2

    .line 1940
    invoke-virtual {p0, v3, p1, v2, v1}, Lcom/android/launcher3/Launcher;->addAppWidgetFromDropImpl(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;)V

    goto :goto_1

    .line 1942
    :cond_2
    const/16 v2, 0xb

    invoke-virtual {v1, p0, v3, p1, v2}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startBindFlow(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/model/data/ItemInfo;I)V

    .line 1945
    .end local v4    # "options":Landroid/os/Bundle;
    .end local v5    # "success":Z
    :goto_1
    return-void
.end method

.method private announceForAccessibility(I)V
    .locals 2
    .param p1, "stringResId"    # I

    .line 2910
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2911
    return-void
.end method

.method private bindAddScreens(Lcom/android/launcher3/util/IntArray;)V
    .locals 4
    .param p1, "orderedScreenIds"    # Lcom/android/launcher3/util/IntArray;

    .line 2348
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v0, :cond_0

    .line 2351
    invoke-static {p1}, Lcom/android/launcher3/util/IntSet;->wrap(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    .line 2352
    .local v0, "screenIds":Lcom/android/launcher3/util/IntSet;
    new-instance v1, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/IntSet;)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/util/IntArray;->forEach(Ljava/util/function/Consumer;)V

    .line 2353
    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object p1

    .line 2356
    .end local v0    # "screenIds":Lcom/android/launcher3/util/IntSet;
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v0

    .line 2357
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2358
    invoke-virtual {p1, v1}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v2

    .line 2363
    .local v2, "screenId":I
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreenBeforeEmptyScreen(I)V

    .line 2357
    .end local v2    # "screenId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2365
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private canAnimatePageChange()Z
    .locals 6

    .line 2808
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2809
    return v1

    .line 2811
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/launcher3/Launcher;->mLastTouchUpTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "activityContext"    # Lcom/android/launcher3/views/ActivityContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/Launcher;",
            ">(",
            "Lcom/android/launcher3/views/ActivityContext;",
            ")TT;"
        }
    .end annotation

    .line 3243
    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method private checkIfOverlayStillDeferred()V
    .locals 2

    .line 1084
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    if-nez v0, :cond_0

    .line 1085
    return-void

    .line 1087
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->hasBeenResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    .line 1088
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1089
    :cond_1
    return-void

    .line 1091
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    .line 1094
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1095
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivityStarted(Landroid/app/Activity;)V

    .line 1097
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->hasBeenResumed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1098
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivityResumed(Landroid/app/Activity;)V

    goto :goto_0

    .line 1100
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivityPaused(Landroid/app/Activity;)V

    .line 1102
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isStarted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1103
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivityStopped(Landroid/app/Activity;)V

    .line 1105
    :cond_5
    return-void
.end method

.method private closeOpenViews()V
    .locals 1

    .line 3213
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->closeOpenViews(Z)V

    .line 3214
    return-void
.end method

.method private completeAdd(ILandroid/content/Intent;ILcom/android/launcher3/util/PendingRequestArgs;)I
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "appWidgetId"    # I
    .param p4, "info"    # Lcom/android/launcher3/util/PendingRequestArgs;

    .line 765
    iget v0, p4, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:I

    .line 766
    .local v0, "screenId":I
    iget v1, p4, Lcom/android/launcher3/util/PendingRequestArgs;->container:I

    const/16 v2, -0x64

    if-ne v1, v2, :cond_0

    .line 769
    iget v1, p4, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:I

    invoke-direct {p0, v1}, Lcom/android/launcher3/Launcher;->ensurePendingDropLayoutExists(I)I

    move-result v0

    .line 772
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 781
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    invoke-interface {v1, p4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_WIDGET_RECONFIGURED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 782
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/android/launcher3/Launcher;->completeRestoreAppWidget(II)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 783
    goto :goto_0

    .line 785
    :sswitch_1
    move v1, p3

    .line 786
    .local v1, "widgetId":I
    const/4 v2, 0x4

    .line 787
    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/Launcher;->completeRestoreAppWidget(II)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object v2

    .line 788
    .local v2, "widgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    if-eqz v2, :cond_2

    .line 790
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    .line 791
    invoke-virtual {v3, v1}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v3

    .line 792
    .local v3, "provider":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    if-eqz v3, :cond_1

    .line 793
    new-instance v4, Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    invoke-direct {v4, v3}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    const/16 v5, 0xd

    .line 794
    invoke-virtual {v4, p0, v2, v5}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startConfigActivity(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;I)Z

    .line 797
    .end local v3    # "provider":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    :cond_1
    goto :goto_0

    .line 778
    .end local v1    # "widgetId":I
    .end local v2    # "widgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    :sswitch_2
    const/4 v1, 0x0

    invoke-virtual {p0, p3, p4, v1, v1}, Lcom/android/launcher3/Launcher;->completeAddAppWidget(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    .line 779
    goto :goto_0

    .line 774
    :sswitch_3
    iget v3, p4, Lcom/android/launcher3/util/PendingRequestArgs;->container:I

    iget v5, p4, Lcom/android/launcher3/util/PendingRequestArgs;->cellX:I

    iget v6, p4, Lcom/android/launcher3/util/PendingRequestArgs;->cellY:I

    move-object v1, p0

    move-object v2, p2

    move v4, v0

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/Launcher;->completeAddShortcut(Landroid/content/Intent;IIIILcom/android/launcher3/util/PendingRequestArgs;)V

    .line 775
    sget v1, Lcom/android/launcher3/R$string;->item_added_to_workspace:I

    invoke-direct {p0, v1}, Lcom/android/launcher3/Launcher;->announceForAccessibility(I)V

    .line 776
    nop

    .line 801
    :cond_2
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
        0xc -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private completeRestoreAppWidget(II)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .locals 4
    .param p1, "appWidgetId"    # I
    .param p2, "finalRestoreFlag"    # I

    .line 2718
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->getWidgetForAppWidgetId(I)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    move-result-object v0

    .line 2719
    .local v0, "view":Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    instance-of v2, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    if-nez v2, :cond_0

    goto :goto_0

    .line 2724
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 2725
    .local v2, "info":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    iput p2, v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    .line 2726
    iget v3, v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    if-nez v3, :cond_1

    .line 2727
    iput-object v1, v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/data/PackageItemInfo;

    .line 2730
    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->isReinflateIfNeeded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2731
    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->reInflate()V

    .line 2734
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 2735
    return-object v2

    .line 2720
    .end local v2    # "info":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    :cond_3
    :goto_0
    const-string v2, "Launcher"

    const-string v3, "Widget update called, when the widget no longer exists."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    return-object v1
.end method

.method private createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "i"    # I

    .line 2902
    new-instance v0, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {v0}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/PropertyListBuilder;->alpha(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/PropertyListBuilder;->scale(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/anim/PropertyListBuilder;->build(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2903
    const-wide/16 v1, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2904
    .local v0, "bounceAnim":Landroid/animation/ValueAnimator;
    mul-int/lit8 v1, p2, 0x55

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2905
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3fa66666    # 1.3f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2906
    return-object v0
.end method

.method private crossFadeWithPreviousAppearance()V
    .locals 6

    .line 3253
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher$NonConfigInstance;

    .line 3255
    .local v0, "lastInstance":Lcom/android/launcher3/Launcher$NonConfigInstance;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/launcher3/Launcher$NonConfigInstance;->snapshot:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3259
    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3260
    .local v1, "crossFadeHelper":Landroid/widget/ImageView;
    iget-object v2, v0, Lcom/android/launcher3/Launcher$NonConfigInstance;->snapshot:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3261
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 3263
    new-instance v2, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;-><init>(II)V

    .line 3267
    .local v2, "layoutParams":Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    .line 3269
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3271
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/launcher3/LauncherRootView;->addView(Landroid/view/View;)V

    .line 3273
    nop

    .line 3274
    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x177

    .line 3275
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    .line 3276
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda15;

    invoke-direct {v4, p0, v1}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda15;-><init>(Lcom/android/launcher3/Launcher;Landroid/widget/ImageView;)V

    .line 3277
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 3278
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3279
    return-void

    .line 3256
    .end local v1    # "crossFadeHelper":Landroid/widget/ImageView;
    .end local v2    # "layoutParams":Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    :cond_1
    :goto_0
    return-void
.end method

.method private ensurePendingDropLayoutExists(I)I
    .locals 4
    .param p1, "screenId"    # I

    .line 959
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 960
    .local v0, "dropLayout":Lcom/android/launcher3/CellLayout;
    if-nez v0, :cond_1

    .line 963
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->addExtraEmptyScreens()V

    .line 964
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->commitExtraEmptyScreens()Lcom/android/launcher3/util/IntSet;

    move-result-object v1

    .line 965
    .local v1, "emptyPagesAdded":Lcom/android/launcher3/util/IntSet;
    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v2

    :goto_0
    return v2

    .line 967
    .end local v1    # "emptyPagesAdded":Lcom/android/launcher3/util/IntSet;
    :cond_1
    return p1
.end method

.method private static varargs getFirstMatch(Ljava/lang/Iterable;[Ljava/util/function/Predicate;)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Landroid/view/ViewGroup;",
            ">;[",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 2874
    .local p0, "containers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Landroid/view/ViewGroup;>;"
    .local p1, "operators":[Ljava/util/function/Predicate;, "[Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 2875
    .local v2, "operator":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 2876
    .local v4, "container":Landroid/view/ViewGroup;
    invoke-static {v4, v2}, Lcom/android/launcher3/Launcher;->mapOverViewGroup(Landroid/view/ViewGroup;Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v5

    .line 2877
    .local v5, "match":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 2878
    return-object v5

    .line 2880
    .end local v4    # "container":Landroid/view/ViewGroup;
    .end local v5    # "match":Landroid/view/View;
    :cond_0
    goto :goto_1

    .line 2874
    .end local v2    # "operator":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2882
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 3236
    invoke-static {p0}, Lcom/android/launcher3/Launcher;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method private handleActivityResult(IILandroid/content/Intent;)V
    .locals 20
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 806
    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    new-instance v0, Lcom/android/launcher3/util/ActivityResultInfo;

    invoke-direct {v0, v7, v8, v9}, Lcom/android/launcher3/util/ActivityResultInfo;-><init>(IILandroid/content/Intent;)V

    iput-object v0, v6, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    .line 809
    return-void

    .line 811
    :cond_0
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    .line 814
    iget-object v10, v6, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    .line 815
    .local v10, "requestArgs":Lcom/android/launcher3/util/PendingRequestArgs;
    invoke-virtual {v6, v0}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    .line 816
    if-nez v10, :cond_1

    .line 817
    return-void

    .line 820
    :cond_1
    invoke-virtual {v10}, Lcom/android/launcher3/util/PendingRequestArgs;->getWidgetId()I

    move-result v11

    .line 822
    .local v11, "pendingAddWidgetId":I
    new-instance v0, Lcom/android/launcher3/Launcher$2;

    invoke-direct {v0, v6}, Lcom/android/launcher3/Launcher$2;-><init>(Lcom/android/launcher3/Launcher;)V

    move-object v12, v0

    .line 829
    .local v12, "exitSpringLoaded":Ljava/lang/Runnable;
    const/16 v0, 0xb

    const-string v1, "appWidgetId"

    const/16 v13, 0x1f4

    const/4 v14, 0x0

    const/4 v2, -0x1

    if-ne v7, v0, :cond_5

    .line 831
    if-eqz v9, :cond_2

    .line 832
    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    move v15, v0

    .line 833
    .local v15, "appWidgetId":I
    if-nez v8, :cond_3

    .line 834
    invoke-virtual {v6, v14, v15, v10}, Lcom/android/launcher3/Launcher;->completeTwoStageWidgetDrop(IILcom/android/launcher3/util/PendingRequestArgs;)V

    .line 835
    iget-object v0, v6, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v13, v14, v12}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    goto :goto_1

    .line 837
    :cond_3
    if-ne v8, v2, :cond_4

    .line 838
    const/4 v3, 0x0

    .line 840
    invoke-virtual {v10}, Lcom/android/launcher3/util/PendingRequestArgs;->getWidgetHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    move-result-object v4

    const/16 v5, 0x1f4

    .line 838
    move-object/from16 v0, p0

    move v1, v15

    move-object v2, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Launcher;->addAppWidgetImpl(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;I)V

    .line 843
    :cond_4
    :goto_1
    return-void

    .line 846
    .end local v15    # "appWidgetId":I
    :cond_5
    const/16 v0, 0x9

    const/4 v3, 0x1

    if-eq v7, v0, :cond_7

    const/4 v0, 0x5

    if-ne v7, v0, :cond_6

    goto :goto_2

    :cond_6
    move v0, v14

    goto :goto_3

    :cond_7
    :goto_2
    move v0, v3

    :goto_3
    move v15, v0

    .line 850
    .local v15, "isWidgetDrop":Z
    if-eqz v15, :cond_d

    .line 852
    if-eqz v9, :cond_8

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    goto :goto_4

    .line 853
    :cond_8
    nop

    :goto_4
    move/from16 v16, v2

    .line 854
    .local v16, "widgetId":I
    if-gez v16, :cond_9

    .line 855
    move v0, v11

    move v5, v0

    .local v0, "appWidgetId":I
    goto :goto_5

    .line 857
    .end local v0    # "appWidgetId":I
    :cond_9
    move/from16 v0, v16

    move v5, v0

    .line 861
    .local v5, "appWidgetId":I
    :goto_5
    if-ltz v5, :cond_c

    if-nez v8, :cond_a

    move/from16 v19, v5

    goto :goto_6

    .line 870
    :cond_a
    iget v0, v10, Lcom/android/launcher3/util/PendingRequestArgs;->container:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_b

    .line 873
    iget v0, v10, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:I

    .line 874
    invoke-direct {v6, v0}, Lcom/android/launcher3/Launcher;->ensurePendingDropLayoutExists(I)I

    move-result v0

    iput v0, v10, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:I

    .line 876
    :cond_b
    iget-object v0, v6, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget v1, v10, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:I

    .line 877
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v4

    .line 879
    .local v4, "dropLayout":Lcom/android/launcher3/CellLayout;
    invoke-virtual {v4, v3}, Lcom/android/launcher3/CellLayout;->setDropPending(Z)V

    .line 880
    new-instance v17, Lcom/android/launcher3/Launcher$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p2

    move v3, v5

    move-object/from16 v18, v4

    .end local v4    # "dropLayout":Lcom/android/launcher3/CellLayout;
    .local v18, "dropLayout":Lcom/android/launcher3/CellLayout;
    move-object v4, v10

    move/from16 v19, v5

    .end local v5    # "appWidgetId":I
    .local v19, "appWidgetId":I
    move-object/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/Launcher$3;-><init>(Lcom/android/launcher3/Launcher;IILcom/android/launcher3/util/PendingRequestArgs;Lcom/android/launcher3/CellLayout;)V

    .line 887
    .local v0, "onComplete":Ljava/lang/Runnable;
    iget-object v1, v6, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v13, v14, v0}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    move/from16 v1, v19

    goto :goto_7

    .line 861
    .end local v0    # "onComplete":Ljava/lang/Runnable;
    .end local v18    # "dropLayout":Lcom/android/launcher3/CellLayout;
    .end local v19    # "appWidgetId":I
    .restart local v5    # "appWidgetId":I
    :cond_c
    move/from16 v19, v5

    .line 862
    .end local v5    # "appWidgetId":I
    .restart local v19    # "appWidgetId":I
    :goto_6
    const-string v0, "Launcher"

    const-string v1, "Error: appWidgetId (EXTRA_APPWIDGET_ID) was not returned from the widget configuration activity."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    const/4 v0, 0x0

    .line 865
    .local v0, "result":I
    move/from16 v1, v19

    .end local v19    # "appWidgetId":I
    .local v1, "appWidgetId":I
    invoke-virtual {v6, v0, v1, v10}, Lcom/android/launcher3/Launcher;->completeTwoStageWidgetDrop(IILcom/android/launcher3/util/PendingRequestArgs;)V

    .line 866
    iget-object v2, v6, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v3, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda24;

    invoke-direct {v3, v6}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda24;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v2, v13, v14, v3}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    .line 890
    .end local v0    # "result":I
    :goto_7
    return-void

    .line 893
    .end local v1    # "appWidgetId":I
    .end local v16    # "widgetId":I
    :cond_d
    const/16 v0, 0xd

    if-eq v7, v0, :cond_11

    const/16 v0, 0xc

    if-ne v7, v0, :cond_e

    goto :goto_9

    .line 903
    :cond_e
    if-ne v7, v3, :cond_10

    .line 905
    if-ne v8, v2, :cond_f

    iget v0, v10, Lcom/android/launcher3/util/PendingRequestArgs;->container:I

    if-eq v0, v2, :cond_f

    .line 906
    invoke-direct {v6, v7, v9, v2, v10}, Lcom/android/launcher3/Launcher;->completeAdd(ILandroid/content/Intent;ILcom/android/launcher3/util/PendingRequestArgs;)I

    .line 907
    iget-object v0, v6, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v13, v14, v12}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    goto :goto_8

    .line 910
    :cond_f
    if-nez v8, :cond_10

    .line 911
    iget-object v0, v6, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v13, v14, v12}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    .line 916
    :cond_10
    :goto_8
    iget-object v0, v6, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->clearAnimatedView()V

    .line 917
    return-void

    .line 895
    :cond_11
    :goto_9
    if-ne v8, v2, :cond_12

    .line 897
    invoke-direct {v6, v7, v9, v11, v10}, Lcom/android/launcher3/Launcher;->completeAdd(ILandroid/content/Intent;ILcom/android/launcher3/util/PendingRequestArgs;)I

    .line 900
    :cond_12
    return-void
.end method

.method private inflateAppWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Landroid/view/View;
    .locals 12
    .param p1, "item"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 2561
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasOptionFlag(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2562
    invoke-static {p0}, Lcom/android/launcher3/qsb/QsbContainerView;->getSearchComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 2563
    iget-object v1, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    .line 2564
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    const-string v1, "search widget removed because search component cannot be found"

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    .line 2566
    return-object v2

    .line 2570
    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    if-eqz v1, :cond_1

    .line 2571
    new-instance v1, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/icons/IconCache;Z)V

    move-object v0, v1

    .line 2572
    .local v0, "view":Landroid/appwidget/AppWidgetHostView;
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/Launcher;->prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    .line 2573
    return-object v0

    .line 2576
    .end local v0    # "view":Landroid/appwidget/AppWidgetHostView;
    :cond_1
    sget-object v1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BIND_WIDGET_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2580
    .local v1, "traceToken":Ljava/lang/Object;
    :try_start_0
    const-string v3, ""

    .line 2582
    .local v3, "removalReason":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2584
    const/4 v5, 0x0

    .line 2585
    .local v5, "appWidgetInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    const-string v6, "the provider isn\'t ready."

    move-object v3, v6

    goto :goto_0

    .line 2586
    .end local v5    # "appWidgetInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2588
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    iget-object v6, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v7, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/widget/WidgetManagerHelper;->findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v5

    .line 2589
    .restart local v5    # "appWidgetInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    if-nez v5, :cond_5

    .line 2593
    const-string v6, "WidgetManagerHelper cannot find a provider from provider info."

    move-object v3, v6

    goto :goto_0

    .line 2598
    .end local v5    # "appWidgetInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    :cond_3
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    iget v6, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v5, v6}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v5

    .line 2599
    .restart local v5    # "appWidgetInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    if-nez v5, :cond_5

    .line 2600
    iget v6, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    const/16 v7, -0x64

    if-gt v6, v7, :cond_4

    .line 2601
    const-string v6, "CustomWidgetManager cannot find provider from that widget id."

    move-object v3, v6

    goto :goto_0

    .line 2604
    :cond_4
    const-string v6, "AppWidgetManager cannot find provider for that widget id. It could be because AppWidgetService is not available, or the appWidgetId has not been bound to a the provider yet, or you don\'t have access to that appWidgetId."

    move-object v3, v6

    .line 2613
    :cond_5
    :goto_0
    invoke-virtual {p1, v4}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_e

    iget v4, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    if-eqz v4, :cond_e

    .line 2615
    if-nez v5, :cond_6

    .line 2616
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing restored widget: id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " belongs to component "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " user "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", as the provider is null and "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2620
    nop

    .line 2706
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    .line 2620
    return-object v2

    .line 2624
    :cond_6
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v4

    const/4 v7, 0x4

    if-eqz v4, :cond_c

    .line 2625
    const/16 v4, 0x10

    invoke-virtual {p1, v4}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v8

    if-nez v8, :cond_e

    .line 2627
    iget-object v8, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-virtual {v8}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v8

    iput v8, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    .line 2628
    iget v8, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    or-int/2addr v4, v8

    iput v4, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    .line 2632
    new-instance v4, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget v8, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->sourceContainer:I

    invoke-direct {v4, v5, v8}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;I)V

    .line 2634
    .local v4, "pendingInfo":Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    iget v8, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    iput v8, v4, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanX:I

    .line 2635
    iget v8, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    iput v8, v4, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanY:I

    .line 2636
    iget v8, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->minSpanX:I

    iput v8, v4, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanX:I

    .line 2637
    iget v8, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->minSpanY:I

    iput v8, v4, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanY:I

    .line 2638
    invoke-virtual {v4, p0}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getDefaultSizeOptions(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v8

    .line 2640
    .local v8, "options":Landroid/os/Bundle;
    const/16 v9, 0x20

    .line 2641
    invoke-virtual {p1, v9}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v9

    .line 2642
    .local v9, "isDirectConfig":Z
    if-eqz v9, :cond_8

    iget-object v10, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    if-eqz v10, :cond_8

    .line 2643
    iget-object v10, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 2644
    .local v10, "newOptions":Landroid/os/Bundle;
    if-eqz v8, :cond_7

    .line 2645
    invoke-virtual {v10, v8}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2647
    :cond_7
    move-object v8, v10

    .line 2649
    .end local v10    # "newOptions":Landroid/os/Bundle;
    :cond_8
    iget-object v10, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    iget v11, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v10, v11, v5, v8}, Lcom/android/launcher3/widget/WidgetManagerHelper;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v10

    .line 2655
    .local v10, "success":Z
    iput-object v2, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    .line 2656
    iget v11, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v11, v11, -0x21

    iput v11, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    .line 2659
    if-eqz v10, :cond_b

    .line 2662
    iget-object v11, v5, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v11, :cond_a

    if-eqz v9, :cond_9

    goto :goto_1

    .line 2664
    :cond_9
    goto :goto_2

    .line 2663
    :cond_a
    :goto_1
    move v7, v6

    .line 2664
    :goto_2
    iput v7, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    .line 2667
    :cond_b
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 2668
    .end local v4    # "pendingInfo":Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    .end local v8    # "options":Landroid/os/Bundle;
    .end local v9    # "isDirectConfig":Z
    .end local v10    # "success":Z
    goto :goto_3

    .line 2669
    :cond_c
    invoke-virtual {p1, v7}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, v5, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-nez v4, :cond_d

    .line 2673
    iput v6, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    .line 2674
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_3

    .line 2676
    :cond_d
    invoke-virtual {p1, v7}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, v5, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v4, :cond_e

    .line 2678
    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    iget v7, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v4, v7}, Lcom/android/launcher3/widget/WidgetManagerHelper;->isAppWidgetRestored(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2679
    iput v6, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    .line 2680
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 2685
    :cond_e
    :goto_3
    iget v4, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    if-nez v4, :cond_10

    .line 2687
    if-nez v5, :cond_f

    .line 2688
    const-string v0, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing invalid widget: id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2689
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    move-result-object v4

    invoke-virtual {v0, p1, v4, v3}, Lcom/android/launcher3/model/ModelWriter;->deleteWidgetInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/widget/LauncherAppWidgetHost;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2690
    nop

    .line 2706
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    .line 2690
    return-object v2

    .line 2693
    :cond_f
    :try_start_2
    iget v0, v5, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    iput v0, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->minSpanX:I

    .line 2694
    iget v0, v5, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    iput v0, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->minSpanY:I

    .line 2695
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    iget v2, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, p0, v2, v5}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    .restart local v0    # "view":Landroid/appwidget/AppWidgetHostView;
    goto :goto_4

    .line 2696
    .end local v0    # "view":Landroid/appwidget/AppWidgetHostView;
    :cond_10
    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v0

    if-nez v0, :cond_11

    if-eqz v5, :cond_11

    .line 2698
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    iget v2, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    new-instance v4, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    iget-object v7, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-direct {v4, p0, p1, v7, v6}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/icons/IconCache;Z)V

    invoke-virtual {v0, v2, v4}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->addPendingView(ILcom/android/launcher3/widget/PendingAppWidgetHostView;)V

    .line 2700
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    iget v2, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, p0, v2, v5}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    .restart local v0    # "view":Landroid/appwidget/AppWidgetHostView;
    goto :goto_4

    .line 2702
    .end local v0    # "view":Landroid/appwidget/AppWidgetHostView;
    :cond_11
    new-instance v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-direct {v0, p0, p1, v2, v6}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/icons/IconCache;Z)V

    .line 2704
    .restart local v0    # "view":Landroid/appwidget/AppWidgetHostView;
    :goto_4
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/Launcher;->prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2706
    .end local v3    # "removalReason":Ljava/lang/String;
    .end local v5    # "appWidgetInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    sget-object v2, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    .line 2707
    nop

    .line 2709
    return-object v0

    .line 2706
    .end local v0    # "view":Landroid/appwidget/AppWidgetHostView;
    :catchall_0
    move-exception v0

    sget-object v2, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    .line 2707
    throw v0
.end method

.method static synthetic lambda$getFirstMatchForAppClose$12(ILcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1
    .param p0, "preferredItemId"    # I
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 2829
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getFirstMatchForAppClose$13(Landroid/os/UserHandle;Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1
    .param p0, "user"    # Landroid/os/UserHandle;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 2831
    if-eqz p2, :cond_0

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    .line 2833
    invoke-virtual {v0, p0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2834
    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2835
    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2831
    :goto_0
    return v0
.end method

.method static synthetic lambda$getFirstMatchForAppClose$14(Ljava/util/List;Landroid/view/View;)V
    .locals 1
    .param p0, "containers"    # Ljava/util/List;
    .param p1, "page"    # Landroid/view/View;

    .line 2858
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$getPagesToBindSynchronously$8(Lcom/android/launcher3/DeviceProfile;)Z
    .locals 1
    .param p0, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 2273
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    return v0
.end method

.method static synthetic lambda$onProvideKeyboardShortcuts$15(Ljava/util/ArrayList;Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;)V
    .locals 4
    .param p0, "shortcutInfos"    # Ljava/util/ArrayList;
    .param p1, "la"    # Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    .line 3108
    new-instance v0, Landroid/view/KeyboardShortcutInfo;

    iget-object v1, p1, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;->accessibilityAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 3109
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p1, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;->keyCode:I

    const/16 v3, 0x1000

    invoke-direct {v0, v1, v2, v3}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 3108
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$pauseExpensiveViewUpdates$17(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 1
    .param p0, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p1, "view"    # Landroid/view/View;

    .line 3332
    instance-of v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v0, :cond_0

    .line 3333
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->beginDeferringUpdates()V

    .line 3335
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$preAddApps$10(Lcom/android/launcher3/AbstractFloatingView;)V
    .locals 1
    .param p0, "snackbar"    # Lcom/android/launcher3/AbstractFloatingView;

    .line 2374
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return-void
.end method

.method static synthetic lambda$resumeExpensiveViewUpdates$18(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 1
    .param p0, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p1, "view"    # Landroid/view/View;

    .line 3344
    instance-of v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v0, :cond_0

    .line 3345
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->endDeferringUpdates()V

    .line 3347
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$startActivitySafely$7(Lcom/android/launcher3/BubbleTextView;)V
    .locals 1
    .param p0, "btv"    # Lcom/android/launcher3/BubbleTextView;

    .line 2169
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setStayPressed(Z)V

    return-void
.end method

.method private logStopAndResume(Z)V
    .locals 6
    .param p1, "isResume"    # Z

    .line 1053
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    if-eqz v0, :cond_0

    return-void

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    .line 1055
    .local v0, "pageIndex":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    iget v1, v1, Lcom/android/launcher3/LauncherState;->statsLogOrdinal:I

    .line 1058
    .local v1, "statsLogOrdinal":I
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    .line 1059
    .local v2, "logger":Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    const/4 v3, 0x1

    if-eqz p1, :cond_2

    .line 1060
    invoke-interface {v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withSrcState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    .line 1061
    invoke-virtual {v4}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/LauncherState;

    iget v4, v4, Lcom/android/launcher3/LauncherState;->statsLogOrdinal:I

    invoke-interface {v3, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withDstState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    .line 1062
    sget-object v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ONRESUME:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .local v3, "event":Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    goto :goto_1

    .line 1064
    .end local v3    # "event":Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v4}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/LauncherState;

    iget v4, v4, Lcom/android/launcher3/LauncherState;->statsLogOrdinal:I

    invoke-interface {v2, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withSrcState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v4

    .line 1065
    invoke-interface {v4, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withDstState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    .line 1066
    sget-object v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ONSTOP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 1069
    .restart local v3    # "event":Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    :goto_1
    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v4, :cond_3

    .line 1070
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v4

    .line 1072
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v5

    .line 1073
    invoke-virtual {v5, v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->setPageIndex(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v5

    .line 1071
    invoke-virtual {v4, v5}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v4

    .line 1073
    invoke-virtual {v4}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 1070
    invoke-interface {v2, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    .line 1075
    :cond_3
    invoke-interface {v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 1076
    return-void
.end method

.method private static mapOverViewGroup(Landroid/view/ViewGroup;Ljava/util/function/Predicate;)Landroid/view/View;
    .locals 4
    .param p0, "container"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 2891
    .local p1, "op":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2892
    .local v0, "itemCount":I
    const/4 v1, 0x0

    .local v1, "itemIdx":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2893
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2894
    .local v2, "item":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2895
    return-object v2

    .line 2892
    .end local v2    # "item":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2898
    .end local v1    # "itemIdx":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .locals 1
    .param p1, "hostView"    # Landroid/appwidget/AppWidgetHostView;
    .param p2, "item"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 1496
    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 1497
    invoke-virtual {p2, p0, p1}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->onBindAppWidget(Lcom/android/launcher3/Launcher;Landroid/appwidget/AppWidgetHostView;)V

    .line 1498
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/appwidget/AppWidgetHostView;->setFocusable(Z)V

    .line 1499
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {p1, v0}, Landroid/appwidget/AppWidgetHostView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1500
    return-void
.end method

.method private processShortcutFromDrop(Lcom/android/launcher3/widget/PendingAddShortcutInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    .line 1899
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 1900
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/android/launcher3/util/PendingRequestArgs;->forIntent(ILandroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    .line 1901
    const-string v2, "Main"

    const-string v3, "start: processShortcutFromDrop"

    invoke-static {v2, v3}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1902
    iget-object v2, p1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->activityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    invoke-virtual {v2, p0, v1}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->startConfigActivity(Landroid/app/Activity;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1903
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->handleActivityResult(IILandroid/content/Intent;)V

    .line 1905
    :cond_0
    return-void
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedState"    # Landroid/os/Bundle;

    .line 1255
    if-nez p1, :cond_0

    .line 1256
    return-void

    .line 1259
    :cond_0
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    iget v0, v0, Lcom/android/launcher3/LauncherState;->ordinal:I

    const-string v1, "launcher.state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1260
    .local v0, "stateOrdinal":I
    invoke-static {}, Lcom/android/launcher3/LauncherState;->values()[Lcom/android/launcher3/LauncherState;

    move-result-object v1

    .line 1261
    .local v1, "stateValues":[Lcom/android/launcher3/LauncherState;
    aget-object v2, v1, v0

    .line 1263
    .local v2, "state":Lcom/android/launcher3/LauncherState;
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/Launcher$NonConfigInstance;

    .line 1264
    .local v3, "lastInstance":Lcom/android/launcher3/Launcher$NonConfigInstance;
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v5, v3, Lcom/android/launcher3/Launcher$NonConfigInstance;->config:Landroid/content/res/Configuration;

    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mOldConfig:Landroid/content/res/Configuration;

    .line 1265
    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v5

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v4

    .line 1266
    .local v5, "forceRestore":Z
    :goto_0
    if-nez v5, :cond_2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherState;->shouldDisableRestore()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1267
    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v6, v2, v4}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    .line 1270
    :cond_3
    const-string v6, "launcher.request_args"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/util/PendingRequestArgs;

    .line 1272
    .local v6, "requestArgs":Lcom/android/launcher3/util/PendingRequestArgs;
    if-eqz v6, :cond_4

    .line 1273
    invoke-virtual {p0, v6}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    .line 1275
    :cond_4
    const-string v7, "launcher.request_code"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    .line 1277
    const-string v7, "launcher.activity_result"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/util/ActivityResultInfo;

    iput-object v7, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    .line 1279
    nop

    .line 1280
    const-string v7, "launcher.widget_panel"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v7

    .line 1281
    .local v7, "widgetsState":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v7, :cond_5

    .line 1282
    invoke-static {p0, v4}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->show(Lcom/android/launcher3/Launcher;Z)Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 1284
    :cond_5
    return-void
.end method

.method private scheduleDeferredCheck()V
    .locals 2

    .line 1079
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDeferredOverlayCallbacks:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1080
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDeferredOverlayCallbacks:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 1081
    return-void
.end method

.method private setWorkspaceLoading(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 1837
    iput-boolean p1, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    .line 1838
    return-void
.end method

.method private showAllAppsWorkTabFromIntent(Z)V
    .locals 2
    .param p1, "alreadyOnHome"    # Z

    .line 1671
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->showAllAppsFromIntent(Z)V

    .line 1672
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->switchToTab(I)V

    .line 1673
    return-void
.end method

.method private switchOverlay(Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/plugins/shared/LauncherOverlayManager;",
            ">;)V"
        }
    .end annotation

    .line 599
    .local p1, "overlaySupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/systemui/plugins/shared/LauncherOverlayManager;>;"
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    if-eqz v0, :cond_0

    .line 600
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 602
    :cond_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    .line 603
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherRootView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 604
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onAttachedToWindow()V

    .line 606
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    .line 607
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->checkIfOverlayStillDeferred()V

    .line 608
    return-void
.end method

.method private updateNotificationDots(Ljava/util/function/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;)V"
        }
    .end annotation

    .line 1510
    .local p1, "updatedDots":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/util/PackageUserKey;>;"
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->updateNotificationDots(Ljava/util/function/Predicate;)V

    .line 1511
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsStore;->updateNotificationDots(Ljava/util/function/Predicate;)V

    .line 1512
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAdapter()Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->notifyDataSetChanged()V

    .line 1513
    return-void
.end method


# virtual methods
.method addAppWidgetFromDropImpl(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;)V
    .locals 6
    .param p1, "appWidgetId"    # I
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "boundWidget"    # Landroid/appwidget/AppWidgetHostView;
    .param p4, "addFlowHandler"    # Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    .line 1849
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Launcher;->addAppWidgetImpl(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;I)V

    .line 1850
    return-void
.end method

.method addAppWidgetImpl(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;I)V
    .locals 3
    .param p1, "appWidgetId"    # I
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "boundWidget"    # Landroid/appwidget/AppWidgetHostView;
    .param p4, "addFlowHandler"    # Lcom/android/launcher3/widget/WidgetAddFlowHandler;
    .param p5, "delay"    # I

    .line 1854
    const/4 v0, 0x5

    invoke-virtual {p4, p0, p1, p2, v0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startConfigActivity(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1858
    new-instance v0, Lcom/android/launcher3/Launcher$7;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$7;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 1865
    .local v0, "onComplete":Ljava/lang/Runnable;
    nop

    .line 1866
    invoke-virtual {p4, p0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->getProviderInfo(Landroid/content/Context;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v1

    .line 1865
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/launcher3/Launcher;->completeAddAppWidget(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    .line 1867
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v2, 0x0

    invoke-virtual {v1, p5, v2, v0}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    .line 1869
    .end local v0    # "onComplete":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public addFolder(Lcom/android/launcher3/CellLayout;IIII)Lcom/android/launcher3/folder/FolderIcon;
    .locals 7
    .param p1, "layout"    # Lcom/android/launcher3/CellLayout;
    .param p2, "container"    # I
    .param p3, "screenId"    # I
    .param p4, "cellX"    # I
    .param p5, "cellY"    # I

    .line 1952
    new-instance v0, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/FolderInfo;-><init>()V

    .line 1955
    .local v0, "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    move-object v2, v0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 1958
    sget v1, Lcom/android/launcher3/R$layout;->folder_icon:I

    invoke-static {v1, p0, p1, v0}, Lcom/android/launcher3/folder/FolderIcon;->inflateFolderAndIcon(ILandroid/content/Context;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v1

    .line 1960
    .local v1, "newFolder":Lcom/android/launcher3/folder/FolderIcon;
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, v1, v0}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 1962
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    .line 1963
    .local v2, "parent":Lcom/android/launcher3/CellLayout;
    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 1964
    return-object v1
.end method

.method public addPendingItem(Lcom/android/launcher3/PendingAddItemInfo;II[III)V
    .locals 3
    .param p1, "info"    # Lcom/android/launcher3/PendingAddItemInfo;
    .param p2, "container"    # I
    .param p3, "screenId"    # I
    .param p4, "cell"    # [I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I

    .line 1873
    iput p2, p1, Lcom/android/launcher3/PendingAddItemInfo;->container:I

    .line 1874
    iput p3, p1, Lcom/android/launcher3/PendingAddItemInfo;->screenId:I

    .line 1875
    if-eqz p4, :cond_0

    .line 1876
    const/4 v0, 0x0

    aget v0, p4, v0

    iput v0, p1, Lcom/android/launcher3/PendingAddItemInfo;->cellX:I

    .line 1877
    const/4 v0, 0x1

    aget v0, p4, v0

    iput v0, p1, Lcom/android/launcher3/PendingAddItemInfo;->cellY:I

    .line 1879
    :cond_0
    iput p5, p1, Lcom/android/launcher3/PendingAddItemInfo;->spanX:I

    .line 1880
    iput p6, p1, Lcom/android/launcher3/PendingAddItemInfo;->spanY:I

    .line 1882
    iget v0, p1, Lcom/android/launcher3/PendingAddItemInfo;->itemType:I

    packed-switch v0, :pswitch_data_0

    .line 1891
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/launcher3/PendingAddItemInfo;->itemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1885
    :pswitch_1
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->addAppWidgetFromDrop(Lcom/android/launcher3/widget/PendingAddWidgetInfo;)V

    .line 1886
    goto :goto_0

    .line 1888
    :pswitch_2
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->processShortcutFromDrop(Lcom/android/launcher3/widget/PendingAddShortcutInfo;)V

    .line 1889
    nop

    .line 1893
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public bindAllApplications([Lcom/android/launcher3/model/data/AppInfo;I)V
    .locals 2
    .param p1, "apps"    # [Lcom/android/launcher3/model/data/AppInfo;
    .param p2, "flags"    # I

    .line 2932
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/allapps/AllAppsStore;->setApps([Lcom/android/launcher3/model/data/AppInfo;I)V

    .line 2933
    invoke-static {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->dismissInvalidPopup(Lcom/android/launcher3/BaseDraggingActivity;)V

    .line 2934
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_0

    .line 2935
    const/4 v0, 0x1

    const-string v1, "DisplayAllApps"

    invoke-static {v1, v0}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 2938
    :cond_0
    return-void
.end method

.method public bindAllAppsOwnOrder(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 2942
    .local p1, "ownOrderApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getOwnOrderApps()Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->bindOwnOrderApps(Ljava/util/List;)V

    .line 2943
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAdapter()Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->initSortMode()V

    .line 2944
    return-void
.end method

.method public bindAllWidgets(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;)V"
        }
    .end annotation

    .line 3016
    .local p1, "allWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->setAllWidgets(Ljava/util/List;)V

    .line 3017
    return-void
.end method

.method public bindAppWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 2553
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->inflateAppWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Landroid/view/View;

    move-result-object v0

    .line 2554
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2555
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 2556
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->requestLayout()V

    .line 2558
    :cond_0
    return-void
.end method

.method public bindAppsAdded(Lcom/android/launcher3/util/IntArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "newScreens"    # Lcom/android/launcher3/util/IntArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/IntArray;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 2382
    .local p2, "addNotAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .local p3, "addAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    if-eqz p1, :cond_0

    .line 2385
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/IntArray;->removeAllValues(Lcom/android/launcher3/util/IntArray;)V

    .line 2386
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->bindAddScreens(Lcom/android/launcher3/util/IntArray;)V

    .line 2391
    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2392
    invoke-virtual {p0, p2, v0}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;Z)V

    .line 2394
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2395
    const/4 v1, 0x1

    invoke-virtual {p0, p3, v1}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;Z)V

    .line 2399
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreen(Z)V

    .line 2400
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

    .line 2957
    .local p1, "deepShortcutMapCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/ComponentKey;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->setDeepShortcutMap(Ljava/util/HashMap;)V

    .line 2958
    return-void
.end method

.method public bindIncrementalDownloadProgressUpdated(Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 1
    .param p1, "app"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 2962
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsStore;->updateProgressBar(Lcom/android/launcher3/model/data/AppInfo;)V

    .line 2963
    return-void
.end method

.method public bindItems(Ljava/util/List;Z)V
    .locals 1
    .param p2, "forceAnimateIcons"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 2409
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;ZZ)V

    .line 2410
    return-void
.end method

.method public bindItems(Ljava/util/List;ZZ)V
    .locals 17
    .param p2, "forceAnimateIcons"    # Z
    .param p3, "focusFirstItemForAccessibility"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;ZZ)V"
        }
    .end annotation

    .line 2426
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2427
    .local v1, "bounceAnims":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/animation/Animator;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->canAnimatePageChange()Z

    move-result v2

    .line 2428
    .local v2, "canAnimatePageChange":Z
    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 2429
    .local v3, "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    const/4 v4, -0x1

    .line 2430
    .local v4, "newItemsScreenId":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    .line 2431
    .local v5, "end":I
    const/4 v6, 0x0

    .line 2432
    .local v6, "newView":Landroid/view/View;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_8

    .line 2433
    move-object/from16 v8, p1

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/model/data/ItemInfo;

    .line 2436
    .local v9, "item":Lcom/android/launcher3/model/data/ItemInfo;
    iget v10, v9, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v11, -0x65

    if-ne v10, v11, :cond_0

    iget-object v10, v0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-nez v10, :cond_0

    .line 2438
    move/from16 v16, v5

    goto/16 :goto_3

    .line 2442
    :cond_0
    iget v10, v9, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    packed-switch v10, :pswitch_data_0

    .line 2465
    :pswitch_0
    move/from16 v16, v5

    .end local v5    # "end":I
    .local v16, "end":I
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v10, "Invalid Item Type"

    invoke-direct {v5, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2458
    .end local v16    # "end":I
    .restart local v5    # "end":I
    :pswitch_1
    move-object v10, v9

    check-cast v10, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-direct {v0, v10}, Lcom/android/launcher3/Launcher;->inflateAppWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Landroid/view/View;

    move-result-object v10

    .line 2459
    .local v10, "view":Landroid/view/View;
    if-nez v10, :cond_1

    .line 2460
    move/from16 v16, v5

    goto/16 :goto_3

    .line 2451
    .end local v10    # "view":Landroid/view/View;
    :pswitch_2
    sget v10, Lcom/android/launcher3/R$layout;->folder_icon:I

    .line 2452
    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v11

    invoke-virtual {v3, v11}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    move-object v12, v9

    check-cast v12, Lcom/android/launcher3/model/data/FolderInfo;

    .line 2451
    invoke-static {v10, v0, v11, v12}, Lcom/android/launcher3/folder/FolderIcon;->inflateFolderAndIcon(ILandroid/content/Context;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v10

    .line 2454
    .restart local v10    # "view":Landroid/view/View;
    goto :goto_1

    .line 2446
    .end local v10    # "view":Landroid/view/View;
    :pswitch_3
    move-object v10, v9

    check-cast v10, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 2447
    .local v10, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    invoke-virtual {v0, v10}, Lcom/android/launcher3/Launcher;->createShortcut(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v11

    .line 2448
    .local v11, "view":Landroid/view/View;
    move-object v10, v11

    .line 2471
    .end local v11    # "view":Landroid/view/View;
    .local v10, "view":Landroid/view/View;
    :cond_1
    :goto_1
    iget v11, v9, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v12, -0x64

    if-ne v11, v12, :cond_5

    .line 2472
    iget-object v11, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget v12, v9, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v11, v12}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v11

    .line 2473
    .local v11, "cl":Lcom/android/launcher3/CellLayout;
    if-eqz v11, :cond_4

    iget v12, v9, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v13, v9, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/CellLayout;->isOccupied(II)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2474
    iget v12, v9, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v13, v9, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v12

    .line 2475
    .local v12, "v":Landroid/view/View;
    if-nez v12, :cond_2

    .line 2476
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bindItems failed when removing colliding item="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "Launcher"

    invoke-static {v14, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    :cond_2
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    .line 2479
    .local v13, "tag":Ljava/lang/Object;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Collision while binding workspace item: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ". Collides with "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2484
    .local v14, "desc":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v15

    invoke-virtual {v15, v9, v14}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    .line 2485
    sget-boolean v15, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v15, :cond_3

    .line 2486
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v5

    .end local v5    # "end":I
    .restart local v16    # "end":I
    const-string v5, "LauncherbindItems failed for item="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v15, "b/202985412"

    invoke-static {v15, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2485
    .end local v16    # "end":I
    .restart local v5    # "end":I
    :cond_3
    move/from16 v16, v5

    .end local v5    # "end":I
    .restart local v16    # "end":I
    goto :goto_3

    .line 2473
    .end local v12    # "v":Landroid/view/View;
    .end local v13    # "tag":Ljava/lang/Object;
    .end local v14    # "desc":Ljava/lang/String;
    .end local v16    # "end":I
    .restart local v5    # "end":I
    :cond_4
    move/from16 v16, v5

    .end local v5    # "end":I
    .restart local v16    # "end":I
    goto :goto_2

    .line 2471
    .end local v11    # "cl":Lcom/android/launcher3/CellLayout;
    .end local v16    # "end":I
    .restart local v5    # "end":I
    :cond_5
    move/from16 v16, v5

    .line 2493
    .end local v5    # "end":I
    .restart local v16    # "end":I
    :goto_2
    invoke-virtual {v3, v10, v9}, Lcom/android/launcher3/Workspace;->addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 2494
    if-eqz p2, :cond_6

    .line 2496
    const/4 v5, 0x0

    invoke-virtual {v10, v5}, Landroid/view/View;->setAlpha(F)V

    .line 2497
    invoke-virtual {v10, v5}, Landroid/view/View;->setScaleX(F)V

    .line 2498
    invoke-virtual {v10, v5}, Landroid/view/View;->setScaleY(F)V

    .line 2499
    invoke-direct {v0, v10, v7}, Lcom/android/launcher3/Launcher;->createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2500
    iget v4, v9, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    .line 2503
    :cond_6
    if-nez v6, :cond_7

    .line 2504
    move-object v5, v10

    move-object v6, v5

    .line 2432
    .end local v9    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v10    # "view":Landroid/view/View;
    :cond_7
    :goto_3
    add-int/lit8 v7, v7, 0x1

    move/from16 v5, v16

    goto/16 :goto_0

    .end local v16    # "end":I
    .restart local v5    # "end":I
    :cond_8
    move-object/from16 v8, p1

    move/from16 v16, v5

    .line 2508
    .end local v5    # "end":I
    .end local v7    # "i":I
    .restart local v16    # "end":I
    move-object v5, v6

    .line 2510
    .local v5, "viewToFocus":Landroid/view/View;
    if-eqz p2, :cond_b

    const/4 v7, -0x1

    if-le v4, v7, :cond_b

    .line 2511
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2512
    .local v7, "anim":Landroid/animation/AnimatorSet;
    invoke-virtual {v7, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2513
    if-eqz p3, :cond_9

    if-eqz v5, :cond_9

    .line 2514
    new-instance v9, Lcom/android/launcher3/Launcher$8;

    invoke-direct {v9, v0, v5}, Lcom/android/launcher3/Launcher$8;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    invoke-virtual {v7, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2522
    :cond_9
    iget-object v9, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v9}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result v9

    .line 2523
    .local v9, "currentScreenId":I
    iget-object v10, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v10, v4}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v10

    .line 2524
    .local v10, "newScreenIndex":I
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda4;

    invoke-direct {v11, v7}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda4;-><init>(Landroid/animation/AnimatorSet;)V

    .line 2526
    .local v11, "startBounceAnimRunnable":Ljava/lang/Runnable;
    const-wide/16 v12, 0x1f4

    if-eqz v2, :cond_a

    if-eq v4, v9, :cond_a

    .line 2529
    iget-object v14, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v15, Lcom/android/launcher3/Launcher$9;

    invoke-direct {v15, v0, v10, v11}, Lcom/android/launcher3/Launcher$9;-><init>(Lcom/android/launcher3/Launcher;ILjava/lang/Runnable;)V

    invoke-virtual {v14, v15, v12, v13}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 2541
    :cond_a
    iget-object v14, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v14, v11, v12, v13}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 2543
    .end local v7    # "anim":Landroid/animation/AnimatorSet;
    .end local v9    # "currentScreenId":I
    .end local v10    # "newScreenIndex":I
    .end local v11    # "startBounceAnimRunnable":Ljava/lang/Runnable;
    :cond_b
    if-eqz p3, :cond_c

    if-eqz v5, :cond_c

    .line 2544
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_5

    .line 2543
    :cond_c
    :goto_4
    nop

    .line 2546
    :goto_5
    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->requestLayout()V

    .line 2547
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public bindRestoreItemsChange(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 2991
    .local p1, "updates":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher3/Workspace;->updateRestoreItems(Ljava/util/HashSet;Lcom/android/launcher3/views/ActivityContext;)V

    .line 2992
    return-void
.end method

.method public bindScreens(Lcom/android/launcher3/util/IntArray;)V
    .locals 2
    .param p1, "orderedScreenIds"    # Lcom/android/launcher3/util/IntArray;

    .line 2330
    const/4 v0, 0x0

    .line 2335
    .local v0, "firstScreenPosition":I
    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2337
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->addExtraEmptyScreens()V

    .line 2339
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->bindAddScreens(Lcom/android/launcher3/util/IntArray;)V

    .line 2344
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->unlockWallpaperFromDefaultPageOnNextLayout()V

    .line 2345
    return-void
.end method

.method public bindStringCache(Lcom/android/launcher3/model/StringCache;)V
    .locals 0
    .param p1, "cache"    # Lcom/android/launcher3/model/StringCache;

    .line 3021
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mStringCache:Lcom/android/launcher3/model/StringCache;

    .line 3022
    return-void
.end method

.method public bindWidgetsRestored(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .line 2967
    .local p1, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->widgetsRestored(Ljava/util/ArrayList;)V

    .line 2968
    return-void
.end method

.method public bindWorkspaceComponentsRemoved(Ljava/util/function/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 3003
    .local p1, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->removeItemsByMatcher(Ljava/util/function/Predicate;)V

    .line 3004
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragController;->onAppsRemoved(Ljava/util/function/Predicate;)V

    .line 3005
    invoke-static {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->dismissInvalidPopup(Lcom/android/launcher3/BaseDraggingActivity;)V

    .line 3006
    return-void
.end method

.method public bindWorkspaceComponentsRemovedWithoutWidget(Ljava/util/function/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 3010
    .local p1, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->removeItemsByMatcherWithoutWidget(Ljava/util/function/Predicate;)V

    .line 3011
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragController;->onAppsRemoved(Ljava/util/function/Predicate;)V

    .line 3012
    return-void
.end method

.method public bindWorkspaceItemsChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 2978
    .local p1, "updated":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2979
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher3/Workspace;->updateWorkspaceItems(Ljava/util/List;Lcom/android/launcher3/views/ActivityContext;)V

    .line 2980
    invoke-static {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->dismissInvalidPopup(Lcom/android/launcher3/BaseDraggingActivity;)V

    .line 2982
    :cond_0
    return-void
.end method

.method public clearPendingBinds()V
    .locals 2

    .line 2291
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    if-eqz v0, :cond_0

    .line 2292
    invoke-virtual {v0}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->cancel()V

    .line 2293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    .line 2296
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    const/4 v1, 0x1

    .line 2297
    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsStore;->disableDeferUpdatesSilently(I)V

    .line 2299
    :cond_0
    return-void
.end method

.method public clearPendingExecutor(Lcom/android/launcher3/util/ViewOnDrawExecutor;)V
    .locals 1
    .param p1, "executor"    # Lcom/android/launcher3/util/ViewOnDrawExecutor;

    .line 2739
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    if-ne v0, p1, :cond_0

    .line 2740
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    .line 2742
    :cond_0
    return-void
.end method

.method protected closeOpenViews(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .line 3217
    invoke-static {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;Z)V

    .line 3218
    return-void
.end method

.method protected collectStateHandlers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/statemanager/StateManager$StateHandler;",
            ">;)V"
        }
    .end annotation

    .line 3194
    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/statemanager/StateManager$StateHandler;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3195
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3196
    return-void
.end method

.method completeAddAppWidget(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V
    .locals 8
    .param p1, "appWidgetId"    # I
    .param p2, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "hostView"    # Landroid/appwidget/AppWidgetHostView;
    .param p4, "appWidgetInfo"    # Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    .line 1442
    if-nez p4, :cond_0

    .line 1443
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object p4

    .line 1446
    :cond_0
    if-nez p3, :cond_1

    .line 1448
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-virtual {v0, p0, p1, p4}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object p3

    .line 1452
    :cond_1
    new-instance v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v1, p4, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v0, p1, v1, p4, p3}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Landroid/appwidget/AppWidgetHostView;)V

    .line 1455
    .local v0, "launcherInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v1, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    .line 1456
    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v1, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    .line 1457
    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v1, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->minSpanX:I

    .line 1458
    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iput v1, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->minSpanY:I

    .line 1459
    invoke-virtual {p4}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    .line 1460
    instance-of v1, p2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v1, :cond_2

    .line 1461
    move-object v1, p2

    check-cast v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget v1, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->sourceContainer:I

    iput v1, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->sourceContainer:I

    goto :goto_0

    .line 1462
    :cond_2
    instance-of v1, p2, Lcom/android/launcher3/util/PendingRequestArgs;

    if-eqz v1, :cond_3

    .line 1463
    move-object v1, p2

    check-cast v1, Lcom/android/launcher3/util/PendingRequestArgs;

    .line 1464
    invoke-virtual {v1}, Lcom/android/launcher3/util/PendingRequestArgs;->getWidgetSourceContainer()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->sourceContainer:I

    .line 1467
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    iget v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v6, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v7, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 1470
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    .line 1471
    invoke-direct {p0, p3, v0}, Lcom/android/launcher3/Launcher;->prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    .line 1472
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, p3, v0}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 1473
    sget v1, Lcom/android/launcher3/R$string;->item_added_to_workspace:I

    invoke-direct {p0, v1}, Lcom/android/launcher3/Launcher;->announceForAccessibility(I)V

    .line 1476
    instance-of v1, p3, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v1, :cond_5

    .line 1477
    move-object v1, p3

    check-cast v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 1478
    .local v1, "launcherHostView":Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    iget v2, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->container:I

    iget v3, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->screenId:I

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/Launcher;->getCellLayout(II)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    .line 1479
    .local v2, "cellLayout":Lcom/android/launcher3/CellLayout;
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v3, v4, :cond_4

    .line 1480
    invoke-static {v1, v2}, Lcom/android/launcher3/AppWidgetResizeFrame;->showForWidget(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V

    goto :goto_1

    .line 1482
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    new-instance v4, Lcom/android/launcher3/Launcher$5;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/launcher3/Launcher$5;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    .line 1493
    .end local v1    # "launcherHostView":Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    .end local v2    # "cellLayout":Lcom/android/launcher3/CellLayout;
    :cond_5
    :goto_1
    return-void
.end method

.method protected completeAddShortcut(Landroid/content/Intent;IIIILcom/android/launcher3/util/PendingRequestArgs;)V
    .locals 22
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "container"    # I
    .param p3, "screenId"    # I
    .param p4, "cellX"    # I
    .param p5, "cellY"    # I
    .param p6, "args"    # Lcom/android/launcher3/util/PendingRequestArgs;

    .line 1357
    move-object/from16 v0, p0

    move/from16 v9, p2

    move-object/from16 v10, p6

    invoke-virtual/range {p6 .. p6}, Lcom/android/launcher3/util/PendingRequestArgs;->getRequestCode()I

    move-result v1

    const/4 v11, 0x1

    if-ne v1, v11, :cond_b

    .line 1358
    invoke-virtual/range {p6 .. p6}, Lcom/android/launcher3/util/PendingRequestArgs;->getPendingIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    move/from16 v13, p3

    goto/16 :goto_4

    .line 1362
    :cond_0
    iget-object v12, v0, Lcom/android/launcher3/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 1363
    .local v12, "cellXY":[I
    move/from16 v13, p3

    invoke-virtual {v0, v9, v13}, Lcom/android/launcher3/Launcher;->getCellLayout(II)Lcom/android/launcher3/CellLayout;

    move-result-object v14

    .line 1365
    .local v14, "layout":Lcom/android/launcher3/CellLayout;
    nop

    .line 1366
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/pm/PinRequestHelper;->getPinItemRequest(Landroid/content/Intent;)Landroid/content/pm/LauncherApps$PinItemRequest;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 1365
    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/pm/PinRequestHelper;->createWorkspaceItemFromPinItemRequest(Landroid/content/Context;Landroid/content/pm/LauncherApps$PinItemRequest;J)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v1

    .line 1368
    .local v1, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    const/4 v15, 0x0

    const-string v2, "Launcher"

    const/4 v8, 0x0

    if-nez v1, :cond_4

    .line 1370
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    iget-object v4, v10, Lcom/android/launcher3/util/PendingRequestArgs;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1371
    invoke-static/range {p0 .. p1}, Lcom/android/launcher3/model/ModelUtils;->fromLegacyShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v15

    :goto_0
    move-object v1, v3

    .line 1373
    if-nez v1, :cond_2

    .line 1374
    const-string v3, "Unable to parse a valid custom shortcut result"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    return-void

    .line 1376
    :cond_2
    new-instance v3, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v3, v0}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object v4, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    .line 1377
    invoke-virtual/range {p6 .. p6}, Lcom/android/launcher3/util/PendingRequestArgs;->getPendingIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1376
    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/util/PackageManagerHelper;->hasPermissionForActivity(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1379
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring malicious intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    return-void

    .line 1376
    :cond_3
    move-object v7, v1

    goto :goto_1

    .line 1368
    :cond_4
    move-object v7, v1

    .line 1384
    .end local v1    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .local v7, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :goto_1
    if-gez v9, :cond_9

    .line 1386
    invoke-virtual {v0, v7}, Lcom/android/launcher3/Launcher;->createShortcut(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v6

    .line 1387
    .local v6, "view":Landroid/view/View;
    const/4 v1, 0x0

    .line 1389
    .local v1, "foundCellSpan":Z
    if-ltz p4, :cond_7

    if-ltz p5, :cond_7

    .line 1390
    aput p4, v12, v8

    .line 1391
    aput p5, v12, v11

    .line 1392
    const/16 v16, 0x1

    .line 1394
    .end local v1    # "foundCellSpan":Z
    .local v16, "foundCellSpan":Z
    new-instance v1, Lcom/android/launcher3/DropTarget$DragObject;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher3/DropTarget$DragObject;-><init>(Landroid/content/Context;)V

    move-object v5, v1

    .line 1395
    .local v5, "dragObject":Lcom/android/launcher3/DropTarget$DragObject;
    iput-object v7, v5, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 1397
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v2, v6

    move/from16 v3, p2

    move-object v4, v14

    move-object/from16 v19, v5

    .end local v5    # "dragObject":Lcom/android/launcher3/DropTarget$DragObject;
    .local v19, "dragObject":Lcom/android/launcher3/DropTarget$DragObject;
    move-object v5, v12

    move-object/from16 v20, v6

    .end local v6    # "view":Landroid/view/View;
    .local v20, "view":Landroid/view/View;
    move/from16 v6, v17

    move-object/from16 v21, v7

    .end local v7    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .local v21, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    move/from16 v7, v18

    move-object/from16 v8, v19

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/Workspace;->createUserFolderIfNecessary(Landroid/view/View;ILcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1399
    return-void

    .line 1401
    :cond_5
    iget-object v2, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v3, v20

    move-object v4, v14

    move-object v5, v12

    move-object/from16 v7, v19

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1403
    return-void

    .line 1405
    .end local v19    # "dragObject":Lcom/android/launcher3/DropTarget$DragObject;
    :cond_6
    goto :goto_2

    .line 1389
    .end local v16    # "foundCellSpan":Z
    .end local v20    # "view":Landroid/view/View;
    .end local v21    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .restart local v1    # "foundCellSpan":Z
    .restart local v6    # "view":Landroid/view/View;
    .restart local v7    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :cond_7
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .line 1406
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .restart local v20    # "view":Landroid/view/View;
    .restart local v21    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    invoke-virtual {v14, v12, v11, v11}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v16

    .line 1409
    .end local v1    # "foundCellSpan":Z
    .restart local v16    # "foundCellSpan":Z
    :goto_2
    if-nez v16, :cond_8

    .line 1410
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    move-object/from16 v7, v21

    .end local v21    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .restart local v7    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    invoke-virtual {v1, v14, v7, v15}, Lcom/android/launcher3/Workspace;->onNoCellFound(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V

    .line 1411
    return-void

    .line 1414
    .end local v7    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .restart local v21    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :cond_8
    move-object/from16 v7, v21

    .end local v21    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .restart local v7    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    const/4 v3, 0x0

    aget v5, v12, v3

    aget v6, v12, v11

    move-object v2, v7

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 1415
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    move-object/from16 v2, v20

    .end local v20    # "view":Landroid/view/View;
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v1, v2, v7}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 1416
    .end local v2    # "view":Landroid/view/View;
    .end local v16    # "foundCellSpan":Z
    goto :goto_3

    .line 1418
    :cond_9
    move v3, v8

    invoke-virtual {v0, v9}, Lcom/android/launcher3/Launcher;->findFolderIcon(I)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v1

    .line 1419
    .local v1, "folderIcon":Lcom/android/launcher3/folder/FolderIcon;
    if-eqz v1, :cond_a

    .line 1420
    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/FolderInfo;

    .line 1421
    .local v2, "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    iget v4, v10, Lcom/android/launcher3/util/PendingRequestArgs;->rank:I

    invoke-virtual {v2, v7, v4, v3}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/ItemInfo;IZ)V

    .line 1422
    .end local v2    # "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    goto :goto_3

    .line 1423
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find folder with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to add shortcut."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    .end local v1    # "folderIcon":Lcom/android/launcher3/folder/FolderIcon;
    :goto_3
    return-void

    .line 1357
    .end local v7    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v12    # "cellXY":[I
    .end local v14    # "layout":Lcom/android/launcher3/CellLayout;
    :cond_b
    move/from16 v13, p3

    .line 1359
    :goto_4
    return-void
.end method

.method completeTwoStageWidgetDrop(IILcom/android/launcher3/util/PendingRequestArgs;)V
    .locals 12
    .param p1, "resultCode"    # I
    .param p2, "appWidgetId"    # I
    .param p3, "requestArgs"    # Lcom/android/launcher3/util/PendingRequestArgs;

    .line 973
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget v1, p3, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 974
    .local v0, "cellLayout":Lcom/android/launcher3/CellLayout;
    const/4 v1, 0x0

    .line 975
    .local v1, "onCompleteRunnable":Ljava/lang/Runnable;
    const/4 v2, 0x0

    .line 977
    .local v2, "animationType":I
    const/4 v3, 0x0

    .line 978
    .local v3, "boundWidget":Landroid/appwidget/AppWidgetHostView;
    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    .line 979
    const/4 v2, 0x3

    .line 980
    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    .line 981
    invoke-virtual {p3}, Lcom/android/launcher3/util/PendingRequestArgs;->getWidgetHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->getProviderInfo(Landroid/content/Context;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v5

    .line 980
    invoke-virtual {v4, p0, p2, v5}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v4

    .line 982
    .local v4, "layout":Landroid/appwidget/AppWidgetHostView;
    move-object v3, v4

    .line 983
    new-instance v5, Lcom/android/launcher3/Launcher$4;

    invoke-direct {v5, p0, p2, p3, v4}, Lcom/android/launcher3/Launcher$4;-><init>(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/util/PendingRequestArgs;Landroid/appwidget/AppWidgetHostView;)V

    move-object v1, v5

    .end local v4    # "layout":Landroid/appwidget/AppWidgetHostView;
    goto :goto_0

    .line 990
    :cond_0
    if-nez p1, :cond_1

    .line 991
    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-virtual {v4, p2}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 992
    const/4 v2, 0x4

    move v10, v2

    move-object v11, v3

    goto :goto_1

    .line 990
    :cond_1
    :goto_0
    move v10, v2

    move-object v11, v3

    .line 994
    .end local v2    # "animationType":I
    .end local v3    # "boundWidget":Landroid/appwidget/AppWidgetHostView;
    .local v10, "animationType":I
    .local v11, "boundWidget":Landroid/appwidget/AppWidgetHostView;
    :goto_1
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 995
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 996
    invoke-virtual {v3}, Lcom/android/launcher3/dragndrop/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/launcher3/dragndrop/DragView;

    const/4 v9, 0x1

    .line 995
    move-object v3, p3

    move-object v4, v0

    move-object v6, v1

    move v7, v10

    move-object v8, v11

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/Workspace;->animateWidgetDrop(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    goto :goto_2

    .line 998
    :cond_2
    if-eqz v1, :cond_3

    .line 1000
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1002
    :cond_3
    :goto_2
    return-void
.end method

.method protected createAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
    .locals 1

    .line 3225
    new-instance v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-direct {v0, p0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;-><init>(Lcom/android/launcher3/Launcher;)V

    return-object v0
.end method

.method protected createAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;
    .locals 2

    .line 1585
    new-instance v0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    new-instance v1, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;-><init>(Landroid/content/Context;Ljava/util/function/IntConsumer;)V

    return-object v0
.end method

.method protected createOnboardingPrefs(Landroid/content/SharedPreferences;)Lcom/android/launcher3/util/OnboardingPrefs;
    .locals 1
    .param p1, "sharedPrefs"    # Landroid/content/SharedPreferences;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Lcom/android/launcher3/util/OnboardingPrefs<",
            "+",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation

    .line 581
    new-instance v0, Lcom/android/launcher3/util/OnboardingPrefs;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/OnboardingPrefs;-><init>(Lcom/android/launcher3/views/ActivityContext;Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method public createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "info"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 1342
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$layout;->app_icon:I

    .line 1343
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 1344
    .local v0, "favorite":Lcom/android/launcher3/BubbleTextView;
    invoke-virtual {v0, p2}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    .line 1345
    sget-object v1, Lcom/android/launcher3/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1346
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1347
    return-object v0
.end method

.method createShortcut(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 1330
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public createTouchControllers()[Lcom/android/launcher3/util/TouchController;
    .locals 3

    .line 3199
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/launcher3/util/TouchController;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/launcher3/touch/AllAppsSwipeController;

    invoke-direct {v1, p0}, Lcom/android/launcher3/touch/AllAppsSwipeController;-><init>(Lcom/android/launcher3/Launcher;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public deferOverlayCallbacksUntilNextResumeOrStop()V
    .locals 1

    .line 1108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    .line 1109
    return-void
.end method

.method public dispatchDeviceProfileChanged()V
    .locals 1

    .line 612
    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->dispatchDeviceProfileChanged()V

    .line 613
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onDeviceProvideChanged()V

    .line 614
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2057
    const-string v0, "Main"

    const-string v1, "Key event"

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/testing/TestLogging;->recordKeyEvent(Ljava/lang/String;Ljava/lang/String;Landroid/view/KeyEvent;)V

    .line 2058
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 2211
    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 2212
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    .line 2213
    .local v1, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2216
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-nez v2, :cond_0

    .line 2217
    sget v2, Lcom/android/launcher3/R$string;->home_screen:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2218
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/LauncherState;->getDescription(Lcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v2

    .line 2216
    :goto_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2219
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 2063
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2068
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/Launcher;->mLastTouchUpTime:J

    .line 2071
    :pswitch_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mTouchInProgress:Z

    goto :goto_0

    .line 2065
    :pswitch_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mTouchInProgress:Z

    .line 2066
    nop

    .line 2074
    :goto_0
    const-string v0, "Main"

    const-string v1, "Touch event"

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/testing/TestLogging;->recordMotionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/view/MotionEvent;)V

    .line 2075
    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 3042
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/statemanager/StatefulActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3044
    array-length v0, p4

    if-lez v0, :cond_4

    const/4 v0, 0x0

    aget-object v0, p4, v0

    const-string v1, "--all"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Workspace Items"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3046
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v1

    const-string v2, "    "

    if-ge v0, v1, :cond_2

    .line 3047
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  Homescreen "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3049
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    .line 3050
    .local v1, "layout":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 3051
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 3052
    .local v4, "tag":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 3053
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3050
    .end local v4    # "tag":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3046
    .end local v1    # "layout":Landroid/view/ViewGroup;
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3058
    .end local v0    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  Hotseat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3059
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    .line 3060
    .local v0, "layout":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 3061
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 3062
    .local v3, "tag":Ljava/lang/Object;
    if-eqz v3, :cond_3

    .line 3063
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3060
    .end local v3    # "tag":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3068
    .end local v0    # "layout":Landroid/view/ViewGroup;
    .end local v1    # "j":I
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Misc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/android/launcher3/Launcher;->dumpMisc(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmWorkspaceLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmPendingRequestArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPendingActivityResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmRotationHelper: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmAppWidgetHost.isListening: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->isListening()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3077
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, p1, p3}, Lcom/android/launcher3/dragndrop/DragLayer;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3078
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v0, p1, p3}, Lcom/android/launcher3/statemanager/StateManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3079
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-virtual {v0, p1, p3}, Lcom/android/launcher3/popup/PopupDataProvider;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3080
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0, p1, p3}, Lcom/android/launcher3/DeviceProfile;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3083
    :try_start_0
    invoke-static {p3}, Lcom/android/launcher3/logging/FileLog;->flushAll(Ljava/io/PrintWriter;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3086
    goto :goto_3

    .line 3084
    :catch_0
    move-exception v0

    .line 3088
    :goto_3
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/launcher3/LauncherModel;->dumpState(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3090
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_5

    .line 3091
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/launcher3/LauncherCallbacks;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3093
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0, p1, p3}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3094
    return-void
.end method

.method public findFolderIcon(I)Lcom/android/launcher3/folder/FolderIcon;
    .locals 1
    .param p1, "folderIconId"    # I

    .line 1430
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    return-object v0
.end method

.method public finishBindingItems(Lcom/android/launcher3/util/IntSet;)V
    .locals 6
    .param p1, "pagesBoundFirst"    # Lcom/android/launcher3/util/IntSet;

    .line 2778
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "finishBindingItems"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2779
    .local v0, "traceToken":Ljava/lang/Object;
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->restoreInstanceStateForRemainingPages()V

    .line 2781
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/launcher3/Launcher;->setWorkspaceLoading(Z)V

    .line 2782
    invoke-static {}, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->getInstance()Lcom/sonymobile/launcher/badge/SonyBadgeManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mBadgeListener:Lcom/sonymobile/launcher/badge/SonyBadgeManager$BadgeListener;

    invoke-virtual {v2, v3}, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->addListener(Lcom/sonymobile/launcher/badge/SonyBadgeManager$BadgeListener;)V

    .line 2784
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    if-eqz v2, :cond_0

    .line 2785
    iget v2, v2, Lcom/android/launcher3/util/ActivityResultInfo;->requestCode:I

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    iget v3, v3, Lcom/android/launcher3/util/ActivityResultInfo;->resultCode:I

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    iget-object v4, v4, Lcom/android/launcher3/util/ActivityResultInfo;->data:Landroid/content/Intent;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/launcher3/Launcher;->handleActivityResult(IILandroid/content/Intent;)V

    .line 2787
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    .line 2790
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2791
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v1

    goto :goto_0

    .line 2792
    :cond_1
    const/4 v1, -0x1

    :goto_0
    nop

    .line 2796
    .local v1, "currentPage":I
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, v1, v1}, Lcom/android/launcher3/Workspace;->setCurrentPage(II)V

    .line 2797
    new-instance v2, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v2}, Lcom/android/launcher3/util/IntSet;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mPagesToBindSynchronously:Lcom/android/launcher3/util/IntSet;

    .line 2800
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$layout;->folder_application:I

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object v4, v4, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v4, v4, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object v5, v5, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v5, v5, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    mul-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/ViewCache;->setCacheSize(II)V

    .line 2802
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$layout;->folder_page:I

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/ViewCache;->setCacheSize(II)V

    .line 2804
    sget-object v2, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    .line 2805
    return-void
.end method

.method public bridge synthetic getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .line 258
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
    .locals 1

    .line 1772
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    return-object v0
.end method

.method public getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;
    .locals 1

    .line 1546
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    return-object v0
.end method

.method protected getAllAppsEntryEvent()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/launcher3/logging/StatsLogManager$EventEnum;",
            ">;"
        }
    .end annotation

    .line 1159
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DEVICE_SEARCH:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1160
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_ENTRY_WITH_DEVICE_SEARCH:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_0

    .line 1161
    :cond_0
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_ENTRY:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 1159
    :goto_0
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method protected getAllAppsExitEvent()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/launcher3/logging/StatsLogManager$EventEnum;",
            ">;"
        }
    .end annotation

    .line 1201
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_EXIT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;
    .locals 1

    .line 1581
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    return-object v0
.end method

.method public getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation

    .line 1556
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    return-object v0
.end method

.method public getCellLayout(II)Lcom/android/launcher3/CellLayout;
    .locals 1
    .param p1, "container"    # I
    .param p2, "screenId"    # I

    .line 2192
    const/16 v0, -0x65

    if-ne p1, v0, :cond_0

    .line 2193
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 2192
    :goto_0
    return-object v0
.end method

.method protected getDefaultOverlay()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;
    .locals 1

    .line 576
    new-instance v0, Lcom/android/launcher3/Launcher$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$1;-><init>(Lcom/android/launcher3/Launcher;)V

    return-object v0
.end method

.method public getDefaultWorkspaceDragOptions()Lcom/android/launcher3/dragndrop/DragOptions;
    .locals 1

    .line 3286
    new-instance v0, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v0}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    return-object v0
.end method

.method public getDevicePrefs()Landroid/content/SharedPreferences;
    .locals 1

    .line 1604
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 737
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDragController()Lcom/android/launcher3/dragndrop/DragController;
    .locals 1

    .line 1776
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    return-object v0
.end method

.method public getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;
    .locals 1

    .line 1551
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    return-object v0
.end method

.method public bridge synthetic getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;
    .locals 1

    .line 258
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    return-object v0
.end method

.method public getDropTargetBar()Lcom/android/launcher3/DropTargetBar;
    .locals 1

    .line 1572
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    return-object v0
.end method

.method public getFirstMatchForAppClose(ILjava/lang/String;Landroid/os/UserHandle;Z)Landroid/view/View;
    .locals 8
    .param p1, "preferredItemId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "supportsAllAppsState"    # Z

    .line 2828
    new-instance v0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda18;

    invoke-direct {v0, p1}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda18;-><init>(I)V

    .line 2830
    .local v0, "preferredItem":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v1, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda19;

    invoke-direct {v1, p3, p2}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda19;-><init>(Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2838
    .local v1, "packageAndUserAndApp":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p4, :cond_1

    sget-object v5, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v5}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2839
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v5

    .line 2840
    .local v5, "activeRecyclerView":Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    new-array v2, v2, [Ljava/util/function/Predicate;

    aput-object v0, v2, v3

    aput-object v1, v2, v4

    invoke-static {v6, v2}, Lcom/android/launcher3/Launcher;->getFirstMatch(Ljava/lang/Iterable;[Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 2843
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getCurrentScrollY()I

    move-result v4

    if-lez v4, :cond_0

    .line 2844
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 2845
    .local v4, "locationBounds":Landroid/graphics/RectF;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p0, v2, v3, v4, v6}, Lcom/android/launcher3/views/FloatingIconView;->getLocationBoundsForView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 2847
    iget v3, v4, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getHeaderBottom()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v3, v3, v6

    if-gez v3, :cond_0

    .line 2849
    const/4 v3, 0x0

    return-object v3

    .line 2853
    .end local v4    # "locationBounds":Landroid/graphics/RectF;
    :cond_0
    return-object v2

    .line 2855
    .end local v2    # "v":Landroid/view/View;
    .end local v5    # "activeRecyclerView":Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v6

    add-int/2addr v6, v4

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2856
    .local v5, "containers":Ljava/util/List;, "Ljava/util/List<Landroid/view/ViewGroup;>;"
    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/Workspace;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/Hotseat;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2857
    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v7, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda20;

    invoke-direct {v7, v5}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda20;-><init>(Ljava/util/List;)V

    invoke-virtual {v6, v7}, Lcom/android/launcher3/Workspace;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    .line 2861
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/util/function/Predicate;

    aput-object v0, v6, v3

    invoke-static {v0}, Lcom/android/launcher3/util/ItemInfoMatcher;->forFolderMatch(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v3

    aput-object v3, v6, v4

    aput-object v1, v6, v2

    const/4 v2, 0x3

    .line 2862
    invoke-static {v1}, Lcom/android/launcher3/util/ItemInfoMatcher;->forFolderMatch(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v3

    aput-object v3, v6, v2

    .line 2861
    invoke-static {v5, v6}, Lcom/android/launcher3/Launcher;->getFirstMatch(Ljava/lang/Iterable;[Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public getFocusHandler()Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    return-object v0
.end method

.method public getFolderBoundingBox()Landroid/graphics/Rect;
    .locals 1

    .line 1970
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getPageAreaRelativeToDragLayer()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getHotseat()Lcom/android/launcher3/Hotseat;
    .locals 1

    .line 1564
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    return-object v0
.end method

.method public getModel()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .line 1590
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method public getModelWriter()Lcom/android/launcher3/model/ModelWriter;
    .locals 1

    .line 1594
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    return-object v0
.end method

.method public getNormalOverviewScaleAndOffset()[F
    .locals 1

    .line 3232
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public getOnboardingPrefs()Lcom/android/launcher3/util/OnboardingPrefs;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/util/OnboardingPrefs<",
            "+",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnboardingPrefs:Lcom/android/launcher3/util/OnboardingPrefs;

    return-object v0
.end method

.method public getOptionsPopup()Lcom/android/launcher3/popup/ArrowPopup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/popup/ArrowPopup<",
            "*>;"
        }
    .end annotation

    .line 3323
    sget v0, Lcom/android/launcher3/R$id;->popup_container:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/popup/ArrowPopup;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1608
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOldConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;
    .locals 1

    .line 1112
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

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

    .line 1568
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/View;

    return-object v0
.end method

.method public getPagesToBindSynchronously(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;
    .locals 9
    .param p1, "orderedScreenIds"    # Lcom/android/launcher3/util/IntArray;

    .line 2241
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPagesToBindSynchronously:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2242
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPagesToBindSynchronously:Lcom/android/launcher3/util/IntSet;

    .local v0, "visibleIds":Lcom/android/launcher3/util/IntSet;
    goto :goto_0

    .line 2243
    .end local v0    # "visibleIds":Lcom/android/launcher3/util/IntSet;
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_1

    .line 2244
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPageScreenIds()Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    .restart local v0    # "visibleIds":Lcom/android/launcher3/util/IntSet;
    goto :goto_0

    .line 2248
    .end local v0    # "visibleIds":Lcom/android/launcher3/util/IntSet;
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSynchronouslyBoundPages:Lcom/android/launcher3/util/IntSet;

    .line 2250
    .restart local v0    # "visibleIds":Lcom/android/launcher3/util/IntSet;
    :goto_0
    new-instance v1, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v1}, Lcom/android/launcher3/util/IntArray;-><init>()V

    .line 2252
    .local v1, "actualIds":Lcom/android/launcher3/util/IntArray;
    new-instance v2, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v2}, Lcom/android/launcher3/util/IntSet;-><init>()V

    .line 2253
    .local v2, "result":Lcom/android/launcher3/util/IntSet;
    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v3

    const-string v4, "b/200572078"

    if-eqz v3, :cond_3

    .line 2254
    sget-boolean v3, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v3, :cond_2

    .line 2255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPagesToBindSynchronously (1): "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    :cond_2
    return-object v2

    .line 2260
    :cond_3
    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->toArray()[I

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_4

    aget v8, v3, v7

    .line 2261
    .local v8, "id":I
    invoke-virtual {v1, v8}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 2260
    .end local v8    # "id":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2263
    :cond_4
    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v3

    .line 2264
    .local v3, "firstId":I
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/Workspace;->getScreenPair(I)I

    move-result v5

    .line 2267
    .local v5, "pairId":I
    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/IntArray;->contains(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2268
    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/IntSet;->add(I)V

    .line 2269
    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v6, v6, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v6, :cond_6

    invoke-virtual {v1, v5}, Lcom/android/launcher3/util/IntArray;->contains(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2270
    invoke-virtual {v2, v5}, Lcom/android/launcher3/util/IntSet;->add(I)V

    goto :goto_2

    .line 2272
    :cond_5
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v6

    iget-object v6, v6, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda16;

    invoke-direct {v7}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda16;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2273
    invoke-virtual {v1, v5}, Lcom/android/launcher3/util/IntArray;->contains(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2276
    invoke-virtual {v2, v5}, Lcom/android/launcher3/util/IntSet;->add(I)V

    .line 2278
    :cond_6
    :goto_2
    sget-boolean v6, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v6, :cond_7

    .line 2279
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPagesToBindSynchronously (2): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    :cond_7
    return-object v2
.end method

.method public getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    return-object v0
.end method

.method protected getPopupTarget(FF)Landroid/graphics/RectF;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 3178
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->options_menu_thumb_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 3179
    .local v0, "halfSize":F
    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    .line 3180
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float p1, v1

    .line 3181
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float p2, v1

    .line 3183
    :cond_1
    new-instance v1, Landroid/graphics/RectF;

    sub-float v2, p1, v0

    sub-float v3, p2, v0

    add-float v4, p1, v0

    add-float v5, p2, v0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method public getRotationHelper()Lcom/android/launcher3/states/RotationHelper;
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    return-object v0
.end method

.method public getScrimView()Lcom/android/launcher3/views/ScrimView;
    .locals 1

    .line 1577
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    return-object v0
.end method

.method public getSharedPrefs()Landroid/content/SharedPreferences;
    .locals 1

    .line 1599
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getSonyBadgeInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/sonymobile/launcher/badge/SonyBadgeInfo;
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 742
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSonyBadgeDataProvider:Lcom/sonymobile/launcher/badge/SonyBadgeDataProvider;

    invoke-virtual {v0, p1}, Lcom/sonymobile/launcher/badge/SonyBadgeDataProvider;->getSonyBadgeInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/sonymobile/launcher/badge/SonyBadgeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getStateManager()Lcom/android/launcher3/statemanager/StateManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/statemanager/StateManager<",
            "Lcom/android/launcher3/LauncherState;",
            ">;"
        }
    .end annotation

    .line 697
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    return-object v0
.end method

.method public getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;
    .locals 2

    .line 3314
    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAllAppsSessionLogId:Lcom/android/launcher3/logging/InstanceId;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager;->withDefaultInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    return-object v0
.end method

.method public getStringCache()Lcom/android/launcher3/model/StringCache;
    .locals 1

    .line 3026
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStringCache:Lcom/android/launcher3/model/StringCache;

    return-object v0
.end method

.method public getSupportedShortcuts()Ljava/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/android/launcher3/popup/SystemShortcut$Factory;",
            ">;"
        }
    .end annotation

    .line 3221
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/launcher3/popup/SystemShortcut$Factory;

    sget-object v1, Lcom/android/launcher3/popup/SystemShortcut;->APP_INFO:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/popup/SystemShortcut;->WIDGETS:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/popup/SystemShortcut;->INSTALL:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public getWorkspace()Lcom/android/launcher3/Workspace;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/Workspace<",
            "*>;"
        }
    .end annotation

    .line 1560
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    return-object v0
.end method

.method protected handleGestureContract(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1679
    invoke-static {p1}, Lcom/android/launcher3/GestureNavContract;->fromIntent(Landroid/content/Intent;)Lcom/android/launcher3/GestureNavContract;

    move-result-object v0

    .line 1680
    .local v0, "gnc":Lcom/android/launcher3/GestureNavContract;
    if-eqz v0, :cond_0

    .line 1681
    const/4 v1, 0x0

    const/16 v2, 0x2000

    invoke-static {p0, v1, v2}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    .line 1682
    invoke-static {p0, v0}, Lcom/android/launcher3/views/FloatingSurfaceView;->show(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/GestureNavContract;)V

    .line 1684
    :cond_0
    return-void
.end method

.method public hideKeyboard()V
    .locals 2

    .line 1690
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    .line 1691
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1692
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/launcher3/util/UiThreadHelper;->hideKeyboardAsync(Lcom/android/launcher3/views/ActivityContext;Landroid/os/IBinder;)V

    .line 1694
    :cond_0
    return-void
.end method

.method protected initDeviceProfile(Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 3
    .param p1, "idp"    # Lcom/android/launcher3/InvariantDeviceProfile;

    .line 677
    invoke-virtual {p1, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 678
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 680
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getMultiWindowDisplaySize()Lcom/android/launcher3/util/WindowBounds;

    move-result-object v1

    .line 679
    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/DeviceProfile;->getMultiWindowProfile(Landroid/content/Context;Lcom/android/launcher3/util/WindowBounds;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 683
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onDeviceProfileInitiated()V

    .line 684
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/launcher3/LauncherModel;->getWriter(ZZLcom/android/launcher3/model/BgDataModel$Callbacks;)Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    .line 685
    return-void
.end method

.method public invalidateParent(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 747
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ltz v0, :cond_0

    .line 748
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object v0

    .line 749
    .local v0, "folderIcon":Landroid/view/View;
    instance-of v1, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v1, :cond_0

    .line 750
    new-instance v1, Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v1, v2}, Lcom/android/launcher3/folder/FolderGridOrganizer;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 751
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderGridOrganizer;

    move-result-object v1

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    .line 752
    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/FolderGridOrganizer;->isItemInPreview(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 753
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 757
    .end local v0    # "folderIcon":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public isBindingItems()Z
    .locals 1

    .line 1833
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    return v0
.end method

.method public isDraggingEnabled()Z
    .locals 1

    .line 726
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isHotseatLayout(Landroid/view/View;)Z
    .locals 1
    .param p1, "layout"    # Landroid/view/View;

    .line 2185
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTouchInProgress()Z
    .locals 1

    .line 2082
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mTouchInProgress:Z

    return v0
.end method

.method public isWorkspaceLoading()Z
    .locals 1

    .line 1828
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    return v0
.end method

.method public isWorkspaceLocked()Z
    .locals 1

    .line 1824
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method synthetic lambda$bindAddScreens$9$com-android-launcher3-Launcher(Lcom/android/launcher3/util/IntSet;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "screenIds"    # Lcom/android/launcher3/util/IntSet;
    .param p2, "screenId"    # Ljava/lang/Integer;

    .line 2352
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getScreenPair(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/IntSet;->add(I)V

    return-void
.end method

.method synthetic lambda$createAppWidgetHost$4$com-android-launcher3-Launcher(I)V
    .locals 1
    .param p1, "appWidgetId"    # I

    .line 1586
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->removeWidget(I)V

    return-void
.end method

.method synthetic lambda$crossFadeWithPreviousAppearance$16$com-android-launcher3-Launcher(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "crossFadeHelper"    # Landroid/widget/ImageView;

    .line 3277
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/LauncherRootView;->removeView(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$handleActivityResult$3$com-android-launcher3-Launcher()V
    .locals 2

    .line 868
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    return-void
.end method

.method synthetic lambda$onCreate$0$com-android-launcher3-Launcher(Landroid/app/NotificationManager;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "notificationManager"    # Landroid/app/NotificationManager;
    .param p2, "thread"    # Ljava/lang/Thread;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 450
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, "stackTrace":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 453
    .local v1, "shareIntent":Landroid/content/Intent;
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 456
    const/4 v2, 0x0

    const/high16 v3, 0xc000000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 459
    .local v3, "sharePendingIntent":Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification$Builder;

    const-string v5, "com.android.launcher3.Debug"

    invoke-direct {v4, p0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 460
    const v5, 0x1080038

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 461
    const-string v5, "Launcher crash detected!"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 462
    invoke-virtual {v5, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 463
    const v5, 0x1080052

    const-string v6, "Share"

    invoke-virtual {v4, v5, v6, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 464
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 465
    .local v4, "notification":Landroid/app/Notification;
    const-string v5, "Debug"

    invoke-virtual {p1, v5, v2, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 468
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    .line 469
    .local v2, "defaultUncaughtExceptionHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v2, :cond_0

    .line 470
    invoke-interface {v2, p2, p3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 472
    :cond_0
    return-void
.end method

.method synthetic lambda$onCreate$1$com-android-launcher3-Launcher()V
    .locals 2

    .line 567
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    return-void
.end method

.method synthetic lambda$onInitialBindComplete$11$com-android-launcher3-Launcher()V
    .locals 2

    .line 2755
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsStore;->disableDeferUpdates(I)V

    return-void
.end method

.method synthetic lambda$onPluginConnected$2$com-android-launcher3-Launcher(Lcom/android/systemui/plugins/LauncherOverlayPlugin;)Lcom/android/systemui/plugins/shared/LauncherOverlayManager;
    .locals 1
    .param p1, "overlayManager"    # Lcom/android/systemui/plugins/LauncherOverlayPlugin;

    .line 590
    invoke-interface {p1, p0, p0}, Lcom/android/systemui/plugins/LauncherOverlayPlugin;->createOverlayManager(Landroid/app/Activity;Lcom/android/systemui/plugins/shared/LauncherExterns;)Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onRestoreInstanceState$5$com-android-launcher3-Launcher(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "screenId"    # Ljava/lang/Integer;

    .line 1701
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v0

    .line 1702
    .local v0, "pageIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1703
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->restoreInstanceStateForChild(I)V

    .line 1705
    :cond_0
    return-void
.end method

.method synthetic lambda$startActivitySafely$6$com-android-launcher3-Launcher(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 2153
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 922
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    .line 923
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->handleActivityResult(IILandroid/content/Intent;)V

    .line 924
    return-void
.end method

.method public onAllAppsTransition(F)V
    .locals 0
    .param p1, "progress"    # F

    .line 3296
    return-void
.end method

.method public onAssistantVisibilityChanged(F)V
    .locals 2
    .param p1, "visibility"    # F

    .line 664
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getQsb()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 665
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1517
    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onAttachedToWindow()V

    .line 1518
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onAttachedToWindow()V

    .line 1519
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 2087
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->finishAutoCancelActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2088
    return-void

    .line 2091
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2092
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    .line 2093
    return-void

    .line 2098
    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 2099
    .local v0, "topView":Lcom/android/launcher3/AbstractFloatingView;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/launcher3/AbstractFloatingView;->onBackPressed()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 2102
    :cond_2
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2103
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isInOwnOrderEditMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2104
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setOwnOrderEditMode(Z)V

    .line 2105
    return-void

    .line 2107
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onStateBack()V

    goto :goto_1

    .line 2101
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onStateBack()V

    .line 2109
    :cond_5
    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 639
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 640
    .local v0, "diff":I
    and-int/lit16 v1, v0, 0x480

    if-eqz v1, :cond_0

    .line 641
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->onIdpChanged(Z)V

    .line 644
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 646
    invoke-static {p0}, Lcom/android/launcher3/uioverrides/SomcUtils;->hideDialog(Lcom/android/launcher3/BaseDraggingActivity;)V

    .line 647
    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 648
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 415
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 416
    const-string v0, "DisplayWorkspaceFirstFrame"

    invoke-static {v0, v1}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 418
    const/4 v0, 0x1

    const-string v2, "DisplayAllApps"

    invoke-static {v2, v0}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 421
    :cond_0
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const/4 v2, 0x5

    const-string v3, "Launcher.onCreate"

    invoke-virtual {v0, v3, v2}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    .line 438
    .local v0, "traceToken":Ljava/lang/Object;
    sget-boolean v2, Lcom/android/launcher3/Utilities;->IS_DEBUG_DEVICE:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->NOTIFY_CRASHES:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 439
    const-string v2, "com.android.launcher3.Debug"

    .line 440
    .local v2, "notificationChannelId":Ljava/lang/String;
    const-string v3, "Debug"

    .line 441
    .local v3, "notificationChannelName":Ljava/lang/String;
    const-string v4, "Debug"

    .line 442
    .local v4, "notificationTag":Ljava/lang/String;
    const/4 v5, 0x0

    .line 444
    .local v5, "notificationId":I
    const-class v6, Landroid/app/NotificationManager;

    invoke-virtual {p0, v6}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 445
    .local v6, "notificationManager":Landroid/app/NotificationManager;
    new-instance v7, Landroid/app/NotificationChannel;

    const/4 v8, 0x4

    const-string v9, "com.android.launcher3.Debug"

    const-string v10, "Debug"

    invoke-direct {v7, v9, v10, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 449
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    new-instance v8, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda10;

    invoke-direct {v8, p0, v6}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda10;-><init>(Lcom/android/launcher3/Launcher;Landroid/app/NotificationManager;)V

    invoke-virtual {v7, v8}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 475
    .end local v2    # "notificationChannelId":Ljava/lang/String;
    .end local v3    # "notificationChannelName":Ljava/lang/String;
    .end local v4    # "notificationTag":Ljava/lang/String;
    .end local v5    # "notificationId":I
    .end local v6    # "notificationManager":Landroid/app/NotificationManager;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->onCreate(Landroid/os/Bundle;)V

    .line 477
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    .line 478
    .local v2, "app":Lcom/android/launcher3/LauncherAppState;
    new-instance v3, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mOldConfig:Landroid/content/res/Configuration;

    .line 479
    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 481
    new-instance v3, Lcom/android/launcher3/states/RotationHelper;

    invoke-direct {v3, p0}, Lcom/android/launcher3/states/RotationHelper;-><init>(Lcom/android/launcher3/BaseActivity;)V

    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    .line 482
    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v3

    .line 483
    .local v3, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Launcher;->initDeviceProfile(Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 484
    invoke-virtual {v3, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->addOnChangeListener(Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;)V

    .line 485
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 486
    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    .line 487
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->createAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/Launcher;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    .line 489
    new-instance v4, Lcom/android/launcher3/dragndrop/LauncherDragController;

    invoke-direct {v4, p0}, Lcom/android/launcher3/dragndrop/LauncherDragController;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v4, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    .line 490
    new-instance v4, Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-direct {v4, p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v4, p0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    .line 491
    new-instance v4, Lcom/android/launcher3/statemanager/StateManager;

    sget-object v5, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-direct {v4, p0, v5}, Lcom/android/launcher3/statemanager/StateManager;-><init>(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher3/statemanager/BaseState;)V

    iput-object v4, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    .line 493
    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v4}, Lcom/android/launcher3/Launcher;->createOnboardingPrefs(Landroid/content/SharedPreferences;)Lcom/android/launcher3/util/OnboardingPrefs;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/Launcher;->mOnboardingPrefs:Lcom/android/launcher3/util/OnboardingPrefs;

    .line 495
    new-instance v4, Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-direct {v4, p0}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    .line 496
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->createAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    .line 497
    invoke-virtual {v4}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->startListening()V

    .line 499
    sget v4, Lcom/android/launcher3/R$layout;->launcher:I

    invoke-virtual {p0, v4}, Lcom/android/launcher3/Launcher;->inflateRootView(I)V

    .line 500
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->setupViews()V

    .line 501
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->crossFadeWithPreviousAppearance()V

    .line 502
    new-instance v4, Lcom/android/launcher3/popup/PopupDataProvider;

    new-instance v5, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda11;

    invoke-direct {v5, p0}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda11;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-direct {v4, v5}, Lcom/android/launcher3/popup/PopupDataProvider;-><init>(Ljava/util/function/Consumer;)V

    iput-object v4, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    .line 504
    new-instance v4, Lcom/sonymobile/launcher/badge/SonyBadgeDataProvider;

    new-instance v5, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda11;

    invoke-direct {v5, p0}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda11;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-direct {v4, v5}, Lcom/sonymobile/launcher/badge/SonyBadgeDataProvider;-><init>(Ljava/util/function/Consumer;)V

    iput-object v4, p0, Lcom/android/launcher3/Launcher;->mSonyBadgeDataProvider:Lcom/sonymobile/launcher/badge/SonyBadgeDataProvider;

    .line 505
    invoke-static {}, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->getInstance()Lcom/sonymobile/launcher/badge/SonyBadgeManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->init(Lcom/android/launcher3/Launcher;)V

    .line 507
    sget-object v4, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v4, p0}, Lcom/android/launcher3/util/ActivityTracker;->handleCreate(Lcom/android/launcher3/BaseActivity;)Z

    move-result v4

    .line 508
    .local v4, "internalStateHandled":Z
    if-eqz v4, :cond_2

    .line 509
    if-eqz p1, :cond_2

    .line 512
    const-string v5, "launcher.state"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 515
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->restoreState(Landroid/os/Bundle;)V

    .line 516
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v5}, Lcom/android/launcher3/statemanager/StateManager;->reapplyState()V

    .line 518
    if-eqz p1, :cond_3

    .line 519
    const-string v5, "launcher.current_screen_ids"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    .line 520
    .local v5, "pageIds":[I
    if-eqz v5, :cond_3

    .line 521
    invoke-static {v5}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/Launcher;->mPagesToBindSynchronously:Lcom/android/launcher3/util/IntSet;

    .line 524
    .end local v5    # "pageIds":[I
    :cond_3
    invoke-static {p0}, Lcom/android/launcher3/LauncherModel;->duplicateCheck(Landroid/content/Context;)V

    .line 525
    invoke-static {p0}, Lcom/android/launcher3/uioverrides/SomcUtils;->isVersionUp(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 526
    invoke-static {p0}, Lcom/android/launcher3/LauncherModel;->replaceCheck(Landroid/content/Context;)V

    .line 529
    :cond_4
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v5, p0}, Lcom/android/launcher3/LauncherModel;->addCallbacksAndLoad(Lcom/android/launcher3/model/BgDataModel$Callbacks;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 530
    if-nez v4, :cond_5

    .line 531
    const-string v5, "b/223498680"

    const-string v6, "Launcher onCreate not binding sync, prevent drawing"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda12;

    invoke-direct {v6, v5}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Boolean;)V

    iput-object v6, p0, Lcom/android/launcher3/Launcher;->mOnInitialBindListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 539
    :cond_5
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/android/launcher3/Launcher;->setDefaultKeyMode(I)V

    .line 541
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/launcher3/Launcher;->setContentView(Landroid/view/View;)V

    .line 542
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mOnInitialBindListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v5, :cond_6

    .line 543
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherRootView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mOnInitialBindListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 545
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherRootView;->dispatchInsets()V

    .line 548
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/android/launcher3/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 550
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v5

    sget v6, Lcom/android/launcher3/R$attr;->isWorkspaceDarkText:I

    .line 551
    invoke-static {p0, v6}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v6

    .line 550
    invoke-virtual {v5, v1, v6}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(IZ)V

    .line 553
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v5, :cond_7

    .line 554
    invoke-interface {v5, p1}, Lcom/android/launcher3/LauncherCallbacks;->onCreate(Landroid/os/Bundle;)V

    .line 556
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDefaultOverlay()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    .line 557
    sget-object v5, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v5, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;

    const-class v6, Lcom/android/systemui/plugins/LauncherOverlayPlugin;

    invoke-virtual {v5, p0, v6, v1}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 560
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/states/RotationHelper;->initialize()V

    .line 561
    invoke-static {}, Lcom/sonymobile/launcher/idd/IddManager;->getInstance()Lcom/sonymobile/launcher/idd/IddManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonymobile/launcher/idd/IddManager;->init(Landroid/content/Context;)Lcom/sonymobile/launcher/idd/IddManager;

    .line 562
    invoke-static {p0, p0}, Lcom/sonymobile/launcher/idd/IddJobService;->schedule(Landroid/content/Context;Lcom/android/launcher3/Launcher;)V

    .line 563
    invoke-static {p0}, Lcom/android/launcher3/uioverrides/SysUINavigationModeWrapper;->addSysUiNavigationModeChangeListener(Landroid/content/Context;)V

    .line 564
    sget-object v1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    .line 566
    sget-object v1, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/pm/UserCache;

    new-instance v5, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda13;

    invoke-direct {v5, p0}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda13;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v1, v5}, Lcom/android/launcher3/pm/UserCache;->addUserChangeListener(Ljava/lang/Runnable;)Lcom/android/launcher3/util/SafeCloseable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mUserChangedCallbackCloseable:Lcom/android/launcher3/util/SafeCloseable;

    .line 569
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-eqz v1, :cond_8

    .line 570
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v5, 0x30

    invoke-virtual {v1, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 572
    :cond_8
    sget v1, Lcom/android/launcher3/R$string;->home_screen:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->setTitle(I)V

    .line 573
    return-void
.end method

.method protected onDeferredResumed()V
    .locals 2

    .line 1036
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->logStopAndResume(Z)V

    .line 1039
    sget-object v1, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/ItemInstallQueue;

    .line 1040
    invoke-virtual {v1, v0}, Lcom/android/launcher3/model/ItemInstallQueue;->resumeModelPush(I)V

    .line 1043
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->validateModelDataOnResume()V

    .line 1046
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-static {v1}, Lcom/android/launcher3/notification/NotificationListener;->addNotificationsChangedListener(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)V

    .line 1048
    invoke-static {p0}, Lcom/android/launcher3/allapps/DiscoveryBounce;->showForHomeIfNeeded(Lcom/android/launcher3/Launcher;)V

    .line 1049
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->setActivityResumed(Z)V

    .line 1050
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1742
    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onDestroy()V

    .line 1743
    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/ActivityTracker;->onActivityDestroyed(Lcom/android/launcher3/BaseActivity;)V

    .line 1745
    invoke-static {p0}, Lcom/sonymobile/launcher/idd/IddJobService;->cancel(Landroid/content/Context;)V

    .line 1746
    invoke-static {p0}, Lcom/android/launcher3/uioverrides/SysUINavigationModeWrapper;->removeSysUiNavigationModeChangeListener(Landroid/content/Context;)V

    .line 1747
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1748
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->removeFolderListeners()V

    .line 1749
    sget-object v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 1750
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->destroy()V

    .line 1751
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherModel;->removeCallbacks(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    .line 1752
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/states/RotationHelper;->destroy()V

    .line 1755
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1758
    goto :goto_0

    .line 1756
    :catch_0
    move-exception v0

    .line 1757
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "Launcher"

    const-string v2, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1760
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :goto_0
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/method/TextKeyListener;->release()V

    .line 1762
    invoke-static {}, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->getInstance()Lcom/sonymobile/launcher/badge/SonyBadgeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->destroy()V

    .line 1764
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->clearPendingBinds()V

    .line 1765
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->removeOnChangeListener(Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;)V

    .line 1767
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 1768
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mUserChangedCallbackCloseable:Lcom/android/launcher3/util/SafeCloseable;

    invoke-interface {v0}, Lcom/android/launcher3/util/SafeCloseable;->close()V

    .line 1769
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1523
    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onDetachedFromWindow()V

    .line 1524
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onDetachedFromWindow()V

    .line 1525
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->closeContextMenu()V

    .line 1526
    return-void
.end method

.method public onDragLayerHierarchyChanged()V
    .locals 0

    .line 3204
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 2

    .line 618
    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onEnterAnimationComplete()V

    .line 619
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/states/RotationHelper;->setCurrentTransitionRequest(I)V

    .line 624
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-nez v0, :cond_0

    .line 625
    const/16 v0, 0x2000

    invoke-static {p0, v1, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    .line 627
    :cond_0
    return-void
.end method

.method public onErrorStartingShortcut(Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 2132
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2133
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2134
    const-string v0, "android.permission.CALL_PHONE"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2137
    nop

    .line 2138
    const/16 v1, 0xe

    invoke-static {v1, p1, p2}, Lcom/android/launcher3/util/PendingRequestArgs;->forIntent(ILandroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;

    move-result-object v2

    .line 2137
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    .line 2139
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Launcher;->requestPermissions([Ljava/lang/String;I)V

    .line 2141
    const/4 v0, 0x1

    return v0

    .line 2143
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onIdpChanged(Z)V
    .locals 1
    .param p1, "modelPropertiesChanged"    # Z

    .line 652
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->initDeviceProfile(Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 653
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->dispatchDeviceProfileChanged()V

    .line 654
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->reapplyUi()V

    .line 655
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->recreateControllers()V

    .line 659
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 660
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    .line 661
    return-void
.end method

.method public onInitialBindComplete(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;)V
    .locals 3
    .param p1, "boundPages"    # Lcom/android/launcher3/util/IntSet;
    .param p2, "pendingTasks"    # Lcom/android/launcher3/util/RunnableList;

    .line 2747
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mSynchronouslyBoundPages:Lcom/android/launcher3/util/IntSet;

    .line 2748
    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPagesToBindSynchronously:Lcom/android/launcher3/util/IntSet;

    .line 2750
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->clearPendingBinds()V

    .line 2751
    new-instance v0, Lcom/android/launcher3/util/ViewOnDrawExecutor;

    invoke-direct {v0, p2}, Lcom/android/launcher3/util/ViewOnDrawExecutor;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    .line 2752
    .local v0, "executor":Lcom/android/launcher3/util/ViewOnDrawExecutor;
    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    .line 2753
    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2754
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/AllAppsStore;->enableDeferUpdates(I)V

    .line 2755
    new-instance v1, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda21;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {p2, v1}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 2759
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mOnInitialBindListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v1, :cond_1

    .line 2760
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherRootView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mOnInitialBindListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2761
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mOnInitialBindListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 2764
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->onLoadAnimationCompleted()V

    .line 2765
    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->attachTo(Lcom/android/launcher3/Launcher;)V

    .line 2766
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v1, :cond_2

    .line 2767
    const/4 v1, 0x0

    const-string v2, "DisplayWorkspaceFirstFrame"

    invoke-static {v2, v1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 2770
    :cond_2
    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 3119
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3120
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 3134
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->getSupportedActions(Lcom/android/launcher3/Launcher;Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 3128
    :sswitch_0
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3129
    invoke-static {p0}, Lcom/android/launcher3/views/OptionsPopupView;->openWidgets(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    .line 3130
    return v0

    .line 3122
    :sswitch_1
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3123
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 3124
    return v0

    .line 3134
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    .line 3135
    .local v1, "la":Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;
    iget v2, v1, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;->keyCode:I

    if-ne v2, p1, :cond_0

    .line 3136
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;->invokeFromKeyboard(Landroid/view/View;)Z

    move-result v0

    return v0

    .line 3138
    .end local v1    # "la":Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;
    :cond_0
    goto :goto_0

    .line 3141
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/statemanager/StatefulActivity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_1
        0x33 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 3146
    const/16 v0, 0x52

    if-ne p1, v0, :cond_2

    .line 3149
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 3150
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3152
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->closeOpenViews()V

    .line 3156
    sget-boolean v0, Lcom/android/launcher3/Utilities;->IS_RUNNING_IN_TEST_HARNESS:Z

    if-eqz v0, :cond_0

    .line 3157
    const-string v0, "TaplTarget"

    const-string v1, "Opening options popup on key up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3159
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, v0, v0}, Lcom/android/launcher3/Launcher;->showDefaultOptions(FF)V

    .line 3161
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 3163
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/statemanager/StatefulActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1
    .param p1, "isInMultiWindowMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 631
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/statemanager/StatefulActivity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 633
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->initDeviceProfile(Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 634
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->dispatchDeviceProfileChanged()V

    .line 635
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1613
    sget-boolean v0, Lcom/android/launcher3/Utilities;->IS_RUNNING_IN_TEST_HARNESS:Z

    if-eqz v0, :cond_0

    .line 1614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Launcher.onNewIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaplTarget"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    :cond_0
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "Launcher.onNewIntent"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1617
    .local v0, "traceToken":Ljava/lang/Object;
    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1619
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->hasWindowFocus()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v4, 0x400000

    and-int/2addr v1, v4

    if-eq v1, v4, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 1624
    .local v1, "alreadyOnHome":Z
    :goto_0
    if-eqz v1, :cond_2

    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v4}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1625
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v4

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    .line 1626
    .local v4, "shouldMoveToDefaultScreen":Z
    :goto_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1627
    .local v5, "isActionMain":Z
    sget-object v6, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v6, p0}, Lcom/android/launcher3/util/ActivityTracker;->handleNewIntent(Lcom/android/launcher3/BaseActivity;)Z

    move-result v6

    .line 1628
    .local v6, "internalStateHandled":Z
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->hideKeyboard()V

    .line 1630
    if-eqz v5, :cond_8

    .line 1631
    if-nez v6, :cond_5

    .line 1633
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isStarted()Z

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/launcher3/Launcher;->closeOpenViews(Z)V

    .line 1635
    sget-object v7, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v7}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1638
    iget-object v7, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    sget-object v8, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    iget-object v9, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v9}, Lcom/android/launcher3/statemanager/StateManager;->shouldAnimateStateChange()Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    .line 1642
    :cond_3
    if-nez v1, :cond_4

    .line 1643
    iget-object v7, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isStarted()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->reset(Z)V

    .line 1646
    :cond_4
    if-eqz v4, :cond_5

    iget-object v7, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher3/Workspace;->isHandlingTouch()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1647
    iget-object v7, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda8;

    invoke-direct {v8, v7}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda8;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-virtual {v7, v8}, Lcom/android/launcher3/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1651
    :cond_5
    iget-object v7, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v7, :cond_6

    .line 1652
    invoke-interface {v7, v6}, Lcom/android/launcher3/LauncherCallbacks;->onHomeIntent(Z)V

    .line 1654
    :cond_6
    iget-object v7, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isStarted()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isForceInvisible()Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_2

    :cond_7
    move v2, v3

    :goto_2
    invoke-interface {v7, v2}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->hideOverlay(Z)V

    .line 1655
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->handleGestureContract(Landroid/content/Intent;)V

    goto :goto_3

    .line 1656
    :cond_8
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.ALL_APPS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1657
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->showAllAppsFromIntent(Z)V

    goto :goto_3

    .line 1658
    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SHOW_WORK_APPS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1659
    invoke-direct {p0, v1}, Lcom/android/launcher3/Launcher;->showAllAppsWorkTabFromIntent(Z)V

    .line 1662
    :cond_a
    :goto_3
    sget-object v2, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    .line 1663
    return-void
.end method

.method public onOneHandedStateChanged(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .line 672
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->onOneHandedModeStateChanged(Z)V

    .line 673
    return-void
.end method

.method public onOverlayVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 2916
    return-void
.end method

.method public onPageEndTransition()V
    .locals 0

    .line 2922
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1224
    sget-object v0, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/ItemInstallQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/ItemInstallQueue;->pauseModelPush(I)V

    .line 1226
    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onPause()V

    .line 1227
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    .line 1228
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/Launcher;->mLastTouchUpTime:J

    .line 1229
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DropTargetBar;->animateToVisibility(Z)V

    .line 1231
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    if-nez v0, :cond_0

    .line 1232
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivityPaused(Landroid/app/Activity;)V

    .line 1234
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->setActivityResumed(Z)V

    .line 1235
    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/LauncherOverlayPlugin;Landroid/content/Context;)V
    .locals 1
    .param p1, "overlayManager"    # Lcom/android/systemui/plugins/LauncherOverlayPlugin;
    .param p2, "context"    # Landroid/content/Context;

    .line 590
    new-instance v0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda9;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/systemui/plugins/LauncherOverlayPlugin;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->switchOverlay(Ljava/util/function/Supplier;)V

    .line 591
    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .line 258
    check-cast p1, Lcom/android/systemui/plugins/LauncherOverlayPlugin;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Launcher;->onPluginConnected(Lcom/android/systemui/plugins/LauncherOverlayPlugin;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/LauncherOverlayPlugin;)V
    .locals 1
    .param p1, "plugin"    # Lcom/android/systemui/plugins/LauncherOverlayPlugin;

    .line 595
    new-instance v0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda17;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->switchOverlay(Ljava/util/function/Supplier;)V

    .line 596
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .line 258
    check-cast p1, Lcom/android/systemui/plugins/LauncherOverlayPlugin;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->onPluginDisconnected(Lcom/android/systemui/plugins/LauncherOverlayPlugin;)V

    return-void
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 5
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    .line 3100
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3101
    .local v0, "shortcutInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/KeyboardShortcutInfo;>;"
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3102
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    sget v2, Lcom/android/launcher3/R$string;->all_apps_button_label:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1d

    const/16 v4, 0x1000

    invoke-direct {v1, v2, v3, v4}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3104
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    sget v2, Lcom/android/launcher3/R$string;->widget_button_text:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x33

    invoke-direct {v1, v2, v3, v4}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3107
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->getSupportedActions(Lcom/android/launcher3/Launcher;Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda26;

    invoke-direct {v2, v0}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda26;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 3110
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3111
    new-instance v1, Landroid/view/KeyboardShortcutGroup;

    sget v2, Lcom/android/launcher3/R$string;->home_screen:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3114
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/statemanager/StatefulActivity;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    .line 3115
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 929
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    .line 930
    .local v0, "pendingArgs":Lcom/android/launcher3/util/PendingRequestArgs;
    const/16 v1, 0xe

    if-ne p1, v1, :cond_2

    if-eqz v0, :cond_2

    .line 931
    invoke-virtual {v0}, Lcom/android/launcher3/util/PendingRequestArgs;->getRequestCode()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 932
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    .line 934
    const/4 v2, 0x0

    .line 935
    .local v2, "v":Landroid/view/View;
    iget v3, v0, Lcom/android/launcher3/util/PendingRequestArgs;->container:I

    iget v4, v0, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:I

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/Launcher;->getCellLayout(II)Lcom/android/launcher3/CellLayout;

    move-result-object v3

    .line 936
    .local v3, "layout":Lcom/android/launcher3/CellLayout;
    if-eqz v3, :cond_0

    .line 937
    iget v4, v0, Lcom/android/launcher3/util/PendingRequestArgs;->cellX:I

    iget v5, v0, Lcom/android/launcher3/util/PendingRequestArgs;->cellY:I

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    .line 939
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/util/PendingRequestArgs;->getPendingIntent()Landroid/content/Intent;

    move-result-object v4

    .line 941
    .local v4, "intent":Landroid/content/Intent;
    array-length v5, p3

    const/4 v6, 0x0

    if-lez v5, :cond_1

    aget v5, p3, v6

    if-nez v5, :cond_1

    .line 943
    invoke-virtual {p0, v2, v4, v1}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z

    goto :goto_0

    .line 946
    :cond_1
    sget v1, Lcom/android/launcher3/R$string;->msg_no_phone_permission:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    sget v7, Lcom/android/launcher3/R$string;->derived_app_name:I

    .line 947
    invoke-virtual {p0, v7}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 946
    invoke-virtual {p0, v1, v5}, Lcom/android/launcher3/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 947
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 950
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "layout":Lcom/android/launcher3/CellLayout;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .line 1698
    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1699
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSynchronouslyBoundPages:Lcom/android/launcher3/util/IntSet;

    if-eqz v0, :cond_0

    .line 1700
    new-instance v1, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSet;->forEach(Ljava/util/function/Consumer;)V

    .line 1707
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1206
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "Launcher.onResume"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    .line 1208
    .local v0, "traceToken":Ljava/lang/Object;
    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onResume()V

    .line 1210
    iget-boolean v1, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    if-eqz v1, :cond_0

    .line 1211
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->scheduleDeferredCheck()V

    goto :goto_0

    .line 1213
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v1, p0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivityResumed(Landroid/app/Activity;)V

    .line 1216
    :goto_0
    const/4 v1, 0x0

    const v2, 0x7a274

    invoke-static {p0, v1, v2}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V

    .line 1217
    invoke-static {p0}, Lcom/android/launcher3/dragndrop/DragView;->removeAllViews(Lcom/android/launcher3/views/ActivityContext;)V

    .line 1218
    sget-object v1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    .line 1219
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 5

    .line 1530
    new-instance v0, Lcom/android/launcher3/Launcher$NonConfigInstance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/Launcher$NonConfigInstance;-><init>(Lcom/android/launcher3/Launcher$NonConfigInstance-IA;)V

    .line 1531
    .local v0, "instance":Lcom/android/launcher3/Launcher$NonConfigInstance;
    new-instance v1, Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mOldConfig:Landroid/content/res/Configuration;

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, v0, Lcom/android/launcher3/Launcher$NonConfigInstance;->config:Landroid/content/res/Configuration;

    .line 1533
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getWidth()I

    move-result v1

    .line 1534
    .local v1, "width":I
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getHeight()I

    move-result v2

    .line 1536
    .local v2, "height":I
    sget-object v3, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_LAUNCHER_ACTIVITY_THEME_CROSSFADE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v3}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    if-lez v1, :cond_0

    if-lez v2, :cond_0

    .line 1539
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 1540
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda7;

    invoke-direct {v4, v3}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda7;-><init>(Lcom/android/launcher3/dragndrop/DragLayer;)V

    invoke-static {v1, v2, v4}, Lcom/android/launcher3/icons/BitmapRenderer;->createHardwareBitmap(IILcom/android/launcher3/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v0, Lcom/android/launcher3/Launcher$NonConfigInstance;->snapshot:Landroid/graphics/Bitmap;

    .line 1542
    :cond_0
    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 1711
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 1712
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPageScreenIds()Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->toArray()[I

    move-result-object v0

    .line 1711
    const-string v1, "launcher.current_screen_ids"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1713
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget v0, v0, Lcom/android/launcher3/LauncherState;->ordinal:I

    const-string v1, "launcher.state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1715
    nop

    .line 1716
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 1717
    .local v0, "widgets":Lcom/android/launcher3/AbstractFloatingView;
    const-string v1, "launcher.widget_panel"

    if-eqz v0, :cond_0

    .line 1718
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 1719
    .local v2, "widgetsState":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {v0, v2}, Lcom/android/launcher3/AbstractFloatingView;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1720
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1721
    .end local v2    # "widgetsState":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    goto :goto_0

    .line 1722
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1725
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->finishAutoCancelActionMode()Z

    .line 1727
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    if-eqz v1, :cond_1

    .line 1728
    const-string v2, "launcher.request_args"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1730
    :cond_1
    iget v1, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    const-string v2, "launcher.request_code"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1732
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    if-eqz v1, :cond_2

    .line 1733
    const-string v2, "launcher.activity_result"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1736
    :cond_2
    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1737
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v1, p0, p1}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1738
    return-void
.end method

.method protected onScreenOff()V
    .locals 2

    .line 2118
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    if-nez v0, :cond_1

    .line 2119
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2120
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onUiChangedWhileSleeping()V

    .line 2122
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 2124
    :cond_1
    return-void
.end method

.method public onScrollChanged(F)V
    .locals 1
    .param p1, "progress"    # F

    .line 1244
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_0

    .line 1245
    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->onOverlayScrollChanged(F)V

    .line 1247
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 1021
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "Launcher.onStart"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    .line 1023
    .local v0, "traceToken":Ljava/lang/Object;
    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onStart()V

    .line 1024
    iget-boolean v1, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    if-nez v1, :cond_0

    .line 1025
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v1, p0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivityStarted(Landroid/app/Activity;)V

    .line 1028
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->setActivityStarted(Z)V

    .line 1029
    sget-object v1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    .line 1030
    invoke-static {}, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->getInstance()Lcom/sonymobile/launcher/badge/SonyBadgeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mBadgeListener:Lcom/sonymobile/launcher/badge/SonyBadgeManager$BadgeListener;

    invoke-virtual {v1, v2}, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->addListener(Lcom/sonymobile/launcher/badge/SonyBadgeManager$BadgeListener;)V

    .line 1031
    return-void
.end method

.method protected onStateBack()V
    .locals 1

    .line 2112
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherState;->onBackPressed(Lcom/android/launcher3/Launcher;)V

    .line 2113
    return-void
.end method

.method public onStateSetEnd(Lcom/android/launcher3/LauncherState;)V
    .locals 4
    .param p1, "state"    # Lcom/android/launcher3/LauncherState;

    .line 1166
    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->onStateSetEnd(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 1167
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->setStateIsNormal(Z)V

    .line 1168
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    sget v1, Lcom/android/launcher3/LauncherState;->FLAG_MULTI_PAGE:I

    invoke-virtual {p1, v1}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setClipChildren(Z)V

    .line 1170
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->finishAutoCancelActionMode()Z

    .line 1171
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->removeActivityFlags(I)V

    .line 1174
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1175
    iget v0, p1, Lcom/android/launcher3/LauncherState;->ordinal:I

    invoke-static {p0, v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendStateEventToTest(Landroid/content/Context;I)V

    .line 1177
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_1

    .line 1179
    sget-object v0, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/ItemInstallQueue;

    const/4 v1, 0x4

    .line 1180
    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/ItemInstallQueue;->resumeModelPush(I)V

    .line 1183
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getRotationHelper()Lcom/android/launcher3/states/RotationHelper;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/states/RotationHelper;->setCurrentStateRequest(I)V

    .line 1186
    :cond_1
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPrevLauncherState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsSessionLogId:Lcom/android/launcher3/logging/InstanceId;

    if-eqz v0, :cond_2

    .line 1189
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->reset(Z)V

    .line 1190
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAllAppsExitEvent()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda25;

    invoke-direct {v2, v1}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda25;-><init>(Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsSessionLogId:Lcom/android/launcher3/logging/InstanceId;

    .line 1193
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->hideSortModeDialog()V

    .line 1194
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->hideSortAppsPopupMenu()V

    .line 1195
    return-void
.end method

.method public bridge synthetic onStateSetEnd(Lcom/android/launcher3/statemanager/BaseState;)V
    .locals 0

    .line 258
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->onStateSetEnd(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onStateSetStart(Lcom/android/launcher3/LauncherState;)V
    .locals 4
    .param p1, "state"    # Lcom/android/launcher3/LauncherState;

    .line 1117
    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->onStateSetStart(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 1118
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    if-eqz v0, :cond_0

    .line 1119
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->scheduleDeferredCheck()V

    .line 1121
    :cond_0
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->addActivityFlags(I)V

    .line 1123
    sget v0, Lcom/android/launcher3/LauncherState;->FLAG_CLOSE_POPUPS:I

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1124
    invoke-virtual {p1, v1}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;Z)V

    .line 1127
    :cond_1
    sget-object v0, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_2

    .line 1130
    sget-object v0, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/ItemInstallQueue;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/ItemInstallQueue;->pauseModelPush(I)V

    .line 1131
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getRotationHelper()Lcom/android/launcher3/states/RotationHelper;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/states/RotationHelper;->setCurrentStateRequest(I)V

    .line 1133
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->showPageIndicatorAtCurrentScroll()V

    .line 1134
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->setClipChildren(Z)V

    .line 1137
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicator;

    sget v2, Lcom/android/launcher3/LauncherState;->FLAG_MULTI_PAGE:I

    invoke-virtual {p1, v2}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setShouldAutoHide(Z)V

    .line 1139
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPrevLauncherState:Lcom/android/launcher3/LauncherState;

    .line 1140
    if-eq v0, p1, :cond_3

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsSessionLogId:Lcom/android/launcher3/logging/InstanceId;

    if-nez v0, :cond_3

    .line 1144
    new-instance v0, Lcom/android/launcher3/logging/InstanceIdSequence;

    invoke-direct {v0}, Lcom/android/launcher3/logging/InstanceIdSequence;-><init>()V

    invoke-virtual {v0}, Lcom/android/launcher3/logging/InstanceIdSequence;->newInstanceId()Lcom/android/launcher3/logging/InstanceId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsSessionLogId:Lcom/android/launcher3/logging/InstanceId;

    .line 1145
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAllAppsEntryEvent()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1146
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    .line 1147
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v1

    .line 1148
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v2

    .line 1149
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->setPageIndex(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v2

    .line 1148
    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v1

    .line 1149
    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 1147
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    .line 1150
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAllAppsEntryEvent()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 1153
    :cond_3
    return-void
.end method

.method public bridge synthetic onStateSetStart(Lcom/android/launcher3/statemanager/BaseState;)V
    .locals 0

    .line 258
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->onStateSetStart(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1006
    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onStop()V

    .line 1007
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    if-eqz v0, :cond_0

    .line 1008
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->checkIfOverlayStillDeferred()V

    goto :goto_0

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivityStopped(Landroid/app/Activity;)V

    .line 1012
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->hideKeyboard()V

    .line 1013
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->logStopAndResume(Z)V

    .line 1014
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->setActivityStarted(Z)V

    .line 1015
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/notification/NotificationListener;->removeNotificationsChangedListener(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)V

    .line 1016
    invoke-static {}, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->getInstance()Lcom/sonymobile/launcher/badge/SonyBadgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mBadgeListener:Lcom/sonymobile/launcher/badge/SonyBadgeManager$BadgeListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->removeListener(Lcom/sonymobile/launcher/badge/SonyBadgeManager$BadgeListener;)V

    .line 1017
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .line 2198
    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->onTrimMemory(I)V

    .line 2199
    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    .line 2202
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    .line 2207
    :cond_0
    return-void
.end method

.method public onWidgetsTransition(F)V
    .locals 0
    .param p1, "progress"    # F

    .line 3305
    return-void
.end method

.method public pauseExpensiveViewUpdates()V
    .locals 2

    .line 3329
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-interface {v0}, Lcom/android/launcher3/pageindicators/PageIndicator;->pauseAnimations()V

    .line 3331
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda22;

    invoke-direct {v1}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda22;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    .line 3337
    return-void
.end method

.method public preAddApps()V
    .locals 2

    .line 2371
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    invoke-virtual {v0}, Lcom/android/launcher3/model/ModelWriter;->commitDelete()V

    .line 2372
    const/16 v0, 0x80

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 2373
    .local v0, "snackbar":Lcom/android/launcher3/AbstractFloatingView;
    if-eqz v0, :cond_0

    .line 2374
    new-instance v1, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda14;

    invoke-direct {v1, v0}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda14;-><init>(Lcom/android/launcher3/AbstractFloatingView;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->post(Ljava/lang/Runnable;)Z

    .line 2376
    :cond_0
    return-void
.end method

.method public refreshAndBindWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)V
    .locals 1
    .param p1, "packageUser"    # Lcom/android/launcher3/util/PackageUserKey;

    .line 3034
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/LauncherModel;->refreshAndBindWidgetsAndShortcuts(Lcom/android/launcher3/util/PackageUserKey;)V

    .line 3035
    return-void
.end method

.method public removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "deleteFromDb"    # Z

    .line 2010
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZLjava/lang/String;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "deleteFromDb"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 2023
    instance-of v0, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2025
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object v0

    .line 2026
    .local v0, "folderIcon":Landroid/view/View;
    instance-of v2, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v2, :cond_0

    .line 2027
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/FolderInfo;

    move-object v3, p2

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v2, v3, v1}, Lcom/android/launcher3/model/data/FolderInfo;->remove(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    goto :goto_0

    .line 2029
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    .line 2031
    :goto_0
    if-eqz p3, :cond_1

    .line 2032
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    invoke-virtual {v2, p2, p4}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    .line 2034
    .end local v0    # "folderIcon":Landroid/view/View;
    :cond_1
    goto :goto_1

    :cond_2
    instance-of v0, p2, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_5

    .line 2035
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/model/data/FolderInfo;

    .line 2036
    .local v0, "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    instance-of v2, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v2, :cond_3

    .line 2037
    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderIcon;->removeListeners()V

    .line 2039
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    .line 2040
    if-eqz p3, :cond_4

    .line 2041
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/model/ModelWriter;->deleteFolderAndContentsFromDatabase(Lcom/android/launcher3/model/data/FolderInfo;)V

    .line 2043
    .end local v0    # "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    :cond_4
    goto :goto_1

    :cond_5
    instance-of v0, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_7

    .line 2044
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 2045
    .local v0, "widgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    .line 2046
    if-eqz p3, :cond_6

    .line 2047
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    move-result-object v3

    invoke-virtual {v2, v0, v3, p4}, Lcom/android/launcher3/model/ModelWriter;->deleteWidgetInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/widget/LauncherAppWidgetHost;Ljava/lang/String;)V

    .line 2049
    .end local v0    # "widgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    :cond_6
    nop

    .line 2052
    :goto_1
    return v1

    .line 2050
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public removeOwnOrderAppsItem(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 1
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 2948
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getOwnOrderApps()Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->removeInfo(Lcom/android/launcher3/model/data/ItemInfo;)I

    .line 2949
    return-void
.end method

.method public resumeExpensiveViewUpdates()V
    .locals 2

    .line 3341
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-interface {v0}, Lcom/android/launcher3/pageindicators/PageIndicator;->skipAnimationsToEnd()V

    .line 3343
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    .line 3349
    return-void
.end method

.method public returnToHomescreen()V
    .locals 2

    .line 3208
    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->returnToHomescreen()V

    .line 3209
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 3210
    return-void
.end method

.method public runOnOverlayHidden(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 715
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->runOnOverlayHidden(Ljava/lang/Runnable;)Z

    .line 716
    return-void
.end method

.method public setLauncherCallbacks(Lcom/android/launcher3/LauncherCallbacks;)Z
    .locals 1
    .param p1, "callbacks"    # Lcom/android/launcher3/LauncherCallbacks;

    .line 719
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    .line 720
    const/4 v0, 0x1

    return v0
.end method

.method public setLauncherOverlay(Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;)V
    .locals 1
    .param p1, "overlay"    # Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;

    .line 707
    if-eqz p1, :cond_0

    .line 708
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;->setOverlayCallbacks(Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;)V

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->setLauncherOverlay(Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;)V

    .line 711
    return-void
.end method

.method public setOnDeferredActivityLaunchCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 2227
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mOnDeferredActivityLaunchCallback:Ljava/lang/Runnable;

    .line 2228
    return-void
.end method

.method public setPagesToBindSynchronously(Lcom/android/launcher3/util/IntSet;)V
    .locals 0
    .param p1, "pages"    # Lcom/android/launcher3/util/IntSet;

    .line 2235
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mPagesToBindSynchronously:Lcom/android/launcher3/util/IntSet;

    .line 2236
    return-void
.end method

.method public setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V
    .locals 0
    .param p1, "args"    # Lcom/android/launcher3/util/PendingRequestArgs;

    .line 1841
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    .line 1842
    return-void
.end method

.method protected setupViews()V
    .locals 3

    .line 1290
    sget v0, Lcom/android/launcher3/R$id;->drag_layer:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dragndrop/DragLayer;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 1291
    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getFocusIndicatorHelper()Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    .line 1292
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    sget v1, Lcom/android/launcher3/R$id;->workspace:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 1293
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->initParentViews(Landroid/view/View;)V

    .line 1294
    sget v0, Lcom/android/launcher3/R$id;->overview_panel:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/View;

    .line 1295
    sget v0, Lcom/android/launcher3/R$id;->hotseat:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Hotseat;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    .line 1296
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->setWorkspace(Lcom/android/launcher3/Workspace;)V

    .line 1299
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->setup(Lcom/android/launcher3/dragndrop/DragController;Lcom/android/launcher3/Workspace;)V

    .line 1301
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setup(Lcom/android/launcher3/dragndrop/DragController;)V

    .line 1304
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->lockWallpaperToDefaultPage()V

    .line 1305
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->bindAndInitFirstWorkspaceScreen()V

    .line 1306
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 1309
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    sget v1, Lcom/android/launcher3/R$id;->drop_target_bar:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DropTargetBar;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    .line 1312
    sget v0, Lcom/android/launcher3/R$id;->apps_view:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    .line 1315
    sget v0, Lcom/android/launcher3/R$id;->scrim_view:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ScrimView;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    .line 1318
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DropTargetBar;->setup(Lcom/android/launcher3/dragndrop/DragController;)V

    .line 1319
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setupViews(Lcom/android/launcher3/views/ScrimView;Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    .line 1320
    return-void
.end method

.method public shouldUseColorExtractionForPopup()Z
    .locals 3

    .line 3188
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3189
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3188
    :goto_0
    return v0
.end method

.method protected showAllAppsFromIntent(Z)V
    .locals 2
    .param p1, "alreadyOnHome"    # Z

    .line 1666
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    .line 1667
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    .line 1668
    return-void
.end method

.method public showDefaultOptions(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 3170
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Launcher;->getPopupTarget(FF)Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {p0}, Lcom/android/launcher3/views/OptionsPopupView;->getOptions(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher3/views/OptionsPopupView;->show(Lcom/android/launcher3/Launcher;Landroid/graphics/RectF;Ljava/util/List;Z)Lcom/android/launcher3/views/OptionsPopupView;

    .line 3172
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 1781
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 1782
    iput p2, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    .line 1784
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/statemanager/StatefulActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1785
    return-void
.end method

.method public startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 2149
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->hasBeenResumed()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2153
    new-instance v0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->addOnResumeCallback(Ljava/lang/Runnable;)V

    .line 2154
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnDeferredActivityLaunchCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2155
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mOnDeferredActivityLaunchCallback:Ljava/lang/Runnable;

    .line 2158
    :cond_0
    return v1

    .line 2161
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/statemanager/StatefulActivity;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    .line 2162
    .local v0, "success":Z
    if-eqz v0, :cond_2

    instance-of v2, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v2, :cond_2

    .line 2167
    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/BubbleTextView;

    .line 2168
    .local v2, "btv":Lcom/android/launcher3/BubbleTextView;
    invoke-virtual {v2, v1}, Lcom/android/launcher3/BubbleTextView;->setStayPressed(Z)V

    .line 2169
    new-instance v1, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda6;

    invoke-direct {v1, v2}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda6;-><init>(Lcom/android/launcher3/BubbleTextView;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->addOnResumeCallback(Ljava/lang/Runnable;)V

    .line 2171
    .end local v2    # "btv":Lcom/android/launcher3/BubbleTextView;
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne v1, v2, :cond_3

    .line 2172
    invoke-static {}, Lcom/sonymobile/launcher/idd/Idd$AppLaunch;->getInstance()Lcom/sonymobile/launcher/idd/Idd$AppLaunch;

    move-result-object v1

    const-string v2, "apptray"

    invoke-virtual {v1, p0, v2}, Lcom/sonymobile/launcher/idd/Idd$AppLaunch;->count(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2174
    :cond_3
    invoke-static {}, Lcom/sonymobile/launcher/idd/Idd$AppLaunch;->getInstance()Lcom/sonymobile/launcher/idd/Idd$AppLaunch;

    move-result-object v1

    const-string v2, "desktop"

    invoke-virtual {v1, p0, v2}, Lcom/sonymobile/launcher/idd/Idd$AppLaunch;->count(Landroid/content/Context;Ljava/lang/String;)V

    .line 2176
    :goto_0
    if-eqz p3, :cond_4

    .line 2177
    invoke-static {}, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;->getInstance()Lcom/sonymobile/launcher/idd/Idd$SplitScreen;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;->sendIfSecondaryApp(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 2180
    :cond_4
    return v0
.end method

.method public startBinding()V
    .locals 3

    .line 2307
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "startBinding"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2311
    .local v0, "traceToken":Ljava/lang/Object;
    const/4 v1, 0x1

    const/16 v2, 0x5d8b

    invoke-static {p0, v1, v2}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    .line 2313
    invoke-direct {p0, v1}, Lcom/android/launcher3/Launcher;->setWorkspaceLoading(Z)V

    .line 2316
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    .line 2318
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->clearDropTargets()V

    .line 2319
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->removeAllWorkspaceScreens()V

    .line 2320
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->clearViews()V

    .line 2322
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz v1, :cond_0

    .line 2323
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Hotseat;->resetLayout(Z)V

    .line 2325
    :cond_0
    sget-object v1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    .line 2326
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    .line 1790
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 1791
    iput p2, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    .line 1794
    :cond_0
    :try_start_0
    invoke-super/range {p0 .. p7}, Lcom/android/launcher3/statemanager/StatefulActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1798
    nop

    .line 1799
    return-void

    .line 1796
    :catch_0
    move-exception v0

    .line 1797
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v1, Landroid/content/ActivityNotFoundException;

    invoke-direct {v1}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v1
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 2
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "globalSearch"    # Z

    .line 1808
    if-nez p3, :cond_0

    .line 1809
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object p3, v0

    .line 1810
    const-string v0, "source"

    const-string v1, "launcher-search"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_1

    .line 1814
    invoke-interface {v0, p1, p2, p3}, Lcom/android/launcher3/LauncherCallbacks;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1816
    :cond_1
    const/4 v0, 0x1

    invoke-super {p0, p1, p2, p3, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1820
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 1821
    return-void
.end method

.method public supportsAdaptiveIconAnimation(Landroid/view/View;)Z
    .locals 1
    .param p1, "clickedView"    # Landroid/view/View;

    .line 3282
    const/4 v0, 0x0

    return v0
.end method

.method public updateOpenFolderPosition([ILandroid/graphics/Rect;II)V
    .locals 9
    .param p1, "inOutPosition"    # [I
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 1975
    const/4 v0, 0x0

    aget v1, p1, v0

    .line 1976
    .local v1, "left":I
    const/4 v2, 0x1

    aget v3, p1, v2

    .line 1977
    .local v3, "top":I
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    .line 1978
    .local v4, "grid":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/Workspace;->getPaddingLeft()I

    move-result v5

    .line 1979
    .local v5, "distFromEdgeOfScreen":I
    iget-boolean v6, v4, Lcom/android/launcher3/DeviceProfile;->isPhone:Z

    if-eqz v6, :cond_0

    iget v6, v4, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    sub-int/2addr v6, p3

    mul-int/lit8 v7, v5, 0x4

    if-ge v6, v7, :cond_0

    .line 1983
    iget v6, v4, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    sub-int/2addr v6, p3

    div-int/lit8 v1, v6, 0x2

    goto :goto_0

    .line 1984
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-lt p3, v6, :cond_1

    .line 1986
    iget v6, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v7, p3

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 1988
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-lt p4, v6, :cond_2

    .line 1990
    iget v6, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v7, p4

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .end local v3    # "top":I
    .local v6, "top":I
    goto :goto_1

    .line 1994
    .end local v6    # "top":I
    .restart local v3    # "top":I
    :cond_2
    invoke-virtual {v4}, Lcom/android/launcher3/DeviceProfile;->getAbsoluteOpenFolderBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 1995
    .local v6, "folderBounds":Landroid/graphics/Rect;
    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v8, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, p3

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1996
    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, p4

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v6, v3

    .line 1998
    .end local v3    # "top":I
    .local v6, "top":I
    :goto_1
    aput v1, p1, v0

    .line 1999
    aput v6, p1, v2

    .line 2000
    return-void
.end method

.method public useFadeOutAnimationForLauncherStart(Landroid/os/CancellationSignal;)V
    .locals 0
    .param p1, "signal"    # Landroid/os/CancellationSignal;

    .line 3202
    return-void
.end method
