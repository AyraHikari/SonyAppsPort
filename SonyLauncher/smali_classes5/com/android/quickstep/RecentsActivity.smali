.class public final Lcom/android/quickstep/RecentsActivity;
.super Lcom/android/launcher3/statemanager/StatefulActivity;
.source "RecentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/statemanager/StatefulActivity<",
        "Lcom/android/quickstep/fallback/RecentsState;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/ActivityTracker<",
            "Lcom/android/quickstep/RecentsActivity;",
            ">;"
        }
    .end annotation
.end field

.field private static final HOME_APPEAR_DURATION:J = 0xfaL

.field private static final RECENTS_ANIMATION_TIMEOUT:J = 0x3e8L


# instance fields
.field private mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

.field private mActivityLaunchAnimationRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

.field private final mAnimationStartTimeoutRunnable:Ljava/lang/Runnable;

.field private final mAnimationToHomeFactory:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

.field private mDragLayer:Lcom/android/quickstep/fallback/RecentsDragLayer;

.field private mFallbackRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

.field private final mHandler:Landroid/os/Handler;

.field private mOldConfig:Landroid/content/res/Configuration;

.field private mScrimView:Lcom/android/launcher3/views/ScrimView;

.field private mStateManager:Lcom/android/launcher3/statemanager/StateManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/statemanager/StateManager<",
            "Lcom/android/quickstep/fallback/RecentsState;",
            ">;"
        }
    .end annotation
.end field

.field final mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

.field private mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

.field private mTaskbarUIController:Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$6DtsU3400Q1xhrl88h2S7bjPZhk(Lcom/android/quickstep/RecentsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/RecentsActivity;->onAnimationStartTimeout()V

    return-void
.end method

.method public static synthetic $r8$lambda$Wyw5doJq8TVFXeIBlpM9Up8IJaI(Lcom/android/quickstep/RecentsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/RecentsActivity;->startHomeInternal()V

    return-void
.end method

.method public static synthetic $r8$lambda$o1QirZVHUMQkTXdlLoCfJlCn2Zc(Lcom/android/quickstep/RecentsActivity;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentsActivity;->onTISConnected(Lcom/android/quickstep/TouchInteractionService$TISBinder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAnimationStartTimeoutRunnable(Lcom/android/quickstep/RecentsActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsActivity;->mAnimationStartTimeoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFallbackRecentsView(Lcom/android/quickstep/RecentsActivity;)Lcom/android/quickstep/fallback/FallbackRecentsView;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsActivity;->mFallbackRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/quickstep/RecentsActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateManager(Lcom/android/quickstep/RecentsActivity;)Lcom/android/launcher3/statemanager/StateManager;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsActivity;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcomposeRecentsLaunchAnimator(Lcom/android/quickstep/RecentsActivity;Lcom/android/quickstep/views/TaskView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/quickstep/RecentsActivity;->composeRecentsLaunchAnimator(Lcom/android/quickstep/views/TaskView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mresetStateListener(Lcom/android/quickstep/RecentsActivity;)Landroid/animation/AnimatorListenerAdapter;
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/RecentsActivity;->resetStateListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 106
    new-instance v0, Lcom/android/launcher3/util/ActivityTracker;

    invoke-direct {v0}, Lcom/android/launcher3/util/ActivityTracker;-><init>()V

    sput-object v0, Lcom/android/quickstep/RecentsActivity;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 104
    invoke-direct {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;-><init>()V

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mUiHandler:Landroid/os/Handler;

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Lcom/android/quickstep/RecentsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/quickstep/RecentsActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/quickstep/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mAnimationStartTimeoutRunnable:Ljava/lang/Runnable;

    .line 446
    new-instance v0, Lcom/android/quickstep/RecentsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/quickstep/RecentsActivity$2;-><init>(Lcom/android/quickstep/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mAnimationToHomeFactory:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    .line 505
    new-instance v0, Lcom/android/quickstep/RecentsActivity$4;

    invoke-direct {v0, p0}, Lcom/android/quickstep/RecentsActivity$4;-><init>(Lcom/android/quickstep/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private composeRecentsLaunchAnimator(Lcom/android/quickstep/views/TaskView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .locals 11
    .param p1, "taskView"    # Lcom/android/quickstep/views/TaskView;
    .param p2, "appTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p3, "wallpaperTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p4, "nonAppTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 305
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 306
    .local v0, "target":Landroid/animation/AnimatorSet;
    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->getTaskId()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lcom/android/quickstep/TaskUtils;->taskIsATargetWithMode([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;II)Z

    move-result v1

    .line 307
    .local v1, "activityClosing":Z
    new-instance v8, Lcom/android/launcher3/anim/PendingAnimation;

    const-wide/16 v9, 0x150

    invoke-direct {v8, v9, v10}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    .line 308
    .local v8, "pa":Lcom/android/launcher3/anim/PendingAnimation;
    xor-int/lit8 v3, v1, 0x1

    const/4 v7, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v2 .. v8}, Lcom/android/quickstep/TaskViewUtils;->createRecentsWindowAnimator(Lcom/android/quickstep/views/TaskView;Z[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/statehandlers/DepthController;Lcom/android/launcher3/anim/PendingAnimation;)V

    .line 310
    invoke-virtual {v8}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 313
    if-eqz v1, :cond_0

    .line 314
    iget-object v2, p0, Lcom/android/quickstep/RecentsActivity;->mFallbackRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    .line 315
    invoke-virtual {v2, p1}, Lcom/android/quickstep/fallback/FallbackRecentsView;->createAdjacentPageAnimForTaskLaunch(Lcom/android/quickstep/views/TaskView;)Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 316
    .local v2, "adjacentAnimation":Landroid/animation/Animator;
    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 317
    invoke-virtual {v2, v9, v10}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 318
    invoke-direct {p0}, Lcom/android/quickstep/RecentsActivity;->resetStateListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 319
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 321
    .end local v2    # "adjacentAnimation":Landroid/animation/Animator;
    :cond_0
    return-object v0
.end method

.method private initDeviceProfile()V
    .locals 1

    .line 388
    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->createDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 389
    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->onDeviceProfileInitiated()V

    .line 390
    return-void
.end method

.method private onAnimationStartTimeout()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mActivityLaunchAnimationRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    if-eqz v0, :cond_0

    .line 248
    invoke-interface {v0}, Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;->onAnimationCancelled()V

    .line 250
    :cond_0
    return-void
.end method

.method private onTISConnected(Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 1
    .param p1, "binder"    # Lcom/android/quickstep/TouchInteractionService$TISBinder;

    .line 160
    invoke-virtual {p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->getTaskbarManager()Lcom/android/launcher3/taskbar/TaskbarManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

    .line 161
    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->setActivity(Lcom/android/launcher3/statemanager/StatefulActivity;)V

    .line 162
    return-void
.end method

.method private resetStateListener()Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    .line 493
    new-instance v0, Lcom/android/quickstep/RecentsActivity$3;

    invoke-direct {v0, p0}, Lcom/android/quickstep/RecentsActivity$3;-><init>(Lcom/android/quickstep/RecentsActivity;)V

    return-object v0
.end method

.method private startHomeInternal()V
    .locals 8

    .line 437
    new-instance v1, Lcom/android/launcher3/LauncherAnimationRunner;

    .line 438
    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/quickstep/RecentsActivity;->mAnimationToHomeFactory:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lcom/android/launcher3/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;Z)V

    .line 439
    .local v1, "runner":Lcom/android/launcher3/LauncherAnimationRunner;
    new-instance v7, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;

    .line 441
    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v6

    const-wide/16 v2, 0xfa

    const-wide/16 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;-><init>(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;JJLandroid/app/IApplicationThread;)V

    .line 442
    .local v0, "adapterCompat":Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;
    invoke-static {}, Lcom/android/launcher3/Utilities;->createHomeIntent()Landroid/content/Intent;

    move-result-object v2

    .line 443
    invoke-static {v0}, Lcom/android/systemui/shared/system/ActivityOptionsCompat;->makeRemoteAnimation(Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;)Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 442
    invoke-virtual {p0, v2, v3}, Lcom/android/quickstep/RecentsActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 444
    return-void
.end method


# virtual methods
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

    .line 472
    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/statemanager/StateManager$StateHandler;>;"
    new-instance v0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;

    invoke-direct {v0, p0}, Lcom/android/quickstep/fallback/FallbackRecentsStateController;-><init>(Lcom/android/quickstep/RecentsActivity;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    return-void
.end method

.method public createAtomicAnimationFactory()Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory<",
            "Lcom/android/quickstep/fallback/RecentsState;",
            ">;"
        }
    .end annotation

    .line 489
    new-instance v0, Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;

    invoke-direct {v0, p0}, Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;-><init>(Lcom/android/launcher3/statemanager/StatefulActivity;)V

    return-object v0
.end method

.method protected createDeviceProfile()Lcom/android/launcher3/DeviceProfile;
    .locals 2

    .line 209
    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 213
    .local v0, "dp":Lcom/android/launcher3/DeviceProfile;
    iget-object v1, p0, Lcom/android/quickstep/RecentsActivity;->mDragLayer:Lcom/android/quickstep/fallback/RecentsDragLayer;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->getMultiWindowDisplaySize()Lcom/android/launcher3/util/WindowBounds;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/DeviceProfile;->getMultiWindowProfile(Landroid/content/Context;Lcom/android/launcher3/util/WindowBounds;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/launcher3/DeviceProfile;->copy(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 213
    :goto_0
    return-object v1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 482
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/statemanager/StatefulActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 483
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

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/android/quickstep/RecentsActivity;->dumpMisc(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 485
    return-void
.end method

.method public getActionsView()Lcom/android/quickstep/views/OverviewActionsView;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    return-object v0
.end method

.method public getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 254
    instance-of v0, p1, Lcom/android/quickstep/views/TaskView;

    if-nez v0, :cond_0

    .line 255
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/statemanager/StatefulActivity;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v0

    return-object v0

    .line 258
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/quickstep/views/TaskView;

    .line 259
    .local v0, "taskView":Lcom/android/quickstep/views/TaskView;
    new-instance v1, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v1}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    .line 261
    .local v1, "onEndCallback":Lcom/android/launcher3/util/RunnableList;
    new-instance v2, Lcom/android/quickstep/RecentsActivity$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/quickstep/RecentsActivity$1;-><init>(Lcom/android/quickstep/RecentsActivity;Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/util/RunnableList;)V

    iput-object v2, p0, Lcom/android/quickstep/RecentsActivity;->mActivityLaunchAnimationRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    .line 281
    new-instance v4, Lcom/android/launcher3/LauncherAnimationRunner;

    iget-object v2, p0, Lcom/android/quickstep/RecentsActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/quickstep/RecentsActivity;->mActivityLaunchAnimationRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    const/4 v10, 0x1

    invoke-direct {v4, v2, v3, v10}, Lcom/android/launcher3/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;Z)V

    .line 283
    .local v4, "wrapper":Lcom/android/launcher3/LauncherAnimationRunner;
    new-instance v2, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;

    const-wide/16 v5, 0x150

    const-wide/16 v7, 0x78

    .line 286
    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v9

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;-><init>(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;JJLandroid/app/IApplicationThread;)V

    .line 287
    .local v2, "adapterCompat":Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;
    new-instance v3, Lcom/android/launcher3/util/ActivityOptionsWrapper;

    .line 288
    invoke-static {v2}, Lcom/android/systemui/shared/system/ActivityOptionsCompat;->makeRemoteAnimation(Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;)Landroid/app/ActivityOptions;

    move-result-object v5

    invoke-direct {v3, v5, v1}, Lcom/android/launcher3/util/ActivityOptionsWrapper;-><init>(Landroid/app/ActivityOptions;Lcom/android/launcher3/util/RunnableList;)V

    .line 290
    .local v3, "activityOptions":Lcom/android/launcher3/util/ActivityOptionsWrapper;
    iget-object v5, v3, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-virtual {v5, v10}, Landroid/app/ActivityOptions;->setSplashScreenStyle(I)Landroid/app/ActivityOptions;

    .line 291
    iget-object v5, v3, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    .line 292
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    goto :goto_0

    .line 293
    :cond_1
    const/4 v6, 0x0

    .line 291
    :goto_0
    invoke-virtual {v5, v6}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 294
    iget-object v5, p0, Lcom/android/quickstep/RecentsActivity;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/quickstep/RecentsActivity;->mAnimationStartTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 295
    return-object v3
.end method

.method public getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mDragLayer:Lcom/android/quickstep/fallback/RecentsDragLayer;

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

    .line 229
    iget-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mFallbackRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    return-object v0
.end method

.method public getScrimView()Lcom/android/launcher3/views/ScrimView;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    return-object v0
.end method

.method public getStateManager()Lcom/android/launcher3/statemanager/StateManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/statemanager/StateManager<",
            "Lcom/android/quickstep/fallback/RecentsState;",
            ">;"
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    return-object v0
.end method

.method public getTaskbarUIController()Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mTaskbarUIController:Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;

    return-object v0
.end method

.method synthetic lambda$startHome$0$com-android-quickstep-RecentsActivity(Lcom/android/quickstep/views/RecentsView;)V
    .locals 2
    .param p1, "recentsView"    # Lcom/android/quickstep/views/RecentsView;

    .line 429
    new-instance v0, Lcom/android/quickstep/RecentsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/quickstep/RecentsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/RecentsActivity;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 423
    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->startHome()V

    .line 424
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 366
    iget-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 367
    .local v0, "diff":I
    and-int/lit16 v1, v0, 0x480

    if-eqz v1, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->onHandleConfigChanged()V

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/RecentsActivity;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 371
    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 372
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 351
    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->onCreate(Landroid/os/Bundle;)V

    .line 353
    new-instance v0, Lcom/android/launcher3/statemanager/StateManager;

    sget-object v1, Lcom/android/quickstep/fallback/RecentsState;->BG_LAUNCHER:Lcom/android/quickstep/fallback/RecentsState;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/statemanager/StateManager;-><init>(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher3/statemanager/BaseState;)V

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    .line 355
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mOldConfig:Landroid/content/res/Configuration;

    .line 356
    invoke-direct {p0}, Lcom/android/quickstep/RecentsActivity;->initDeviceProfile()V

    .line 357
    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->setupViews()V

    .line 359
    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$attr;->isWorkspaceDarkText:I

    .line 360
    invoke-static {p0, v1}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v1

    .line 359
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(IZ)V

    .line 361
    sget-object v0, Lcom/android/quickstep/RecentsActivity;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/ActivityTracker;->handleCreate(Lcom/android/launcher3/BaseActivity;)Z

    .line 362
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 410
    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onDestroy()V

    .line 411
    sget-object v0, Lcom/android/quickstep/RecentsActivity;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/ActivityTracker;->onActivityDestroyed(Lcom/android/launcher3/BaseActivity;)V

    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mActivityLaunchAnimationRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    .line 414
    iget-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

    invoke-virtual {v0}, Lcom/android/quickstep/util/TISBindHelper;->onDestroy()V

    .line 415
    iget-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->clearActivity(Lcom/android/launcher3/statemanager/StatefulActivity;)V

    .line 418
    :cond_0
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 2

    .line 394
    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onEnterAnimationComplete()V

    .line 398
    sget-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsModel;->getThumbnailCache()Lcom/android/quickstep/TaskThumbnailCache;

    move-result-object v0

    .line 399
    invoke-virtual {v0}, Lcom/android/quickstep/TaskThumbnailCache;->getHighResLoadingState()Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->setVisible(Z)V

    .line 400
    return-void
.end method

.method protected onHandleConfigChanged()V
    .locals 2

    .line 194
    invoke-direct {p0}, Lcom/android/quickstep/RecentsActivity;->initDeviceProfile()V

    .line 196
    const/4 v0, 0x1

    const/16 v1, 0x5d8b

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    .line 198
    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->dispatchDeviceProfileChanged()V

    .line 200
    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->reapplyUi()V

    .line 201
    iget-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mDragLayer:Lcom/android/quickstep/fallback/RecentsDragLayer;

    invoke-virtual {v0}, Lcom/android/quickstep/fallback/RecentsDragLayer;->recreateControllers()V

    .line 202
    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0
    .param p1, "isInMultiWindowMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 179
    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->onHandleConfigChanged()V

    .line 180
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/statemanager/StatefulActivity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 181
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 185
    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 186
    sget-object v0, Lcom/android/quickstep/RecentsActivity;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/ActivityTracker;->handleNewIntent(Lcom/android/launcher3/BaseActivity;)Z

    .line 187
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 345
    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onResume()V

    .line 346
    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendStateEventToTest(Landroid/content/Context;I)V

    .line 347
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 328
    const-string v0, "b/223498680"

    const-string v1, "RecentsActivity onStart mFallbackRecentsView.setContentAlpha(1)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mFallbackRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/quickstep/fallback/FallbackRecentsView;->setContentAlpha(F)V

    .line 330
    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onStart()V

    .line 331
    iget-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mFallbackRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/fallback/FallbackRecentsView;->updateLocusId()V

    .line 332
    return-void
.end method

.method public bridge synthetic onStateSetEnd(Lcom/android/launcher3/statemanager/BaseState;)V
    .locals 0

    .line 104
    check-cast p1, Lcom/android/quickstep/fallback/RecentsState;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RecentsActivity;->onStateSetEnd(Lcom/android/quickstep/fallback/RecentsState;)V

    return-void
.end method

.method public onStateSetEnd(Lcom/android/quickstep/fallback/RecentsState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/quickstep/fallback/RecentsState;

    .line 376
    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->onStateSetEnd(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 378
    sget-object v0, Lcom/android/quickstep/fallback/RecentsState;->DEFAULT:Lcom/android/quickstep/fallback/RecentsState;

    if-ne p1, v0, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendStateEventToTest(Landroid/content/Context;I)V

    .line 382
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 336
    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onStop()V

    .line 339
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/quickstep/RecentsActivity;->onTrimMemory(I)V

    .line 340
    iget-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mFallbackRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/fallback/FallbackRecentsView;->updateLocusId()V

    .line 341
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .line 404
    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->onTrimMemory(I)V

    .line 405
    sget-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/RecentsModel;->onTrimMemory(I)V

    .line 406
    return-void
.end method

.method public returnToHomescreen()V
    .locals 0

    .line 238
    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->returnToHomescreen()V

    .line 240
    return-void
.end method

.method public runOnBindToTouchInteractionService(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 166
    iget-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/util/TISBindHelper;->runOnBindToTouchInteractionService(Ljava/lang/Runnable;)V

    .line 167
    return-void
.end method

.method public setTaskbarUIController(Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;)V
    .locals 0
    .param p1, "taskbarUIController"    # Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;

    .line 170
    iput-object p1, p0, Lcom/android/quickstep/RecentsActivity;->mTaskbarUIController:Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;

    .line 171
    return-void
.end method

.method protected setupViews()V
    .locals 4

    .line 138
    sget v0, Lcom/android/launcher3/R$layout;->fallback_recents_activity:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/RecentsActivity;->inflateRootView(I)V

    .line 139
    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/RecentsActivity;->setContentView(Landroid/view/View;)V

    .line 140
    sget v0, Lcom/android/launcher3/R$id;->drag_layer:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/fallback/RecentsDragLayer;

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mDragLayer:Lcom/android/quickstep/fallback/RecentsDragLayer;

    .line 141
    sget v0, Lcom/android/launcher3/R$id;->scrim_view:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ScrimView;

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    .line 142
    sget v0, Lcom/android/launcher3/R$id;->overview_panel:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/fallback/FallbackRecentsView;

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mFallbackRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    .line 143
    sget v0, Lcom/android/launcher3/R$id;->overview_actions_view:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/OverviewActionsView;

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivity;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    .line 144
    sget-object v0, Lcom/android/launcher3/graphics/SysUiScrim;->SYSUI_PROGRESS:Landroid/util/FloatProperty;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherRootView;->getSysUiScrim()Lcom/android/launcher3/graphics/SysUiScrim;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 146
    new-instance v0, Lcom/android/quickstep/util/SplitSelectStateController;

    iget-object v1, p0, Lcom/android/quickstep/RecentsActivity;->mHandler:Landroid/os/Handler;

    .line 147
    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/quickstep/util/SplitSelectStateController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/launcher3/statemanager/StateManager;Lcom/android/launcher3/statehandlers/DepthController;)V

    .line 149
    .local v0, "controller":Lcom/android/quickstep/util/SplitSelectStateController;
    iget-object v1, p0, Lcom/android/quickstep/RecentsActivity;->mDragLayer:Lcom/android/quickstep/fallback/RecentsDragLayer;

    invoke-virtual {v1}, Lcom/android/quickstep/fallback/RecentsDragLayer;->recreateControllers()V

    .line 150
    iget-object v1, p0, Lcom/android/quickstep/RecentsActivity;->mFallbackRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    iget-object v2, p0, Lcom/android/quickstep/RecentsActivity;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-virtual {v1, v2, v0}, Lcom/android/quickstep/fallback/FallbackRecentsView;->init(Lcom/android/quickstep/views/OverviewActionsView;Lcom/android/quickstep/util/SplitSelectStateController;)V

    .line 152
    new-instance v1, Lcom/android/quickstep/util/TISBindHelper;

    new-instance v2, Lcom/android/quickstep/RecentsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/quickstep/RecentsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/RecentsActivity;)V

    invoke-direct {v1, p0, v2}, Lcom/android/quickstep/util/TISBindHelper;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    iput-object v1, p0, Lcom/android/quickstep/RecentsActivity;->mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

    .line 154
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 155
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lcom/android/quickstep/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/quickstep/RecentsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 157
    return-void
.end method

.method public startHome()V
    .locals 2

    .line 427
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    .line 429
    .local v0, "recentsView":Lcom/android/quickstep/views/RecentsView;
    new-instance v1, Lcom/android/quickstep/RecentsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/android/quickstep/RecentsActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/quickstep/RecentsActivity;Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->switchToScreenshot(Ljava/lang/Runnable;)V

    .line 431
    .end local v0    # "recentsView":Lcom/android/quickstep/views/RecentsView;
    goto :goto_0

    .line 432
    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/RecentsActivity;->startHomeInternal()V

    .line 434
    :goto_0
    return-void
.end method
