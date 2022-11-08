.class public Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;
.super Ljava/lang/Object;
.source "TaskbarViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/TaskbarViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskbarViewCallbacks"
.end annotation


# instance fields
.field private mCanceledStashHint:Z

.field private mDownX:F

.field private mDownY:F

.field private final mSquaredTouchSlop:F

.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarViewController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarViewController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/launcher3/taskbar/TaskbarViewController;

    .line 335
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->-$$Nest$fgetmActivity(Lcom/android/launcher3/taskbar/TaskbarViewController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->squaredTouchSlop(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->mSquaredTouchSlop:F

    return-void
.end method


# virtual methods
.method public getAllAppsButtonClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 346
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;)V

    return-object v0
.end method

.method public getBackgroundOnLongClickListener()Landroid/view/View$OnLongClickListener;
    .locals 1

    .line 357
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;)V

    return-object v0
.end method

.method public getIconOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->-$$Nest$fgetmActivity(Lcom/android/launcher3/taskbar/TaskbarViewController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getItemOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method

.method public getIconOnLongClickListener()Landroid/view/View$OnLongClickListener;
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->-$$Nest$fgetmControllers(Lcom/android/launcher3/taskbar/TaskbarViewController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragController;)V

    return-object v1
.end method

.method synthetic lambda$getAllAppsButtonClickListener$0$com-android-launcher3-taskbar-TaskbarViewController$TaskbarViewCallbacks(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 347
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->-$$Nest$fgetmActivity(Lcom/android/launcher3/taskbar/TaskbarViewController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_ALLAPPS_BUTTON_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 348
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->-$$Nest$fgetmControllers(Lcom/android/launcher3/taskbar/TaskbarViewController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->show()V

    .line 349
    return-void
.end method

.method synthetic lambda$getBackgroundOnLongClickListener$1$com-android-launcher3-taskbar-TaskbarViewController$TaskbarViewCallbacks(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 357
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->-$$Nest$fgetmControllers(Lcom/android/launcher3/taskbar/TaskbarViewController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    .line 358
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateAndAnimateIsManuallyStashedInApp(Z)Z

    move-result v0

    .line 357
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 366
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 367
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 368
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 376
    :pswitch_0
    iget-boolean v2, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->mCanceledStashHint:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->mDownX:F

    sub-float/2addr v2, v0

    iget v5, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->mDownY:F

    sub-float/2addr v5, v1

    .line 377
    invoke-static {v2, v5}, Lcom/android/launcher3/Utilities;->squaredHypot(FF)F

    move-result v2

    iget v5, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->mSquaredTouchSlop:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    .line 378
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-static {v2}, Lcom/android/launcher3/taskbar/TaskbarViewController;->-$$Nest$fgetmControllers(Lcom/android/launcher3/taskbar/TaskbarViewController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/taskbar/TaskbarStashController;->startStashHint(Z)V

    .line 380
    iput-boolean v3, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->mCanceledStashHint:Z

    .line 381
    return v3

    .line 386
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->mCanceledStashHint:Z

    if-nez v2, :cond_0

    .line 387
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-static {v2}, Lcom/android/launcher3/taskbar/TaskbarViewController;->-$$Nest$fgetmControllers(Lcom/android/launcher3/taskbar/TaskbarViewController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/taskbar/TaskbarStashController;->startStashHint(Z)V

    goto :goto_0

    .line 370
    :pswitch_2
    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->mDownX:F

    .line 371
    iput v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->mDownY:F

    .line 372
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-static {v2}, Lcom/android/launcher3/taskbar/TaskbarViewController;->-$$Nest$fgetmControllers(Lcom/android/launcher3/taskbar/TaskbarViewController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->startStashHint(Z)V

    .line 373
    iput-boolean v4, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->mCanceledStashHint:Z

    .line 374
    nop

    .line 392
    :cond_0
    :goto_0
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
