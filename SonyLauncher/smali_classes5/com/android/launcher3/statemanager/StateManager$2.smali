.class Lcom/android/launcher3/statemanager/StateManager$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/statemanager/StateManager;->createStateElementAnimation(I[F)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/statemanager/StateManager;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/statemanager/StateManager;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/statemanager/StateManager;

    .line 473
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager$2;, "Lcom/android/launcher3/statemanager/StateManager$2;"
    iput-object p1, p0, Lcom/android/launcher3/statemanager/StateManager$2;->this$0:Lcom/android/launcher3/statemanager/StateManager;

    iput p2, p0, Lcom/android/launcher3/statemanager/StateManager$2;->val$index:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 476
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager$2;, "Lcom/android/launcher3/statemanager/StateManager$2;"
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager$2;->this$0:Lcom/android/launcher3/statemanager/StateManager;

    invoke-static {v0}, Lcom/android/launcher3/statemanager/StateManager;->-$$Nest$fgetmAtomicAnimationFactory(Lcom/android/launcher3/statemanager/StateManager;)Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;->-$$Nest$fgetmStateElementAnimators(Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;)[Landroid/animation/Animator;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/statemanager/StateManager$2;->val$index:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 477
    return-void
.end method
