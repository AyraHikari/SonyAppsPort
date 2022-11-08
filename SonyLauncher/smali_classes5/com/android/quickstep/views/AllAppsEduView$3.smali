.class Lcom/android/quickstep/views/AllAppsEduView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AllAppsEduView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/AllAppsEduView;->playAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/views/AllAppsEduView;


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/AllAppsEduView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/views/AllAppsEduView;

    .line 238
    iput-object p1, p0, Lcom/android/quickstep/views/AllAppsEduView$3;->this$0:Lcom/android/quickstep/views/AllAppsEduView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 241
    iget-object v0, p0, Lcom/android/quickstep/views/AllAppsEduView$3;->this$0:Lcom/android/quickstep/views/AllAppsEduView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/quickstep/views/AllAppsEduView;->-$$Nest$fputmAnimation(Lcom/android/quickstep/views/AllAppsEduView;Landroid/animation/AnimatorSet;)V

    .line 243
    iget-object v0, p0, Lcom/android/quickstep/views/AllAppsEduView$3;->this$0:Lcom/android/quickstep/views/AllAppsEduView;

    invoke-static {v0}, Lcom/android/quickstep/views/AllAppsEduView;->-$$Nest$fgetmLauncher(Lcom/android/quickstep/views/AllAppsEduView;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    .line 244
    iget-object v0, p0, Lcom/android/quickstep/views/AllAppsEduView$3;->this$0:Lcom/android/quickstep/views/AllAppsEduView;

    invoke-virtual {v0, v2}, Lcom/android/quickstep/views/AllAppsEduView;->handleClose(Z)V

    .line 245
    return-void
.end method
