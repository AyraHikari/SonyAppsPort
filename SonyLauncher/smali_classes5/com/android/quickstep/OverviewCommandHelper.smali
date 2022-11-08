.class public Lcom/android/quickstep/OverviewCommandHelper;
.super Ljava/lang/Object;
.source "OverviewCommandHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;
    }
.end annotation


# static fields
.field private static final MAX_QUEUE_SIZE:I = 0x3

.field private static final TRANSITION_NAME:Ljava/lang/String; = "Transition:toOverview"

.field public static final TYPE_HIDE:I = 0x3

.field public static final TYPE_HOME:I = 0x5

.field public static final TYPE_SHOW:I = 0x1

.field public static final TYPE_SHOW_NEXT_FOCUS:I = 0x2

.field public static final TYPE_TOGGLE:I = 0x4


# instance fields
.field private final mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

.field private final mPendingCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/quickstep/TouchInteractionService;

.field private final mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/TouchInteractionService;Lcom/android/quickstep/OverviewComponentObserver;Lcom/android/quickstep/TaskAnimationManager;)V
    .locals 1
    .param p1, "service"    # Lcom/android/quickstep/TouchInteractionService;
    .param p2, "observer"    # Lcom/android/quickstep/OverviewComponentObserver;
    .param p3, "taskAnimationManager"    # Lcom/android/quickstep/TaskAnimationManager;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper;->mPendingCommands:Ljava/util/ArrayList;

    .line 78
    iput-object p1, p0, Lcom/android/quickstep/OverviewCommandHelper;->mService:Lcom/android/quickstep/TouchInteractionService;

    .line 79
    iput-object p2, p0, Lcom/android/quickstep/OverviewCommandHelper;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    .line 80
    iput-object p3, p0, Lcom/android/quickstep/OverviewCommandHelper;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    .line 81
    return-void
.end method

.method private addCommand(Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V
    .locals 2
    .param p1, "cmd"    # Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

    .line 111
    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper;->mPendingCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 112
    .local v0, "wasEmpty":Z
    iget-object v1, p0, Lcom/android/quickstep/OverviewCommandHelper;->mPendingCommands:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/android/quickstep/OverviewCommandHelper;->executeNext()V

    .line 116
    :cond_0
    return-void
.end method

.method private executeCommand(Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)Z
    .locals 10
    .param p1, "cmd"    # Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/statemanager/StatefulActivity<",
            "*>;>(",
            "Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;",
            ")Z"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    .line 175
    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    .line 176
    .local v0, "activityInterface":Lcom/android/quickstep/BaseActivityInterface;, "Lcom/android/quickstep/BaseActivityInterface<*TT;>;"
    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getVisibleRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v1

    .line 177
    .local v1, "recents":Lcom/android/quickstep/views/RecentsView;
    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 178
    iget v3, p1, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 180
    return v2

    .line 182
    :cond_0
    iget v3, p1, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->type:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 183
    iget-object v3, p0, Lcom/android/quickstep/OverviewCommandHelper;->mService:Lcom/android/quickstep/TouchInteractionService;

    iget-object v4, p0, Lcom/android/quickstep/OverviewCommandHelper;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {v4}, Lcom/android/quickstep/OverviewComponentObserver;->getHomeIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/quickstep/TouchInteractionService;->startActivity(Landroid/content/Intent;)V

    .line 184
    return v2

    .line 187
    :cond_1
    iget v3, p1, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->type:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 201
    :pswitch_1
    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->startHome()V

    .line 202
    return v2

    .line 199
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/quickstep/OverviewCommandHelper;->getNextTask(Lcom/android/quickstep/views/RecentsView;)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    invoke-direct {p0, v1, v2, p1}, Lcom/android/quickstep/OverviewCommandHelper;->launchTask(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)Z

    move-result v2

    return v2

    .line 192
    :pswitch_3
    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getNextPage()I

    move-result v2

    .line 193
    .local v2, "currentPage":I
    if-ltz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 194
    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/RecentsView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/views/TaskView;

    goto :goto_0

    .line 195
    :cond_2
    const/4 v3, 0x0

    :goto_0
    nop

    .line 196
    .local v3, "tv":Lcom/android/quickstep/views/TaskView;
    invoke-direct {p0, v1, v3, p1}, Lcom/android/quickstep/OverviewCommandHelper;->launchTask(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)Z

    move-result v4

    return v4

    .line 190
    .end local v2    # "currentPage":I
    .end local v3    # "tv":Lcom/android/quickstep/views/TaskView;
    :pswitch_4
    return v2

    .line 206
    :cond_3
    :goto_1
    new-instance v3, Lcom/android/quickstep/OverviewCommandHelper$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Lcom/android/quickstep/OverviewCommandHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/quickstep/OverviewCommandHelper;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V

    invoke-virtual {v0, v3}, Lcom/android/quickstep/BaseActivityInterface;->switchToRecentsIfVisible(Ljava/lang/Runnable;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 208
    return v4

    .line 211
    :cond_4
    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v3

    .line 212
    .local v3, "activity":Lcom/android/launcher3/statemanager/StatefulActivity;, "TT;"
    if-eqz v3, :cond_5

    .line 213
    nop

    .line 214
    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v5

    const/16 v6, 0xb

    .line 213
    invoke-static {v5, v6}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->begin(Landroid/view/View;I)V

    .line 218
    :cond_5
    iget-object v5, p0, Lcom/android/quickstep/OverviewCommandHelper;->mService:Lcom/android/quickstep/TouchInteractionService;

    sget-object v6, Lcom/android/quickstep/GestureState;->DEFAULT_STATE:Lcom/android/quickstep/GestureState;

    invoke-virtual {v5, v6}, Lcom/android/quickstep/TouchInteractionService;->createGestureState(Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/GestureState;

    move-result-object v5

    .line 219
    .local v5, "gestureState":Lcom/android/quickstep/GestureState;
    invoke-virtual {v5, v2}, Lcom/android/quickstep/GestureState;->setHandlingAtomicEvent(Z)V

    .line 220
    iget-object v6, p0, Lcom/android/quickstep/OverviewCommandHelper;->mService:Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {v6}, Lcom/android/quickstep/TouchInteractionService;->getSwipeUpHandlerFactory()Lcom/android/quickstep/AbsSwipeUpHandler$Factory;

    move-result-object v6

    iget-wide v7, p1, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->createTime:J

    .line 221
    invoke-interface {v6, v5, v7, v8}, Lcom/android/quickstep/AbsSwipeUpHandler$Factory;->newHandler(Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;

    move-result-object v6

    .line 222
    .local v6, "interactionHandler":Lcom/android/quickstep/AbsSwipeUpHandler;
    new-instance v7, Lcom/android/quickstep/OverviewCommandHelper$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0, p1, v6}, Lcom/android/quickstep/OverviewCommandHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/quickstep/OverviewCommandHelper;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v6, v7}, Lcom/android/quickstep/AbsSwipeUpHandler;->setGestureEndCallback(Ljava/lang/Runnable;)V

    .line 224
    invoke-virtual {v6}, Lcom/android/quickstep/AbsSwipeUpHandler;->initWhenReady()V

    .line 226
    new-instance v7, Lcom/android/quickstep/OverviewCommandHelper$1;

    invoke-direct {v7, p0, v0, v6, p1}, Lcom/android/quickstep/OverviewCommandHelper$1;-><init>(Lcom/android/quickstep/OverviewCommandHelper;Lcom/android/quickstep/BaseActivityInterface;Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V

    .line 250
    .local v7, "recentAnimListener":Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;
    iget-object v8, p0, Lcom/android/quickstep/OverviewCommandHelper;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v8}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 251
    iget-object v8, p0, Lcom/android/quickstep/OverviewCommandHelper;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v8, v5}, Lcom/android/quickstep/TaskAnimationManager;->continueRecentsAnimation(Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/RecentsAnimationCallbacks;

    move-result-object v8

    iput-object v8, p1, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->mActiveCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    .line 252
    iget-object v8, p1, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->mActiveCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    invoke-virtual {v8, v6}, Lcom/android/quickstep/RecentsAnimationCallbacks;->addListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    .line 253
    iget-object v8, p0, Lcom/android/quickstep/OverviewCommandHelper;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v8, v6}, Lcom/android/quickstep/TaskAnimationManager;->notifyRecentsAnimationState(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    .line 254
    invoke-virtual {v6, v2}, Lcom/android/quickstep/AbsSwipeUpHandler;->onGestureStarted(Z)V

    .line 256
    iget-object v2, p1, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->mActiveCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    invoke-virtual {v2, v7}, Lcom/android/quickstep/RecentsAnimationCallbacks;->addListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    .line 257
    iget-object v2, p0, Lcom/android/quickstep/OverviewCommandHelper;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v2, v7}, Lcom/android/quickstep/TaskAnimationManager;->notifyRecentsAnimationState(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    goto :goto_2

    .line 259
    :cond_6
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {v6}, Lcom/android/quickstep/AbsSwipeUpHandler;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 260
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v5}, Lcom/android/quickstep/GestureState;->getGestureId()I

    move-result v8

    const-string v9, "INTENT_EXTRA_LOG_TRACE_ID"

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    iget-object v8, p0, Lcom/android/quickstep/OverviewCommandHelper;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v8, v5, v2, v6}, Lcom/android/quickstep/TaskAnimationManager;->startRecentsAnimation(Lcom/android/quickstep/GestureState;Landroid/content/Intent;Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)Lcom/android/quickstep/RecentsAnimationCallbacks;

    move-result-object v8

    iput-object v8, p1, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->mActiveCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    .line 263
    invoke-virtual {v6, v4}, Lcom/android/quickstep/AbsSwipeUpHandler;->onGestureStarted(Z)V

    .line 264
    iget-object v8, p1, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->mActiveCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    invoke-virtual {v8, v7}, Lcom/android/quickstep/RecentsAnimationCallbacks;->addListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    .line 267
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_2
    const-string v2, "Transition:toOverview"

    invoke-static {v2, v4}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 268
    return v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private executeNext()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper;->mPendingCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper;->mPendingCommands:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

    .line 104
    .local v0, "cmd":Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;
    invoke-direct {p0, v0}, Lcom/android/quickstep/OverviewCommandHelper;->executeCommand(Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    invoke-direct {p0, v0}, Lcom/android/quickstep/OverviewCommandHelper;->scheduleNextTask(Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V

    .line 107
    :cond_1
    return-void
.end method

.method private getNextTask(Lcom/android/quickstep/views/RecentsView;)Lcom/android/quickstep/views/TaskView;
    .locals 3
    .param p1, "view"    # Lcom/android/quickstep/views/RecentsView;

    .line 139
    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    .line 141
    .local v0, "runningTaskView":Lcom/android/quickstep/views/TaskView;
    if-nez v0, :cond_0

    .line 142
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    return-object v1

    .line 144
    :cond_0
    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getNextTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    .line 145
    .local v1, "nextTask":Lcom/android/quickstep/views/TaskView;
    if-eqz v1, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method private launchTask(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)Z
    .locals 4
    .param p1, "recents"    # Lcom/android/quickstep/views/RecentsView;
    .param p2, "taskView"    # Lcom/android/quickstep/views/TaskView;
    .param p3, "cmd"    # Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "callbackList":Lcom/android/launcher3/util/RunnableList;
    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 152
    invoke-virtual {p2, v1}, Lcom/android/quickstep/views/TaskView;->setEndQuickswitchCuj(Z)V

    .line 153
    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;

    move-result-object v0

    .line 156
    :cond_0
    if-eqz v0, :cond_2

    .line 157
    new-instance v2, Lcom/android/quickstep/OverviewCommandHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p3}, Lcom/android/quickstep/OverviewCommandHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/OverviewCommandHelper;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 158
    const/4 v2, 0x5

    invoke-static {}, Lcom/android/quickstep/views/TaskView;->getRunningTaskWindowMode()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 159
    invoke-virtual {v0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    .line 160
    return v1

    .line 162
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 164
    :cond_2
    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->startHome()V

    .line 165
    return v1
.end method

.method private onTransitionComplete(Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 3
    .param p1, "cmd"    # Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;
    .param p2, "handler"    # Lcom/android/quickstep/AbsSwipeUpHandler;

    .line 272
    invoke-virtual {p1, p2}, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->removeListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    .line 273
    const-string v0, "Transition:toOverview"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 275
    iget v0, p1, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 276
    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    .line 277
    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getVisibleRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    .line 278
    .local v0, "rv":Lcom/android/quickstep/views/RecentsView;
    if-eqz v0, :cond_2

    .line 280
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getNextTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    .line 281
    .local v2, "taskView":Lcom/android/quickstep/views/TaskView;
    if-nez v2, :cond_1

    .line 282
    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    .line 283
    .end local v2    # "taskView":Lcom/android/quickstep/views/TaskView;
    .local v1, "taskView":Lcom/android/quickstep/views/TaskView;
    if-eqz v1, :cond_0

    .line 284
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->requestFocus()Z

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->requestFocus()Z

    goto :goto_0

    .line 289
    .end local v1    # "taskView":Lcom/android/quickstep/views/TaskView;
    .restart local v2    # "taskView":Lcom/android/quickstep/views/TaskView;
    :cond_1
    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->requestFocus()Z

    .line 293
    .end local v0    # "rv":Lcom/android/quickstep/views/RecentsView;
    .end local v2    # "taskView":Lcom/android/quickstep/views/TaskView;
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/quickstep/OverviewCommandHelper;->scheduleNextTask(Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V

    .line 294
    return-void
.end method

.method private scheduleNextTask(Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V
    .locals 2
    .param p1, "command"    # Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

    .line 87
    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper;->mPendingCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper;->mPendingCommands:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper;->mPendingCommands:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 89
    invoke-direct {p0}, Lcom/android/quickstep/OverviewCommandHelper;->executeNext()V

    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method public addCommand(I)V
    .locals 3
    .param p1, "type"    # I

    .line 125
    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper;->mPendingCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 126
    return-void

    .line 128
    :cond_0
    new-instance v0, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

    invoke-direct {v0, p1}, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;-><init>(I)V

    .line 129
    .local v0, "cmd":Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;
    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/quickstep/OverviewCommandHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/quickstep/OverviewCommandHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/OverviewCommandHelper;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 130
    return-void
.end method

.method public clearPendingCommands()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper;->mPendingCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 135
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 297
    const-string v0, "OverviewCommandHelper:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingCommands="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/OverviewCommandHelper;->mPendingCommands:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper;->mPendingCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    pendingCommandType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/OverviewCommandHelper;->mPendingCommands:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

    iget v1, v1, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    :cond_0
    return-void
.end method

.method synthetic lambda$addCommand$0$com-android-quickstep-OverviewCommandHelper(Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V
    .locals 0
    .param p1, "cmd"    # Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

    .line 129
    invoke-direct {p0, p1}, Lcom/android/quickstep/OverviewCommandHelper;->addCommand(Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V

    return-void
.end method

.method synthetic lambda$executeCommand$2$com-android-quickstep-OverviewCommandHelper(Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V
    .locals 0
    .param p1, "cmd"    # Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

    .line 206
    invoke-direct {p0, p1}, Lcom/android/quickstep/OverviewCommandHelper;->scheduleNextTask(Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V

    return-void
.end method

.method synthetic lambda$executeCommand$3$com-android-quickstep-OverviewCommandHelper(Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0
    .param p1, "cmd"    # Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;
    .param p2, "interactionHandler"    # Lcom/android/quickstep/AbsSwipeUpHandler;

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/OverviewCommandHelper;->onTransitionComplete(Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;Lcom/android/quickstep/AbsSwipeUpHandler;)V

    return-void
.end method

.method synthetic lambda$launchTask$1$com-android-quickstep-OverviewCommandHelper(Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V
    .locals 0
    .param p1, "cmd"    # Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

    .line 157
    invoke-direct {p0, p1}, Lcom/android/quickstep/OverviewCommandHelper;->scheduleNextTask(Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V

    return-void
.end method
