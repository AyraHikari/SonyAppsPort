.class Lcom/android/launcher3/statemanager/StateManager$StartAnimRunnable;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/statemanager/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartAnimRunnable"
.end annotation


# instance fields
.field private final mAnim:Landroid/animation/AnimatorSet;

.field final synthetic this$0:Lcom/android/launcher3/statemanager/StateManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/statemanager/StateManager;Landroid/animation/AnimatorSet;)V
    .locals 0
    .param p2, "anim"    # Landroid/animation/AnimatorSet;

    .line 494
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager$StartAnimRunnable;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>.StartAnimRunnable;"
    iput-object p1, p0, Lcom/android/launcher3/statemanager/StateManager$StartAnimRunnable;->this$0:Lcom/android/launcher3/statemanager/StateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    iput-object p2, p0, Lcom/android/launcher3/statemanager/StateManager$StartAnimRunnable;->mAnim:Landroid/animation/AnimatorSet;

    .line 496
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 500
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager$StartAnimRunnable;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>.StartAnimRunnable;"
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager$StartAnimRunnable;->this$0:Lcom/android/launcher3/statemanager/StateManager;

    invoke-static {v0}, Lcom/android/launcher3/statemanager/StateManager;->-$$Nest$fgetmConfig(Lcom/android/launcher3/statemanager/StateManager;)Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->currentAnimation:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager$StartAnimRunnable;->mAnim:Landroid/animation/AnimatorSet;

    if-eq v0, v1, :cond_0

    .line 501
    return-void

    .line 503
    :cond_0
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 504
    return-void
.end method
