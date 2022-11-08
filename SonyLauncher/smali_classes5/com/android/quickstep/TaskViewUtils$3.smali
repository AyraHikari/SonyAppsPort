.class Lcom/android/quickstep/TaskViewUtils$3;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source "TaskViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/TaskViewUtils;->createRecentsWindowAnimator(Lcom/android/quickstep/views/TaskView;Z[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/statehandlers/DepthController;Lcom/android/launcher3/anim/PendingAnimation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$isQuickSwitch:Z

.field final synthetic val$targets:Lcom/android/quickstep/RemoteAnimationTargets;


# direct methods
.method constructor <init>(ZLcom/android/quickstep/RemoteAnimationTargets;)V
    .locals 0

    .line 356
    iput-boolean p1, p0, Lcom/android/quickstep/TaskViewUtils$3;->val$isQuickSwitch:Z

    iput-object p2, p0, Lcom/android/quickstep/TaskViewUtils$3;->val$targets:Lcom/android/quickstep/RemoteAnimationTargets;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 367
    iget-object v0, p0, Lcom/android/quickstep/TaskViewUtils$3;->val$targets:Lcom/android/quickstep/RemoteAnimationTargets;

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteAnimationTargets;->release()V

    .line 368
    invoke-super {p0, p1}, Lcom/android/launcher3/anim/AnimationSuccessListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 369
    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 359
    iget-boolean v0, p0, Lcom/android/quickstep/TaskViewUtils$3;->val$isQuickSwitch:Z

    if-eqz v0, :cond_0

    .line 360
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->end(I)V

    .line 363
    :cond_0
    return-void
.end method
