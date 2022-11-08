.class public Lcom/android/quickstep/TaskAnimationManager;
.super Ljava/lang/Object;
.source "TaskAnimationManager.java"

# interfaces
.implements Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;


# static fields
.field public static final ENABLE_SHELL_TRANSITIONS:Z

.field public static final SHELL_TRANSITIONS_ROTATION:Z


# instance fields
.field private mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

.field private mController:Lcom/android/quickstep/RecentsAnimationController;

.field private mCtx:Landroid/content/Context;

.field private mLastAppearedTaskTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field private mLastGestureState:Lcom/android/quickstep/GestureState;

.field private mLiveTileCleanUpHandler:Ljava/lang/Runnable;

.field private final mLiveTileRestartListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private mTargets:Lcom/android/quickstep/RecentsAnimationTargets;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/quickstep/RecentsAnimationCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmController(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/quickstep/RecentsAnimationController;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/TaskAnimationManager;->mController:Lcom/android/quickstep/RecentsAnimationController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastAppearedTaskTarget(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/TaskAnimationManager;->mLastAppearedTaskTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastGestureState(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/quickstep/GestureState;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/TaskAnimationManager;->mLastGestureState:Lcom/android/quickstep/GestureState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLiveTileRestartListener(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/systemui/shared/system/TaskStackChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/TaskAnimationManager;->mLiveTileRestartListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTargets(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/quickstep/RecentsAnimationTargets;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/TaskAnimationManager;->mTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmController(Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/RecentsAnimationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/TaskAnimationManager;->mController:Lcom/android/quickstep/RecentsAnimationController;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastAppearedTaskTarget(Lcom/android/quickstep/TaskAnimationManager;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/TaskAnimationManager;->mLastAppearedTaskTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTargets(Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/RecentsAnimationTargets;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/TaskAnimationManager;->mTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcleanUpRecentsAnimation(Lcom/android/quickstep/TaskAnimationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/TaskAnimationManager;->cleanUpRecentsAnimation()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 52
    nop

    .line 53
    const-string v0, "persist.wm.debug.shell_transit"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    .line 54
    if-eqz v0, :cond_0

    .line 55
    const-string v0, "persist.wm.debug.shell_transit_rotate"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    sput-boolean v1, Lcom/android/quickstep/TaskAnimationManager;->SHELL_TRANSITIONS_ROTATION:Z

    .line 54
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/android/quickstep/TaskAnimationManager$1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/TaskAnimationManager$1;-><init>(Lcom/android/quickstep/TaskAnimationManager;)V

    iput-object v0, p0, Lcom/android/quickstep/TaskAnimationManager;->mLiveTileRestartListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 89
    iput-object p1, p0, Lcom/android/quickstep/TaskAnimationManager;->mCtx:Landroid/content/Context;

    .line 90
    return-void
.end method

.method private cleanUpRecentsAnimation()V
    .locals 3

    .line 331
    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager;->mLiveTileCleanUpHandler:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 332
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 333
    iput-object v1, p0, Lcom/android/quickstep/TaskAnimationManager;->mLiveTileCleanUpHandler:Ljava/lang/Runnable;

    .line 335
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object v2, p0, Lcom/android/quickstep/TaskAnimationManager;->mLiveTileRestartListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 338
    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager;->mTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationTargets;->release()V

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    if-eqz v0, :cond_2

    .line 344
    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->removeAllListeners()V

    .line 347
    :cond_2
    iput-object v1, p0, Lcom/android/quickstep/TaskAnimationManager;->mController:Lcom/android/quickstep/RecentsAnimationController;

    .line 348
    iput-object v1, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    .line 349
    iput-object v1, p0, Lcom/android/quickstep/TaskAnimationManager;->mTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    .line 350
    iput-object v1, p0, Lcom/android/quickstep/TaskAnimationManager;->mLastGestureState:Lcom/android/quickstep/GestureState;

    .line 351
    iput-object v1, p0, Lcom/android/quickstep/TaskAnimationManager;->mLastAppearedTaskTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 352
    return-void
.end method

.method static synthetic lambda$endLiveTile$3(Lcom/android/quickstep/views/RecentsView;)V
    .locals 3
    .param p0, "recentsView"    # Lcom/android/quickstep/views/RecentsView;

    .line 280
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZZLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$preloadRecentsAnimation$0(Landroid/content/Intent;)V
    .locals 7
    .param p0, "intent"    # Landroid/content/Intent;

    .line 96
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    .line 97
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startRecentsActivity(Landroid/content/Intent;JLcom/android/systemui/shared/system/RecentsAnimationListener;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    .line 96
    return-void
.end method


# virtual methods
.method public continueRecentsAnimation(Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/RecentsAnimationCallbacks;
    .locals 2
    .param p1, "gestureState"    # Lcom/android/quickstep/GestureState;

    .line 261
    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    iget-object v1, p0, Lcom/android/quickstep/TaskAnimationManager;->mLastGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->removeListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    .line 262
    iput-object p1, p0, Lcom/android/quickstep/TaskAnimationManager;->mLastGestureState:Lcom/android/quickstep/GestureState;

    .line 263
    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->addListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    .line 264
    sget v0, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_INITIALIZED:I

    sget v1, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_STARTED:I

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/quickstep/GestureState;->setState(I)V

    .line 266
    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager;->mLastAppearedTaskTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-virtual {p1, v0}, Lcom/android/quickstep/GestureState;->updateLastAppearedTaskTarget(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    .line 267
    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    return-object v0
.end method

.method public dump()V
    .locals 0

    .line 361
    return-void
.end method

.method public enableLiveTileRestartListener()V
    .locals 2

    .line 291
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/TaskAnimationManager;->mLiveTileRestartListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 292
    return-void
.end method

.method public endLiveTile()V
    .locals 4

    .line 271
    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager;->mLastGestureState:Lcom/android/quickstep/GestureState;

    if-nez v0, :cond_0

    .line 272
    return-void

    .line 274
    :cond_0
    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    .line 275
    .local v0, "activityInterface":Lcom/android/quickstep/BaseActivityInterface;
    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->isInLiveTileMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 277
    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/RecentsView;

    .line 278
    .local v1, "recentsView":Lcom/android/quickstep/views/RecentsView;
    if-eqz v1, :cond_1

    .line 279
    const/4 v2, 0x0

    new-instance v3, Lcom/android/quickstep/TaskAnimationManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/android/quickstep/TaskAnimationManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/quickstep/views/RecentsView;->switchToScreenshot(Ljava/util/HashMap;Ljava/lang/Runnable;)V

    .line 284
    .end local v1    # "recentsView":Lcom/android/quickstep/views/RecentsView;
    :cond_1
    return-void
.end method

.method public finishRunningRecentsAnimation(Z)V
    .locals 3
    .param p1, "toHome"    # Z

    .line 298
    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager;->mController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->notifyAnimationCanceled()V

    .line 300
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/android/quickstep/TaskAnimationManager;->mController:Lcom/android/quickstep/RecentsAnimationController;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/quickstep/TaskAnimationManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/quickstep/TaskAnimationManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/RecentsAnimationController;)V

    goto :goto_0

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/TaskAnimationManager;->mController:Lcom/android/quickstep/RecentsAnimationController;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda8;

    invoke-direct {v2, v1}, Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda8;-><init>(Lcom/android/quickstep/RecentsAnimationController;)V

    .line 300
    :goto_0
    invoke-static {v0, v2}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 303
    invoke-direct {p0}, Lcom/android/quickstep/TaskAnimationManager;->cleanUpRecentsAnimation()V

    .line 305
    :cond_1
    return-void
.end method

.method public getCurrentCallbacks()Lcom/android/quickstep/RecentsAnimationCallbacks;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    return-object v0
.end method

.method public isRecentsAnimationRunning()Z
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager;->mController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$startRecentsAnimation$1$com-android-quickstep-TaskAnimationManager(Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 248
    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager;->mCtx:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method synthetic lambda$startRecentsAnimation$2$com-android-quickstep-TaskAnimationManager(Landroid/content/Intent;J)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "eventTime"    # J

    .line 250
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v4, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    .line 251
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startRecentsActivity(Landroid/content/Intent;JLcom/android/systemui/shared/system/RecentsAnimationListener;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    .line 250
    return-void
.end method

.method public notifyRecentsAnimationState(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;

    .line 314
    invoke-virtual {p0}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager;->mController:Lcom/android/quickstep/RecentsAnimationController;

    iget-object v1, p0, Lcom/android/quickstep/TaskAnimationManager;->mTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    invoke-interface {p1, v0, v1}, Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;->onRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V

    .line 318
    :cond_0
    return-void
.end method

.method public preloadRecentsAnimation(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 96
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/TaskAnimationManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/quickstep/TaskAnimationManager$$ExternalSyntheticLambda4;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 98
    return-void
.end method

.method public setLiveTileCleanUpHandler(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "cleanUpHandler"    # Ljava/lang/Runnable;

    .line 287
    iput-object p1, p0, Lcom/android/quickstep/TaskAnimationManager;->mLiveTileCleanUpHandler:Ljava/lang/Runnable;

    .line 288
    return-void
.end method

.method public startRecentsAnimation(Lcom/android/quickstep/GestureState;Landroid/content/Intent;Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)Lcom/android/quickstep/RecentsAnimationCallbacks;
    .locals 9
    .param p1, "gestureState"    # Lcom/android/quickstep/GestureState;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "listener"    # Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;

    .line 107
    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager;->mController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "New recents animation started before old animation completed"

    .line 112
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "TaskAnimationManager"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/TaskAnimationManager;->finishRunningRecentsAnimation(Z)V

    .line 118
    iget-object v1, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    if-eqz v1, :cond_1

    .line 122
    invoke-direct {p0}, Lcom/android/quickstep/TaskAnimationManager;->cleanUpRecentsAnimation()V

    .line 125
    :cond_1
    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v1

    .line 126
    .local v1, "activityInterface":Lcom/android/quickstep/BaseActivityInterface;
    iput-object p1, p0, Lcom/android/quickstep/TaskAnimationManager;->mLastGestureState:Lcom/android/quickstep/GestureState;

    .line 127
    new-instance v2, Lcom/android/quickstep/RecentsAnimationCallbacks;

    sget-object v3, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v4, p0, Lcom/android/quickstep/TaskAnimationManager;->mCtx:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/SystemUiProxy;

    .line 128
    invoke-virtual {v1}, Lcom/android/quickstep/BaseActivityInterface;->allowMinimizeSplitScreen()Z

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/android/quickstep/RecentsAnimationCallbacks;-><init>(Lcom/android/quickstep/SystemUiProxy;Z)V

    iput-object v2, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    .line 129
    new-instance v3, Lcom/android/quickstep/TaskAnimationManager$2;

    invoke-direct {v3, p0, v1}, Lcom/android/quickstep/TaskAnimationManager$2;-><init>(Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/BaseActivityInterface;)V

    invoke-virtual {v2, v3}, Lcom/android/quickstep/RecentsAnimationCallbacks;->addListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    .line 230
    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getSwipeUpStartTimeMs()J

    move-result-wide v2

    .line 231
    .local v2, "eventTime":J
    iget-object v4, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    invoke-virtual {v4, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->addListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    .line 232
    iget-object v4, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    invoke-virtual {v4, p3}, Lcom/android/quickstep/RecentsAnimationCallbacks;->addListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    .line 234
    sget-boolean v4, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v4, :cond_5

    .line 235
    new-instance v4, Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    iget-object v5, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    .line 236
    iget-object v6, p0, Lcom/android/quickstep/TaskAnimationManager;->mController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/android/quickstep/RecentsAnimationController;->getController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    move-result-object v6

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    iget-object v7, p0, Lcom/android/quickstep/TaskAnimationManager;->mCtx:Landroid/content/Context;

    .line 237
    invoke-virtual {v7}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;-><init>(Lcom/android/systemui/shared/system/RecentsAnimationListener;Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;Landroid/app/IApplicationThread;)V

    .line 238
    .local v4, "transition":Lcom/android/systemui/shared/system/RemoteTransitionCompat;
    invoke-static {v4}, Lcom/android/systemui/shared/system/ActivityOptionsCompat;->makeRemoteTransition(Lcom/android/systemui/shared/system/RemoteTransitionCompat;)Landroid/app/ActivityOptions;

    move-result-object v5

    .line 242
    .local v5, "options":Landroid/app/ActivityOptions;
    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v6

    .line 243
    .local v6, "cti":Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->isHomeTask()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v0, 0x1

    .line 244
    .local v0, "homeIsOnTop":Z
    :cond_3
    if-nez v0, :cond_4

    .line 245
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->setTransientLaunch()Landroid/app/ActivityOptions;

    .line 247
    :cond_4
    const/4 v7, 0x4

    invoke-virtual {v5, v7, v2, v3}, Landroid/app/ActivityOptions;->setSourceInfo(IJ)V

    .line 248
    sget-object v7, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v8, Lcom/android/quickstep/TaskAnimationManager$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0, p2, v5}, Lcom/android/quickstep/TaskAnimationManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/quickstep/TaskAnimationManager;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    invoke-virtual {v7, v8}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 249
    .end local v0    # "homeIsOnTop":Z
    .end local v4    # "transition":Lcom/android/systemui/shared/system/RemoteTransitionCompat;
    .end local v5    # "options":Landroid/app/ActivityOptions;
    .end local v6    # "cti":Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;
    goto :goto_1

    .line 250
    :cond_5
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v4, Lcom/android/quickstep/TaskAnimationManager$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, p2, v2, v3}, Lcom/android/quickstep/TaskAnimationManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/quickstep/TaskAnimationManager;Landroid/content/Intent;J)V

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 253
    :goto_1
    sget v0, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_INITIALIZED:I

    invoke-virtual {p1, v0}, Lcom/android/quickstep/GestureState;->setState(I)V

    .line 254
    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    return-object v0
.end method
