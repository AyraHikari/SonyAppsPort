.class final Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;
.super Ljava/lang/Object;
.source "TaskbarAllAppsViewController.java"


# instance fields
.field private final mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

.field private final mContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

.field private final mSlideInView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

.field private final mTaskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;Lcom/android/launcher3/taskbar/TaskbarStashController;)V
    .locals 1
    .param p1, "context"    # Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;
    .param p2, "slideInView"    # Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;
    .param p3, "windowController"    # Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;
    .param p4, "taskbarStashController"    # Lcom/android/launcher3/taskbar/TaskbarStashController;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    .line 45
    iput-object p2, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mSlideInView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    .line 46
    invoke-virtual {p2}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->getAppsView()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    .line 47
    iput-object p4, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mTaskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    .line 49
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->setUpIconLongClick()V

    .line 50
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->setUpAppDivider()V

    .line 51
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->setUpTaskbarStashing()V

    .line 52
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p3}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->addOnCloseListener(Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;)V

    .line 53
    return-void
.end method

.method private setUpAppDivider()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object v0

    const-class v1, Lcom/android/launcher3/appprediction/AppsDividerView;

    .line 76
    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->findFixedRowByType(Ljava/lang/Class;)Lcom/android/launcher3/allapps/FloatingHeaderRow;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/appprediction/AppsDividerView;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    .line 77
    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getOnboardingPrefs()Lcom/android/launcher3/util/OnboardingPrefs;

    move-result-object v1

    const-string v2, "launcher.all_apps_visited_count"

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/OnboardingPrefs;->hasReachedMaxCount(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/appprediction/AppsDividerView;->setShowAllAppsLabel(Z)V

    .line 79
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getOnboardingPrefs()Lcom/android/launcher3/util/OnboardingPrefs;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/OnboardingPrefs;->incrementEventCount(Ljava/lang/String;)Z

    .line 80
    return-void
.end method

.method private setUpIconLongClick()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    .line 67
    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getDragController()Lcom/android/launcher3/taskbar/TaskbarDragController;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragController;)V

    .line 66
    invoke-virtual {v0, v2}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;->setOnIconLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object v0

    const-class v1, Lcom/android/launcher3/appprediction/PredictionRowView;

    .line 69
    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->findFixedRowByType(Ljava/lang/Class;)Lcom/android/launcher3/allapps/FloatingHeaderRow;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/appprediction/PredictionRowView;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    .line 71
    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getDragController()Lcom/android/launcher3/taskbar/TaskbarDragController;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragController;)V

    .line 70
    invoke-virtual {v0, v2}, Lcom/android/launcher3/appprediction/PredictionRowView;->setOnIconLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 72
    return-void
.end method

.method private setUpTaskbarStashing()V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mTaskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    const/16 v1, 0x80

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    .line 84
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mTaskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    .line 85
    invoke-virtual {v1, v3, v2}, Lcom/android/launcher3/LauncherState;->getTransitionDuration(Landroid/content/Context;Z)I

    move-result v1

    int-to-long v1, v1

    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState(J)V

    .line 86
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mSlideInView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    new-instance v1, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->setOnCloseBeginListener(Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;)V

    .line 93
    return-void
.end method


# virtual methods
.method close(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 62
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mSlideInView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->close(Z)V

    .line 63
    return-void
.end method

.method synthetic lambda$setUpTaskbarStashing$0$com-android-launcher3-taskbar-allapps-TaskbarAllAppsViewController()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenContainer(Lcom/android/launcher3/views/ActivityContext;I)V

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mSlideInView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mTaskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/taskbar/TaskbarStashController;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->post(Ljava/lang/Runnable;)Z

    .line 92
    return-void
.end method

.method show(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 57
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mSlideInView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->show(Z)V

    .line 58
    return-void
.end method
