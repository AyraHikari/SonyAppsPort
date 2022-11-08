.class abstract Lcom/android/quickstep/interaction/TutorialFragment;
.super Landroidx/fragment/app/Fragment;
.source "TutorialFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final COMPLETED_TUTORIAL_STEPS_PREFERENCE_KEY:Ljava/lang/String; = "pref_completedTutorialSteps"

.field static final KEY_GESTURE_COMPLETE:Ljava/lang/String; = "gesture_complete"

.field static final KEY_TUTORIAL_TYPE:Ljava/lang/String; = "tutorial_type"

.field private static final LOG_TAG:Ljava/lang/String; = "TutorialFragment"

.field private static final TUTORIAL_SKIPPED_PREFERENCE_KEY:Ljava/lang/String; = "pref_gestureTutorialSkipped"


# instance fields
.field private mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field private mEdgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field mEdgeBackGestureHandler:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

.field private mEdgeGestureVideoView:Landroid/widget/ImageView;

.field mFakePreviousTaskView:Landroid/view/View;

.field mFingerDotView:Landroid/view/View;

.field private mFragmentStopped:Z

.field private mGestureAnimation:Landroid/animation/Animator;

.field mGestureComplete:Z

.field private mIntroductionShown:Z

.field private mIsFoldable:Z

.field private mIsLargeScreen:Z

.field mNavBarGestureHandler:Lcom/android/quickstep/interaction/NavBarGestureHandler;

.field mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

.field mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

.field mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEdgeAnimation(Lcom/android/quickstep/interaction/TutorialFragment;)Landroid/graphics/drawable/AnimatedVectorDrawable;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    return-object p0
.end method

.method constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mGestureComplete:Z

    .line 67
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    .line 75
    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mGestureAnimation:Landroid/animation/Animator;

    .line 76
    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 77
    iput-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mIntroductionShown:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mFragmentStopped:Z

    return-void
.end method

.method private static getFragmentForTutorialType(Lcom/android/quickstep/interaction/TutorialController$TutorialType;)Lcom/android/quickstep/interaction/TutorialFragment;
    .locals 2
    .param p0, "tutorialType"    # Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    .line 102
    sget-object v0, Lcom/android/quickstep/interaction/TutorialFragment$4;->$SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType:[I

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to find an appropriate fragment for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TutorialFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v0, 0x0

    return-object v0

    .line 116
    :pswitch_0
    new-instance v0, Lcom/android/quickstep/interaction/SandboxModeTutorialFragment;

    invoke-direct {v0}, Lcom/android/quickstep/interaction/SandboxModeTutorialFragment;-><init>()V

    return-object v0

    .line 114
    :pswitch_1
    new-instance v0, Lcom/android/quickstep/interaction/AssistantGestureTutorialFragment;

    invoke-direct {v0}, Lcom/android/quickstep/interaction/AssistantGestureTutorialFragment;-><init>()V

    return-object v0

    .line 111
    :pswitch_2
    new-instance v0, Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment;

    invoke-direct {v0}, Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment;-><init>()V

    return-object v0

    .line 108
    :pswitch_3
    new-instance v0, Lcom/android/quickstep/interaction/HomeGestureTutorialFragment;

    invoke-direct {v0}, Lcom/android/quickstep/interaction/HomeGestureTutorialFragment;-><init>()V

    return-object v0

    .line 105
    :pswitch_4
    new-instance v0, Lcom/android/quickstep/interaction/BackGestureTutorialFragment;

    invoke-direct {v0}, Lcom/android/quickstep/interaction/BackGestureTutorialFragment;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getGestureSandboxActivity()Lcom/android/quickstep/interaction/GestureSandboxActivity;
    .locals 2

    .line 462
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 464
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Lcom/android/quickstep/interaction/GestureSandboxActivity;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/quickstep/interaction/GestureSandboxActivity;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 2

    .line 476
    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getGestureSandboxActivity()Lcom/android/quickstep/interaction/GestureSandboxActivity;

    move-result-object v0

    .line 478
    .local v0, "activity":Lcom/android/quickstep/interaction/GestureSandboxActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;
    .locals 2

    .line 469
    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getGestureSandboxActivity()Lcom/android/quickstep/interaction/GestureSandboxActivity;

    move-result-object v0

    .line 471
    .local v0, "activity":Lcom/android/quickstep/interaction/GestureSandboxActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static newInstance(Lcom/android/quickstep/interaction/TutorialController$TutorialType;Z)Lcom/android/quickstep/interaction/TutorialFragment;
    .locals 3
    .param p0, "tutorialType"    # Lcom/android/quickstep/interaction/TutorialController$TutorialType;
    .param p1, "gestureComplete"    # Z

    .line 87
    invoke-static {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getFragmentForTutorialType(Lcom/android/quickstep/interaction/TutorialController$TutorialType;)Lcom/android/quickstep/interaction/TutorialFragment;

    move-result-object v0

    .line 88
    .local v0, "fragment":Lcom/android/quickstep/interaction/TutorialFragment;
    if-nez v0, :cond_0

    .line 89
    new-instance v1, Lcom/android/quickstep/interaction/BackGestureTutorialFragment;

    invoke-direct {v1}, Lcom/android/quickstep/interaction/BackGestureTutorialFragment;-><init>()V

    move-object v0, v1

    .line 90
    sget-object p0, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->BACK_NAVIGATION:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    .line 93
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 94
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "tutorial_type"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 95
    const-string v2, "gesture_complete"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/TutorialFragment;->setArguments(Landroid/os/Bundle;)V

    .line 97
    return-object v0
.end method


# virtual methods
.method changeController(Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V
    .locals 2
    .param p1, "tutorialType"    # Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    .line 360
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getControllerClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/interaction/TutorialController;->setTutorialType(Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V

    .line 362
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/quickstep/interaction/TutorialFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/quickstep/interaction/TutorialFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/interaction/TutorialController;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/TutorialController;->fadeTaskViewAndRun(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/quickstep/interaction/TutorialFragment;->createController(Lcom/android/quickstep/interaction/TutorialController$TutorialType;)Lcom/android/quickstep/interaction/TutorialController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    .line 365
    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialController;->transitToController()V

    .line 367
    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeBackGestureHandler:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->registerBackGestureAttemptCallback(Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureAttemptCallback;)V

    .line 368
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mNavBarGestureHandler:Lcom/android/quickstep/interaction/NavBarGestureHandler;

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/NavBarGestureHandler;->registerNavBarGestureAttemptCallback(Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;)V

    .line 369
    iput-object p1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    .line 371
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->initializeFeedbackVideoView()V

    .line 372
    return-void
.end method

.method closeTutorial()V
    .locals 1

    .line 409
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/TutorialFragment;->closeTutorial(Z)V

    .line 410
    return-void
.end method

.method closeTutorial(Z)V
    .locals 4
    .param p1, "tutorialSkipped"    # Z

    .line 413
    if-eqz p1, :cond_1

    .line 414
    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 415
    .local v0, "sharedPrefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 416
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "pref_gestureTutorialSkipped"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 418
    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v1

    .line 419
    .local v1, "statsLogManager":Lcom/android/launcher3/logging/StatsLogManager;
    if-eqz v1, :cond_1

    .line 420
    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_GESTURE_TUTORIAL_SKIPPED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 424
    .end local v0    # "sharedPrefs":Landroid/content/SharedPreferences;
    .end local v1    # "statsLogManager":Lcom/android/launcher3/logging/StatsLogManager;
    :cond_1
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 425
    .local v0, "activity":Landroidx/fragment/app/FragmentActivity;
    if-eqz v0, :cond_2

    .line 426
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setResult(I)V

    .line 427
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 429
    :cond_2
    return-void
.end method

.method continueTutorial()V
    .locals 4

    .line 385
    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 386
    .local v0, "sharedPrefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 387
    new-instance v1, Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    const-string v3, "pref_completedTutorialSteps"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 390
    .local v1, "updatedCompletedSteps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    invoke-virtual {v2}, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 392
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 393
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 395
    .end local v1    # "updatedCompletedSteps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v1

    .line 396
    .local v1, "statsLogManager":Lcom/android/launcher3/logging/StatsLogManager;
    if-eqz v1, :cond_1

    .line 397
    invoke-virtual {p0, v1}, Lcom/android/quickstep/interaction/TutorialFragment;->logTutorialStepCompleted(Lcom/android/launcher3/logging/StatsLogManager;)V

    .line 400
    :cond_1
    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getGestureSandboxActivity()Lcom/android/quickstep/interaction/GestureSandboxActivity;

    move-result-object v2

    .line 401
    .local v2, "gestureSandboxActivity":Lcom/android/quickstep/interaction/GestureSandboxActivity;
    if-nez v2, :cond_2

    .line 402
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->closeTutorial()V

    .line 403
    return-void

    .line 405
    :cond_2
    invoke-virtual {v2}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->continueTutorial()V

    .line 406
    return-void
.end method

.method abstract createController(Lcom/android/quickstep/interaction/TutorialController$TutorialType;)Lcom/android/quickstep/interaction/TutorialController;
.end method

.method protected createGestureAnimation()Landroid/animation/Animator;
    .locals 1

    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract getControllerClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/quickstep/interaction/TutorialController;",
            ">;"
        }
    .end annotation
.end method

.method getCurrentStep()I
    .locals 2

    .line 436
    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getGestureSandboxActivity()Lcom/android/quickstep/interaction/GestureSandboxActivity;

    move-result-object v0

    .line 438
    .local v0, "gestureSandboxActivity":Lcom/android/quickstep/interaction/GestureSandboxActivity;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->getCurrentStep()I

    move-result v1

    :goto_0
    return v1
.end method

.method getDeviceProfile()Lcom/android/launcher3/DeviceProfile;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    return-object v0
.end method

.method getEdgeAnimation()Landroid/graphics/drawable/AnimatedVectorDrawable;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    return-object v0
.end method

.method getEdgeAnimationResId()Ljava/lang/Integer;
    .locals 1

    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method getGestureAnimation()Landroid/animation/Animator;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mGestureAnimation:Landroid/animation/Animator;

    return-object v0
.end method

.method getNumSteps()I
    .locals 2

    .line 442
    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getGestureSandboxActivity()Lcom/android/quickstep/interaction/GestureSandboxActivity;

    move-result-object v0

    .line 444
    .local v0, "gestureSandboxActivity":Lcom/android/quickstep/interaction/GestureSandboxActivity;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->getNumSteps()I

    move-result v1

    :goto_0
    return v1
.end method

.method getRootView()Lcom/android/quickstep/interaction/RootSandboxLayout;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    return-object v0
.end method

.method initializeFeedbackVideoView()V
    .locals 8

    .line 209
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->updateFeedbackAnimation()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->isGestureComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialController;->showSuccessFeedback()V

    goto :goto_0

    .line 215
    :cond_1
    iget-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mIntroductionShown:Z

    if-nez v0, :cond_4

    .line 216
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialController;->getIntroductionTitle()I

    move-result v0

    .line 217
    .local v0, "introTitleResId":I
    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {v1}, Lcom/android/quickstep/interaction/TutorialController;->getIntroductionSubtitle()I

    move-result v7

    .line 218
    .local v7, "introSubtitleResId":I
    const-string v1, "Cannot show introduction feedback for tutorial step: "

    const-string v2, "TutorialFragment"

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", no introduction feedback title"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v2, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    :cond_2
    if-ne v0, v3, :cond_3

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", no introduction feedback subtitle"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v2, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    :cond_3
    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    .line 237
    invoke-virtual {v1}, Lcom/android/quickstep/interaction/TutorialController;->getSpokenIntroductionSubtitle()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 234
    move v2, v0

    move v3, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/quickstep/interaction/TutorialController;->showFeedback(IIIZZ)V

    .line 240
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mIntroductionShown:Z

    .line 242
    .end local v0    # "introTitleResId":I
    .end local v7    # "introSubtitleResId":I
    :cond_4
    :goto_0
    return-void

    .line 210
    :cond_5
    :goto_1
    return-void
.end method

.method isAtFinalStep()Z
    .locals 2

    .line 448
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getCurrentStep()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getNumSteps()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFoldable()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mIsFoldable:Z

    return v0
.end method

.method isGestureComplete()Z
    .locals 1

    .line 452
    iget-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mGestureComplete:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialController;->isGestureCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 452
    :goto_1
    return v0
.end method

.method public isLargeScreen()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mIsLargeScreen:Z

    return v0
.end method

.method synthetic lambda$onCreateView$0$com-android-quickstep-interaction-TutorialFragment(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .line 189
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 190
    .local v0, "systemInsets":Landroid/graphics/Insets;
    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeBackGestureHandler:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    iget v2, v0, Landroid/graphics/Insets;->left:I

    iget v3, v0, Landroid/graphics/Insets;->right:I

    invoke-virtual {v1, v2, v3}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->setInsets(II)V

    .line 191
    return-object p2
.end method

.method abstract logTutorialStepCompleted(Lcom/android/launcher3/logging/StatsLogManager;)V
.end method

.method abstract logTutorialStepShown(Lcom/android/launcher3/logging/StatsLogManager;)V
.end method

.method onAttachedToWindow()V
    .locals 3

    .line 348
    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    .line 349
    .local v0, "statsLogManager":Lcom/android/launcher3/logging/StatsLogManager;
    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/TutorialFragment;->logTutorialStepShown(Lcom/android/launcher3/logging/StatsLogManager;)V

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeBackGestureHandler:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getRootView()Lcom/android/quickstep/interaction/RootSandboxLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->setViewGroupParent(Landroid/view/ViewGroup;)V

    .line 353
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 149
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 150
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 151
    .local v0, "args":Landroid/os/Bundle;
    :goto_0
    const-string v1, "tutorial_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    .line 152
    const/4 v1, 0x0

    const-string v2, "gesture_complete"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mGestureComplete:Z

    .line 153
    new-instance v1, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeBackGestureHandler:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    .line 154
    new-instance v1, Lcom/android/quickstep/interaction/NavBarGestureHandler;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/quickstep/interaction/NavBarGestureHandler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mNavBarGestureHandler:Lcom/android/quickstep/interaction/NavBarGestureHandler;

    .line 156
    sget-object v1, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/InvariantDeviceProfile;

    .line 157
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 158
    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    iput-boolean v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mIsLargeScreen:Z

    .line 159
    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    iput-boolean v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mIsFoldable:Z

    .line 160
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 184
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 186
    sget v0, Lcom/android/launcher3/R$layout;->gesture_tutorial_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/interaction/RootSandboxLayout;

    iput-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    .line 188
    new-instance v1, Lcom/android/quickstep/interaction/TutorialFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/interaction/TutorialFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/interaction/TutorialFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/RootSandboxLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 193
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/interaction/RootSandboxLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 194
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    sget v1, Lcom/android/launcher3/R$id;->gesture_tutorial_edge_gesture_video:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/RootSandboxLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeGestureVideoView:Landroid/widget/ImageView;

    .line 195
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    sget v1, Lcom/android/launcher3/R$id;->gesture_tutorial_finger_dot:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/RootSandboxLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mFingerDotView:Landroid/view/View;

    .line 196
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    sget v1, Lcom/android/launcher3/R$id;->gesture_tutorial_fake_previous_task_view:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/RootSandboxLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mFakePreviousTaskView:Landroid/view/View;

    .line 198
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 176
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 177
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeBackGestureHandler:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->unregisterBackGestureAttemptCallback()V

    .line 178
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mNavBarGestureHandler:Lcom/android/quickstep/interaction/NavBarGestureHandler;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/NavBarGestureHandler;->unregisterNavBarGestureAttemptCallback()V

    .line 179
    return-void
.end method

.method onDetachedFromWindow()V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeBackGestureHandler:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->setViewGroupParent(Landroid/view/ViewGroup;)V

    .line 357
    return-void
.end method

.method onInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 343
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeBackGestureHandler:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->onInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mNavBarGestureHandler:Lcom/android/quickstep/interaction/NavBarGestureHandler;

    .line 344
    invoke-virtual {v1, p1}, Lcom/android/quickstep/interaction/NavBarGestureHandler;->onInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 343
    return v0
.end method

.method public onResume()V
    .locals 2

    .line 314
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 315
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->releaseFeedbackAnimation()V

    .line 316
    iget-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mFragmentStopped:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialController;->showFeedback()V

    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mFragmentStopped:Z

    goto :goto_0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/RootSandboxLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/interaction/TutorialFragment$3;

    invoke-direct {v1, p0}, Lcom/android/quickstep/interaction/TutorialFragment$3;-><init>(Lcom/android/quickstep/interaction/TutorialFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 329
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 376
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    const-string v1, "tutorial_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 377
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 378
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 203
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 204
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->releaseFeedbackAnimation()V

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mFragmentStopped:Z

    .line 206
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .line 333
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->isGestureComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialController;->hideFeedback()V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeBackGestureHandler:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mNavBarGestureHandler:Lcom/android/quickstep/interaction/NavBarGestureHandler;

    .line 338
    invoke-virtual {v1, p1, p2}, Lcom/android/quickstep/interaction/NavBarGestureHandler;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 337
    return v0
.end method

.method releaseFeedbackAnimation()V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialController;->isGestureCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialController;->cancelQueuedGestureAnimation()V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mGestureAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mGestureAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeGestureVideoView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    return-void
.end method

.method startSystemNavigationSetting()V
    .locals 2

    .line 432
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.GESTURE_NAVIGATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/TutorialFragment;->startActivity(Landroid/content/Intent;)V

    .line 433
    return-void
.end method

.method updateEdgeAnimation()Z
    .locals 4

    .line 276
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getEdgeAnimationResId()Ljava/lang/Integer;

    move-result-object v0

    .line 277
    .local v0, "edgeAnimationResId":Ljava/lang/Integer;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v2, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 282
    if-eqz v2, :cond_1

    .line 283
    new-instance v3, Lcom/android/quickstep/interaction/TutorialFragment$2;

    invoke-direct {v3, p0}, Lcom/android/quickstep/interaction/TutorialFragment$2;-><init>(Lcom/android/quickstep/interaction/TutorialFragment;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 293
    :cond_1
    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeGestureVideoView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 278
    :cond_3
    :goto_0
    return v1
.end method

.method updateFeedbackAnimation()Z
    .locals 3

    .line 245
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->updateEdgeAnimation()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 246
    return v1

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->createGestureAnimation()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mGestureAnimation:Landroid/animation/Animator;

    .line 250
    if-eqz v0, :cond_1

    .line 251
    new-instance v2, Lcom/android/quickstep/interaction/TutorialFragment$1;

    invoke-direct {v2, p0}, Lcom/android/quickstep/interaction/TutorialFragment$1;-><init>(Lcom/android/quickstep/interaction/TutorialFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mGestureAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
