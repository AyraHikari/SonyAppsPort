.class Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseActivityInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->createBackgroundToOverviewAnim(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher3/anim/PendingAnimation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;


# direct methods
.method constructor <init>(Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;

    .line 566
    .local p0, "this":Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory$1;, "Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory$1;"
    iput-object p1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory$1;->this$1:Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 569
    .local p0, "this":Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory$1;, "Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory$1;"
    iget-object v0, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory$1;->this$1:Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;

    iget-object v0, v0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->this$0:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getTaskbarController()Lcom/android/launcher3/taskbar/TaskbarUIController;

    move-result-object v0

    .line 570
    .local v0, "taskbarUIController":Lcom/android/launcher3/taskbar/TaskbarUIController;
    if-eqz v0, :cond_0

    .line 571
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarUIController;->setSystemGestureInProgress(Z)V

    .line 573
    :cond_0
    return-void
.end method
