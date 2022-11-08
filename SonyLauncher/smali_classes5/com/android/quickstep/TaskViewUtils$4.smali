.class Lcom/android/quickstep/TaskViewUtils$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/TaskViewUtils;->composeRecentsSplitLaunchAnimatorLegacy(Lcom/android/quickstep/views/GroupedTaskView;ILandroid/app/PendingIntent;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/statemanager/StateManager;Lcom/android/launcher3/statehandlers/DepthController;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$finishCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/android/quickstep/TaskViewUtils$4;->val$finishCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 471
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 472
    iget-object v0, p0, Lcom/android/quickstep/TaskViewUtils$4;->val$finishCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 473
    return-void
.end method
