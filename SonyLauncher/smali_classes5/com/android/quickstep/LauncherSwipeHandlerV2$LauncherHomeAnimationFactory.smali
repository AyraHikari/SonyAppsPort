.class Lcom/android/quickstep/LauncherSwipeHandlerV2$LauncherHomeAnimationFactory;
.super Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;
.source "LauncherSwipeHandlerV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/LauncherSwipeHandlerV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LauncherHomeAnimationFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/LauncherSwipeHandlerV2;


# direct methods
.method private constructor <init>(Lcom/android/quickstep/LauncherSwipeHandlerV2;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$LauncherHomeAnimationFactory;->this$0:Lcom/android/quickstep/LauncherSwipeHandlerV2;

    invoke-direct {p0, p1}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;-><init>(Lcom/android/quickstep/SwipeUpAnimationLogic;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quickstep/LauncherSwipeHandlerV2;Lcom/android/quickstep/LauncherSwipeHandlerV2$LauncherHomeAnimationFactory-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/LauncherSwipeHandlerV2$LauncherHomeAnimationFactory;-><init>(Lcom/android/quickstep/LauncherSwipeHandlerV2;)V

    return-void
.end method


# virtual methods
.method public createActivityAnimationToHome()Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 5

    .line 277
    iget-object v0, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$LauncherHomeAnimationFactory;->this$0:Lcom/android/quickstep/LauncherSwipeHandlerV2;

    iget-object v0, v0, Lcom/android/quickstep/LauncherSwipeHandlerV2;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget-object v1, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$LauncherHomeAnimationFactory;->this$0:Lcom/android/quickstep/LauncherSwipeHandlerV2;

    iget-object v1, v1, Lcom/android/quickstep/LauncherSwipeHandlerV2;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    .line 278
    .local v0, "accuracy":J
    iget-object v2, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$LauncherHomeAnimationFactory;->this$0:Lcom/android/quickstep/LauncherSwipeHandlerV2;

    iget-object v2, v2, Lcom/android/quickstep/LauncherSwipeHandlerV2;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v2, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseQuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/android/launcher3/statemanager/StateManager;->createAnimationToNewWorkspace(Lcom/android/launcher3/statemanager/BaseState;JI)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v2

    return-object v2
.end method

.method protected getViewIgnoredInWorkspaceRevealAnimation()Landroid/view/View;
    .locals 1

    .line 269
    const/4 v0, 0x0

    return-object v0
.end method

.method public playAtomicAnimation(F)V
    .locals 4
    .param p1, "velocity"    # F

    .line 284
    new-instance v0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;

    iget-object v1, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$LauncherHomeAnimationFactory;->this$0:Lcom/android/quickstep/LauncherSwipeHandlerV2;

    iget-object v1, v1, Lcom/android/quickstep/LauncherSwipeHandlerV2;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v1, Lcom/android/launcher3/Launcher;

    .line 285
    invoke-virtual {p0}, Lcom/android/quickstep/LauncherSwipeHandlerV2$LauncherHomeAnimationFactory;->getViewIgnoredInWorkspaceRevealAnimation()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, p1, v3, v2}, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;-><init>(Lcom/android/launcher3/Launcher;FZLandroid/view/View;)V

    .line 286
    invoke-virtual {v0}, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->start()V

    .line 287
    return-void
.end method
