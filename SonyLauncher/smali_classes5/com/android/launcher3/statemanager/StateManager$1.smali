.class Lcom/android/launcher3/statemanager/StateManager$1;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/statemanager/StateManager;->createStateAnimationListener(Lcom/android/launcher3/statemanager/BaseState;)Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/statemanager/StateManager;

.field final synthetic val$state:Lcom/android/launcher3/statemanager/BaseState;


# direct methods
.method constructor <init>(Lcom/android/launcher3/statemanager/StateManager;Lcom/android/launcher3/statemanager/BaseState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/statemanager/StateManager;

    .line 333
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager$1;, "Lcom/android/launcher3/statemanager/StateManager$1;"
    iput-object p1, p0, Lcom/android/launcher3/statemanager/StateManager$1;->this$0:Lcom/android/launcher3/statemanager/StateManager;

    iput-object p2, p0, Lcom/android/launcher3/statemanager/StateManager$1;->val$state:Lcom/android/launcher3/statemanager/BaseState;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 338
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager$1;, "Lcom/android/launcher3/statemanager/StateManager$1;"
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager$1;->this$0:Lcom/android/launcher3/statemanager/StateManager;

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager$1;->val$state:Lcom/android/launcher3/statemanager/BaseState;

    invoke-static {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->-$$Nest$monStateTransitionStart(Lcom/android/launcher3/statemanager/StateManager;Lcom/android/launcher3/statemanager/BaseState;)V

    .line 339
    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 343
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager$1;, "Lcom/android/launcher3/statemanager/StateManager$1;"
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager$1;->this$0:Lcom/android/launcher3/statemanager/StateManager;

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager$1;->val$state:Lcom/android/launcher3/statemanager/BaseState;

    invoke-static {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->-$$Nest$monStateTransitionEnd(Lcom/android/launcher3/statemanager/StateManager;Lcom/android/launcher3/statemanager/BaseState;)V

    .line 344
    return-void
.end method
